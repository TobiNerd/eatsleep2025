using System;
using UnityEngine;

namespace EatSleep.Step0
{
    public static class AnomalyExtensions
    {
        public static void AnomalySwap(this Transform self, Transform other, SwapFlags swapFlags)
        {
            if (swapFlags.HasFlag(SwapFlags.Position)) (self.position, other.position) = (other.position, self.position);
            if (swapFlags.HasFlag(SwapFlags.Rotation)) (self.rotation, other.rotation) = (other.rotation, self.rotation);
        }
    }

    [Flags]
    public enum SwapFlags
    {
        Position = 1 << 1,
        Rotation = 1 << 2,
    }
}