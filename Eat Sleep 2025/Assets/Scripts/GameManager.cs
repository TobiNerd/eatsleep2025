using System;
using System.Collections.Generic;
using System.Linq;
using UnityEngine;
using UnityEngine.InputSystem;

public sealed class GameManager : Singleton<GameManager>
{
    public CameraController CameraController;
    public InputActionReferences InputActions;
    private PlayerInput _playerInput;

    public AnimationList Animations = new();

    [SerializeField] private GameState state;
    [SerializeField] private PlayerAction playerAction = PlayerAction.Nothing;
    [SerializeField] private AnomalyAIState aiState = AnomalyAIState.Awake;
    public bool IsNightPlaying => state == GameState.Playing;
    public GameState GameState => state;

    [SerializeField] private int maxWins = 10;
    [SerializeField] private int timesWon = 0;
    [SerializeField] private AnomalyAILevel anomalyAILevel;
    public RepeatedTimer nightTimer = new(30.0f);
    public RepeatedTimer betweenNightsDelayTimer = new(2.0f);
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

    // Start is called once before the first execution of Update after the MonoBehaviour is created
    private void Start()
    {
        _playerInput = GetComponent<PlayerInput>();
        _playerInput.actions.FindActionMap("Debug").Enable();
        state = GameState.LostNight;
    }
    private void Update()
    {
        if (!Animations.Running()) State = GetNextState();
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
            _ => GameState.WinGame
        },
        _ => throw new ArgumentOutOfRangeException()
    };

    private void StateChanged(GameState oldState, GameState newState)
    {
        Debug.Log($"[{nameof(GameState)}] {newState}");
        switch (oldState)
        {
            case GameState.Day:
                InputActions.ShootYourself.action.performed -= ShootYourself;
                InputActions.GoToSleep.action.performed -= GoToSleep;
                break;
            case GameState.Playing:
                InputActions.ShootYourself.action.performed -= ShootYourself;
                InputActions.GoToSleep.action.performed -= GoToSleep;
                break;
            case GameState.WonNight:
                break;
            case GameState.NightSetup:
                break;
            case GameState.LostNight:
                break;
            case GameState.WinGame:
                InputActions.ShootYourself.action.performed -= ShootYourself;
                InputActions.GoToSleep.action.performed -= GoToSleep;
                break;
            default:
                throw new ArgumentOutOfRangeException(nameof(oldState), oldState, null);
        }

        const float MS_TO_S = 0.001f;
        switch (newState)
        {
            case GameState.Day:
                const int openEyesDurationMS = 200;
                FadeToBlack.I.Clear(openEyesDurationMS);
                CameraController.ResetScene();

                timesWon = 0;
                anomalyAILevel = AnomalyAILevel.Easy;
                playerAction = PlayerAction.Nothing;
                InputActions.ShootYourself.action.performed += ShootYourself;
                InputActions.GoToSleep.action.performed += GoToSleep;
                break;
            case GameState.Playing:
                const int wakeUpDurationMS = 500;
                FadeToBlack.I.Clear(wakeUpDurationMS);
                CameraController.UprightAnimation(wakeUpDurationMS * MS_TO_S);

                nightTimer.Reset();
                playerAction = PlayerAction.Nothing;
                InputActions.ShootYourself.action.performed += ShootYourself;
                InputActions.GoToSleep.action.performed += GoToSleep;
                break;
            case GameState.WonNight:
                if (aiState is AnomalyAIState.Dreaming) anomalyAILevel++;
                break;
            case GameState.NightSetup:
                betweenNightsDelayTimer.Reset();
                AnomalyAI();
                break;
            case GameState.LostNight:
                const int lostGameFadeDurationMS = 1000;
                FadeToBlack.I.Fade(lostGameFadeDurationMS, withBlood: true);
                lostDelayTimer.Reset();
                break;
            case GameState.WinGame:
                InputActions.ShootYourself.action.performed += ShootYourself;
                InputActions.GoToSleep.action.performed += GoToSleep;
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
                throw new ArgumentOutOfRangeException("You survived and won!!!");
        }
    }
    private void ShootYourself()
    {
        if (playerAction is not PlayerAction.Nothing || Animations.Running()) return;

        playerAction = PlayerAction.ShootYourself;
        CameraController.DeathAnimation();
    }
    private void GoToSleep()
    {
        if (playerAction is not PlayerAction.Nothing || Animations.Running()) return;

        playerAction = PlayerAction.GoToSleep;
        CameraController.LaydownAnimation(1.5f);
    }
    private void ShootYourself(InputAction.CallbackContext ctx) => ShootYourself();
    private void GoToSleep(InputAction.CallbackContext ctx) => GoToSleep();
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
    WinGame
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