using UnityEngine;
using UnityEngine.InputSystem;

[CreateAssetMenu(menuName = "ScriptableObjects/Input/InputActionReferences")]
public class InputActionReferences : ScriptableObject
{
    public InputActionReference MouseDelta;
    public InputActionReference DebugSpawn;
    public InputActionReference DebugReset;
    public InputActionReference DebugSwap;
}