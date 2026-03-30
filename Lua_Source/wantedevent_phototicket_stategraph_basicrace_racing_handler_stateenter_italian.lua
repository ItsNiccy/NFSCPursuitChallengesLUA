h_D326B272 = function(param0, param1, param2)
	Debug.ShowScreenMessage("OBIETTIVO AUTOVELOX: "..param0.ThreshholdSpeed.."KM/H")
    param2.PlayerHasWon = false
	if param0.AutoActivateGPS then
		Game.ShowGPS(true)
		Game.NavigatePlayerTo(param0.phototickettrigger, param0.phototickettrigger, 0, true)
	end
end