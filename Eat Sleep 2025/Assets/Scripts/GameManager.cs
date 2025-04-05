using System;
using UnityEngine;
using UnityEngine.InputSystem;

public sealed class GameManager : Singleton<GameManager>
{
    public InputActionReferences InputActions;
    private PlayerInput _playerInput;

    public Action DeathEvent;
    public Action SleepEvent;

    [SerializeField] private GameState state = GameState.Day;
    [SerializeField] private NightAction nightAction = NightAction.Nothing;
    [SerializeField] private AnomalyAIState aiState = AnomalyAIState.Awake;

    [SerializeField] private AnomalyAILevel anomalyAILevel;
    public RepeatedTimer nightTimer = new(10.0f);
    public RepeatedTimer setupTimer = new(2.0f);

    private GameState State
    {
        get => state;
        set
        {
            if (State == value) return;

            StateEnd(State);
            StateStart(value);
            Debug.Log($"[{nameof(GameState)}] {value}");
            state = value;
        }
    }

    // Start is called once before the first execution of Update after the MonoBehaviour is created
    private void Start()
    {
        _playerInput = GetComponent<PlayerInput>();
        _playerInput.actions.FindActionMap("Debug").Enable();
    }
    private void Update()
    {
        State = State switch
        {
            GameState.Day => GameState.NightSetup,
            GameState.NightSetup => !setupTimer.Continue() ? GameState.NightSetup : GameState.Playing,
            GameState.Playing => NightLoop(),
            GameState.WonNight => GameState.NightSetup,
            GameState.LostNight => GameState.LostNight,
            _ => throw new ArgumentOutOfRangeException()
        };
    }

    private void StateStart(GameState state)
    {
        switch (state)
        {
            case GameState.Day:
                anomalyAILevel = AnomalyAILevel.Easy;
                break;
            case GameState.Playing:
                nightTimer.Reset();
                nightAction = NightAction.Nothing;
                InputActions.ShootYourself.action.performed += ShootYourself;
                InputActions.GoToSleep.action.performed += GoToSleep;
                break;
            case GameState.WonNight:
                if (aiState is AnomalyAIState.Dreaming) anomalyAILevel++;
                break;
            case GameState.NightSetup:
                setupTimer.Reset();
                // Fade to black
                // Make animation
                // Call anomaly logic
                AnomalyAI();
                break;
            case GameState.LostNight:
                break;
            default:
                throw new ArgumentOutOfRangeException(nameof(state), state, null);
        }
    }
    private void StateEnd(GameState state)
    {
        switch (state)
        {
            case GameState.Day:
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
            default:
                throw new ArgumentOutOfRangeException(nameof(state), state, null);
        }
    }

    private GameState NightLoop()
    {
        if (!nightTimer.Continue()) nightAction = NightAction.Timeout;

        if (nightAction is not NightAction.Nothing) Debug.Log($"[{nameof(GameState)}] {nameof(NightAction)} {nightAction}");
        bool isAnomaly = aiState is AnomalyAIState.Dreaming;
        return nightAction switch
        {
            NightAction.Nothing => GameState.Playing,
            NightAction.ShootYourself => isAnomaly ? GameState.WonNight : GameState.LostNight,
            NightAction.Timeout or NightAction.GoToSleep => isAnomaly ? GameState.LostNight : GameState.WonNight,
            _ => throw new ArgumentOutOfRangeException()
        };
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
        DeathEvent?.Invoke();
        nightAction = NightAction.ShootYourself;
    }
    private void GoToSleep()
    {
        SleepEvent?.Invoke();
        nightAction = NightAction.GoToSleep;
    }
    private void ShootYourself(InputAction.CallbackContext ctx) => ShootYourself();
    private void GoToSleep(InputAction.CallbackContext ctx) => GoToSleep();
}

public enum NightAction
{
    Nothing,
    ShootYourself,
    GoToSleep,
    Timeout,
}

public enum GameState
{
    Day,
    Playing,
    WonNight,
    NightSetup,
    LostNight
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
    public bool Continue()
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