using System.Collections.Generic;
using System.Linq;
using UnityEngine;

namespace EatSleep.Step0
{
    public sealed class AnomalyController : MonoBehaviour
    {
        // Fields
        [Header("Cached")] [SerializeField] List<AnomalySwap> anomalies = new();
        [SerializeField] List<Transform> spawnPoints = new();
        [SerializeField] List<GameObject> spawnables = new();

        [SerializeField] List<Transform> spawned = new();

        // Methods
        [ContextMenu("Update Anomalies")]
        void UpdateAnomalyList()
        {
            Debug.Log("[ANOMALY] Updating scene");
            MonoBehaviour[] sceneObjects = FindObjectsByType<MonoBehaviour>(FindObjectsSortMode.InstanceID);

            // Anomalies
            anomalies = sceneObjects.OfType<AnomalySwap>().ToList();
            foreach (AnomalySwap anomaly in anomalies)
            {
                anomaly.OriginalPosition = anomaly.transform.position;
                anomaly.OriginalRotation = anomaly.transform.rotation;
            }

            Debug.Log($"[ANOMALY] Total objects: {anomalies.Count}");

            // Spawn points
            spawnPoints = sceneObjects.OfType<SpawnPointParent>().SelectMany(spawns => spawns.transform.Children()).ToList();
            Debug.Log($"[ANOMALY] Spawn points: {spawnPoints.Count}");

            // Spawnable objects
            spawnables = sceneObjects.OfType<AnomalySpawnObjects>().SelectMany(spawns => spawns.transform.Children()).Select(x => x.gameObject).ToList();
            Debug.Log($"[ANOMALY] Spawnable objects: {spawnables.Count}");
        }

        [ContextMenu("AnomalySwap")]
        bool AnomalySwap()
        {
            if (anomalies.Count < 2)
            {
                Debug.LogWarning($"[ANOMALY] Too few {nameof(anomalies)}, found {anomalies.Count} at least 2 needed to swap");
                return false;
            }

            int n1 = Random.Range(0, anomalies.Count);
            int n2 = Random.Range(0, anomalies.Count - 1);
            if (n2 >= n1) n2++;

            AnomalySwap anomaly1 = anomalies[n1];
            AnomalySwap anomaly2 = anomalies[n2];
            anomaly1.transform.AnomalySwap(anomaly2.transform, SwapFlags.Position | SwapFlags.Rotation);

            return true;
        }

        [ContextMenu("Anomaly Spawn")]
        bool AnomalySpawn()
        {
            if (spawnPoints.Count == 0 || spawnables.Count == 0)
            {
                Debug.LogWarning($"[ANOMALY] No {nameof(spawnPoints)} or {nameof(spawnables)}");
                return false;
            }

            GameObject prefab = spawnables.GetRandom();
            Transform point = spawnPoints.GetRandom();
            GameObject spawn = Instantiate(prefab, point.position, Quaternion.identity);

            spawned.Add(spawn.transform);

            return true;
        }

        [ContextMenu("Reset Scene")]
        void ResetRoom()
        {
            Debug.Log("[ANOMALY] Resetting scene");
            foreach (AnomalySwap anomaly in anomalies)
            {
                anomaly.transform.position = anomaly.OriginalPosition;
                anomaly.transform.rotation = anomaly.OriginalRotation;
            }

            foreach (Transform spawn in spawned) DestroyImmediate(spawn.gameObject);
            spawned.Clear();
        }
    }
}