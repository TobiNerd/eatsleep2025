using System;
using System.Collections.Generic;
using UnityEngine;
using Random = UnityEngine.Random;

[Flags]
public enum SwapFlags
{
    Position = 1 << 1,
    Rotation = 1 << 2,
}

public static class AnomalyExtensions
{
    public static void AnomalySwap(this Transform self, Transform other, SwapFlags swapFlags)
    {
        if (swapFlags.HasFlag(SwapFlags.Position)) (self.position, other.position) = (other.position, self.position);
        if (swapFlags.HasFlag(SwapFlags.Rotation)) (self.rotation, other.rotation) = (other.rotation, self.rotation);
    }

    public static IEnumerable<Transform> Children(this Transform self)
    {
        for (int i = 0; i < self.childCount; i++) yield return self.GetChild(i);
    }

    public static T GetRandom<T>(this List<T> list) => list[Random.Range(0, list.Count)];

    public static (T, T) GetRandom2<T>(this List<T> list)
    {
        int n1 = Random.Range(0, list.Count);
        int n2 = Random.Range(0, list.Count - 1);
        if (n2 >= n1) n2++;
        return (list[n1], list[n2]);
    }
}