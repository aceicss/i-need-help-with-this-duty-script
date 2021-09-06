--{ COPYRIGHT (C) ACEICSS 'ACE DEVLEOPMENT' --}
--{ ALL RIGHTS RESERVED --}
Citizen.CreateThread(function()
    TriggerEvent('chat:addSuggestion', '/duty', 'Puts you on duty for your shift.', {
        {name = 'Department', help = 'Example: SASP'}
    })
    TriggerEvent('chat:addSuggestion', '/offduty', 'Puts you off duty after your shift')
end)
local WaitTime = 10000

RegisterCommand('duty', function(source, args, rawCommand)
    if not exports.SEM_InteractionMenu:IsOndutyLEO() then
        local onduty = false
        onduty = true
        local dept = args[1]
        if dept == 'sasp' or dept == 'SASP' then
            TriggerServerEvent('ace-duty.SASPPerms')
        elseif dept == 'bcso' or dept == 'BCSO' then
            TriggerServerEvent('ace-duty.BCSOPerms')
        elseif dept == 'lspd' or dept == 'LSPD' then
            TriggerServerEvent('ace-duty.LSPDPerms')
        elseif dept == 'g6' or dept == 'G6' then
            TriggerServerEvent('ace-duty.G6Perms')
        elseif dept == 'fbi' or dept == 'FBI' then
            TriggerServerEvent('ace-duty.FBIPerms')
        elseif dept == 'staff' or dept == 'Staff' or dept == 'STAFF' then
            TriggerServerEvent('ace-duty.StaffPerms')
        elseif dept == 'faa' or dept == 'FAA' then
            TriggerServerEvent('ace-duty.FAAPerms')
        elseif dept == 'safd' or dept == 'SAFD' then
            TriggerServerEvent('ace-duty.SAFDPerms')
        elseif dept == 'ng' or dept == 'NG' then
            TriggerServerEvent('ace-duty.NGPerms')
        elseif dept == 'pub' or dept == 'Pub' or dept == 'PUB' then
            TriggerServerEvent('ace-duty.COPerms')
        else
            exports.mythic_notify:DoCustomHudText('error', 'Invalid Department.. Refreshing Permissions..', 7500)
            Citizen.Wait(WaitTime)
            exports.mythic_notify:DoCustomHudText('success', 'Permissions Refreshed.. Relaunch FiveM', 7500)
        end
    end
end)

--[[
    Off Duty Command
--]]
RegisterCommand('offduty', function(source, args, rawCommand)
    if onduty == true then
        onduty = false
        TriggerServerEvent('ace-duty.OffDutyPerms')
    elseif onduty == false then
        exports.mythic_notify:DoCustomHudText('error', 'You are already off duty', 7500)
    end
end)

--[[
    On Duty (Triggered in the server.lua with permissions)
--]]

RegisterNetEvent('ace-duty:sasp-onduty', function(onduty)
    if onduty then
        exports.mythic_notify:DoCustomHudText('inform', 'You are now on duty as SASP', 6000)
        ExecuteCommand("onduty leo")
        ExecuteCommand("onduty fire")
        RemoveAllPedWeapons(PlayerPedId(), true)
        giveWeapon("WEAPON_NIGHTSTICK")
        giveWeapon("WEAPON_COMBATPISTOL")
        giveWeapon("WEAPON_STUNGUN")
        giveWeapon("WEAPON_BZGAS")
        giveWeapon("WEAPON_FIREEXTINGUISHER")
        giveWeapon("WEAPON_FLAREGUN")
        giveWeapon("WEAPON_CARBINERIFLE")
        giveWeapon("WEAPON_PUMPSHOTGUN")
        -- ATTACHMENTS
        weaponComponent("WEAPON_CARBINERIFLE", "COMPONENT_AT_AR_FLSH") -- CARBINE FLASHLIGHT
        weaponComponent("WEAPON_CARBINERIFLE", "COMPONENT_AT_SCOPE_MEDIUM") -- CARBINE SCOPE
        weaponComponent("WEAPON_CARBINERIFLE", "COMPONENT_AT_AR_AFGRIP") -- CARBINE GRIP
        weaponComponent("WEAPON_PUMPSHOTGUN", "COMPONENT_AT_AR_FLSH") -- SHOTGUN FLASHLIGHT
        weaponComponent("WEAPON_COMBATPISTOL", "COMPONENT_AT_PI_FLSH") -- Pistol Flashlight
    else
        exports.mythic_notify:DoCustomHudText('error', 'You are not authorized to go onduty as this department', 7500)
    end
end)

