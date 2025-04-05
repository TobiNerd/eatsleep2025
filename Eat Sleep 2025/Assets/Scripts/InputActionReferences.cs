using UnityEngine;
using UnityEngine.InputSystem;

[CreateAssetMenu(menuName = "ScriptableObjects/Input/InputActionReferences")]
public class InputActionReferences : ScriptableObject
{
    public InputActionReference MouseDelta;
    public InputActionReference DebugMove;
    public InputActionReference DebugReset;
    public InputActionReference DebugSpawn;
    public InputActionReference DebugSwap;
    public InputActionReference ShootYourself;
    public InputActionReference GoToSleep;

}