using DG.Tweening;
using UnityEngine;
using UnityEngine.InputSystem;

public class CameraController : MonoBehaviour
{
    [SerializeField, Range(0.1f, 20.0f)] float DeathAnimationDuration = 5.0f;
    [SerializeField] private float lookDownTime = 0.5f;
    [SerializeField] private float dropTime = 0.3f;
    [SerializeField] private float bounceStrength = 10f;

    [Range(0.1f, 20f)] public float MoveSensitivity = 20f;
    [Range(0, 10f)] public float MoveDampening = 0.01f;
    public Vector2 RotationLimitVertical = new Vector2(-90f, 90f);
    public Vector2 RotationLimitHorizontal = new Vector2(-90f, 90f);

    [SerializeField] private bool disallowPlayerControl = false;
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
    private void OnEnable()
    {
        GameManager.I.DeathEvent += DeathAnimation;
        GameManager.I.InputActions.MouseDelta.action.performed += OnMouseMoved;
        Cursor.lockState = CursorLockMode.Locked;
        Cursor.visible = false;
    }
    private void OnDisable()
    {
        GameManager.I.DeathEvent -= DeathAnimation;
        GameManager.I.InputActions.MouseDelta.action.performed -= OnMouseMoved;
    }
    [ContextMenu("Death Animation")]
    void DeathAnimation()
    {
        Sequence deathSequence = DOTween.Sequence();

        // 1. Slowly tilt head downward (like giving up)
        deathSequence.Append(
            _camTransform.DOLocalRotate(new Vector3(45f, 0, 0), lookDownTime)
                .SetEase(Ease.InOutSine)
        );

        // 2. Drop the head fast
        deathSequence.Append(
            _camTransform.DOLocalRotate(new Vector3(90f, 0, 0), dropTime)
                .SetEase(Ease.InCubic)
        );

        // 3. Little bounce or shake at the end
        deathSequence.Append(
            _camTransform.DOShakeRotation(0.5f, new Vector3(10, 5, 5), vibrato: 8, randomness: 20)
        );

        deathSequence.OnComplete(() =>
        {
            Debug.Log("💀 Death animation complete.");
            // Optional: ragdoll, sound, disable control, etc.
        });
        // disallowPlayerControl = true;
        // Debug.Log($"{nameof(DeathAnimation)} Started");
        // Quaternion downwardsQuaternion = Quaternion.Euler(new Vector3(90f, 0f, 0f));
        //
        // _camTransform.DORotateQuaternion(downwardsQuaternion, DeathAnimationDuration)
        //     .SetEase(Ease.OutBounce)
        //     .OnComplete(() =>
        //     {
        //         Debug.Log($"{nameof(DeathAnimation)} Over");
        //         disallowPlayerControl = false;
        //     });
    }

    private void Update() => RotateCamera();
    private void OnMouseMoved(InputAction.CallbackContext ctx)
    {
        if (disallowPlayerControl) return;

        _mouseDelta = ctx.ReadValue<Vector2>();
        _rotationVelocity.x += _mouseDelta.x * MoveSensitivity * Time.deltaTime;
        _rotationVelocity.y -= _mouseDelta.y * MoveSensitivity * Time.deltaTime;
        _eulerRotation.x += _rotationVelocity.x;
        _eulerRotation.y += _rotationVelocity.y;

        _eulerRotation.x = Mathf.Clamp(_eulerRotation.x, RotationLimitHorizontal.x, RotationLimitHorizontal.y);
        _eulerRotation.y = Mathf.Clamp(_eulerRotation.y, RotationLimitVertical.x, RotationLimitVertical.y);
    }
    private void RotateCamera()
    {
        _camTransform.localRotation = Quaternion.Euler(_eulerRotation.y, _eulerRotation.x, 0f);

        _rotationVelocity *= MoveDampening * Time.deltaTime;
    }
}