RegisterNetEvent('ace-duty:bcso-onduty', function(onduty)
    if onduty then
        exports.mythic_notify:DoCustomHudText('inform', 'You are now on duty as BCSO', 6000)
        ExecuteCommand("onduty leo")
        ExecuteCommand("onduty fire")
        RemoveAllPedWeapons(PlayerPedId(), true)
        giveWeapon("WEAPON_NIGHTSTICK")
        giveWeapon("WEAPON_COMBATPISTOL")
        giveWeapon("WEAPON_STUNGUN")
        giveWeapon("WEAPON_BZGAS")
        giveWeapon("WEAPON_FIREEXTINGUISHER")
        giveWeapon("WEAPON_FLAREGUN")
        giveWeapon("WEAPON_CARBINERIFLE")
        giveWeapon("WEAPON_PUMPSHOTGUN")
        -- ATTACHMENTS
        weaponComponent("WEAPON_CARBINERIFLE", "COMPONENT_AT_AR_FLSH") -- CARBINE FLASHLIGHT
        weaponComponent("WEAPON_CARBINERIFLE", "COMPONENT_AT_SCOPE_MEDIUM") -- CARBINE SCOPE
        weaponComponent("WEAPON_CARBINERIFLE", "COMPONENT_AT_AR_AFGRIP") -- CARBINE GRIP
        weaponComponent("WEAPON_PUMPSHOTGUN", "COMPONENT_AT_AR_FLSH") -- SHOTGUN FLASHLIGHT
        weaponComponent("WEAPON_COMBATPISTOL", "COMPONENT_AT_PI_FLSH") -- Pistol Flashlight
    else
        exports.mythic_notify:DoCustomHudText('error', 'You are not authorized to go onduty as this department', 7500)
    end
end)

RegisterNetEvent('ace-duty:lspd-onduty', function(onduty)
    if onduty then
        exports.mythic_notify:DoCustomHudText('inform', 'You are now on duty as LSPD', 6000)
        ExecuteCommand("onduty leo")
        ExecuteCommand("onduty fire")
        RemoveAllPedWeapons(PlayerPedId(), true)
        giveWeapon("WEAPON_NIGHTSTICK")
        giveWeapon("WEAPON_COMBATPISTOL")
        giveWeapon("WEAPON_STUNGUN")
        giveWeapon("WEAPON_BZGAS")
        giveWeapon("WEAPON_FIREEXTINGUISHER")
        giveWeapon("WEAPON_FLAREGUN")
        giveWeapon("WEAPON_CARBINERIFLE")
        giveWeapon("WEAPON_PUMPSHOTGUN")
        -- ATTACHMENTS
        weaponComponent("WEAPON_CARBINERIFLE", "COMPONENT_AT_AR_FLSH") -- CARBINE FLASHLIGHT
        weaponComponent("WEAPON_CARBINERIFLE", "COMPONENT_AT_SCOPE_MEDIUM") -- CARBINE SCOPE
        weaponComponent("WEAPON_CARBINERIFLE", "COMPONENT_AT_AR_AFGRIP") -- CARBINE GRIP
        weaponComponent("WEAPON_PUMPSHOTGUN", "COMPONENT_AT_AR_FLSH") -- SHOTGUN FLASHLIGHT
        weaponComponent("WEAPON_COMBATPISTOL", "COMPONENT_AT_PI_FLSH") -- Pistol Flashlight
    else
        exports.mythic_notify:DoCustomHudText('error', 'You are not authorized to go onduty as this department', 7500)
    end
end)

RegisterNetEvent('ace-duty:g6-onduty', function(onduty)
    if onduty then
        exports.mythic_notify:DoCustomHudText('inform', 'You are now on duty as Gruppe6', 6000)
        ExecuteCommand("onduty leo")
        ExecuteCommand("onduty fire")
        RemoveAllPedWeapons(PlayerPedId(), true)
        giveWeapon("WEAPON_NIGHTSTICK")
        giveWeapon("WEAPON_COMBATPISTOL")
        giveWeapon("WEAPON_STUNGUN")
        giveWeapon("WEAPON_BZGAS")
        giveWeapon("WEAPON_FIREEXTINGUISHER")
        giveWeapon("WEAPON_FLAREGUN")
        giveWeapon("WEAPON_CARBINERIFLE")
        giveWeapon("WEAPON_PUMPSHOTGUN")
        -- ATTACHMENTS
        weaponComponent("WEAPON_CARBINERIFLE", "COMPONENT_AT_AR_FLSH") -- CARBINE FLASHLIGHT
        weaponComponent("WEAPON_CARBINERIFLE", "COMPONENT_AT_SCOPE_MEDIUM") -- CARBINE SCOPE
        weaponComponent("WEAPON_CARBINERIFLE", "COMPONENT_AT_AR_AFGRIP") -- CARBINE GRIP
        weaponComponent("WEAPON_PUMPSHOTGUN", "COMPONENT_AT_AR_FLSH") -- SHOTGUN FLASHLIGHT
        weaponComponent("WEAPON_COMBATPISTOL", "COMPONENT_AT_PI_FLSH") -- Pistol Flashlight
    else
        exports.mythic_notify:DoCustomHudText('error', 'You are not authorized to go onduty as this department', 7500)
    end
end)

