using System;
using UnityEngine;
using UnityEngine.InputSystem;
using UnityEngine.Serialization;

public sealed class GameManager : Singleton<GameManager>
{
    public InputActionReferences InputActions;
    private PlayerInput _playerInput;

    [SerializeField] private GameState _state = GameState.Day;
    [FormerlySerializedAs("Actions")] [SerializeField] private NightActions NightAction = NightActions.Nothing;
    public RepeatedTimer nightTimer = new(10.0f);
    public RepeatedTimer setupTimer = new(2.0f);

    private GameState State
    {
        get => _state;
        set
        {
            if (State == value) return;

            StateEnd(State);
            StateStart(value);
            _state = value;
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
            GameState.NightSetup => NightSetup(),
            GameState.Playing => NightLoop(),
            GameState.WonNight => GameState.NightSetup,
            GameState.LostNight => GameState.LostNight,
            _ => throw new ArgumentOutOfRangeException()
        };
    }

    private void StateStart(GameState state)
    {
        Debug.Log($"[{nameof(State)}] {State}");
        switch (state)
        {
            case GameState.Day:
                break;
            case GameState.Playing:
                NightAction = NightActions.Nothing;
                InputActions.ShootYourself.action.performed += ShootYourself;
                InputActions.GoToSleep.action.performed += GoToSleep;
                break;
            case GameState.WonNight:
            case GameState.NightSetup:
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
        if (!nightTimer.Continue()) NightAction = NightActions.Timeout;

        if (NightAction is not NightActions.Nothing) Debug.Log($"[{nameof(GameState)}] {nameof(NightActions)} {NightAction}");
        bool isAnomaly = UnityEngine.Random.Range(0, 2) == 0;
        return NightAction switch
        {
            NightActions.Nothing => GameState.Playing,
            NightActions.ShootYourself => isAnomaly ? GameState.WonNight : GameState.LostNight,
            NightActions.Timeout or NightActions.GoToSleep => isAnomaly ? GameState.LostNight : GameState.WonNight,
            _ => throw new ArgumentOutOfRangeException()
        };
    }
    private GameState NightSetup()
    {
        if (!setupTimer.Continue())
        {
            // Fade to black
            // ANOMALIES SET UP
            return GameState.NightSetup;
        }

        return GameState.Playing;
    }

    void ShootYourself()
    {
        // Do animation
        NightAction = NightActions.ShootYourself;
    }
    void GoToSleep()
    {
        // Do Animations
        NightAction = NightActions.GoToSleep;
    }
    void ShootYourself(InputAction.CallbackContext ctx) => ShootYourself();
    void GoToSleep(InputAction.CallbackContext ctx) => GoToSleep();
}

public enum NightActions
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