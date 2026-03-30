h_D0E6A7F5 = function(param0, param1, param2)
	if param2.PlayerBusted then
		param2.PassedMilestone = false
		param2.PlayerHasWon = false
		RaceStatus:SetActivelyRacing(false)
        RaceStatus:SetHasBeenWon(false)
		Game.ResetCopsForRestart()
		ChangeState("raceover")
	end
end