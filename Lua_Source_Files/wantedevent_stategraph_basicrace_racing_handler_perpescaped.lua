h_503D679C = function(param0, param1, param2)
	local G1 = Game
	if param2.PlayerHasWon then
		return
	end
	if param2.PassedMilestone then
		G1.ChallengeComplete(param1.Perpetrator)
		G1.NotifyRaceFinished(param1.Perpetrator)
		param2.PlayerHasWon = true
        RaceStatus:SetHasBeenWon(true)
		ChangeState("raceover")
		return
	end
	if not param2.PassedMilestone then
		G1.ForcePursuitStart(param0.ForceHeatLevel)
		G1.SetTimer("we_ms_fail", 0.11)
        G1.SetTimer("we_music", 13)
		return
	end
end