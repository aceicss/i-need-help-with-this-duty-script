--{ COPYRIGHT (C) ACEICSS 'ACE DEVLEOPMENT' --}
--{ ALL RIGHTS RESERVED --}

function giveWeapon(weaponHash)
    GiveWeaponToPed(GetPlayerPed(-1), GetHashKey(weaponHash), 999, false, false)
end

function weaponComponent(weapon, comp)
    if HasPedGotWeapon(GetPlayerPed(-1), GetHashKey(weapon), false) then
        GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey(weapon), GetHashKey(comp))
    end
end

function alert(msg) 
    SetTextComponentFormat("STRING")
    AddTextComponentString(msg)
    DisplayHelpTextFromStringLabel(0, 0, 1, -1)
end

function notify(string)
    SetNotificationTextEntry("STRING")
    AddTextComponentString(string)
    DrawNotification(true, false)
end