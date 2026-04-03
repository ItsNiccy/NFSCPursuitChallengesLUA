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
	end
	if not param2.PassedMilestone and param0.MilestoneName ~= "pursuits_in_a_row" then
        param2.PlayerHasWon = false
        RaceStatus:SetHasBeenWon(false)
        G1.SetRaceExpired(param1.Perpetrator)
        ChangeState("raceover")
	end
	if not param2.PassedMilestone and param0.MilestoneName == "pursuits_in_a_row" then
        G1.ForcePursuitStart()
        G1.SetTimer("pur_consec", 0.11)
        G1.SetTimer("we_music", 13.125)
	end
end