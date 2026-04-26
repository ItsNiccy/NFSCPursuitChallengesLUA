h_6C6C78CF = function(param0, param1, param2)
    local P0MN, HSM
    P0MN = param0.MilestoneName
    HSM = HUD.ShowMessage
	if P0MN == "tire_spikes_dodged" then
		HSM("EVITA "..param0.ThreshholdValue.." STRISCE CHIODATE!")
	elseif P0MN == "cops_damaged" then
		HSM("COLPISCI "..param0.ThreshholdValue.." UNITA'!")
	elseif P0MN == "total_infractions" then
		HSM("COMMETTI "..param0.ThreshholdValue.." INFRAZIONI!")
	elseif P0MN == "rhinos_destroyed" then
		HSM("IMMOBILIZZA "..param0.ThreshholdValue.." RHINO PESANTI!")
	elseif P0MN == "roadblocks_dodged" then
		HSM("EVITA "..param0.ThreshholdValue.." BLOCCHI STRADALI!")
	elseif P0MN == "bounty_in_pursuit" then
		HSM("OTTIENI "..param0.ThreshholdValue.." DI TAGLIA!")
	elseif P0MN == "cops_destroyed_in_pursuit" then
		HSM("DISTRUGGI "..param0.ThreshholdValue.." UNITA'!")
	elseif P0MN == "cost_to_state_in_pursuit" then
		HSM("CAUSA "..(param0.ThreshholdValue/1000)..".000 DI COSTO PER LO STATO!")
	elseif P0MN == "pursuit_evasion_time" then
		HSM("SFUGGI IN MENO DI "..(param0.ThreshholdValue/60).." MINUTI!")
	elseif P0MN == "pursuit_length" then
		HSM("SFUGGI DOPO "..(param0.ThreshholdValue/60).." MINUTI DI INSEGUIMENTO!")
	elseif P0MN == "insurance_claims" then
		HSM("COLPISCI "..param0.ThreshholdValue.." AUTO CIVILI!")
	elseif P0MN == "cops_in_pursuit" then
		HSM("FATTI INSEGUIRE DA "..param0.ThreshholdValue.." UNITA'!")
	elseif P0MN == "total_cops_in_pursuit" then
		HSM("COINVOLGI "..param0.ThreshholdValue.." UNITA'!")
	elseif P0MN == "pursuits_in_a_row" then
		HSM("SFUGGI "..param0.ThreshholdValue.." VOLTE CONSECUTIVE!")
	end
end