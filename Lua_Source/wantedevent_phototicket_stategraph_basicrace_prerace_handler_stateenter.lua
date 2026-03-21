h_730D3B5E = function(param0, param1, param2)
    param2.NumTraps = 0
    if param0.SpeedTrapList ~= nil then
        param2.NumTraps = param0.SpeedTrapList.Count
    end
    local nico = 1
    local elnico = 1
    elnico = elnico - nico
    for elnico = elnico, param2.NumTraps, nico do
        Game.ShowTriggerIcon(param0.SpeedTrapList[elnico])
    end
end