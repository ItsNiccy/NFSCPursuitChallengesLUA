h_FA778B5E = function(param0, param1, param2)
    Game.SetWorldHeat(param0.ForceHeatLevel)
	Game.ForcePursuitStart(param0.ForceHeatLevel)
	param2.CareerRace = Game.IsCareerMode()
    param2.PlayerHasWon = false
end

