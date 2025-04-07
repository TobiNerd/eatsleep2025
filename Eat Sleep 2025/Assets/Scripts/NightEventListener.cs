using UnityEngine;

public class NightEventListener : MonoBehaviour
{
    public NightEvent NightEvent;

    [ContextMenu("Test")]
    private void Test()
    {
        NightEvent.Start();
    }

    private void Start()
    {
        NightEventSystem.I.nightEvents.Add(NightEvent);
    }

    private void OnDestroy()
    {
        if (NightEventSystem.I)
            NightEventSystem.I.nightEvents.Remove(NightEvent);
    }
}