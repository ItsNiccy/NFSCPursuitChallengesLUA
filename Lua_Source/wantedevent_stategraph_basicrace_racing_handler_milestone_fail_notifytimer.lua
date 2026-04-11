h_D370CA26 = function(param0, param1, param2)
    local G1 = Game
	if param1.Name == "we_music" then
		G1.KillTimer("we_music")
        Music.ForcePursuitMusic()
	elseif param1.Name == "pur_consec" then
		G1.KillTimer("pur_consec")
        G1.SpawnCop(true, false)
        Music.ForcePursuitMusic()
        HUD.ShowMessage("WANTEDEVENT_PUR_CONSEC_PROGRESS")
    elseif param1.Name == "pur_refresh" then
        G1.KillTimer("pur_refresh")
        ERefreshHud()
    end
end