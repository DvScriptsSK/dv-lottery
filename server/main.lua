RegisterNetEvent('dv-lottery:server:log', function(name, message, color)
    local connect = {
      {
          ["color"] = color,
          ["title"] = "**".. name .."**",
          ["description"] = message,
          ["footer"] = {
          ["text"] = "DV-lottery",
          },
      }
  }
  PerformHttpRequest(Config.webhook, function(err, text, headers) end, 'POST', json.encode({username =  "dv-lottery", embeds = connect, avatar_url = "https://cdn.discordapp.com/icons/866965773623623691/d2013f3fb9135be5492dc98e45df0f4d.webp?size=128"}), { ['Content-Type'] = 'application/json' })
  end)
   
RegisterNetEvent('dv-lottery:server:add', function(item,type,coords)
    local source = source
    local ped = GetPlayerPed(source)
    local playerCoords = GetEntityCoords(ped)
    local distance = #(playerCoords - coords)
    local name = GetPlayerName(source)
    local license = GetPlayerIdentifier(source,0)
    local id1 = GetPlayerIdentifier(source,1)
    local id2 = GetPlayerIdentifier(source,2)
    local id3 = GetPlayerIdentifier(source,4)
if distance < Config.sdistance then
    if Config.framework == 'qb' then
        local QBCore = exports['qb-core']:GetCoreObject() 
        local Player = QBCore.Functions.GetPlayer(source)
    if type == 'basic' then
        if Player.Functions.RemoveMoney('bank', Config.basicprice) then
            Player.Functions.AddItem(item, 1)
            TriggerEvent('dv-lottery:server:log',"Bought lottery","**".."Player Bought lottery:"..' '..type .."**".."\n ".."**".."Steam name:"..' '.."**"..name.."\n ".."**".."License:".."**"..' '..license.."\n".."**".."Discord:".."**"..' '..id1.."\n".."**".."Fivem:"..' '.."**"..id2.."\n".."**".."IP:"..' '.."**"..id3,EE2F06)
        end
            elseif type == 'devil' then
            if Player.Functions.RemoveMoney('bank', Config.devilprice) then
            Player.Functions.AddItem(item, 1)    
            TriggerEvent('dv-lottery:server:log',"Bought lottery","**".."Player Bought lottery:"..' '..type .."**".."\n ".."**".."Steam name:"..' '.."**"..name.."\n ".."**".."License:".."**"..' '..license.."\n".."**".."Discord:".."**"..' '..id1.."\n".."**".."Fivem:"..' '.."**"..id2.."\n".."**".."IP:"..' '.."**"..id3,EE2F06)  
            end      
            elseif type == 'golden' then
            if Player.Functions.RemoveMoney('bank', Config.goldenprice) then
            Player.Functions.AddItem(item, 1)           
            TriggerEvent('dv-lottery:server:log',"Bought lottery","**".."Player Bought lottery:"..' '..type .."**".."\n ".."**".."Steam name:"..' '.."**"..name.."\n ".."**".."License:".."**"..' '..license.."\n".."**".."Discord:".."**"..' '..id1.."\n".."**".."Fivem:"..' '.."**"..id2.."\n".."**".."IP:"..' '.."**"..id3,EE2F06)
            end 
            elseif type == 'unlimited' then
            if Player.Functions.RemoveMoney('bank', Config.ulprice) then
            Player.Functions.AddItem(item, 1)
            TriggerEvent('dv-lottery:server:log',"Bought lottery","**".."Player Bought lottery:"..' '..type .."**".."\n ".."**".."Steam name:"..' '.."**"..name.."\n ".."**".."License:".."**"..' '..license.."\n".."**".."Discord:".."**"..' '..id1.."\n".."**".."Fivem:"..' '.."**"..id2.."\n".."**".."IP:"..' '.."**"..id3,EE2F06) 
    end
end
end
if Config.framework == 'esx' then
        local ESX = exports["es_extended"]:getSharedObject()
        local xPlayer = ESX.GetPlayerFromId(source)
        if type == 'basic' then
           xPlayer.removeAccountMoney('bank', Config.basicprice) 
            xPlayer.addInventoryItem('basicl', 1)
            TriggerEvent('dv-lottery:server:log',"Bought lottery","**".."Player Bought lottery:"..' '..type .."**".."\n ".."**".."Steam name:"..' '.."**"..name.."\n ".."**".."License:".."**"..' '..license.."\n".."**".."Discord:".."**"..' '..id1.."\n".."**".."Fivem:"..' '.."**"..id2.."\n".."**".."IP:"..' '.."**"..id3,EE2F06)
        
            elseif type == 'devil' then
             xPlayer.removeAccountMoney('bank', Config.devilprice) 
             xPlayer.addInventoryItem('devill', 1)    
            TriggerEvent('dv-lottery:server:log',"Bought lottery","**".."Player Bought lottery:"..' '..type .."**".."\n ".."**".."Steam name:"..' '.."**"..name.."\n ".."**".."License:".."**"..' '..license.."\n".."**".."Discord:".."**"..' '..id1.."\n".."**".."Fivem:"..' '.."**"..id2.."\n".."**".."IP:"..' '.."**"..id3,EE2F06)        
            elseif type == 'golden' then
             xPlayer.removeAccountMoney('bank', Config.goldenprice) 
             xPlayer.addInventoryItem(item, 1)           
            TriggerEvent('dv-lottery:server:log',"Bought lottery","**".."Player Bought lottery:"..' '..type .."**".."\n ".."**".."Steam name:"..' '.."**"..name.."\n ".."**".."License:".."**"..' '..license.."\n".."**".."Discord:".."**"..' '..id1.."\n".."**".."Fivem:"..' '.."**"..id2.."\n".."**".."IP:"..' '.."**"..id3,EE2F06)
             
            elseif type == 'unlimited' then
             xPlayer.removeAccountMoney('bank', Config.ulprice) 
             xPlayer.addInventoryItem(item, 1)
            TriggerEvent('dv-lottery:server:log',"Bought lottery","**".."Player Bought lottery:"..' '..type .."**".."\n ".."**".."Steam name:"..' '.."**"..name.."\n ".."**".."License:".."**"..' '..license.."\n".."**".."Discord:".."**"..' '..id1.."\n".."**".."Fivem:"..' '.."**"..id2.."\n".."**".."IP:"..' '.."**"..id3,EE2F06) 
            end
        end
elseif distance > Config.sdistance then
    TriggerEvent('dv-lottery:server:log',"Danger collecting item","**".."Player is probaly using cheats because distance is:"..' '..distance .."**".."\n ".."**".."Steam name:"..' '.."**"..name.."\n ".."**".."License:".."**"..' '..license.."\n".."**".."Discord:".."**"..' '..id1.."\n".."**".."Fivem:"..' '.."**"..id2.."\n".."**".."IP:"..' '.."**"..id3,EE2F06)
end
end)
if Config.framework == 'qb' then
    local QBCore = exports['qb-core']:GetCoreObject() 
