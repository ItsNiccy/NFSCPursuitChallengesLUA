h_C56EF27B = function(param0, param1, param2)
	if not param0.ChallengeCamera then
		return
	end
	Camera.SetSmoothExit(true)
	if param0.ChallengeCamera then
		Camera.SetGenericCamera("Challenge", 0)
	end
	Game.ForceAIControl(0)
    Game.ForceAIControl(1)
end

