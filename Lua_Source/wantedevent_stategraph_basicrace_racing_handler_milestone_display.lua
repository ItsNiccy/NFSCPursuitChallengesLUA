h_6C6C78CF = function(param0, param1, param2)
    local P0MN, HSM
    P0MN = param0.MilestoneName
    HSM = HUD.ShowMessage
	if P0MN == "tire_spikes_dodged" then
		HSM("AVOID "..param0.ThreshholdValue.." SPIKE STRIPS!")
	elseif P0MN == "cops_damaged" then
		HSM("TAG "..param0.ThreshholdValue.." COP CARS!")
	elseif P0MN == "total_infractions" then
		HSM("COMMIT "..param0.ThreshholdValue.." INFRACTIONS!")
	elseif P0MN == "rhinos_destroyed" then
		HSM("DESTROY "..param0.ThreshholdValue.." HEAVY RHINOS!")
	elseif P0MN == "roadblocks_dodged" then
		HSM("AVOID "..param0.ThreshholdValue.." ROADBLOCKS!")
	elseif P0MN == "bounty_in_pursuit" then
		HSM("GET "..param0.ThreshholdValue.." BOUNTY!")
	elseif P0MN == "cops_destroyed_in_pursuit" then
		HSM("DESTROY "..param0.ThreshholdValue.." COP CARS!")
	elseif P0MN == "cost_to_state_in_pursuit" then
		HSM("CAUSE "..(param0.ThreshholdValue/1000).."K COST TO STATE!")
	elseif P0MN == "pursuit_evasion_time" then
		HSM("EVADE WITHIN "..(param0.ThreshholdValue/60).." MINUTES!")
	elseif P0MN == "pursuit_length" then
		HSM("EVADE AFTER "..(param0.ThreshholdValue/60).." MINUTES!")
	elseif P0MN == "insurance_claims" then
		HSM("HIT "..param0.ThreshholdValue.." TRAFFIC CARS!")
	elseif P0MN == "cops_in_pursuit" then
		HSM("GET "..param0.ThreshholdValue.." COPS INVOLVED!")
	elseif P0MN == "total_cops_in_pursuit" then
		HSM("GET "..param0.ThreshholdValue.." TOTAL COPS INVOLVED!")
	elseif P0MN == "pursuits_in_a_row" then
		HSM("EVADE "..param0.ThreshholdValue.." PURSUITS IN A ROW!")
	end
end