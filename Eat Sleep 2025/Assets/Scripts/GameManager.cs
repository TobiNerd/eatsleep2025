using System;
using System.Collections.Generic;
using System.Linq;
using UnityEngine;
using UnityEngine.InputSystem;

public sealed class GameManager : Singleton<GameManager>
{
    public CameraController CameraController;
    public SoundController SoundController;
    public InputActionReferences InputActions;
    private PlayerInput _playerInput;

    public AnimationList Animations = new();

    [SerializeField] private GameState state;
    [SerializeField] private PlayerAction playerAction = PlayerAction.Nothing;
    [SerializeField] private AnomalyAIState aiState = AnomalyAIState.Awake;
    public bool IsNightPlaying => state == GameState.Playing;
    public GameState GameState => state;

    [SerializeField] private int maxWins = 10;
    [SerializeField] private int timesWon;
    [SerializeField] private AnomalyAILevel anomalyAILevel;
    public RepeatedTimer nightTimer = new(30.0f);
    public RepeatedTimer betweenNightsDelayTimer = new(1.0f);
    public RepeatedTimer lostDelayTimer = new(2.0f);

    public static Action<GameState> OnStateChanged;

    private GameState State
    {
        get => state;
        set
        {
            if (State == value) return;

            StateChanged(State, value);
            state = value;
            OnStateChanged?.Invoke(value);
        }
    }

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

