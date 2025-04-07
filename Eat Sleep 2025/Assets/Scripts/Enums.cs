public enum SubState
{
    StateRunning,
    StateTransitioning,
}

public enum PlayerAction
{
    PlayerNone,
    PlayerGoingToSleep,
    PlayerShootingThemselves,
}

public enum GameState
{
    Day,
    Night,
    GameOver,
    GameWon,
}

public enum AnomalyAIState
{
    AnomalyNone,
    AnomalyActive
}

public enum AnomalyAILevel
{
    AIObvious,
    AIEasy,
    AIMedium,
    AIHard,
    AIVeryHard,
}

public enum TimerState
{
    TimerFinished,
    TimerPlaying,
}

public enum PlayerAnimationState
{
    PlayerNone,
    PlayerLayDown,
    PlayerSitUp,
    PlayerDeath
}