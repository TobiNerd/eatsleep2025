using System;
using System.Collections.Generic;
using FMODUnity;
using UnityEngine;
using UnityEngine.UIElements;
using Random = UnityEngine.Random;

public class NightEventSystem : Singleton<NightEventSystem>
{
    public List<NightEvent> nightEvents = new();
    public Vector2 timeBetweenEvents = new(2, 8);

    private DateTime nextEventTime;
    private bool eventTimeSet = false;
    private NightEvent activeEvent = null;


    protected override void Awake()
    {
        base.Awake();
        GameManager.OnStateChanged += OnGameStateChanged;
        VisualElement ve = new VisualElement();
    }

    private void OnGameStateChanged(GameState gameState)
    {
        Restart();
    }

    private void Restart()
    {
        if (activeEvent != null)
            activeEvent.End();
        eventTimeSet = false;
    }

    private void Update()
    {
        if (GameManager.I.GameState is not GameState.Night) return;
        if (eventTimeSet)
        {
            if (DateTime.Now >= nextEventTime)
            {
                activeEvent = nightEvents.GetRandom();
                activeEvent.Start();
                eventTimeSet = false;
            }
        }
        else
        {
            nextEventTime = DateTime.Now.AddSeconds(Random.Range(timeBetweenEvents.x, timeBetweenEvents.y));
            eventTimeSet = true;
        }
    }
}

[Serializable]
public class NightEvent
{
    public StudioEventEmitter AudioEmitter;
    public Animator Animation;
    public GameObject EnableWhenActive;

    public void Start()
    {
        if (AudioEmitter)
            AudioEmitter.Play();
        if (Animation)
            Animation.SetBool(Animation.parameters[0].name, true);
        if (EnableWhenActive)
            EnableWhenActive.SetActive(true);
    }

    public void End()
    {
        if (AudioEmitter)
            AudioEmitter.Stop();
        if (Animation)
            Animation.SetBool(Animation.parameters[0].name, false);
        if (EnableWhenActive)
            EnableWhenActive.SetActive(false);
    }
}