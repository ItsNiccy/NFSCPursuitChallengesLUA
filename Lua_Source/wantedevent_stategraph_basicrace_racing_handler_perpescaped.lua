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
	elseif not param2.PassedMilestone and param0.MilestoneName ~= "pursuits_in_a_row" then
        param2.PlayerHasWon = false
        HUD.ShowMessage("WANTEDEVENT_MILESTONE_FAILED")
        RaceStatus:SetHasBeenWon(false)
        G1.SetRaceExpired(param1.Perpetrator)
        ChangeState("raceover")
	elseif not param2.PassedMilestone and param0.MilestoneName == "pursuits_in_a_row" then
        G1.ResetCopsForRestart()
        HUD.ShowMessage("WANTEDEVENT_PUR_CONSEC_PROGRESS")
        G1.SetTimer("pur_refresh_msg", 2)
        G1.SetTimer("pur_refresh", 3.25)
	end
end