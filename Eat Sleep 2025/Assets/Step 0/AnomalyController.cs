using System.Collections.Generic;
using System.Linq;
using UnityEngine;
using UnityEngine.InputSystem;

public sealed class AnomalyController : Singleton<AnomalyController>
{
    // Fields
    [SerializeField] private List<AnomalySwap> anomalies = new();
    [SerializeField] private List<Transform> spawnPoints = new();
    [SerializeField] private List<Transform> movePoints = new();
    [SerializeField] private List<GameObject> spawnables = new();
    [SerializeField] private List<Transform> spawned = new();

    protected override void Awake()
    {
        base.Awake();
        AnomalyUpdate();
    }

    // Methods
    [ContextMenu("Update Anomalies")]
    public void AnomalyUpdate()
    {
        Debug.Log("[ANOMALY] Updating scene");
        MonoBehaviour[] sceneObjects = FindObjectsByType<MonoBehaviour>(FindObjectsSortMode.InstanceID);

        // Anomalies
        anomalies = sceneObjects.OfType<AnomalySwap>().ToList();
        Debug.Log($"[ANOMALY] Total objects: {anomalies.Count}");
        foreach (AnomalySwap anomaly in anomalies)
        {
            anomaly.OriginalPosition = anomaly.transform.position;
            anomaly.OriginalRotation = anomaly.transform.rotation;
        }

        // Spawn points
        spawnPoints = sceneObjects.OfType<AnomalySpawnPointParent>().SelectMany(spawns => spawns.transform.Children()).ToList();
        Debug.Log($"[ANOMALY] Spawn points: {spawnPoints.Count}");

        // Spawn points
        movePoints = sceneObjects.OfType<AnomalyMovePointParent>().SelectMany(spawns => spawns.transform.Children()).ToList();
        Debug.Log($"[ANOMALY] Move points: {movePoints.Count}");

        // Spawnable objects
        spawnables = sceneObjects.OfType<AnomalySpawnObjects>().SelectMany(spawns => spawns.transform.Children()).Select(x => x.gameObject).ToList();
        Debug.Log($"[ANOMALY] Spawnable objects: {spawnables.Count}");
    }
    [ContextMenu("Anomaly Move")]
    public bool AnomalyMove()
    {
        Debug.Log("[ANOMALY] Move object");
        if (movePoints.Count == 0 || anomalies.Count == 0)
        {
            Debug.LogWarning($"[ANOMALY] No {nameof(movePoints)} or {nameof(anomalies)}");
            return false;
        }

        AnomalySwap anomaly = anomalies.GetRandom();
        Transform point = movePoints.GetRandom();
        anomaly.transform.position = point.position;

        return true;
    }
    [ContextMenu("Reset Scene")]
    public void AnomalyReset()
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
    [ContextMenu("Anomaly Spawn")]
    public bool AnomalySpawn()
    {
        Debug.Log("[ANOMALY] Spawning object");
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
    [ContextMenu("Anomaly Swap")]
    public bool AnomalySwap()
    {
        Debug.Log("[ANOMALY] Swapping object");
        if (anomalies.Count < 2)
        {
            Debug.LogWarning($"[ANOMALY] Too few {nameof(anomalies)}, found {anomalies.Count} at least 2 needed to swap");
            return false;
        }

        (AnomalySwap a1, AnomalySwap a2) = anomalies.GetRandom2();
        a1.transform.AnomalySwap(a2.transform, SwapFlags.Position | SwapFlags.Rotation);

        return true;
    }

    // Hotkeys
    private void AnomalyMove(InputAction.CallbackContext obj) => AnomalyMove();
    private void AnomalyReset(InputAction.CallbackContext obj) => AnomalyReset();
    private void AnomalySpawn(InputAction.CallbackContext obj) => AnomalySpawn();
    private void AnomalySwap(InputAction.CallbackContext obj) => AnomalySwap();

    private void OnEnable()
    {
        GameManager.I.InputActions.DebugMove.action.performed += AnomalyMove;
        GameManager.I.InputActions.DebugReset.action.performed += AnomalyReset;
        GameManager.I.InputActions.DebugSpawn.action.performed += AnomalySpawn;
        GameManager.I.InputActions.DebugSwap.action.performed += AnomalySwap;
    }
    private void OnDisable()
    {
        GameManager.I.InputActions.DebugMove.action.performed -= AnomalyMove;
        GameManager.I.InputActions.DebugReset.action.performed -= AnomalyReset;
        GameManager.I.InputActions.DebugSpawn.action.performed -= AnomalySpawn;
        GameManager.I.InputActions.DebugSwap.action.performed -= AnomalySwap;
    }
}