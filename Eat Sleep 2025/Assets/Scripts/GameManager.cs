using System;
using System.Linq;
using UnityEngine;
using UnityEngine.InputSystem;

public sealed class GameManager : Singleton<GameManager>
{
    public CameraController CameraController;
    public SoundController SoundController;
    public InputActionReferences InputActions;
    private PlayerInput _playerInput;

    public BlockingCounter BlockingCounter;

    [SerializeField] private SubState subState = SubState.StateRunning;
    [SerializeField] private PlayerAction playerAction = PlayerAction.PlayerNone;
    [SerializeField] private AnomalyAIState aiState = AnomalyAIState.AnomalyNone;
    [field: SerializeField] public GameState GameState { get; private set; } = GameState.Day;

    [SerializeField] private int maxNights = 10;
    [SerializeField] private int nightsSurvived;
    [SerializeField] private AnomalyAILevel anomalyAILevel;

    [SerializeField] private Timer nightTimer = new(30.0f);
    [SerializeField] private Timer lostDelayTimer = new(2.0f);

    public static Action<GameState> OnStateChanged;


    protected override void Awake()
    {
        base.Awake();
        LoadStartupAssets();
    }
    private void LoadStartupAssets()
    {
        GameObject[] startupAsset = Resources.LoadAll<GameObject>("InstantiateOnStartup");
        foreach (GameObject spawn in startupAsset.Select(go => Instantiate(go, transform))) spawn.transform.localPosition = Vector3.zero;
    }
    private void Start()
    {
        _playerInput = GetComponent<PlayerInput>();
        _playerInput.actions.FindActionMap("Debug").Enable();

        GameState = GameState.Day;
        StateChanged(GameState, GameState);
        OnStateChanged?.Invoke(GameState);
    }
    private void Update()
    {
        if (InputActions.QuitGame.action.WasPerformedThisFrame()) Application.Quit();

        UIController.I.SetTime(GetHour(), GetMinute(), IsCloseToEnding() ? Color.red : Color.white);

        if (BlockingCounter.GetState() is BlockingCounter.State.Blocking) return;

        if (subState is SubState.StateTransitioning)
        {
            subState = SubState.StateRunning;
            Debug.Log($"[{nameof(SubState)}] {subState}");
        }
        else
        {
            if (InputActions.MouseDelta.action.WasPerformedThisFrame()) CameraController.MovePlayerHead(InputActions.MouseDelta.action.ReadValue<Vector2>());

            if (InputActions.ShootYourself.action.WasPerformedThisFrame()) ShootYourself();
            else if (InputActions.GoToSleep.action.WasPerformedThisFrame()) GoToSleep(1500);

            if (BlockingCounter.GetState() is BlockingCounter.State.Blocking) return; // We double check because input might cause animation

            GameState? nextState = GetNextState();
            if (nextState == null) return;

            subState = SubState.StateTransitioning;
            Debug.Log($"[{nameof(SubState)}] {subState}");
            StateChanged(GameState, nextState.Value);
            GameState = nextState.Value;
            OnStateChanged?.Invoke(GameState);
        }
    }

