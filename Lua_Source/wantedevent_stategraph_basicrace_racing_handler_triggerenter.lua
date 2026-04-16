h_9EB36C5D = function(param0, param1, param2)
    if not param1.Element:IsPlayer() then
        return
    end
	if param1.Sender == param0.pursuittrigger then
        Game.ForcePursuitStart()
        Music.ForcePursuitMusic()
        Game.SpawnCop(true, false)
    end
end