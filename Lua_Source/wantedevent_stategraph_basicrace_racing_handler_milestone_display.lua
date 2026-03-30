h_6C6C78CF = function(param0, param1, param2)
    local P0MN, DBSSM
    P0MN = param0.MilestoneName
    DBSSM = Debug.ShowScreenMessage
	if P0MN == "tire_spikes_dodged" then
		DBSSM("Avoid "..param0.ThreshholdValue.." Spike Strips!")
	elseif P0MN == "cops_damaged" then
		DBSSM("Tag "..param0.ThreshholdValue.." Cop Cars!")
	elseif P0MN == "total_infractions" then
		DBSSM("Commit "..param0.ThreshholdValue.." Infractions!")
	elseif P0MN == "rhinos_destroyed" then
		DBSSM("Destroy "..param0.ThreshholdValue.." Heavy Rhinos!")
	elseif P0MN == "roadblocks_dodged" then
		DBSSM("Avoid "..param0.ThreshholdValue.." Roadblocks!")
	elseif P0MN == "bounty_in_pursuit" then
		DBSSM("Get "..param0.ThreshholdValue.." Bounty!")
	elseif P0MN == "cops_destroyed_in_pursuit" then
		DBSSM("Destroy "..param0.ThreshholdValue.." Cop Cars!")
	elseif P0MN == "cost_to_state_in_pursuit" then
		DBSSM("Cause "..(param0.ThreshholdValue/1000).."K Cost To State!")
	elseif P0MN == "pursuit_evasion_time" then
		DBSSM("Evade Within "..(param0.ThreshholdValue/60).." Minutes!")
	elseif P0MN == "pursuit_length" then
		DBSSM("Evade After "..(param0.ThreshholdValue/60).." Minutes!")
	elseif P0MN == "insurance_claims" then
		DBSSM("Hit "..param0.ThreshholdValue.." Traffic Cars!")
	elseif P0MN == "cops_in_pursuit" then
		DBSSM("Get "..param0.ThreshholdValue.." Cops Chasing You!")
	elseif P0MN == "total_cops_in_pursuit" then
		DBSSM("Get "..param0.ThreshholdValue.." Cops Involved!")
	elseif P0MN == "pursuits_in_a_row" then
		DBSSM("Escape "..param0.ThreshholdValue.." times in a row!")
	end
end