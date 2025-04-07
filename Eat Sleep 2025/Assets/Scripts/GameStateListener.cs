using System;
using UnityEngine;

public class GameStateListener : MonoBehaviour
{
    public GameState EnabledState;

    private void Awake()
    {
        CheckState();
        GameManager.OnStateChanged += OnStateChanged;
    }

    private void CheckState()
    {
        gameObject.SetActive(GameManager.I.GameState == EnabledState);
    }

    private void OnStateChanged(GameState state)
    {
        CheckState();
    }

    private void OnDestroy()
    {
        GameManager.OnStateChanged -= OnStateChanged;
    }
}