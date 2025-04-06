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

    public void Fade(int fadeDurationMS, bool withBlood = false)
    {
        Debug.Log($"[{nameof(UIController)}] {nameof(Fade)}");
        AnimationIndex index = GameManager.I.Animations.Add();
        _black.experimental.animation.Start(_black.style.opacity.value, 1.0f, fadeDurationMS, (ve, t) => ve.style.opacity = t).OnCompleted(() => GameManager.I.Animations.Complete(index));
        const float delayPercentage = 0.5f;
        if (withBlood) _red.experimental.animation.Start(_red.style.opacity.value, 1.0f, fadeDurationMS, (ve, t) => ve.style.opacity = (t - delayPercentage) / (1 - delayPercentage));
    }
    public void Clear(int fadeDurationMS)
    {
        Debug.Log($"[{nameof(UIController)}] {nameof(Clear)}");
        AnimationIndex index = GameManager.I.Animations.Add();
        _black.experimental.animation.Start(_black.style.opacity.value, 0.0f, fadeDurationMS, (ve, t) => ve.style.opacity = t).OnCompleted(() => GameManager.I.Animations.Complete(index));
        _red.experimental.animation.Start(_red.style.opacity.value, 0.0f, fadeDurationMS, (ve, t) => ve.style.opacity = t);
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