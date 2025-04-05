#if VRC_SDK_VRCSDK3 && !UDON
using System;
using System.Linq;
using UnityEditor;
using UnityEditor.Animations;
using UnityEngine;
using static Thry.TPS.AnimatorHelper;

using VRC.SDK3.Avatars.Components;
using VRC.SDK3.Dynamics.Contact.Components;
using static VRC.SDKBase.VRC_AvatarParameterDriver;

namespace Thry.TPS
{
    public static class OrificeSetup
    {
        const string LayerName_Width_Template = "[TPS][Orifice][{0}][Width]";
        const string LayerName_Depth_Template = "[TPS][Orifice][{0}][Depth]";

        public static void RunSetup(Orifice orifice, Transform avatarRoot, AnimatorController fxLayer = null)
        {
            GeneralSetup.ValidateMasterTransform(orifice);
            ValidateLights(orifice);

#if VRC_SDK_VRCSDK3 && !UDON
            AssertContactReceivers(orifice);
            ValidateContactSenders(orifice);

            if(fxLayer != null && orifice.DoAnimatorSetup)
            {
                AssertOrificeLayers(orifice, fxLayer, true);
                SetupOrificeLayers(orifice, fxLayer, avatarRoot);
            }
#endif
        }

        public static void RemoveSetup(Orifice orifice, Transform avatarRoot, AnimatorController fxLayer = null)
        {
#if VRC_SDK_VRCSDK3 && !UDON
            RemoveContactReceivers(orifice);
            RemoveContactSenders(orifice);

            if(fxLayer != null)
            {
                DeleteOrificeParameters(orifice, fxLayer);
                DeleteOrificeLayers(orifice, fxLayer);
            }
#endif
            if(orifice.MasterTransform)
                GameObject.DestroyImmediate(orifice.MasterTransform.gameObject);
        }

        public static void ValidateLights(Orifice orifice)
        {
            // destroy if dont use normal
            if(!orifice.UseNormalLight && orifice.LightNormal != null)
            {
                GameObject.DestroyImmediate(orifice.LightNormal.gameObject);
            }
            // destroy if no master transform
            if(orifice.LightPosition != null &&
                (orifice.MasterTransform == null || orifice.LightPosition.transform.parent != orifice.MasterTransform))
            {
                GameObject.DestroyImmediate(orifice.LightPosition.gameObject);
            }
            if(orifice.LightNormal != null &&
                (orifice.MasterTransform == null || orifice.LightNormal.transform.parent != orifice.MasterTransform))
            {
                GameObject.DestroyImmediate(orifice.LightNormal.gameObject);
            }
            if(orifice.MasterTransform != null)
            {
                // create position
                if(orifice.LightPosition == null)
                {
                    GameObject lightPositionObject = new GameObject("light_position");
                    lightPositionObject.transform.parent = orifice.MasterTransform;
                    orifice.LightPosition = AddLight(lightPositionObject.transform);
                }
                orifice.LightPosition.range = GeneralSetup.GetOrificeRangeId((int)orifice.Channel, orifice.Type);
                orifice.LightPosition.color = GeneralSetup.GetOrificeColor((int)orifice.Channel, (int)orifice.Type);
                orifice.LightPosition.transform.localPosition = Vector3.zero;
                // create normal
                if(orifice.UseNormalLight)
                {
                    if(orifice.LightNormal == null)
                    {
                        GameObject lightNormalObject = new GameObject("light_normal");
                        lightNormalObject.transform.parent = orifice.MasterTransform;
                        orifice.LightNormal = AddLight(lightNormalObject.transform);
                    }
                    orifice.LightNormal.range = GeneralSetup.GetNormRangeId((int)orifice.Channel);
                    orifice.LightNormal.color = GeneralSetup.GetOrificeColor((int)orifice.Channel, 2);
                    orifice.LightNormal.transform.position = orifice.LightNormal.transform.parent.position +
                        orifice.LightNormal.transform.parent.rotation * Vector3.forward * 0.01f;
                }
            }
        }

#if VRC_SDK_VRCSDK3 && !UDON
        public static void ValidateContactSenders(Orifice orifice)
        {
            // destroy if no master transform
            if(orifice.ContactSenderPosition != null &&
                (orifice.MasterTransform == null || orifice.ContactSenderPosition.transform.parent != orifice.MasterTransform))
            {
                GameObject.DestroyImmediate(orifice.ContactSenderPosition.gameObject);
            }
            if(orifice.ContactSenderNormal != null &&
                (orifice.MasterTransform == null || orifice.ContactSenderNormal.transform.parent != orifice.MasterTransform))
            {
                GameObject.DestroyImmediate(orifice.ContactSenderNormal.gameObject);
            }
            if(orifice.MasterTransform != null)
            {
                // create position
                orifice.ContactSenderPosition = ValidateContactSender(orifice.ContactSenderPosition, "contact_sender_position",
                    orifice.MasterTransform, GeneralSetup.CONTACT_ORF_ROOT, Vector3.zero, 0.01f);

                // create normal
                orifice.ContactSenderNormal = ValidateContactSender(orifice.ContactSenderNormal, "contact_sender_normal",
                    orifice.MasterTransform, GeneralSetup.CONTACT_ORF_NORM, Vector3.zero, 0.01f);

                orifice.ContactSenderNormal.transform.position = orifice.ContactSenderNormal.transform.parent.position +
                    orifice.ContactSenderNormal.transform.parent.rotation * Vector3.forward * 0.01f;
            }
        }

