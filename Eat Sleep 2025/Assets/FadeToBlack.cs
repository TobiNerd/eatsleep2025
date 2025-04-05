using UnityEngine;
using UnityEngine.UIElements;

public class FadeToBlack : Singleton<FadeToBlack>
{
    private VisualElement _black;
    private VisualElement _red;

    private void OnEnable()
    {
        _black = GetComponent<UIDocument>().rootVisualElement.Q("Black");
        _red = GetComponent<UIDocument>().rootVisualElement.Q("Red");
        _black.style.opacity = 0.0f;
        _red.style.opacity = 0.0f;
    }

    public void Black()
    {
        _black.style.opacity = 1.0f;
    }
    public void Fade(int fadeDurationMS, bool withBlood = false)
    {
        Debug.Log($"[{nameof(FadeToBlack)}] {nameof(Fade)}");
        AnimationIndex index = GameManager.I.Animations.Add();
        _black.experimental.animation.Start(_black.style.opacity.value, 1.0f, fadeDurationMS, (ve, t) => ve.style.opacity = t).OnCompleted(() => GameManager.I.Animations.Complete(index));
        const float delayPercentage = 0.5f;
        if (withBlood) _red.experimental.animation.Start(_red.style.opacity.value, 1.0f, fadeDurationMS, (ve, t) => ve.style.opacity = (t - delayPercentage) / (1 - delayPercentage));
    }
    public void Clear(int fadeDurationMS)
    {
        Debug.Log($"[{nameof(FadeToBlack)}] {nameof(Clear)}");
        AnimationIndex index = GameManager.I.Animations.Add();
        _black.experimental.animation.Start(_black.style.opacity.value, 0.0f, fadeDurationMS, (ve, t) => ve.style.opacity = t).OnCompleted(() => GameManager.I.Animations.Complete(index));
        _red.experimental.animation.Start(_red.style.opacity.value, 0.0f, fadeDurationMS, (ve, t) => ve.style.opacity = t);
    }
}