    private GameState? GetNextState()
    {
        return GameState switch
        {
            GameState.Day => playerAction switch
            {
                PlayerAction.PlayerNone => null,
                PlayerAction.PlayerGoingToSleep => WonNightState(),
                PlayerAction.PlayerShootingThemselves => GameState.GameOver,
                _ => throw new ArgumentOutOfRangeException(nameof(playerAction), playerAction, null)
            },
            GameState.Night => nightTimer.Tick() is Timer.State.Finished
                ? aiState is AnomalyAIState.AnomalyActive ? GameState.GameOver : WonNightState()
                : playerAction switch
                {
                    PlayerAction.PlayerNone => null,
                    PlayerAction.PlayerGoingToSleep => aiState is AnomalyAIState.AnomalyActive ? GameState.GameOver : WonNightState(),
                    PlayerAction.PlayerShootingThemselves => aiState is AnomalyAIState.AnomalyActive ? WonNightState() : GameState.GameOver,
                    _ => throw new ArgumentOutOfRangeException(nameof(playerAction), playerAction, null)
                },
            GameState.GameOver => lostDelayTimer.Tick() is Timer.State.Playing ? null : GameState.Day,
            GameState.GameWon => playerAction switch
            {
                PlayerAction.PlayerNone => null,
                PlayerAction.PlayerGoingToSleep => GameState.GameWon,
                PlayerAction.PlayerShootingThemselves => GameState.GameOver,
                _ => throw new ArgumentOutOfRangeException(nameof(playerAction), playerAction, null)
            },
            _ => throw new ArgumentOutOfRangeException(nameof(GameState), GameState, null)
        };

        GameState WonNightState() => ++nightsSurvived == maxNights ? GameState.GameWon : GameState.Night;
    }
    private void StateChanged(GameState oldState, GameState newState)
    {
        Debug.Log($"[{nameof(GameState)}] {oldState} -> {newState}");
        switch (oldState)
        {
            case GameState.Day or GameState.GameOver or GameState.GameWon:
                break;
            case GameState.Night:
                if (newState is not GameState.GameOver && playerAction is PlayerAction.PlayerShootingThemselves) I.SoundController.Gasp.Play();

                break;
            default:
                throw new ArgumentOutOfRangeException(nameof(GameState), GameState, null);
        }

        switch (newState)
        {
            case GameState.Day:
                const int openEyesDurationMS = 200;
                UIController.I.Clear(openEyesDurationMS);
                CameraController.ResetScene();

                nightsSurvived = -1;
                anomalyAILevel = AnomalyAILevel.AIEasy;
                playerAction = PlayerAction.PlayerNone;

                AnomalyController.I.AnomalyReset();
                SoundController.sunWinningLight.color = LerpDoomSunColor(0.0f);
                SoundController.sunWinningLight.intensity = 1;
                break;
            case GameState.Night:
                if (nightsSurvived > 0) SoundController.Survived.Play();

                if (aiState is AnomalyAIState.AnomalyActive) ++anomalyAILevel;
                nightTimer.Reset();
                AnomalyAI();
                playerAction = PlayerAction.PlayerNone;

                const int wakeUpDurationMS = 500;
                WakeUp(wakeUpDurationMS);
                break;
            case GameState.GameOver:
                SoundController.Lost.Play();

                const int lostGameFadeDurationMS = 3000;
                UIController.I.Fade(lostGameFadeDurationMS, withBlood: true);
                lostDelayTimer.Reset();
                break;
            case GameState.GameWon:
                SoundController.Win.Play();
                WakeUp(wakeUpDurationMS * 5);

                playerAction = PlayerAction.PlayerNone;
                const float DOOMSDAY_MAX = 10.0f;
                SoundController.sunWinningLight.intensity++;
                SoundController.sunWinningLight.color = LerpDoomSunColor(SoundController.sunWinningLight.intensity / DOOMSDAY_MAX);
                break;
            default:
                throw new ArgumentOutOfRangeException(nameof(GameState), GameState, null);
        }
    }
    private void AnomalyAI()
    {
        AnomalyController.I.AnomalyReset();

        int d10 = UnityEngine.Random.Range(0, 10);
        bool aiActive = anomalyAILevel switch
        {
            AnomalyAILevel.AIObvious => d10 <= 9,
            AnomalyAILevel.AIEasy => d10 <= 8,
            AnomalyAILevel.AIMedium => d10 <= 7,
            AnomalyAILevel.AIHard => d10 <= 6,
            AnomalyAILevel.AIVeryHard => d10 <= 5,
            _ => d10 <= 5 //throw new ArgumentOutOfRangeException(nameof(anomalyAILevel), anomalyAILevel, null)
        };
        aiState = aiActive ? AnomalyAIState.AnomalyActive : AnomalyAIState.AnomalyNone;

        Debug.Log($"[{nameof(AnomalyAIState)}] {aiState}");
        if (aiState is AnomalyAIState.AnomalyNone) return;

        Debug.Log($"[{nameof(AnomalyAILevel)}] {anomalyAILevel}");
        switch (anomalyAILevel)
        {
            case AnomalyAILevel.AIObvious:
                AnomalyController.I.AnomalySpawn();
                AnomalyController.I.AnomalySpawn();
                break;
            case AnomalyAILevel.AIEasy:
                AnomalyController.I.AnomalySwap();
                AnomalyController.I.AnomalySpawn();
                break;
            case AnomalyAILevel.AIMedium:
                AnomalyController.I.AnomalySwap();
                AnomalyController.I.AnomalyMove();
                break;
            case AnomalyAILevel.AIHard:
                AnomalyController.I.AnomalyMove();
                AnomalyController.I.AnomalyMove();
                break;
            case AnomalyAILevel.AIVeryHard:
                AnomalyController.I.AnomalyMove();
                break;
            default:
                throw new ArgumentOutOfRangeException(nameof(anomalyAILevel), anomalyAILevel, null);
        }
    }
    private void ShootYourself()
    {
        Debug.Log($"[PlayerState] {nameof(ShootYourself)}");
        SoundController.Gun.Play();
        playerAction = PlayerAction.PlayerShootingThemselves;
        SimpleShoot.I.Shoot(withFlash: true, withBullet: false);
        SimpleShoot.I.CasingRelease();
        CameraController.DeathAnimation();
    }
    private void GoToSleep(int durationMS)
    {
        Debug.Log($"[PlayerState] {nameof(GoToSleep)}");
        SoundController.LayDown.Play();
        playerAction = PlayerAction.PlayerGoingToSleep;
        CameraController.LayDownAnimation(durationMS);
    }
    private void WakeUp(int durationMS)
    {
        Debug.Log($"[PlayerState] {nameof(WakeUp)}");
        SoundController.Situp.Play();
        SoundController.SitupFoley.Play();
        UIController.I.Clear(durationMS);
        CameraController.SitUpAnimation(durationMS);
    }