        public static void RemoveContactSenders(Orifice orifice)
        {
            if(orifice.ContactSenderPosition != null)
            {
                GameObject.DestroyImmediate(orifice.ContactSenderPosition.gameObject);
            }
            if(orifice.ContactSenderNormal != null)
            {
                GameObject.DestroyImmediate(orifice.ContactSenderNormal.gameObject);
            }
        }

        public static void AssertContactReceivers(Orifice orifice)
        {
            // destroy if no master transform
            if(orifice.ContactReceiver_IsPenetrating != null &&
                (orifice.MasterTransform == null || orifice.ContactReceiver_IsPenetrating.transform.parent != orifice.MasterTransform))
            {
                GameObject.DestroyImmediate(orifice.ContactReceiver_IsPenetrating.gameObject);
            }
            if(orifice.ContactReceiver_Width0 != null &&
                (orifice.MasterTransform == null || orifice.ContactReceiver_Width0.transform.parent != orifice.MasterTransform))
            {
                GameObject.DestroyImmediate(orifice.ContactReceiver_Width0.gameObject);
            }
            if(orifice.ContactReceiver_Width1 != null &&
                (orifice.MasterTransform == null || orifice.ContactReceiver_Width1.transform.parent != orifice.MasterTransform))
            {
                GameObject.DestroyImmediate(orifice.ContactReceiver_Width1.gameObject);
            }
            if(orifice.MasterTransform != null)
            {
                Vector3 scaledBack = orifice.MasterTransform.InverseTransformVector(Vector3.back);
                // Pen -> Orf: Penetrating
                orifice.ContactReceiver_IsPenetrating = ValidateContactReceiver(orifice.ContactReceiver_IsPenetrating, "contact_receiver_is_penetrating",
                    orifice.MasterTransform, GeneralSetup.CONTACT_PEN_PENETRATING, orifice.Param_DepthIn, scaledBack * orifice.Depth, orifice.Depth);

                // Pen -> Orf: Width
                float widthRecieverRadius = orifice.Radius + 0.2f;
                orifice.ContactReceiver_Width0 = ValidateContactReceiver(orifice.ContactReceiver_Width0, "contact_receiver_width0",
                    orifice.MasterTransform, GeneralSetup.CONTACT_PEN_PENETRATING, orifice.Param_Width1In, scaledBack * widthRecieverRadius * 0.5f, widthRecieverRadius);
                orifice.ContactReceiver_Width1 = ValidateContactReceiver(orifice.ContactReceiver_Width1, "contact_receiver_width1",
                    orifice.MasterTransform, GeneralSetup.CONTACT_PEN_WIDTH, orifice.Param_Width2In, scaledBack * widthRecieverRadius * 0.5f, widthRecieverRadius);
            }
        }

        public static void RemoveContactReceivers(Orifice orifice)
        {
            if(orifice.ContactReceiver_IsPenetrating != null)
            {
                GameObject.DestroyImmediate(orifice.ContactReceiver_IsPenetrating.gameObject);
            }
            if(orifice.ContactReceiver_Width0 != null)
            {
                GameObject.DestroyImmediate(orifice.ContactReceiver_Width0.gameObject);
            }
            if(orifice.ContactReceiver_Width1 != null)
            {
                GameObject.DestroyImmediate(orifice.ContactReceiver_Width1.gameObject);
            }
        }

