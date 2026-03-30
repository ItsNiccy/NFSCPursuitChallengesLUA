h_730D3B5E = function(param0, param1, param2)
    param2.NumTraps = 0
    if param0.SpeedTrapList ~= nil then
        param2.NumTraps = param0.SpeedTrapList.Count
    end
    for elnico = 0, param2.NumTraps, 1 do
        Game.ShowTriggerIcon(param0.SpeedTrapList[elnico])
    end
end