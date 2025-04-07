using DG.Tweening;
using UnityEngine;
using UnityEngine.UIElements;

public sealed class UIController : Singleton<UIController>
{
    private VisualElement _black;
    private VisualElement _red;
    private Label _time;

    private int hours;
    private int minutes;

    private void OnEnable()
    {
        _black = GetComponent<UIDocument>().rootVisualElement.Q("Black");
        _red = GetComponent<UIDocument>().rootVisualElement.Q("Red");
        _time = GetComponent<UIDocument>().rootVisualElement.Q<Label>("Time");
        _black.style.opacity = 0.0f;
        _red.style.opacity = 0.0f;
    }

    private static Tween FadeAnimation(VisualElement ve, float to, int fadeDurationMS)
    {
        GameManager.I.BlockingCounter.Add();
        return DOTween.To(v => ve.style.opacity = v, ve.style.opacity.value, to, fadeDurationMS * CameraController.MS_TO_S)
            .OnComplete(() => GameManager.I.BlockingCounter.Release());
    }
    public Tween Fade(int fadeDurationMS, bool withBlood = false)
    {
        Debug.Log($"[{nameof(UIController)}] {nameof(Fade)}");
        if (withBlood)
        {
            const float redDelayPercentage = 0.5f;
            _red.experimental.animation.Start(_red.style.opacity.value, 1.0f, fadeDurationMS, (ve, t) => ve.style.opacity = (t - redDelayPercentage) / (1 - redDelayPercentage));
        }

        return FadeAnimation(_black, 1.0f, fadeDurationMS);
    }
    public Tween Clear(int fadeDurationMS)
    {
        Debug.Log($"[{nameof(UIController)}] {nameof(Clear)}");
        FadeAnimation(_red, 0.0f, fadeDurationMS);
        return FadeAnimation(_black, 0.0f, fadeDurationMS);
    }
    public void SetTime(int hr, int min, Color? color = null)
    {
        if (hours == hr && minutes == min) return;

        Color col = color ?? Color.white;
        hours = hr;
        minutes = min;
        _time.text = $"<color=#{(int)(col.r * 255):X2}{(int)(col.g * 255):X2}{(int)(col.b * 255):X2}>{hr:D2}:{min:D2}</color>";
    }
}