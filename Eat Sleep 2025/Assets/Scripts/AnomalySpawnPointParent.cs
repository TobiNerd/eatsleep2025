using UnityEngine;

[ExecuteInEditMode]
public sealed class AnomalySpawnPointParent : MonoBehaviour
{
    public AnomalyFlag anomalyFlag;
    public Color gizmoCircle = Color.green;
    public float gizmoRadius = 0.5f;

    private void OnDrawGizmos()
    {
        for (int i = 0; i < transform.childCount; i++)
        {
            Vector3 position = transform.GetChild(i).position;
            Gizmos.color = gizmoCircle;
            Gizmos.DrawSphere(position, gizmoRadius);
        }
    }
}