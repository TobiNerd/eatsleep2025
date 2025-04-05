using System.Collections.Generic;
using System.Linq;
using UnityEngine;

namespace EatSleep.Step0
{
    public sealed class AnomalyController : MonoBehaviour
    {
        // Fields
        [SerializeField] List<AnomalySwap> anomalies = new();

        // Methods
        [ContextMenu("Update Anomalies")]
        void UpdateAnomalyList()
        {
            MonoBehaviour[] allBehaviours = FindObjectsByType<MonoBehaviour>(FindObjectsSortMode.InstanceID);
            anomalies = allBehaviours.OfType<AnomalySwap>().ToList();
            foreach (AnomalySwap anomaly in anomalies)
            {
                anomaly.OriginalPosition = anomaly.transform.position;
                anomaly.OriginalRotation = anomaly.transform.rotation;
            }

            Debug.Log($"Total objects: {anomalies.Count}");
        }

        [ContextMenu("Do Anomaly")]
        bool DoAnomaly()
        {
            // Find two random objects swap them
            if (anomalies.Count < 2)
            {
                Debug.LogWarning($"[ANOMALY] Too few anomalies, found {anomalies.Count} at least 2 needed to swap");
                return false;
            }

            int n1 = Random.Range(0, anomalies.Count);
            int n2 = Random.Range(0, anomalies.Count - 1);
            if (n2 >= n1) n2++;

            AnomalySwap a1 = anomalies[n1];
            AnomalySwap a2 = anomalies[n2];
            a1.transform.AnomalySwap(a2.transform, SwapFlags.Position | SwapFlags.Rotation);

            return true;
        }

        [ContextMenu("Reset Scene")]
        void ResetRoom()
        {
            foreach (AnomalySwap anomaly in anomalies)
            {
                anomaly.transform.position = anomaly.OriginalPosition;
                anomaly.transform.rotation = anomaly.OriginalRotation;
            }
        }
    }
}