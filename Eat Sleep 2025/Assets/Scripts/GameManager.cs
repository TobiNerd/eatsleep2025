using System;
using System.Collections.Generic;
using System.Linq;
using UnityEngine;
using UnityEngine.InputSystem;

public sealed class GameManager : Singleton<GameManager>
{
    public InputActionReferences InputActions;
    private PlayerInput _playerInput;

    public Action DeathEvent;
    public Action SleepEvent;
    public Action WakeUpEvent;
    public AnimationList Animations = new();

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

            StateEnd(State, value);
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
        if (Animations.Running()) return;

        State = state switch
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
                const int openEyesDurationMS = 1000;
                FadeToBlack.I.Clear(openEyesDurationMS);
                anomalyAILevel = AnomalyAILevel.Easy;
                break;
            case GameState.Playing:
                WakeUpEvent?.Invoke();
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
                AnomalyAI();
                break;
            case GameState.LostNight:
                break;
            default:
                throw new ArgumentOutOfRangeException(nameof(state), state, null);
        }
    }
    private void StateEnd(GameState oldState, GameState newState)
    {
        switch (oldState)
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
                throw new ArgumentOutOfRangeException(nameof(oldState), oldState, null);
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
        nightAction = NightAction.ShootYourself;
        DeathEvent?.Invoke();
    }
    private void GoToSleep()
    {
        nightAction = NightAction.GoToSleep;
        SleepEvent?.Invoke();
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

public struct AnimationIndex
{
    public int position;
}
public class AnimationList
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