        state = GameState.Day;
        StateChanged(state, state);
        OnStateChanged?.Invoke(state);
    }
    private void Update()
    {
        if (InputActions.QuitGame.action.WasPerformedThisFrame()) Application.Quit();

        if (Animations.Running()) return;

        UIController.I.SetTime(GetHour(), GetMinute(), IsCloseToEnding() ? Color.red : Color.white);
        if (State is GameState.Day or GameState.Playing or GameState.WinGame && playerAction is PlayerAction.Nothing)
        {
            if (InputActions.ShootYourself.action.WasPerformedThisFrame()) ShootYourself();
            else if (InputActions.GoToSleep.action.WasPerformedThisFrame()) GoToSleep();
        }

        State = GetNextState();
    }

    private GameState GetNextState() => state switch
    {
        GameState.Day => playerAction switch
        {
            PlayerAction.ShootYourself => GameState.LostNight,
            PlayerAction.GoToSleep => GameState.WonNight,
            _ => GameState.Day
        },
        GameState.NightSetup => betweenNightsDelayTimer.IsRunning() ? GameState.NightSetup : GameState.Playing,
        GameState.Playing => !nightTimer.IsRunning()
            ? aiState is AnomalyAIState.Dreaming ? GameState.LostNight : GameState.WonNight
            : playerAction switch
            {
                PlayerAction.Nothing => GameState.Playing,
                PlayerAction.ShootYourself => aiState is AnomalyAIState.Dreaming ? GameState.WonNight : GameState.LostNight,
                PlayerAction.GoToSleep => aiState is AnomalyAIState.Dreaming ? GameState.LostNight : GameState.WonNight,
                _ => throw new ArgumentOutOfRangeException()
            },
        GameState.WonNight => ++timesWon == maxWins ? GameState.WinGame : GameState.NightSetup,
        GameState.LostNight => lostDelayTimer.IsRunning() ? GameState.LostNight : GameState.Day,
        GameState.WinGame => playerAction switch
        {
            PlayerAction.ShootYourself => GameState.LostNight,
            PlayerAction.GoToSleep => GameState.WinGameSleep,
            _ => GameState.WinGame
        },
        GameState.WinGameSleep => GameState.WinGame,
        _ => throw new ArgumentOutOfRangeException()
    };

    // Timer
    private const int DAY_HOUR = 19;
    private const int NIGHT_START_HOUR = 22;
    private const int END_MINUTE = 60;
    private const int CLOSE_TO_ENDING_TIME = 5;
    int GetHour() => GameState is GameState.Day ? DAY_HOUR : (NIGHT_START_HOUR + timesWon) % 24;
    int GetMinute() => GameState is not GameState.Playing ? 0 : Math.Min(END_MINUTE - 1, END_MINUTE * Mathf.FloorToInt(nightTimer.TimeUsed) / Mathf.FloorToInt(nightTimer.TotalTime));
    bool IsCloseToEnding() => GameState is GameState.Playing && nightTimer.TimeLeft < CLOSE_TO_ENDING_TIME;

    private void StateChanged(GameState oldState, GameState newState)
    {
        Debug.Log($"[{nameof(GameState)}] {oldState} -> {newState}");
        if (oldState is GameState.Playing)
        {
            if (playerAction is PlayerAction.Nothing) GoToSleep();
        }

        const float MS_TO_S = 0.001f;
        switch (newState)
        {
            case GameState.Day:
                const int openEyesDurationMS = 200;
                UIController.I.Clear(openEyesDurationMS);
                UIController.I.SetTime(20, 0);
                CameraController.ResetScene();

                timesWon = 0;
                anomalyAILevel = AnomalyAILevel.Easy;
                playerAction = PlayerAction.Nothing;

                SoundController.sunWinningLight.intensity = 1;
                break;
            case GameState.Playing:
                SoundController.Survived.Play();
                SoundController.Situp.Play();

                const int wakeUpDurationMS = 500;
                UIController.I.Clear(wakeUpDurationMS);
                CameraController.UprightAnimation(wakeUpDurationMS * MS_TO_S);
                nightTimer.Reset();
                playerAction = PlayerAction.Nothing;
                break;
            case GameState.WonNight:
                if (aiState is AnomalyAIState.Dreaming) anomalyAILevel++;
                break;
            case GameState.NightSetup:
                betweenNightsDelayTimer.Reset();
                AnomalyAI();
                break;
            case GameState.LostNight:
                SoundController.Lost.Play();

                const int lostGameFadeDurationMS = 1000;
                UIController.I.Fade(lostGameFadeDurationMS, withBlood: true);
                lostDelayTimer.Reset();
                break;
            case GameState.WinGame:
                SoundController.Win.Play();

                playerAction = PlayerAction.Nothing;
                SoundController.sunWinningLight.intensity++;
                break;
            case GameState.WinGameSleep:
                UIController.I.Clear(wakeUpDurationMS);
                CameraController.UprightAnimation(wakeUpDurationMS * MS_TO_S);
                break;
            default:
                throw new ArgumentOutOfRangeException(nameof(state), state, null);
        }
    }

    private void AnomalyAI()
    {
        AnomalyController.I.AnomalyReset();
        aiState = UnityEngine.Random.Range(0, 2) == 0 ? AnomalyAIState.Dreaming : AnomalyAIState.Awake;
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
                AnomalyController.I.AnomalyMove();
                break;
        }
    }
    private void ShootYourself()
    {
        SoundController.Gun.Play();
        playerAction = PlayerAction.ShootYourself;
        CameraController.DeathAnimation();
    }
    private void GoToSleep()
    {
        SoundController.LayDown.Play();
        playerAction = PlayerAction.GoToSleep;
        CameraController.LaydownAnimation(1.5f);
    }
}

public enum PlayerAction
{
    Nothing,
    ShootYourself,
    GoToSleep,
}

public enum GameState
{
    Day,
    Playing,
    WonNight,
    NightSetup,
    LostNight,
    WinGame,
    WinGameSleep
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

[Serializable]
public class RepeatedTimer
{
    public float TotalTime;
    public float TimeLeft;
    public float TimeUsed => TotalTime - TimeLeft;

    public RepeatedTimer(float totalTime)
    {
        TotalTime = totalTime;
        TimeLeft = totalTime;
    }
    public bool IsRunning()
    {
        if (TimeLeft <= 0.0f) return false;

        TimeLeft -= Time.deltaTime;
        return true;
    }
    public void Reset()
    {
        TimeLeft = TotalTime;
    }
}

public struct AnimationIndex
{
    public int position;
}

public sealed class AnimationList
{
    private readonly List<bool> _animations = new();
    public AnimationIndex Add()
    {
        _animations.Add(false);
        return new AnimationIndex { position = _animations.Count - 1 };
    }
    public void Complete(AnimationIndex animationIndex) => _animations[animationIndex.position] = true;

    public bool Running()
    {
        if (_animations.Any(t => !t)) return true;

        _animations.Clear();
        return false;
    }
}