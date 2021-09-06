--{ COPYRIGHT (C) ACEICSS 'ACE DEVLEOPMENT' --}
--{ ALL RIGHTS RESERVED --}

--[[
    Permissions for the duty command
--]]
RegisterServerEvent('ace-duty.SASPPerms')
AddEventHandler('ace-duty.SASPPerms', function()
    if IsPlayerAceAllowed(source, 'ace-sasp') then
        TriggerClientEvent('ace-duty:sasp-onduty', source, true)
        TriggerEvent('eblips:add', {name = 'SASP (' .. GetPlayerName(source) .. ') ', src = source, color = 3})
        exports.JD_logs:discord('Player: **(' .. GetPlayerName(source) .. ')** has gone on duty as **SASP**', source, 0, '#03A9F4', 'duty')
    else
        TriggerClientEvent('ace-duty:sasp-onduty', source, false)
    end
end)

RegisterServerEvent('ace-duty.BCSOPerms')
AddEventHandler('ace-duty.BCSOPerms', function()
    if IsPlayerAceAllowed(source, 'ace-bcso') then
        TriggerClientEvent('ace-duty:bcso-onduty', source, true)
        TriggerEvent('eblips:add', {name = 'BCSO (' .. GetPlayerName(source) .. ') ', src = source, color = 17})
        exports.JD_logs:discord('Player: **(' .. GetPlayerName(source) .. ')** has gone on duty as **BCSO**', source, 0, '#FF5722', 'duty')
    else
        TriggerClientEvent('ace-duty:bcso-onduty', source, false)
    end
end)

RegisterServerEvent('ace-duty.LSPDPerms')
AddEventHandler('ace-duty.LSPDPerms', function()
    if IsPlayerAceAllowed(source, 'ace-lspd') then
        TriggerClientEvent('ace-duty:lspd-onduty', source, true)
        TriggerEvent('eblips:add', {name = 'LSPD (' .. GetPlayerName(source) .. ') ', src = source, color = 38})
        exports.JD_logs:discord('Player: **(' .. GetPlayerName(source) .. ')** has gone on duty as **LSPD**', source, 0, '#42A5F5', 'duty')
    else
        TriggerClientEvent('ace-duty:lspd-onduty', source, false)
    end
end)

RegisterServerEvent('ace-duty.G6Perms')
AddEventHandler('ace-duty.G6Perms', function()
    if IsPlayerAceAllowed(source, 'ace-g6') then
        TriggerClientEvent('ace-duty:g6-onduty', source, true)
        TriggerEvent('eblips:add', {name = 'G6 (' .. GetPlayerName(source) .. ') ', src = source, color = 25})
        exports.JD_logs:discord('Player: **(' .. GetPlayerName(source) .. ')** has gone on duty as **Gruppe6**', source, 0, '#9E9E9E', 'duty')
    else
        TriggerClientEvent('ace-duty:g6-onduty', source, false)
    end
end)

RegisterServerEvent('ace-duty.FBIPerms')
AddEventHandler('ace-duty.FBIPerms', function()
    if IsPlayerAceAllowed(source, 'ace-gov') then
        TriggerClientEvent('ace-duty:fbi-onduty', source, true)
        TriggerEvent('eblips:add', {name = 'FBI (' .. GetPlayerName(source) .. ') ', src = source, color = 40})
        exports.JD_logs:discord('Player: **(' .. GetPlayerName(source) .. ')** has gone on duty as **FBI**', source, 0, '#F0F0F0', 'duty')
    else
        TriggerClientEvent('ace-duty:fbi-onduty', source, false)
    end
end)

RegisterServerEvent('ace-duty.StaffPerms')
AddEventHandler('ace-duty.StaffPerms', function()
    if IsPlayerAceAllowed(source, 'ace-staff') then
        TriggerClientEvent('ace-duty:staff-onduty', source, true)
        TriggerEvent('eblips:add', {name = 'Staff (' .. GetPlayerName(source) .. ') ', src = source, color = 1})
        exports.JD_logs:discord('Player: **(' .. GetPlayerName(source) .. ')** has gone on duty as **Staff**', source, 0, '#F44336', 'duty')
    else
        TriggerClientEvent('ace-duty:staff-onduty', source, false)
    end
end)

RegisterServerEvent('ace-duty.SAFDPerms')
AddEventHandler('ace-duty.SAFDPerms', function()
    if IsPlayerAceAllowed(source, 'ace-safd') then
        TriggerClientEvent('ace-duty:safd-onduty', source, true)
        TriggerEvent('eblips:add', {name = 'SAFD (' .. GetPlayerName(source) .. ') ', src = source, color = 6})
        exports.JD_logs:discord('Player: **(' .. GetPlayerName(source) .. ')** has gone on duty as **SAFD**', source, 0, '#F44336', 'duty')
    else
        TriggerClientEvent('ace-duty:safd-onduty', source, false)
    end
end)

RegisterServerEvent('ace-duty.FAAPerms')
AddEventHandler('ace-duty.FAAPerms', function()
    if IsPlayerAceAllowed(source, 'ace-faa') then
        TriggerClientEvent('ace-duty:faa-onduty', source, true)
        TriggerEvent('eblips:add', {name = 'FAA (' .. GetPlayerName(source) .. ') ', src = source, color = 7})
        exports.JD_logs:discord('Player: **(' .. GetPlayerName(source) .. ')** has gone on duty as **FAA**', source, 0, '#9C27B0', 'duty')
    else
        TriggerClientEvent('ace-duty:faa-onduty', source, false)
    end
end)

RegisterServerEvent('ace-duty.NGPerms')
AddEventHandler('ace-duty.NGPerms', function()
    if IsPlayerAceAllowed(source, 'ace-ng') then
        TriggerClientEvent('ace-duty:ng-onduty', source, true)
        TriggerEvent('eblips:add', {name = 'NG (' .. GetPlayerName(source) .. ') ', src = source, color = 5})
        exports.JD_logs:discord('Player: **(' .. GetPlayerName(source) .. ')** has gone on duty as **National Guard**', source, 0, '#FFEB3B', 'duty')
    else
        TriggerClientEvent('ace-duty:ng-onduty', source, false)
    end
end)

RegisterServerEvent('ace-duty.COPerms')
AddEventHandler('ace-duty.COPerms', function()
    if IsPlayerAceAllowed(source, 'ace-co') then
        TriggerClientEvent('ace-duty:co-onduty', source, true)
        TriggerEvent('eblips:add', {name = 'Public Police (' .. GetPlayerName(source) .. ') ', src = source, color = 19})
        exports.JD_logs:discord('Player: **(' .. GetPlayerName(source) .. ')** has gone on duty as **Community Officer**', source, 0, '#F0F0F0', 'duty')
    else
        TriggerClientEvent('ace-duty:co-onduty', source, false)
    end
end)

RegisterServerEvent('ace-duty.OffDutyPerms')
AddEventHandler('ace-duty.OffDutyPerms', function()
    if IsPlayerAceAllowed(source, 'ace-offduty') then
        TriggerClientEvent('ace-duty:offduty', source, true)
        TriggerEvent('eblips:remove', source)
        exports.JD_logs:discord('Player: **(' .. GetPlayerName(source) .. ')** has gone **OFF DUTY**', source, 0, '#F0F0F0', 'duty')
    else
        TriggerClientEvent('ace-duty:offduty', source, false)
    end
end)