RegisterNetEvent('ace-duty:fbi-onduty', function(onduty)
    if onduty then
        exports.mythic_notify:DoCustomHudText('inform', 'You are now on duty as FBI', 6000)
        ExecuteCommand("onduty leo")
        ExecuteCommand("onduty fire")
        RemoveAllPedWeapons(PlayerPedId(), true)
        giveWeapon("WEAPON_NIGHTSTICK")
        giveWeapon("WEAPON_COMBATPISTOL")
        giveWeapon("WEAPON_STUNGUN")
        giveWeapon("WEAPON_BZGAS")
        giveWeapon("WEAPON_FIREEXTINGUISHER")
        giveWeapon("WEAPON_FLAREGUN")
        giveWeapon("WEAPON_CARBINERIFLE")
        giveWeapon("WEAPON_PUMPSHOTGUN")
        giveWeapon("WEAPON_SNIPERRIFLE")
        -- ATTACHMENTS
        weaponComponent("WEAPON_CARBINERIFLE", "COMPONENT_AT_AR_FLSH") -- CARBINE FLASHLIGHT
        weaponComponent("WEAPON_CARBINERIFLE", "COMPONENT_AT_SCOPE_MEDIUM") -- CARBINE SCOPE
        weaponComponent("WEAPON_CARBINERIFLE", "COMPONENT_AT_AR_AFGRIP") -- CARBINE GRIP
        weaponComponent("WEAPON_PUMPSHOTGUN", "COMPONENT_AT_AR_FLSH") -- SHOTGUN FLASHLIGHT
        weaponComponent("WEAPON_COMBATPISTOL", "COMPONENT_AT_PI_FLSH") -- Pistol Flashlight
        weaponComponent("WEAPON_SNIPERRIFLE", "COMPONENT_AT_SCOPE_LARGE") -- Sniper Scope
        weaponComponent("WEAPON_SNIPERRIFLE", "COMPONENT_AT_SCOPE_MAX") -- Sniper Advanced Scope
        weaponComponent("WEAPON_SNIPERRIFLE", "COMPONENT_AT_AR_SUPP_02") -- Sniper Suppressor
    else
        exports.mythic_notify:DoCustomHudText('error', 'You are not authorized to go onduty as this department', 7500)
    end
end)

RegisterNetEvent('ace-duty:staff-onduty', function(onduty)
    if onduty then
        exports.mythic_notify:DoCustomHudText('inform', 'You are now on duty as Staff', 6000)
        ExecuteCommand("onduty leo")
        ExecuteCommand("onduty fire")
    else
        exports.mythic_notify:DoCustomHudText('error', 'You are not authorized to go onduty as this department', 7500)
    end
end)

RegisterNetEvent('ace-duty:faa-onduty', function(onduty)
    if onduty then
        exports.mythic_notify:DoCustomHudText('inform', 'You are now on duty as FAA', 6000)
    else
        exports.mythic_notify:DoCustomHudText('error', 'You are not authorized to go onduty as this department', 7500)
    end
end)

RegisterNetEvent('ace-duty:safd-onduty', function(onduty)
    if onduty then
        exports.mythic_notify:DoCustomHudText('inform', 'You are now on duty as SAFD', 6000)
        ExecuteCommand("onduty leo")
        ExecuteCommand("onduty fire")
        RemoveAllPedWeapons(PlayerPedId(), true)
        giveWeapon("WEAPON_FLASHLIGHT")
        giveWeapon("WEAPON_FIREEXTINGUISHER")
        giveWeapon("WEAPON_STUNGUN")
    else
        exports.mythic_notify:DoCustomHudText('error', 'You are not authorized to go onduty as this department', 7500)
    end
end)

