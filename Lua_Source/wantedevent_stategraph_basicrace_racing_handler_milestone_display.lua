h_6C6C78CF = function(param0, param1, param2)
    local P0MN, DBSSM
    P0MN = param0.MilestoneName
    DBSSM = Debug.ShowScreenMessage
	if P0MN == "tire_spikes_dodged" then
		DBSSM("Avoid "..param0.ThreshholdValue.." Spike Strips!")
		return
	end
	if P0MN == "cops_damaged" then
		DBSSM("Tag "..param0.ThreshholdValue.." Cop Cars!")
		return
	end
	if P0MN == "total_infractions" then
		DBSSM("Commit "..param0.ThreshholdValue.." Infractions!")
		return
	end
	if P0MN == "rhinos_destroyed" then
		DBSSM("Destroy "..param0.ThreshholdValue.." Heavy Rhinos!")
		return
	end
	if P0MN == "roadblocks_dodged" then
		DBSSM("Avoid "..param0.ThreshholdValue.." Roadblocks!")
		return
	end
	if P0MN == "bounty_in_pursuit" then
		DBSSM("Get "..param0.ThreshholdValue.." Bounty!")
		return
	end
	if P0MN == "cops_destroyed_in_pursuit" then
		DBSSM("Destroy "..param0.ThreshholdValue.." Cop Cars!")
		return
	end
	if P0MN == "cost_to_state_in_pursuit" then
		local cts = (param0.ThreshholdValue/1000)
		DBSSM("Cause "..cts.."K Cost To State!")
		return
	end
	if P0MN == "pursuit_evasion_time" then
		local t = (param0.ThreshholdValue/60)
		DBSSM("Evade Within "..t.." Minutes!")
		return
	end
	if P0MN == "pursuit_length" then
		local t = (param0.ThreshholdValue/60)
		DBSSM("Evade After "..t.." Minutes!")
		return
	end
	if P0MN == "insurance_claims" then
		DBSSM("Hit "..param0.ThreshholdValue.." Traffic Cars!")
		return
	end
	if P0MN == "cops_in_pursuit" then
		DBSSM("Get "..param0.ThreshholdValue.." Cops Chasing You!")
		return
	end
	if P0MN == "total_cops_in_pursuit" then
		DBSSM("Get "..param0.ThreshholdValue.." Cops Invovled!")
		return
	end
	if P0MN == "pursuits_in_a_row" then
		DBSSM("Escape "..param0.ThreshholdValue.." times in a row!")
		return
	end
end