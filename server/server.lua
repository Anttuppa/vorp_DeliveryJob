-- RegisterNetEvent("vorp_DeliveryJob:payout")
-- AddEventHandler("vorp_DeliveryJob:payout", function(cash, gold, xp)
-- local _cash = tonumber(cash)
-- local _gold = tonumber(gold)
-- local _xp = tonumber(xp)
--     TriggerEvent('redemrp:getPlayerFromId', source, function(user)
--         user.addMoney(_cash)
--         user.addGold(_gold)
--         user.addXP(_xp)
--     end)
-- end)

RegisterNetEvent("vorp_DeliveryJob:payout")
AddEventHandler("vorp_DeliveryJob:payout", function(cash, gold, xp)
    local _source = source
-- local _cash = tonumber(cash)
-- local _gold = tonumber(gold)
-- local _xp   = tonumber(xp)
    TriggerEvent("vorp:addMoney", _source, 0, cash) 
    TriggerEvent("vorp:addMoney", _source, 1, gold)
    TriggerEvent("vorp:addXp", _source, xp)
end)