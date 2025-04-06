using System;
using UnityEngine;
using UnityEngine.Serialization;

public class Anomaly : MonoBehaviour
{
    public NightEvent NightEvent;
     public AnomalyFlag anomalyFlags;

    public void Start()
    {
        NightEvent.Start();
    }

    public void OnDestroy()
    {
        NightEvent.End();
    }
}

[Flags]
public enum AnomalyFlag
{
    None = 0,
    Floor = 1,
    Wall = 2,
    Ceiling = 4,
    Window = 8,
    Table = 16,
    Shelf = 32,
    SFX = 64,
}