RegisterNetEvent('ace-duty:co-onduty', function(onduty)
    if onduty then
        exports.mythic_notify:DoCustomHudText('inform', 'You are now on duty as a Public Officer', 6000)
        ExecuteCommand("onduty leo")
        ExecuteCommand("onduty fire")
        RemoveAllPedWeapons(PlayerPedId(), true)
        giveWeapon("WEAPON_FLASHLIGHT")
        giveWeapon("WEAPON_FIREEXTINGUISHER")
        giveWeapon("WEAPON_STUNGUN")
        giveWeapon("WEAPON_PISTOL")
        giveWeapon("WEAPON_PUMPSHOTGUN")
        RequestModel(`s_m_y_cop_01`)
        while not HasModelLoaded(`s_m_y_cop_01`) do
            Citizen.Wait(0)
        end
    
        SetPlayerModel(PlayerId(),`s_m_y_cop_01`)
        SetModelAsNoLongerNeeded(`s_m_y_cop_01`)
        Citizen.Wait(100)
        RequestModel(`pcop`)
        while not HasModelLoaded(`pcop`) do
            Citizen.Wait(0)
        end
    
        local c = GetEntityCoords(PlayerPedId())
        local v = CreateVehicle(`pcop`, c.x, c.y, c.z, GetEntityHeading(PlayerPedId()), true, true)
        SetPedIntoVehicle(PlayerPedId(), v, -1)
    
        SetModelAsNoLongerNeeded(`pcop`)
    else
        exports.mythic_notify:DoCustomHudText('error', 'You are not authorized to go onduty as this department', 7500)
    end
end)

RegisterNetEvent('ace-duty:ng-onduty', function(onduty)
    if onduty then
        exports.mythic_notify:DoCustomHudText('inform', 'You are now on duty as National Guard', 6000)
        ExecuteCommand("onduty leo")
        ExecuteCommand("onduty fire")
        RemoveAllPedWeapons(PlayerPedId(), true)
        giveWeapon("WEAPON_NIGHTSTICK")
        giveWeapon("WEAPON_COMBATPISTOL")
        giveWeapon("WEAPON_STUNGUN")
        giveWeapon("WEAPON_BZGAS")
        giveWeapon("WEAPON_FIREEXTINGUISHER")
        giveWeapon("WEAPON_FLAREGUN")
        giveWeapon("WEAPON_CARBINERIFLE")
        giveWeapon("WEAPON_PUMPSHOTGUN")
        giveWeapon("WEAPON_SNIPERRIFLE")
        -- ATTACHMENTS
        weaponComponent("WEAPON_CARBINERIFLE", "COMPONENT_AT_AR_FLSH") -- CARBINE FLASHLIGHT
        weaponComponent("WEAPON_CARBINERIFLE", "COMPONENT_AT_SCOPE_MEDIUM") -- CARBINE SCOPE
        weaponComponent("WEAPON_CARBINERIFLE", "COMPONENT_AT_AR_AFGRIP") -- CARBINE GRIP
        weaponComponent("WEAPON_PUMPSHOTGUN", "COMPONENT_AT_AR_FLSH") -- SHOTGUN FLASHLIGHT
        weaponComponent("WEAPON_COMBATPISTOL", "COMPONENT_AT_PI_FLSH") -- Pistol Flashlight
        weaponComponent("WEAPON_SNIPERRIFLE", "COMPONENT_AT_SCOPE_LARGE") -- Sniper Scope
        weaponComponent("WEAPON_SNIPERRIFLE", "COMPONENT_AT_SCOPE_MAX") -- Sniper Advanced Scope
        weaponComponent("WEAPON_SNIPERRIFLE", "COMPONENT_AT_AR_SUPP_02") -- Sniper Suppressor
    else
        exports.mythic_notify:DoCustomHudText('error', 'You are not authorized to go onduty as this department', 7500)
    end
end)

RegisterNetEvent('ace-duty:offduty', function(onduty)
    if onduty then
        if exports.SEM_InteractionMenu:IsOndutyLEO() then
            ExecuteCommand("onduty leo")
            ExecuteCommand("onduty fire")
            RemoveAllPedWeapons(PlayerPedId(), true)
            exports.mythic_notify:DoCustomHudText('success', 'Weapons removed, you are now off duty!', 7500)
        else
            exports.mythic_notify:DoCustomHudText('error', 'You are already offduty', 6000)
        end
    end
end)