QBCore.Functions.CreateUseableItem("basicl", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
    local name = GetPlayerName(source)
    local license = GetPlayerIdentifier(source,0)
    local id1 = GetPlayerIdentifier(source,1)
    local id2 = GetPlayerIdentifier(source,2)
    local id3 = GetPlayerIdentifier(source,4)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        local count = math.random(Config.basicmin,Config.basicmax)
        Player.Functions.AddMoney('cash', count)
                TriggerEvent('dv-lottery:server:log',"Lottery","**".."Player won in Basic lottery:"..' '..count .."**".."\n ".."**".."Steam name:"..' '.."**"..name.."\n ".."**".."License:".."**"..' '..license.."\n".."**".."Discord:".."**"..' '..id1.."\n".."**".."Fivem:"..' '.."**"..id2.."\n".."**".."IP:"..' '.."**"..id3,EE2F06)
    end
end)
QBCore.Functions.CreateUseableItem("devill", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
    local name = GetPlayerName(source)
    local license = GetPlayerIdentifier(source,0)
    local id1 = GetPlayerIdentifier(source,1)
    local id2 = GetPlayerIdentifier(source,2)
    local id3 = GetPlayerIdentifier(source,4)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        local count = math.random(Config.devmin,Config.devmax)
        Player.Functions.AddMoney('cash', count)
        TriggerEvent('dv-lottery:server:log',"Lottery","**".."Player won in Devil lottery:"..' '..count .."**".."\n ".."**".."Steam name:"..' '.."**"..name.."\n ".."**".."License:".."**"..' '..license.."\n".."**".."Discord:".."**"..' '..id1.."\n".."**".."Fivem:"..' '.."**"..id2.."\n".."**".."IP:"..' '.."**"..id3,EE2F06)

    end
end)
QBCore.Functions.CreateUseableItem("goldenl", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
    local name = GetPlayerName(source)
    local license = GetPlayerIdentifier(source,0)
    local id1 = GetPlayerIdentifier(source,1)
    local id2 = GetPlayerIdentifier(source,2)
    local id3 = GetPlayerIdentifier(source,4)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        local count = math.random(Config.goldmin,Config.goldmax)
        Player.Functions.AddMoney('cash', count)
        TriggerEvent('dv-lottery:server:log',"Lottery","**".."Player won in Golden lottery:"..' '..count .."**".."\n ".."**".."Steam name:"..' '.."**"..name.."\n ".."**".."License:".."**"..' '..license.."\n".."**".."Discord:".."**"..' '..id1.."\n".."**".."Fivem:"..' '.."**"..id2.."\n".."**".."IP:"..' '.."**"..id3,EE2F06)
    end
end)
QBCore.Functions.CreateUseableItem("unlimitedl", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
    local name = GetPlayerName(source)
    local license = GetPlayerIdentifier(source,0)
    local id1 = GetPlayerIdentifier(source,1)
    local id2 = GetPlayerIdentifier(source,2)
    local id3 = GetPlayerIdentifier(source,4)
	if Player.Functions.RemoveItem(item.name, 1,item.slot) then
        local count = math.random(Config.ulmin,Config.ulmax)
        Player.Functions.AddMoney('cash', count)
        TriggerEvent('dv-lottery:server:log',"Lottery","**".."Player won in Ultimate lottery:"..' '..count .."**".."\n ".."**".."Steam name:"..' '.."**"..name.."\n ".."**".."License:".."**"..' '..license.."\n".."**".."Discord:".."**"..' '..id1.."\n".."**".."Fivem:"..' '.."**"..id2.."\n".."**".."IP:"..' '.."**"..id3,EE2F06)
    end
end)
end
if Config.framework == 'esx' then
    local ESX = exports["es_extended"]:getSharedObject()
    ESX.RegisterUsableItem('basicl', function(source)
        local xPlayer = ESX.GetPlayerFromId(source)
        local name = GetPlayerName(source)
        local license = GetPlayerIdentifier(source,0)
        local id1 = GetPlayerIdentifier(source,1)
        local id2 = GetPlayerIdentifier(source,2)
        local id3 = GetPlayerIdentifier(source,4)
         xPlayer.removeInventoryItem('basicl', 1) 
            local count = math.random(Config.basicmin,Config.basicmax)
            xPlayer.addAccountMoney('bank',count)
            TriggerEvent('dv-lottery:server:log',"Lottery","**".."Player won in Basic lottery:"..' '..count .."**".."\n ".."**".."Steam name:"..' '.."**"..name.."\n ".."**".."License:".."**"..' '..license.."\n".."**".."Discord:".."**"..' '..id1.."\n".."**".."Fivem:"..' '.."**"..id2.."\n".."**".."IP:"..' '.."**"..id3,EE2F06)
    end)
    ESX.RegisterUsableItem("devill", function(source)
        local xPlayer = ESX.GetPlayerFromId(source)
        local name = GetPlayerName(source)
        local license = GetPlayerIdentifier(source,0)
        local id1 = GetPlayerIdentifier(source,1)
        local id2 = GetPlayerIdentifier(source,2)
        local id3 = GetPlayerIdentifier(source,4)
         xPlayer.removeInventoryItem('devill', 1) 
            local count = math.random(Config.devmin,Config.devmax)
            xPlayer.addAccountMoney('bank',count)
            TriggerEvent('dv-lottery:server:log',"Lottery","**".."Player won in Devil lottery:"..' '..count .."**".."\n ".."**".."Steam name:"..' '.."**"..name.."\n ".."**".."License:".."**"..' '..license.."\n".."**".."Discord:".."**"..' '..id1.."\n".."**".."Fivem:"..' '.."**"..id2.."\n".."**".."IP:"..' '.."**"..id3,EE2F06)

    end)
    ESX.RegisterUsableItem("goldenl", function(source)
        local xPlayer = ESX.GetPlayerFromId(source)
        local name = GetPlayerName(source)
        local license = GetPlayerIdentifier(source,0)
        local id1 = GetPlayerIdentifier(source,1)
        local id2 = GetPlayerIdentifier(source,2)
        local id3 = GetPlayerIdentifier(source,4)
         xPlayer.removeInventoryItem('goldenl', 1) 
            local count = math.random(Config.goldmin,Config.goldmax)
            xPlayer.addAccountMoney('bank',count)
            TriggerEvent('dv-lottery:server:log',"Lottery","**".."Player won in Golden lottery:"..' '..count .."**".."\n ".."**".."Steam name:"..' '.."**"..name.."\n ".."**".."License:".."**"..' '..license.."\n".."**".."Discord:".."**"..' '..id1.."\n".."**".."Fivem:"..' '.."**"..id2.."\n".."**".."IP:"..' '.."**"..id3,EE2F06)
    end)
    ESX.RegisterUsableItem("unlimitedl", function(source)
        local xPlayer = ESX.GetPlayerFromId(source)
        local name = GetPlayerName(source)
        local license = GetPlayerIdentifier(source,0)
        local id1 = GetPlayerIdentifier(source,1)
        local id2 = GetPlayerIdentifier(source,2)
        local id3 = GetPlayerIdentifier(source,4)
         xPlayer.removeInventoryItem('unlimitedl',  1) 
            local count = math.random(Config.ulmin,Config.ulmax)
            xPlayer.addAccountMoney('bank',count)
            TriggerEvent('dv-lottery:server:log',"Lottery","**".."Player won in Ultimate lottery:"..' '..count .."**".."\n ".."**".."Steam name:"..' '.."**"..name.."\n ".."**".."License:".."**"..' '..license.."\n".."**".."Discord:".."**"..' '..id1.."\n".."**".."Fivem:"..' '.."**"..id2.."\n".."**".."IP:"..' '.."**"..id3,EE2F06)
    end)
end
