h_D370CA26 = function(param0, param1, param2)
	if param1.Name == "we_ms_fail" then
		Game.KillTimer("we_ms_fail")
		HUD.ShowMessage("WANTEDEVENT_MILESTONE_FAILED")
        Music.ForcePursuitMusic()
		Game.SpawnCop(param0.CopSpawnType, true, false)
	end
	if param1.Name == "we_music" then
		Game.KillTimer("we_music")
        Music.ForcePursuitMusic()
	end
end

