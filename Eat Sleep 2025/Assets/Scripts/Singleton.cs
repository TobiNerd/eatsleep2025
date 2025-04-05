using UnityEngine;

public abstract class Singleton<T> : MonoBehaviour where T : Singleton<T>
{
    public static T Instance { get; private set; }
    public static T I => Instance;

    protected virtual void Awake()
    {
        if (Instance && Instance != this)
        {
            DestroyImmediate(this);
            return;
        }

        Instance = (T) this;
    }
}