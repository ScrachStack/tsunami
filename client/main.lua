RegisterNetEvent('Play:Sound')
AddEventHandler('Play:Sound', function(soundName, soundVolume)
    TriggerEvent('InteractSound_CL:PlayOnOne', soundName, soundVolume)
end)
RegisterNetEvent('changeWeather')
AddEventHandler('changeWeather', function(weatherType)
    if IsAllowedToChangeWeather() then
        SetWeatherTypeNowPersist(weatherType)
        SetWeatherTypeNow(weatherType)
        Citizen.Wait(1000) 
    else
        TriggerEvent('chatMessage', '^1[Error]^0 You do not have permission to change the weather.')
    end
end)

function IsAllowedToChangeWeather()
    return true
end
