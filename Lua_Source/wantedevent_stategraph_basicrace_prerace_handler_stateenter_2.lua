h_FA778B5E = function(param0, param1, param2)
    local G1 = Game
	param2.CareerRace = G1.IsCareerMode()
    param2.PlayerHasWon = false
    G1.SetWorldHeat(param0.ForceHeatLevel)
    G1.ForcePursuitStart(param0.ForceHeatLevel)
    G1.ResetCopsForRestart()
end

