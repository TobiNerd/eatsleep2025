using UnityEngine;
using UnityEngine.InputSystem;

public class GameManager : Singleton<GameManager>
{
    public InputActionReferences InputActions;
    private PlayerInput _playerInput;
    
    // Start is called once before the first execution of Update after the MonoBehaviour is created
    void Start()
    {
        _playerInput = GetComponent<PlayerInput>();
        _playerInput.actions.FindActionMap("Debug").Enable();
    }

    // Update is called once per frame
    void Update()
    {
        
    }
}
