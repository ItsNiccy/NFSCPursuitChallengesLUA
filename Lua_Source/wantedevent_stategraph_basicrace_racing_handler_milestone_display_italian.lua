h_6C6C78CF = function(param0, param1, param2)
    local P0MN, DBSSM
    P0MN = param0.MilestoneName
    DBSSM = Debug.ShowScreenMessage
	if P0MN == "tire_spikes_dodged" then
		DBSSM("EVITA "..param0.ThreshholdValue.." STRISCE CHIODATE!")
		return
	end
	if P0MN == "cops_damaged" then
		DBSSM("COLPISCI "..param0.ThreshholdValue.." UNITÀ!")
		return
	end
	if P0MN == "total_infractions" then
		DBSSM("COMMETTI "..param0.ThreshholdValue.." INFRAZIONI!")
		return
	end
	if P0MN == "rhinos_destroyed" then
		DBSSM("IMMOBILIZZA "..param0.ThreshholdValue.." RHINO PESANTI!")
		return
	end
	if P0MN == "roadblocks_dodged" then
		DBSSM("EVITA "..param0.ThreshholdValue.." BLOCCHI STRADALI!")
		return
	end
	if P0MN == "bounty_in_pursuit" then
		DBSSM("OTTIENI "..param0.ThreshholdValue.." DI TAGLIA!")
		return
	end
	if P0MN == "cops_destroyed_in_pursuit" then
		DBSSM("IMMOBILIZZA "..param0.ThreshholdValue.." UNITÀ!")
		return
	end
	if P0MN == "cost_to_state_in_pursuit" then
		local cts = (param0.ThreshholdValue/1000)
		DBSSM("CAUSA "..cts.." DI COSTO PER LO STATO!")
		return
	end
	if P0MN == "pursuit_evasion_time" then
		local t = (param0.ThreshholdValue/60)
		DBSSM("SFUGGI IN MENO DI "..t.." MINUTI!")
		return
	end
	if P0MN == "pursuit_length" then
		local t = (param0.ThreshholdValue/60)
		DBSSM("SFUGGI DOPO "..t.." MINUTI!")
		return
	end
	if P0MN == "insurance_claims" then
		DBSSM("COLPISCI "..param0.ThreshholdValue.." AUTO CIVILI!")
		return
	end
	if P0MN == "cops_in_pursuit" then
		DBSSM("FATTI INSEGUIRE DA "..param0.ThreshholdValue.." UNITÀ!")
		return
	end
	if P0MN == "total_cops_in_pursuit" then
		DBSSM("COINVOLGI "..param0.ThreshholdValue.." UNITÀ!")
		return
	end
	if P0MN == "pursuits_in_a_row" then
		DBSSM("SFUGGI "..param0.ThreshholdValue.." VOLTE CONSECUTIVE!")
		return
	end
end