RegisterNetEvent('Play:Sound')
AddEventHandler('Play:Sound', function(soundName, soundVolume)
    TriggerEvent('InteractSound_CL:PlayOnOne', soundName, soundVolume)
end)
