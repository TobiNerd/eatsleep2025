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
        if (GameManager.I.GameState == EnabledState)
            gameObject.SetActive(true);
        else
            gameObject.SetActive(false);
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