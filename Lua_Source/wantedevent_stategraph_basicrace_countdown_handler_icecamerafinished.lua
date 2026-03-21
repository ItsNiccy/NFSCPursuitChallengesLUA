h_AA363A9A = function(param0, param1, param2)
	if not param0.ChallengeCamera then
		return
	end
	if param2.HandleICEMessage then
		Game.ClearAIControl(0)
        Game.ClearAIControl(1)
		param2.HandleICEMessage = false
	end
end