    private const int NIGHT_START_HOUR = 22;
    private const int END_MINUTE = 60;
    private const int CLOSE_TO_ENDING_TIME = 5;


    private int GetHour() => GameState switch
    {
        GameState.Day => 19,
        GameState.Night or GameState.GameOver => (NIGHT_START_HOUR + nightsSurvived) % 24,
        GameState.GameWon => 14,
        _ => throw new ArgumentOutOfRangeException(nameof(GameState), GameState, null)
    };
    private int GetMinute() => GameState switch
    {
        GameState.Day or GameState.GameOver or GameState.GameWon => 0,
        GameState.Night => Math.Min(END_MINUTE - 1, END_MINUTE * Mathf.FloorToInt(nightTimer.TimeUsed) / Mathf.FloorToInt(nightTimer.TotalTime)),
        _ => throw new ArgumentOutOfRangeException(nameof(GameState), GameState, null)
    };
    private bool IsCloseToEnding() => GameState is GameState.Night && nightTimer.TimeLeft < CLOSE_TO_ENDING_TIME;
    private static Color LerpDoomSunColor(float t) => Color.Lerp(new Color(1.0f, 0.89f, 0.59f), new Color(1.0f, 0.0f, 0.22f), t);
}

[Serializable]
public struct Timer
{
    public float TotalTime;
    public float TimeLeft;
    public float TimeUsed => TotalTime - TimeLeft;

    public enum State
    {
        Finished,
        Playing,
    }

    public Timer(float totalTime)
    {
        TotalTime = totalTime;
        TimeLeft = totalTime;
    }
    public State Tick()
    {
        if (TimeLeft <= 0.0f) return State.Finished;

        TimeLeft -= Time.deltaTime;
        return State.Playing;
    }
    public void Reset()
    {
        TimeLeft = TotalTime;
    }
}

public struct BlockingCounter
{
    public enum State
    {
        Blocking,
        Free,
    }

    private int _count;

    public State GetState() => _count == 0 ? State.Free : State.Blocking;
    public void Add()
    {
#if DEBUG_LEVEL_1
        Debug.Log($"[{nameof(BlockingCounter)}] Add {_count}");
#endif
        _count++;
    }
    public void Release()
    {
        _count--;
#if DEBUG_LEVEL_1
        Debug.Log($"[{nameof(BlockingCounter)}] Clear {_count}");
#endif
    }
}