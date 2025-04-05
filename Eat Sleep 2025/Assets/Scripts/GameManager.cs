using System;
using System.Collections.Generic;
using System.Linq;
using UnityEngine;
using UnityEngine.InputSystem;
using UnityEngine.Serialization;

public sealed class GameManager : Singleton<GameManager>
{
    public InputActionReferences InputActions;
    private PlayerInput _playerInput;

    public Action DeathEvent;
    public Action SleepEvent;
    public Action WakeUpEvent;
    public Action StartGameEvent;
    public Action LostGameEvent;
    public AnimationList Animations = new();

    [SerializeField] private GameState state;
    [SerializeField] private PlayerAction playerAction = PlayerAction.Nothing;
    [SerializeField] private AnomalyAIState aiState = AnomalyAIState.Awake;
    public bool IsNightPlaying => state == GameState.Playing;
    public GameState GameState => state;

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

            StateEnd(State, value);
            StateStart(value);
            Debug.Log($"[{nameof(GameState)}] {value}");
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
        var startupAsset = Resources.LoadAll<GameObject>("InstantiateOnStartup");
        foreach (var go in startupAsset)
        {
            GameObject spawn = Instantiate(go, this.transform);
            spawn.transform.localPosition = Vector3.zero;
        }
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
        if (Animations.Running()) return;

        State = state switch
        {
            GameState.Day => playerAction switch
            {
                PlayerAction.ShootYourself => GameState.LostNight,
                PlayerAction.GoToSleep => GameState.WonNight,
                _ => GameState.Day
            },
            GameState.NightSetup => betweenNightsDelayTimer.TickAndRunning() ? GameState.NightSetup : GameState.Playing,
            GameState.Playing => NightLoop(),
            GameState.WonNight => GameState.NightSetup,
            GameState.LostNight => lostDelayTimer.TickAndRunning() ? GameState.LostNight : GameState.Day,
            _ => throw new ArgumentOutOfRangeException()
        };
    }

    private void StateStart(GameState state)
    {
        switch (state)
        {
            case GameState.Day:
                StartGameEvent?.Invoke();
                anomalyAILevel = AnomalyAILevel.Easy;
                playerAction = PlayerAction.Nothing;
                InputActions.ShootYourself.action.performed += ShootYourself;
                InputActions.GoToSleep.action.performed += GoToSleep;
                break;
            case GameState.Playing:
                WakeUpEvent?.Invoke();
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
                lostDelayTimer.Reset();
                LostGameEvent?.Invoke();
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
            default:
                throw new ArgumentOutOfRangeException(nameof(oldState), oldState, null);
        }
    }

    private GameState NightLoop()
    {
        if (!nightTimer.TickAndRunning()) playerAction = PlayerAction.Timeout;

        if (playerAction is not PlayerAction.Nothing) Debug.Log($"[{nameof(GameState)}] {nameof(PlayerAction)} {playerAction}");
        bool isAnomaly = aiState is AnomalyAIState.Dreaming;
        return playerAction switch
        {
            PlayerAction.Nothing => GameState.Playing,
            PlayerAction.ShootYourself => isAnomaly ? GameState.WonNight : GameState.LostNight,
            PlayerAction.Timeout or PlayerAction.GoToSleep => isAnomaly ? GameState.LostNight : GameState.WonNight,
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
        if (playerAction is not PlayerAction.Nothing || Animations.Running()) return;
        playerAction = PlayerAction.ShootYourself;
        DeathEvent?.Invoke();
    }
    private void GoToSleep()
    {
        if (playerAction is not PlayerAction.Nothing || Animations.Running()) return;
        playerAction = PlayerAction.GoToSleep;
        SleepEvent?.Invoke();
    }
    private void ShootYourself(InputAction.CallbackContext ctx) => ShootYourself();
    private void GoToSleep(InputAction.CallbackContext ctx) => GoToSleep();
}

public enum PlayerAction
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
    public bool TickAndRunning()
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