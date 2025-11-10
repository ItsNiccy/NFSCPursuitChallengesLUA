h_382296E5 = function(param0, param1, param2)
	if param2.PassedMilestone then
		return
	end
	if not param2.PassedMilestone and not param2.PlayerBusted then
		Game.JumpToSafeHouse()
		ChangeState("raceover")
	end
	if not param2.PassedMilestone and param2.PlayerBusted then
		param2.PlayerHasWon = false
		param2.ShowPauseMenu = false
		RaceStatus:SetHasBeenWon(false)
		ChangeState("raceover")
	end
end

