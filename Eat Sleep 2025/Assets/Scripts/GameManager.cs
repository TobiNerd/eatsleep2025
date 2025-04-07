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

    [SerializeField] private SubState subState = SubState.Running;
    [SerializeField] private PlayerAction playerAction = PlayerAction.Nothing;
    [SerializeField] private AnomalyAIState aiState = AnomalyAIState.Awake;
    [field: SerializeField] public GameState GameState { get; private set; } = GameState.Day;

    [SerializeField] private int maxWins = 10;
    [SerializeField] private int timesWon;
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

        if (BlockingCounter.StillRunning()) return;

        if (subState is SubState.Transition)
        {
            Debug.Log($"[{nameof(SubState)}] {SubState.Transition}");
            subState = SubState.Running;
        }
        else
        {
            // UI
            UIController.I.SetTime(GetHour(), GetMinute(), IsCloseToEnding() ? Color.red : Color.white);

            // Input
            if (InputActions.MouseDelta.action.WasPerformedThisFrame()) CameraController.OnMouseMoved(InputActions.MouseDelta.action.ReadValue<Vector2>());

            if (InputActions.ShootYourself.action.WasPerformedThisFrame()) ShootYourself();
            else if (InputActions.GoToSleep.action.WasPerformedThisFrame()) GoToSleep(1500);

            if (BlockingCounter.StillRunning()) return;

            // State
            GameState? nextState = GetNextState();
            if (nextState == null) return;

            subState = SubState.Transition;
            StateChanged(GameState, nextState.Value);
            GameState = nextState.Value;
            OnStateChanged?.Invoke(GameState);
        }
    }

    private GameState? GetNextState()
    {
        if (timesWon == maxWins && GameState is GameState.Night) return GameState.Win;

        return GameState switch
        {
            GameState.Day => playerAction switch
            {
                PlayerAction.Nothing => null,
                PlayerAction.GoToSleep => GameState.Night,
                PlayerAction.ShootYourself => GameState.Lost,
                _ => throw new ArgumentOutOfRangeException(nameof(playerAction), playerAction, null)
            },
            GameState.Night => nightTimer.Tick() is TimerState.Finished
                ? aiState is AnomalyAIState.Dreaming ? GameState.Lost : GameState.Night
                : playerAction switch
                {
                    PlayerAction.Nothing => null,
                    PlayerAction.GoToSleep => aiState is AnomalyAIState.Dreaming ? GameState.Lost : GameState.Night,
                    PlayerAction.ShootYourself => aiState is AnomalyAIState.Dreaming ? GameState.Night : GameState.Lost,
                    _ => throw new ArgumentOutOfRangeException(nameof(playerAction), playerAction, null)
                },
            GameState.Lost => lostDelayTimer.Tick() is TimerState.Playing ? null : GameState.Day,
            GameState.Win => playerAction switch
            {
                PlayerAction.Nothing => null,
                PlayerAction.GoToSleep => GameState.Win,
                PlayerAction.ShootYourself => GameState.Lost,
                _ => throw new ArgumentOutOfRangeException(nameof(playerAction), playerAction, null)
            },
            _ => throw new ArgumentOutOfRangeException(nameof(GameState), GameState, null)
        };
    }
    private void StateChanged(GameState oldState, GameState newState)
    {
        Debug.Log($"[{nameof(GameState)}] {oldState} -> {newState}");
        switch (oldState)
        {
            case GameState.Day:
                break;
            case GameState.Night:
                if (playerAction is PlayerAction.ShootYourself) I.SoundController.Gasp.Play();
                break;
            case GameState.Lost:
            case GameState.Win:
                break;
            default:
                throw new ArgumentOutOfRangeException(nameof(GameState), GameState, null);
        }

        switch (newState)
        {
            case GameState.Day:
                const int openEyesDurationMS = 200;
                UIController.I.Clear(openEyesDurationMS);
                UIController.I.SetTime(20, 0);
                CameraController.ResetScene();

                timesWon = -1;
                anomalyAILevel = AnomalyAILevel.Easy;
                playerAction = PlayerAction.Nothing;

                AnomalyController.I.AnomalyReset();
                SoundController.sunWinningLight.color = LerpDoomSunColor(0.0f);
                SoundController.sunWinningLight.intensity = 1;
                break;
            case GameState.Night:
                if (aiState is AnomalyAIState.Dreaming) ++anomalyAILevel;
                ++timesWon;
                nightTimer.Reset();
                AnomalyAI();
                playerAction = PlayerAction.Nothing;

                if (timesWon != 0) SoundController.Survived.Play();
                const int wakeUpDurationMS = 5000;
                WakeUp(wakeUpDurationMS);
                break;
            case GameState.Lost:
                SoundController.Lost.Play();

                const int lostGameFadeDurationMS = 1000;
                UIController.I.Fade(lostGameFadeDurationMS, withBlood: true);
                lostDelayTimer.Reset();
                break;
            case GameState.Win:
                SoundController.Win.Play();
                WakeUp(wakeUpDurationMS * 5);

                playerAction = PlayerAction.Nothing;
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
            AnomalyAILevel.Obvious => d10 <= 9,
            AnomalyAILevel.Easy => d10 <= 8,
            AnomalyAILevel.Medium => d10 <= 7,
            AnomalyAILevel.Hard => d10 <= 6,
            AnomalyAILevel.VeryHard => d10 <= 5,
            _ => throw new ArgumentOutOfRangeException(nameof(anomalyAILevel), anomalyAILevel, null)
        };
        aiState = aiActive ? AnomalyAIState.Dreaming : AnomalyAIState.Awake;

        Debug.Log($"[{nameof(AnomalyAIState)}] {aiState}");
        if (aiState is AnomalyAIState.Awake) return;

        Debug.Log($"[{nameof(AnomalyAILevel)}] {anomalyAILevel}");
        switch (anomalyAILevel)
        {
            case AnomalyAILevel.Obvious:
                AnomalyController.I.AnomalySpawn();
                AnomalyController.I.AnomalySpawn();
                break;
            case AnomalyAILevel.Easy:
                AnomalyController.I.AnomalySwap();
                AnomalyController.I.AnomalySpawn();
                break;
            case AnomalyAILevel.Medium:
                AnomalyController.I.AnomalySwap();
                AnomalyController.I.AnomalyMove();
                break;
            case AnomalyAILevel.Hard:
                AnomalyController.I.AnomalyMove();
                AnomalyController.I.AnomalyMove();
                break;
            case AnomalyAILevel.VeryHard:
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
        playerAction = PlayerAction.ShootYourself;
        SimpleShoot.I.Fire();
        CameraController.DeathAnimation();
    }
    private void GoToSleep(int durationMS)
    {
        Debug.Log($"[PlayerState] {nameof(GoToSleep)}");
        SoundController.LayDown.Play();
        playerAction = PlayerAction.GoToSleep;
        CameraController.LaydownAnimation(durationMS);
    }
    private void WakeUp(int durationMS)
    {
        Debug.Log($"[PlayerState] {nameof(WakeUp)}");
        SoundController.Situp.Play();
        SoundController.SitupFoley.Play();
        UIController.I.Clear(durationMS);
        CameraController.UprightAnimation(durationMS);
    }

    private const int DAY_HOUR = 19;
    private const int NIGHT_START_HOUR = 22;
    private const int END_MINUTE = 60;
    private const int CLOSE_TO_ENDING_TIME = 5;
    private int GetHour() => GameState is GameState.Day or GameState.Win ? DAY_HOUR : (NIGHT_START_HOUR + timesWon) % 24;
    private int GetMinute() => GameState is not GameState.Night
        ? 0
        : Math.Min(END_MINUTE - 1, END_MINUTE * Mathf.FloorToInt(nightTimer.TimeUsed) / Mathf.FloorToInt(nightTimer.TotalTime));
    private bool IsCloseToEnding() => GameState is GameState.Night && nightTimer.TimeLeft < CLOSE_TO_ENDING_TIME;
    private static Color LerpDoomSunColor(float t) => Color.Lerp(new Color(1.0f, 0.89f, 0.59f), new Color(1.0f, 0.0f, 0.22f), t);
}

