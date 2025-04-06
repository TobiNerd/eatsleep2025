using UnityEngine;

public sealed class AnomalySwap : Anomaly
{
    public AnomalyFlag sourceFlag;
    public Vector3 OriginalPosition { get; set; }
    public Quaternion OriginalRotation { get; set; }
}