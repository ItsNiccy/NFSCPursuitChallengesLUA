h_182492DF = function(param0, param1, param2)
    local G1, GKT, HSM
    G1 = Game
    GKT  = G1.KillTimer
    HSM = HUD.ShowMessage
    if param1.Name == "bsns_entry" then
        GKT("bsns_entry")
        HSM("DRIVERJOB_BUSINESS_ENTRY")
    end
    if param1.Name == "ice_cream" then
        GKT("ice_cream")
        HSM("DRIVERJOB_BUSINESS_TRGT1")
    end
	if param1.Name == "BD1" then
		GKT("BD1")
        HSM("DRIVERJOB_BUSINESS_1")
        G1.ShowGPS(true)
        G1.NavigatePlayerTo(param0.breakertrigger2, param0.breakertrigger2, 0, true)
	end
	if param1.Name == "BT1" then
		GKT("BT1")
        HSM("DRIVERJOB_BUSINESS_TRGT2")
	end
	if param1.Name == "BD2" then
		GKT("BD2")
        HSM("DRIVERJOB_BUSINESS_2")
        G1.ShowGPS(true)
        G1.NavigatePlayerTo(param0.breakertrigger3, param0.breakertrigger3, 0, true)
	end
	if param1.Name == "BT2" then
		GKT("BT2")
        HSM("DRIVERJOB_BUSINESS_TRGT3")
	end
    if param1.Name == "TRGT_3_HINT" then
		GKT("TRGT_3_HINT")
        HSM("DRIVERJOB_BUSINESS_TRGT3_HINT")
    end
	if param1.Name == "BD3" then
		GKT("BD3")
        HSM("DRIVERJOB_BUSINESS_3")
        G1.ShowGPS(true)
        G1.NavigatePlayerTo(param0.texcasinotrigger, param0.texcasinotrigger, 0, true)
	end
	if param1.Name == "BT3" then
		GKT("BT3")
        HSM("DRIVERJOB_BUSINESS_TRGT4")
	end
	if param1.Name == "TXCAS" then
		GKT("TXCAS")
        HSM("DRIVERJOB_BUSINESS_4")
        G1.ShowGPS(true)
        G1.NavigatePlayerTo(param0.refinerytrigger, param0.refinerytrigger, 0, true)
	end
	if param1.Name == "TXCAS2" then
		GKT("TXCAS2")
        HSM("DRIVERJOB_BUSINESS_TRGT5")
	end
	if param1.Name == "SILREF" then
		GKT("SILREF")
        HSM("DRIVERJOB_BUSINESS_5")
	end
	if param1.Name == "PHW" then
		GKT("PHW")
        HSM("WANTEDEVENT_PURSUIT_BREAKER_PASSED")
	end
    if param1.Name == "we_breaker_fail" then
        GKT("we_breaker_fail")
        Music.ForcePursuitMusic()
		G1.SpawnCop(true, false)
    end
end