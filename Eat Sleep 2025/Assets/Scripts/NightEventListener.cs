using System;
using UnityEngine;

public class NightEventListener : MonoBehaviour
{
    public NightEvent NightEvent;

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