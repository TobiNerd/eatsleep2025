using System;
using UnityEngine;
using UnityEngine.InputSystem;

public sealed class GameManager : Singleton<GameManager>
{
    public InputActionReferences InputActions;
    private PlayerInput _playerInput;

    // Start is called once before the first execution of Update after the MonoBehaviour is created
    private void Start()
    {
        _playerInput = GetComponent<PlayerInput>();
        _playerInput.actions.FindActionMap("Debug").Enable();
    }

    [SerializeField] private GameState State = GameState.Day;
    [SerializeField] private NightActions Actions = NightActions.Nothing;

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
        if (State is not GameState.Playing) Debug.Log($"[{nameof(State)}] {State}");
    }

    // Timer
    public RepeatedTimer nightTimer = new(10.0f);
    public RepeatedTimer setupTimer = new(2.0f);

    private GameState NightLoop()
    {
        if (!nightTimer.Continue()) Actions = NightActions.Timeout;

        bool isAnomaly = UnityEngine.Random.Range(0, 2) == 0;
        return Actions switch
        {
            NightActions.Nothing => GameState.Playing,
            NightActions.ShootYourself => isAnomaly ? GameState.WonNight : GameState.LostNight,
            NightActions.Timeout or NightActions.GoBackToSleep => isAnomaly ? GameState.LostNight : GameState.WonNight,
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
}

public enum NightActions
{
    Nothing,
    ShootYourself,
    GoBackToSleep,
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