public enum PlayerAction
{
    Nothing,
    GoToSleep,
    ShootYourself,
}

public enum SubState
{
    Running,
    Transition,
}

public enum GameState
{
    Day,
    Night,
    Lost,
    Win,
}

public enum AnomalyAIState
{
    Awake,
    Dreaming
}

public enum AnomalyAILevel
{
    Obvious,
    Easy,
    Medium,
    Hard,
    VeryHard,
}

public enum TimerState
{
    Finished,
    Playing,
}

[Serializable]
public struct Timer
{
    public float TotalTime;
    public float TimeLeft;
    public float TimeUsed => TotalTime - TimeLeft;

    public Timer(float totalTime)
    {
        TotalTime = totalTime;
        TimeLeft = totalTime;
    }
    public TimerState Tick()
    {
        if (TimeLeft <= 0.0f) return TimerState.Finished;

        TimeLeft -= Time.deltaTime;
        return TimerState.Playing;
    }
    public void Reset()
    {
        TimeLeft = TotalTime;
    }
}

public struct BlockingCounter
{
    private int _count;

    public bool StillRunning()
    {
        // Debug.Log($"[{nameof(BlockingCounter)}] {_count}");
        return _count != 0;
    }
    public void Add()
    {
        Debug.Log($"[{nameof(BlockingCounter)}] Add {_count}");
        _count++;
    }
    public void Release()
    {
        _count--;
        Debug.Log($"[{nameof(BlockingCounter)}] Clear {_count}");
    }
}