        static VRCContactSender ValidateContactSender(VRCContactSender sender, string name, Transform parent, string tag, Vector3 localPosition, float radius)
        {
            if(sender == null)
            {
                GameObject contactSenderObject = new GameObject(name);
                sender = contactSenderObject.AddComponent<VRCContactSender>();
            }
            sender.transform.parent = parent;
            sender.collisionTags = (new string[]{tag}).ToList();
            sender.transform.localPosition = localPosition;
            sender.radius = radius;
            return sender;
        }

        static VRCContactReceiver ValidateContactReceiver(VRCContactReceiver receiver, string name, Transform parent, string tag, string animatorParameter, Vector3 offset, float radius)
        {
            if(receiver == null)
            {
                GameObject contactReceiverObject = new GameObject(name);
                receiver = contactReceiverObject.AddComponent<VRCContactReceiver>();
            }
            receiver.transform.parent = parent;
            receiver.collisionTags = (new string[]{tag}).ToList();
            receiver.parameter = animatorParameter;
            receiver.receiverType = VRCContactReceiver.ReceiverType.Proximity;
            receiver.transform.localPosition = offset;
            receiver.radius = radius / receiver.transform.lossyScale.x;
            return receiver;
        }

        public static void AssertOrificeLayers(Orifice orifice, AnimatorController animator, bool createIfMissing = true)
        {
            orifice.LayerName_Width = string.Format(LayerName_Width_Template, orifice.Id);
            orifice.LayerName_Depth = string.Format(LayerName_Depth_Template, orifice.Id);

            if(orifice.Layer_Width != null && orifice.Layer_Width.name != orifice.LayerName_Width)
                orifice.Layer_Width.name = orifice.LayerName_Width;
            if(orifice.Layer_Depth != null && orifice.Layer_Depth.name != orifice.LayerName_Depth)
                orifice.Layer_Depth.name = orifice.LayerName_Depth;

            if(orifice.Layer_Width == null)
                orifice.Layer_Width = AnimatorHelper.GetLayer(animator, orifice.LayerName_Width, orifice.LayerName_Width, createIfMissing: createIfMissing);
            if(orifice.Layer_Depth == null)
                orifice.Layer_Depth = AnimatorHelper.GetLayer(animator, orifice.LayerName_Depth, orifice.LayerName_Depth, createIfMissing: createIfMissing);
        }

        public static void ClearOrificeLayers(Orifice orifice, AnimatorController animator)
        {
            AnimatorControllerLayer widthLayer = orifice.Layer_Width;
            AnimatorControllerLayer depthLayer = orifice.Layer_Depth;

            // clear layers
            ClearLayers(widthLayer);
            ClearLayers(depthLayer);
        }

        public static void DeleteOrificeLayers(Orifice orifice, AnimatorController animator)
        {
            AnimatorControllerLayer widthLayer = orifice.Layer_Width;
            AnimatorControllerLayer depthLayer = orifice.Layer_Depth;

            if(widthLayer == null)
                widthLayer = animator.layers.FirstOrDefault(l => l.name == string.Format(LayerName_Width_Template, orifice.Id));
            if(depthLayer == null)
                depthLayer = animator.layers.FirstOrDefault(l => l.name == string.Format(LayerName_Depth_Template, orifice.Id));

            // clear layers
            ClearLayers(widthLayer, depthLayer);

            // delete layers
            RemoveLayers(animator, widthLayer, depthLayer);

            orifice.Layer_Width = null;
            orifice.Layer_Depth = null;
        }

        public static void DeleteOrificeParameters(Orifice orifice, AnimatorController animator)
        {
            RemoveParameter(animator, orifice.Param_Depth, orifice.Param_Width, orifice.Param_DepthIn, orifice.Param_Width1In, orifice.Param_Width2In, orifice.Param_IsPenetrating);
        }

