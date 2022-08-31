RegisterNetEvent('dj_teleporter:goto', function(targetId)
    local playerId  = source
    local playerPed = GetPlayerPed(playerId)

    -- get entity handle of target
    local targetPed = GetPlayerPed(targetId)

    if targetPed <= 0 then
        TriggerClientEvent('chat:addMessage', playerId, {
            args = { 'sorry, '.. targetId .. ' doesn\'t seem to exist.',}
        })

        return 
    end 

    -- get coordinates of the target
    local targetPos = GetEntityCoords(targetPed)

    SetEntityCoords(playerPed, targetPos)
end)

RegisterNetEvent('dj_teleporter:summon', function(targetId)
    local playerId  = source
    local playerPed = GetPlayerPed(playerId)
    local playerPos = GetEntityCoords(playerPed)
    local targetPed = GetPlayerPed(targetId)

    if targetPed <= 0 then
        TriggerClientEvent('chat:addMessage', playerId, {
            args = { 'sorry, '.. targetId .. ' doesn\'t seem to exist.',}
        })

        return 
    end 

    setEntityCoords(targetId, targerPos)
end)