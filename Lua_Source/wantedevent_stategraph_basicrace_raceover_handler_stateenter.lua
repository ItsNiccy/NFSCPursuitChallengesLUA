h_382296E5 = function(param0, param1, param2)
	if param2.PassedMilestone then
		return
	end
	if param2.PlayerBusted then
		param2.ShowPauseMenu = false
        param2.ShowPostRace = false
        param2.PlayerHasWon = false
        RaceStatus:SetHasBeenWon(false)
		ChangeState("postrace")
	end
end

