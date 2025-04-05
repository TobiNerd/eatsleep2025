using UnityEngine;

namespace EatSleep.Step0
{
    [ExecuteInEditMode]
    public sealed class SpawnPointParent : MonoBehaviour
    {
        public Color gizmoCircle = Color.green;
        public float gizmoRadius = 0.5f;

        void OnDrawGizmos()
        {
            for (int i = 0; i < transform.childCount; i++)
            {
                Vector3 position = transform.GetChild(i).position;
                Gizmos.color = gizmoCircle;
                Gizmos.DrawSphere(position, gizmoRadius);
                // Gizmos.DrawIcon(position, "sv_label_3.png", true);
            }
        }
    }
}