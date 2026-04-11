h_6C6C78CF = function(param0, param1, param2)
    local P0MN, DBSSM
    P0MN = param0.MilestoneName
    DBSSM = Debug.ShowScreenMessage
	if P0MN == "tire_spikes_dodged" then
		DBSSM("EVITA "..param0.ThreshholdValue.."\nSTRISCE CHIODATE!")
	elseif P0MN == "cops_damaged" then
		DBSSM("COLPISCI "..param0.ThreshholdValue.." PATTUGLIE!")
	elseif P0MN == "total_infractions" then
		DBSSM("COMMETTI "..param0.ThreshholdValue.." INFRAZIONI!")
	elseif P0MN == "rhinos_destroyed" then
		DBSSM("IMMOBILIZZA "..param0.ThreshholdValue.."\n RHINO PESANTI!")
	elseif P0MN == "roadblocks_dodged" then
		DBSSM("EVITA "..param0.ThreshholdValue.." BLOCCHI STRADALI!")
	elseif P0MN == "bounty_in_pursuit" then
		DBSSM("OTTIENI "..param0.ThreshholdValue.." DI TAGLIA!")
	elseif P0MN == "cops_destroyed_in_pursuit" then
		DBSSM("IMMOBILIZZA "..param0.ThreshholdValue.." PATTUGLIE!")
	elseif P0MN == "cost_to_state_in_pursuit" then
		DBSSM("CAUSA "..(param0.ThreshholdValue/1000).."K\nDI COSTO PER LO STATO!")
	elseif P0MN == "pursuit_evasion_time" then
		DBSSM("SFUGGI IN MENO DI\n"..(param0.ThreshholdValue/60).." MINUTI!!")
	elseif P0MN == "pursuit_length" then
		DBSSM("SFUGGI DOPO "..(param0.ThreshholdValue/60).." MINUTI!")
	elseif P0MN == "insurance_claims" then
		DBSSM("COLPISCI "..param0.ThreshholdValue.." AUTO CIVILI!")
	elseif P0MN == "cops_in_pursuit" then
		DBSSM("FATTI INSEGUIRE DA\n"..param0.ThreshholdValue.." PATTUGLIE!")
	elseif P0MN == "total_cops_in_pursuit" then
		DBSSM("COINVOLGI "..param0.ThreshholdValue.." PATTUGLIE!")
	elseif P0MN == "pursuits_in_a_row" then
		DBSSM("SFUGGI "..param0.ThreshholdValue.." VOLTE\nCONSECUTIVE!")
	end
end