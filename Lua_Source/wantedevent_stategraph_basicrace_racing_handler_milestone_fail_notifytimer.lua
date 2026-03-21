h_D370CA26 = function(param0, param1, param2)
	if param1.Name == "we_ms_fail" then
		Game.KillTimer("we_ms_fail")
		HUD.ShowMessage("WANTEDEVENT_MILESTONE_FAILED")
		Game.SpawnCop(true, false)
        Music.ForcePursuitMusic()
	end
	if param1.Name == "we_music" then
		Game.KillTimer("we_music")
        Music.ForcePursuitMusic()
	end
	if param1.Name == "pur_consec" then
		Game.KillTimer("pur_consec")
		Game.SpawnCop(true, false)
        Music.ForcePursuitMusic()
	end
end