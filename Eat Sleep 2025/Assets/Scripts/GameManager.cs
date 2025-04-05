using System;
using UnityEngine;
using UnityEngine.InputSystem;

public sealed class GameManager : Singleton<GameManager>
{
    public InputActionReferences InputActions;
    private PlayerInput _playerInput;

    [SerializeField] private GameState state = GameState.Day;
    [SerializeField] private NightAction nightAction = NightAction.Nothing;
    [SerializeField] private AnomalyAIState aiState = AnomalyAIState.Awake;
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
                break;
            case GameState.Playing:
                nightAction = NightAction.Nothing;
                InputActions.ShootYourself.action.performed += ShootYourself;
                InputActions.GoToSleep.action.performed += GoToSleep;
                break;
            case GameState.WonNight:
                break;
            case GameState.NightSetup:
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
        if (aiState is AnomalyAIState.Dreaming)
        {
            AnomalyController.I.AnomalySwap();
        }
    }
    private void ShootYourself()
    {
        // Do animation
        nightAction = NightAction.ShootYourself;
    }
    private void GoToSleep()
    {
        // Do Animations
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
        if (TimeLeft <= 0.0f)
        {
            Reset();
            return false;
        }

        TimeLeft -= Time.deltaTime;
        return true;
    }

    private void Reset()
    {
        TimeLeft = TotalTime;
    }
}