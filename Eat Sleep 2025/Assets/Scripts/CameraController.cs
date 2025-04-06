using DG.Tweening;
using UnityEngine;
using UnityEngine.InputSystem;

public class CameraController : MonoBehaviour
{
    [SerializeField] private float headLiftTime = 1.5f;
    [SerializeField] private float lookDownTime = 0.5f;
    [SerializeField] private float dropTime = 0.3f;
    [SerializeField] private float bounceStrength = 10f;

    private static readonly Quaternion uprigthTorso = Quaternion.Euler(new Vector3(0.0f, -90.0f, 0.0f));
    private static readonly Quaternion layingDownTorso = Quaternion.Euler(new Vector3(-90.0f, -90.0f, 0.0f));

    [Range(0.1f, 20f)] public float MoveSensitivity = 20f;
    [Range(0, 10f)] public float MoveDampening = 0.01f;
    public Vector2 RotationLimitVertical = new(-90f, 90f);
    public Vector2 RotationLimitHorizontal = new(-90f, 90f);

    private Camera _cam;
    private Transform _head;
    private Transform _torso;

    private Vector2 _accelerationOffset;
    private Vector2 _mouseDelta;
    private Vector2 _rotationVelocity;
    private Vector2 _eulerRotation;


    private void Awake()
    {
        _cam = GetComponentInChildren<Camera>();
        _head = _cam.transform;
        _torso = _head.parent;

        Vector3 startEuler = _head.localRotation.eulerAngles;
        _eulerRotation = new Vector2(startEuler.y, startEuler.x);
        ResetScene();
    }
    private void OnEnable()
    {
        GameManager.I.InputActions.MouseDelta.action.performed += OnMouseMoved;
        Cursor.lockState = CursorLockMode.Locked;
        Cursor.visible = false;
    }
    private void OnDisable()
    {
        GameManager.I.InputActions.MouseDelta.action.performed -= OnMouseMoved;
    }

    public void ResetScene() => _torso.localRotation = uprigthTorso;

    public void UprightAnimation(float durationS)
    {
        AnimationIndex index = GameManager.I.Animations.Add();
        Sequence sequence = DOTween.Sequence();
        sequence.Append(_torso.DOLocalRotateQuaternion(uprigthTorso, durationS).SetEase(Ease.OutSine));
        sequence.OnComplete(() =>
        {
            Debug.Log("🌅 Wake-up animation done");
            GameManager.I.Animations.Complete(index);
        });
    }
    public void LaydownAnimation(float durationS)
    {
        AnimationIndex index = GameManager.I.Animations.Add();
        Sequence sequence = DOTween.Sequence();
        sequence.Append(_torso.DOLocalRotateQuaternion(layingDownTorso, durationS).SetEase(Ease.OutSine));
        sequence.OnComplete(() =>
        {
            Debug.Log("😴 Sleep animation almost done");
            const int asleepDurationMS = 1000;
            UIController.I.Fade(asleepDurationMS);
            GameManager.I.Animations.Complete(index);
        });
    }
    public void DeathAnimation()
    {
        AnimationIndex index = GameManager.I.Animations.Add();
        Sequence deathSequence = DOTween.Sequence();

        deathSequence.Append(_head.DOLocalRotate(new Vector3(45f, 0, 0), lookDownTime).SetEase(Ease.InOutSine));
        deathSequence.Append(_head.DOLocalRotate(new Vector3(90f, 0, 0), dropTime).SetEase(Ease.InCubic));
        deathSequence.Append(_head.DOShakeRotation(0.5f, new Vector3(10, 5, 5), vibrato: 8, randomness: 20));
        deathSequence.OnComplete(() =>
        {
            Debug.Log("💀 Death animation complete.");
            GameManager.I.Animations.Complete(index);
            _torso.localRotation = layingDownTorso;
        });
    }

    private void Update() => RotateCamera();
    private void OnMouseMoved(InputAction.CallbackContext ctx)
    {
        if (GameManager.I.Animations.Running() || GameManager.I.GameState is not GameState.Day and not GameState.Playing and not GameState.WinGame) return;

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
        _head.localRotation = Quaternion.Euler(_eulerRotation.y, _eulerRotation.x, 0f);

        _rotationVelocity *= MoveDampening * Time.deltaTime;
    }
}