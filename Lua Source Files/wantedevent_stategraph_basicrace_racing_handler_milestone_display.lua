h_6C6C78CF = function(param0, param1, param2)
	if param0.MilestoneName == "tire_spikes_dodged" then
		Debug.ShowScreenMessage("Avoid "..param0.ThreshholdValue.." Spike Strips!")
		return
	end
	if param0.MilestoneName == "cops_damaged" then
		Debug.ShowScreenMessage("Tag "..param0.ThreshholdValue.." Cop Cars!")
		return
	end
	if param0.MilestoneName == "total_infractions" then
		Debug.ShowScreenMessage("Commit "..param0.ThreshholdValue.." Infractions!")
		return
	end
	if param0.MilestoneName == "rhinos_destroyed" then
		Debug.ShowScreenMessage("Destroy "..param0.ThreshholdValue.." Heavy Rhinos!")
		return
	end
	if param0.MilestoneName == "roadblocks_dodged" then
		Debug.ShowScreenMessage("Avoid "..param0.ThreshholdValue.." Roadblocks!")
		return
	end
	if param0.MilestoneName == "bounty_in_pursuit" then
		Debug.ShowScreenMessage("Get "..param0.ThreshholdValue.." Bounty!")
		return
	end
	if param0.MilestoneName == "cops_destroyed_in_pursuit" then
		Debug.ShowScreenMessage("Destroy "..param0.ThreshholdValue.." Cop Cars!")
		return
	end
	if param0.MilestoneName == "cost_to_state_in_pursuit" then
		local cts = (param0.ThreshholdValue/1000)
		Debug.ShowScreenMessage("Cause "..cts.."K Cost To State!")
		return
	end
	if param0.MilestoneName == "pursuit_evasion_time" then
		local t = (param0.ThreshholdValue/60)
		Debug.ShowScreenMessage("Evade Within "..t.." Minutes!")
		return
	end
	if param0.MilestoneName == "pursuit_length" then
		local t = (param0.ThreshholdValue/60)
		Debug.ShowScreenMessage("Evade After "..t.." Minutes!")
		return
	end
end

