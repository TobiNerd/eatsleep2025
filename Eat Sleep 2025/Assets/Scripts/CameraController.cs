using System;
using UnityEngine;
using UnityEngine.InputSystem;
using UnityEngine.Serialization;

public class CameraController : MonoBehaviour
{
    [Range(0.1f, 20f)]
    public float MoveSensitivity = 20f;
    [Range(0, 10f)]
    public float MoveDampening = 0.01f;
    public Vector2 RotationLimitVertical = new Vector2(-90f, 90f);
    public Vector2 RotationLimitHorizontal = new Vector2(-90f, 90f);
    
    private Camera _cam;
    private Transform _camTransform;
    
    private Vector2 _accelerationOffset; 
    private Vector2 _mouseDelta;
    private Vector2 _rotationVelocity;
    private Vector2 _eulerRotation;

    private void Awake()
    {
        _cam = GetComponentInChildren<Camera>();
        _camTransform = _cam.transform;
        
        Vector3 startEuler = _camTransform.localRotation.eulerAngles;
        _eulerRotation = new Vector2(startEuler.y, startEuler.x);
    }

    private void Start()
    {
        GameManager.I.InputActions.MouseDelta.action.performed += OnMouseMoved;
        Cursor.lockState = CursorLockMode.Locked;
        Cursor.visible = false;
    }
    
    private void OnDestroy()
    {
        GameManager.I.InputActions.MouseDelta.action.performed -= OnMouseMoved;
    }

    private void Update()
    {
        RotateCamera();
    }

    private void OnMouseMoved(InputAction.CallbackContext ctx)
    {
        _mouseDelta = ctx.ReadValue<Vector2>();
        _rotationVelocity.x += _mouseDelta.x * MoveSensitivity * Time.deltaTime;
        _rotationVelocity.y -= _mouseDelta.y * MoveSensitivity * Time.deltaTime;
        _eulerRotation.x += _rotationVelocity.x;
        _eulerRotation.y -= _rotationVelocity.y;
        
        _eulerRotation.x = Mathf.Clamp(_eulerRotation.x, RotationLimitHorizontal.x, RotationLimitHorizontal.y);
        _eulerRotation.y = Mathf.Clamp(_eulerRotation.y, RotationLimitVertical.x, RotationLimitVertical.y);
    }
    
    private void RotateCamera()
    {
        _camTransform.localRotation = Quaternion.Euler(_eulerRotation.y, _eulerRotation.x, 0f);
        
        _rotationVelocity *= MoveDampening * Time.deltaTime;
    }
}