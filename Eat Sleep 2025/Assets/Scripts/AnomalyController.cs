using System;
using System.Collections.Generic;
using System.Linq;
using UnityEngine;
using UnityEngine.InputSystem;

public sealed class AnomalyController : Singleton<AnomalyController>
{
    // Fields
    [SerializeField] private List<AnomalySwap> anomalies = new();
    private Dictionary<AnomalyFlag, List<Transform>> spawnPoints = new();
    private Dictionary<AnomalyFlag, List<Transform>> movePoints = new();
    [SerializeField] private List<Anomaly> spawnables = new();
    [SerializeField] private List<Transform> spawned = new();

    private AnomalyFlag[] AllAnomalyFlags = Enum.GetValues(typeof(AnomalyFlag)) as AnomalyFlag[];

    protected override void Awake()
    {
        base.Awake();
        AnomalyUpdate();
    }

    private AnomalyFlag GetRandomFlag(Anomaly anomaly)
    {
        List<AnomalyFlag> activeFlags = new List<AnomalyFlag>();
        foreach (var flag in AllAnomalyFlags)
        {
            if (flag == AnomalyFlag.None) continue; // Skip 'None'
    
            if (anomaly.anomalyFlags.HasFlag(flag))
                activeFlags.Add(flag);
        }

        return activeFlags.GetRandom();
    }

    // Methods
    [ContextMenu("Update Anomalies")]
    public void AnomalyUpdate()
    {
        var spawnPointsCount = 0;
        var movePointsCount = 0;
        
        Debug.Log("[ANOMALY] Updating scene");
        var anomalySwaps = FindObjectsByType<AnomalySwap>(FindObjectsSortMode.InstanceID);

        // Anomalies
        anomalies = anomalySwaps.ToList();
        Debug.Log($"[ANOMALY] Total swapables: {anomalies.Count}");
        foreach (AnomalySwap anomaly in anomalies)
        {
            anomaly.OriginalPosition = anomaly.transform.position;
            anomaly.OriginalRotation = anomaly.transform.rotation;
        }

        // Spawn points
        var spawnPointParents = FindObjectsByType<AnomalySpawnPointParent>(FindObjectsSortMode.InstanceID);
        foreach (var parent in spawnPointParents)
        {
            foreach (var child in parent.transform.Children())
            {
                if (!spawnPoints.ContainsKey(parent.anomalyFlag))
                    spawnPoints.Add(parent.anomalyFlag, new List<Transform>());
                spawnPoints[parent.anomalyFlag].Add(child);
                spawnPointsCount++;
            }
            
        }
        Debug.Log($"[ANOMALY] Spawn points: {spawnPointsCount}");
        
        var movePointParents = FindObjectsByType<AnomalyMovePointParent>(FindObjectsSortMode.InstanceID);
        foreach (var parent in movePointParents)
            foreach (var child in parent.transform.Children())
            {
                if (!movePoints.ContainsKey(parent.anomalyFlag))
                    movePoints.Add(parent.anomalyFlag, new List<Transform>());
                movePoints[parent.anomalyFlag].Add(child);
                movePointsCount++;
            }
        
        Debug.Log($"[ANOMALY] Move points: {movePointsCount}");
        
        LoadAnomalyResources();
    }
    
    private void LoadAnomalyResources()
    {
        spawnables.Clear();
        var spawnableAnomalies = Resources.LoadAll<GameObject>("Anomalies");
        foreach (var go in spawnableAnomalies)
        {
            if (go.TryGetComponent<Anomaly>(out var spawnObject))
                spawnables.Add(spawnObject);
        }
        Debug.Log($"[ANOMALY] Loaded {spawnables.Count} anomalies");
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

        if (!movePoints.TryGetValue(GetRandomFlag(anomaly), out var validMovePoints))
        {
            Debug.LogError($"Failed to get valid move points for {anomaly} with flags {anomaly.anomalyFlags.ToString()}");
            return false;
        }
        
        Transform point = validMovePoints.GetRandom();
        anomaly.transform.position = point.position;
        anomaly.transform.rotation = point.rotation;
        Debug.Log($"[ANOMALY] Moved anomaly: {anomaly.name}");

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

        Anomaly prefab = spawnables.GetRandom();
        
        if (!movePoints.TryGetValue(GetRandomFlag(prefab), out var validSpawnPoints))
        {
            Debug.LogError($"Failed to get valid spawn points for {prefab} with flags {prefab.anomalyFlags.ToString()}");
            return false;
        }
        Debug.Log($"[ANOMALY] Spawning {prefab.name} object with {validSpawnPoints.Count} spawnpoints");
        
        Transform point = validSpawnPoints.GetRandom();
        GameObject spawn = Instantiate(prefab.gameObject, point.position, point.rotation);

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

        var attempts = 0;
        AnomalySwap a1 = null;
        AnomalySwap a2 = null;
        while (true)
        {
            attempts++;
            if (attempts > 20) return false;
            (a1, a2) = anomalies.GetRandom2();
            if (a1.anomalyFlags.HasFlag(a2.sourceFlag))
            {
                break;
            }
        }
        a1.transform.AnomalySwap(a2.transform, SwapFlags.Position | SwapFlags.Rotation);
        Debug.Log($"[ANOMALY] Swapped {a1.name} object with {a2.name}");

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