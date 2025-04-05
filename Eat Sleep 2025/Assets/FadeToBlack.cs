using UnityEngine;
using UnityEngine.UIElements;

public class FadeToBlack : Singleton<FadeToBlack>
{
    private VisualElement black;

    private void OnEnable()
    {
        black = GetComponent<UIDocument>().rootVisualElement.Q("Black");
    }

    public void Fade(int fadeDurationMS)
    {
        Debug.Log($"[{nameof(FadeToBlack)}] {nameof(Fade)}");
        AnimationIndex index = GameManager.I.Animations.Add();
        black.experimental.animation.Start(0.0f, 1.0f, fadeDurationMS, (ve, t) => ve.style.opacity = t).OnCompleted(() => GameManager.I.Animations.Complete(index));
    }
    public void Clear(int fadeDurationMS)
    {
        Debug.Log($"[{nameof(FadeToBlack)}] {nameof(Clear)}");
        AnimationIndex index = GameManager.I.Animations.Add();
        black.experimental.animation.Start(1.0f, 0.0f, fadeDurationMS, (ve, t) => ve.style.opacity = t).OnCompleted(() => GameManager.I.Animations.Complete(index));
    }
}