        public static void SetupOrificeLayers(Orifice orifice, AnimatorController animator, Transform avatarRoot)
        {
            AnimatorControllerLayer widthLayer = orifice.Layer_Width;
            AnimatorControllerLayer depthLayer = orifice.Layer_Depth;
            string directory = Helper.GetTPSDirectory(orifice, animator);

            // clear layers
            ClearLayers(widthLayer);
            ClearLayers(depthLayer);

            AddParameter(animator, orifice.Param_Depth, AnimatorControllerParameterType.Float);
            AddParameter(animator, orifice.Param_Width, AnimatorControllerParameterType.Float);
            AddParameter(animator, orifice.Param_DepthIn, AnimatorControllerParameterType.Float);
            AddParameter(animator, orifice.Param_Width1In, AnimatorControllerParameterType.Float);
            AddParameter(animator, orifice.Param_Width2In, AnimatorControllerParameterType.Float);
            AddParameter(animator, orifice.Param_IsPenetrating, AnimatorControllerParameterType.Bool);


            AnimationClip widthZero = CreateClip($"{orifice.ClipPath}_Width_Zero", new CurveConfig("", orifice.Param_Width, typeof(Animator), OffCurve));
            AnimationClip widthPos = CreateClip($"{orifice.ClipPath}_Width_Pos", new CurveConfig("", orifice.Param_Width, typeof(Animator), OnCurve));
            AnimationClip widthNeg = CreateClip($"{orifice.ClipPath}_Width_Neg", new CurveConfig("", orifice.Param_Width, typeof(Animator), FloatCurve(-1,1)));
            AnimationClip widthZeroToOne = CreateClip($"{orifice.ClipPath}_Width_ZeroToOne", new CurveConfig("", orifice.Param_Width, typeof(Animator), AnimationCurve.Linear(0,0,1,1)));
            BlendTree subtractionTree = new BlendTree()
            {
                blendParameter = orifice.Param_Width1In,
                blendParameterY = orifice.Param_Width2In,
                useAutomaticThresholds = false,
                blendType = BlendTreeType.SimpleDirectional2D,
                children = new ChildMotion[]{
                    new ChildMotion(){ motion = widthZero, timeScale = 1, position = new Vector2(0 , 0) },
                    new ChildMotion(){ motion = widthZero, timeScale = 1, position = new Vector2(1 , 1) },
                    new ChildMotion(){ motion = widthPos, timeScale = 1, position = new Vector2(1 , 0) },
                    new ChildMotion(){ motion = widthNeg, timeScale = 1, position = new Vector2(0 , 1) },
                }
            };
            AnimatorHelper.SaveBlendTree(subtractionTree, directory, $"{orifice.FilePrefix}_width", false, widthZeroToOne);

            AnimatorState hasntBeenColliding = CreateState("No Pen", widthLayer, widthZero, true);
            AnimatorState waitForNoCollisions = CreateState("Buffer", widthLayer, widthZeroToOne);
            waitForNoCollisions.timeParameterActive = true;
            waitForNoCollisions.timeParameter = orifice.Param_Width;
            AnimatorState calcWidth = CreateState("Calc", widthLayer, subtractionTree);
            CreateTransition(hasntBeenColliding, calcWidth, new Condition(orifice.Param_DepthIn, CompareType.GREATER, 0));
            CreateTransition(waitForNoCollisions, hasntBeenColliding, new Condition(orifice.Param_DepthIn, CompareType.LESS, 0.01f));
            CreateTransition(calcWidth, hasntBeenColliding, new Condition(orifice.Param_DepthIn, CompareType.LESS, 0.01f));
            CreateTransition(calcWidth, waitForNoCollisions, new Condition(orifice.Param_Width, CompareType.GREATER, 0), new Condition(orifice.Param_Width1In, CompareType.GREATER, 0), new Condition(orifice.Param_Width2In, CompareType.GREATER, 0));

            AddParameterDriver(hasntBeenColliding, (orifice.Param_IsPenetrating, ChangeType.Set, 0));
            AddParameterDriver(calcWidth, (orifice.Param_IsPenetrating, ChangeType.Set, 1));

            string rendererPath = AnimationUtility.CalculateTransformPath(orifice.Renderer.transform, avatarRoot);
            Func<string, int, float, AnimationClip> PenAnim = (string name, int activeKeyIndex, float strength) =>
            {
                name = Helper.ReplaceIllegalFilenameCharacters(name);
                float activeDepth = 0;
                if(activeKeyIndex >= 0)
                    activeDepth = orifice.OpeningShapekeys[activeKeyIndex].depth;
                CurveConfig[] curves = new CurveConfig[orifice.OpeningShapekeys.Count + 1];
                curves[orifice.OpeningShapekeys.Count] = new CurveConfig("", orifice.Param_Depth, typeof(Animator), CustomCurve((1, activeDepth)));
                for(int i = 0; i < orifice.OpeningShapekeys.Count; i++)
                {
                    curves[i] = new CurveConfig(rendererPath, "blendShape." + orifice.OpeningShapekeys[i].shapekeyName, typeof(SkinnedMeshRenderer), CustomCurve((1, i == activeKeyIndex ? strength : 0)));
                }
                return CreateClip(name,
                    curves
                );
            };

            float maxWidthThreshold = 1 - 0.2f / (0.2f + orifice.Radius);
            Debug.Log(orifice.Radius +  " => " + maxWidthThreshold);
            AnimationClip noPenetrationClip = PenAnim($"{orifice.ClipPath}_Depth_NoPenetration", -1, 0);
            AnimationClip[] noWidthClips = new AnimationClip[orifice.OpeningShapekeys.Count + 1];
            AnimationClip[] fullWidthClips = new AnimationClip[orifice.OpeningShapekeys.Count + 1];
            BlendTree[] depthTrees = new BlendTree[orifice.OpeningShapekeys.Count + 1];
            for(int i = 0; i < orifice.OpeningShapekeys.Count + 1; i++)
            {
                fullWidthClips[i] = PenAnim($"{orifice.ClipPath}_Depth_FullWidth_{i}", i - 1, 100);
                if (orifice.ScaleBlendshapesByWidth)
                    noWidthClips[i] = PenAnim($"{orifice.ClipPath}_Depth_NoWidth_{i}", i - 1, 0);
                else
                    noWidthClips[i] = fullWidthClips[i];
                depthTrees[i] = new BlendTree()
                {
                    name = "Depth " + i,
                    blendParameter = orifice.Param_Width,
                    useAutomaticThresholds = false,
                    children = new ChildMotion[]{
                        new ChildMotion(){ motion = noWidthClips[i]  , timeScale = 1, threshold = 0 },
                        new ChildMotion(){ motion = fullWidthClips[i], timeScale = 1, threshold = maxWidthThreshold },
                    }
                };
            }


            BlendTree penetrationTree = new BlendTree()
            {
                blendParameter = orifice.Param_DepthIn,
                useAutomaticThresholds = false,
                children = depthTrees.Select((x, i) =>
                    new ChildMotion() {
                        motion = x,
                        timeScale = 1,
                        threshold = i == 0 ? 0 : orifice.OpeningShapekeys[i - 1].depth
                    }).ToArray()
            };
            SaveBlendTree(penetrationTree, directory, $"{orifice.FilePrefix}_depth", true);
            AssetDatabase.AddObjectToAsset(noPenetrationClip, penetrationTree);

            AnimatorState penetration = CreateState("Penetrated", depthLayer, penetrationTree);
            AnimatorState noPenetration = CreateState("No Penetration", depthLayer, noPenetrationClip);

            depthLayer.stateMachine.defaultState = noPenetration;

            CreateTransition(noPenetration, penetration, new Condition(orifice.Param_IsPenetrating, CompareType.EQUAL, true));
            CreateTransition(penetration, noPenetration, new Condition(orifice.Param_IsPenetrating, CompareType.EQUAL, false));
        }

#endif

        static Light AddLight(Transform t)
        {
            Light l = t.gameObject.AddComponent<Light>();
            l.type = LightType.Point;
            l.color = Color.black;
            l.shadows = LightShadows.None;
            l.renderMode = LightRenderMode.ForceVertex;
            return l;
        }

        public static string[] LoadBlendshapeNames(Renderer renderer)
        {
            string[] blendshapeNames = new string[] { "~none~" };
            if (renderer != null && renderer is SkinnedMeshRenderer)
            {
                SkinnedMeshRenderer smr = renderer as SkinnedMeshRenderer;
                Mesh mesh = smr.sharedMesh;
                if (mesh.blendShapeCount > 0)
                {
                    blendshapeNames = new string[mesh.blendShapeCount + 1];
                    for (int b = 0; b < mesh.blendShapeCount; b++)
                        blendshapeNames[b + 1] = mesh.GetBlendShapeName(b);
                    blendshapeNames[0] = "~none~";
                }
            }
            return blendshapeNames;
        }
    }
}
#endif