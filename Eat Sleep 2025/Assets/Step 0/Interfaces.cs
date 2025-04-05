using System;
using UnityEngine;

namespace EatSleep.Step0
{
    public interface IChangeColorAnomaly
    {
        void ChangeColor(Color color);
    }

    public interface IChangeModelAnomaly
    {
        void ChangeColor(MeshFilter self, Mesh other) => self.mesh = other;
    }





    public interface IFlipAnomaly
    {
        void Flip(Transform self) => self.rotation *= Quaternion.AngleAxis(180, Vector3.up);
    }

    public interface IResetAnomaly
    {
        void Reset();
    }
}