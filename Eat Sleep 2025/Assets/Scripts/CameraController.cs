using DG.Tweening;
using UnityEngine;

public class CameraController : MonoBehaviour
{
    public const float MS_TO_S = 0.001f;

    [SerializeField] private float lookDownTime = 0.5f;
    [SerializeField] private float dropTime = 0.3f;

    private static readonly Quaternion uprigthTorso = Quaternion.Euler(new Vector3(0.0f, -90.0f, 0.0f));
    private static readonly Quaternion layingDownTorso = Quaternion.Euler(new Vector3(-90.0f, -90.0f, 0.0f));

    [Range(0.1f, 20f)] public float MoveSensitivity = 20f;
    [Range(0, 10f)] public float MoveDampening = 0.01f;
    public Vector2 RotationLimitVertical = new(-90f, 90f);
    public Vector2 RotationLimitHorizontal = new(-90f, 90f);

    private Camera _cam;
    private Transform _head;
    private Transform _torso;

    [field: SerializeField] public PlayerAnimationState PlayerAnimationState { get; set; } = PlayerAnimationState.PlayerNone;

    private Vector2 _accelerationOffset;
    private Vector2 _mouseDelta;
    [SerializeField] private Vector2 _rotationVelocity;
    [SerializeField] private Vector2 _eulerRotation;

    private void Awake()
    {
        _cam = GetComponentInChildren<Camera>();
        _head = _cam.transform;
        _torso = _head.parent;

        ResetScene();
    }
    private void OnEnable()
    {
        Cursor.lockState = CursorLockMode.Locked;
        Cursor.visible = false;
    }
    private void Update() => _rotationVelocity *= MoveDampening * Time.deltaTime;

    public void ResetScene()
    {
        _torso.localRotation = uprigthTorso;
        ResetHead();
    }
    private void ResetHead()
    {
        _eulerRotation = new Vector2();
        MovePlayerHead(new Vector2());
    }

    public void SitUpAnimation(int durationMS)
    {
        PlayerAnimationState = PlayerAnimationState.PlayerSitUp;

        ResetHead();
        CreateAnimationSequence()
            .Append(_torso.DOLocalRotateQuaternion(uprigthTorso, durationMS * MS_TO_S).SetEase(Ease.OutSine));
    }
    public void LayDownAnimation(int durationMS)
    {
        PlayerAnimationState = PlayerAnimationState.PlayerLayDown;

        const int asleepDurationMS = 1000;
        CreateAnimationSequence()
            .Append(_torso.DOLocalRotateQuaternion(layingDownTorso, durationMS * MS_TO_S).SetEase(Ease.OutSine))
            .Join(_head.DOLocalRotateQuaternion(Quaternion.identity, durationMS * MS_TO_S))
            .Append(UIController.I.Fade(asleepDurationMS));
    }
    public void DeathAnimation()
    {
        PlayerAnimationState = PlayerAnimationState.PlayerDeath;

        CreateAnimationSequence()
            .Append(_head.DOLocalRotate(new Vector3(45f, 0, 0), lookDownTime).SetEase(Ease.InOutSine))
            .Append(_head.DOLocalRotate(new Vector3(90f, 0, 0), dropTime).SetEase(Ease.InCubic))
            .Append(_head.DOShakeRotation(0.5f, new Vector3(10, 5, 5), vibrato: 8, randomness: 20))
            .Append(UIController.I.Fade(500));
    }

    private Sequence CreateAnimationSequence()
    {
        GameManager.I.BlockingCounter.Add();

        if (PlayerAnimationState is not PlayerAnimationState.PlayerNone) Debug.LogWarning($"[{nameof(PlayerAnimationState)}] Current: {PlayerAnimationState} Expected: {PlayerAnimationState.PlayerNone}");

        return DOTween.Sequence().OnComplete(() =>
        {
            GameManager.I.BlockingCounter.Release();
            PlayerAnimationState = PlayerAnimationState.PlayerNone;
        });
    }
    public void MovePlayerHead(Vector2 mouseDelta)
    {
        _mouseDelta = mouseDelta;
        _rotationVelocity.x += _mouseDelta.x * MoveSensitivity * Time.deltaTime;
        _rotationVelocity.y -= _mouseDelta.y * MoveSensitivity * Time.deltaTime;
        _eulerRotation.x += _rotationVelocity.x;
        _eulerRotation.y += _rotationVelocity.y;

        _eulerRotation.x = Mathf.Clamp(_eulerRotation.x, RotationLimitHorizontal.x, RotationLimitHorizontal.y);
        _eulerRotation.y = Mathf.Clamp(_eulerRotation.y, RotationLimitVertical.x, RotationLimitVertical.y);

        _head.localRotation = Quaternion.Euler(_eulerRotation.y, _eulerRotation.x, 0f);
    }
}