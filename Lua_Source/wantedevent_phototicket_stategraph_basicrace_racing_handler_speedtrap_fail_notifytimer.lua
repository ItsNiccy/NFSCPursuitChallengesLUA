h_D34BB463 = function(param0, param1, param2)
	if param1.Name == "spdtrp_tooslow" then
		Game.KillTimer("spdtrp_tooslow")
		Game.ShowGPS(true)
		Game.NavigatePlayerTo(param0.phototickettrigger, param0.phototickettrigger, 0, true)
	end
end