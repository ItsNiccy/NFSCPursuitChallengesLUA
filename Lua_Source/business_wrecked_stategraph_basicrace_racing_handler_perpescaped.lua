h_1210170C = function(param0, param1, param2)
	local G1 = Game
    if not param2.PlayerHasWon then
		Music.ForcePursuitMusic()
		G1.ForcePursuitStart()
        G1.SetTimer("we_breaker_fail", 0.11)
        G1.SetTimer("we_music", 13)
	end
	if param2.PlayerHasWon and G1.RacerIsHuman(G1.GetRacerIndex(param1.Perpetrator)) then
        RaceStatus:SetHasBeenWon(true)
		G1.NotifyRaceFinished(param1.Perpetrator)
        G1.ChallengeComplete(param1.Perpetrator)
		ChangeState("raceover")
	end
end