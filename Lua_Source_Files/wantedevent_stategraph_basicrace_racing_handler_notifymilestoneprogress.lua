h_F83F94A3 = function(param0, param1, param2)
	if param2.PassedMilestone then
		return
	end
	if param1.MilestoneName ~= param0.MilestoneName then
		return
	end
    local msdisp = param1.ValueReached
    if param1.ValueReached >= msdisp then
        if param0.MilestoneName == "tire_spikes_dodged" then
            Debug.ShowScreenMessage("Spike Strips Dodged: "..param1.ValueReached.."/"..param0.ThreshholdValue)
        end
        if param0.MilestoneName == "cops_damaged" then
            Debug.ShowScreenMessage("Cops Hit: "..param1.ValueReached.."/"..param0.ThreshholdValue)
        end
        if param0.MilestoneName == "total_infractions" then
            Debug.ShowScreenMessage("Infractions: "..param1.ValueReached.."/"..param0.ThreshholdValue)
        end
        if param0.MilestoneName == "rhinos_destroyed" then
            Debug.ShowScreenMessage("Rhinos Destroyed: "..param1.ValueReached.."/"..param0.ThreshholdValue)
        end
        if param0.MilestoneName == "roadblocks_dodged" then
            Debug.ShowScreenMessage("Roadblocks Dodged: "..param1.ValueReached.."/"..param0.ThreshholdValue)
        end
        if param0.MilestoneName == "cops_destroyed_in_pursuit" then
            Debug.ShowScreenMessage("Cops Destroyed: "..param1.ValueReached.."/"..param0.ThreshholdValue)
        end
    end
	if not param0.MilestoneBiggerIsBetter and param0.ThreshholdValue > param1.ValueReached then
		param2.PassedMilestone = true
		HUD.ShowMessage("WANTEDEVENT_PURSUIT_EVASION_PASSED")
		return
	end
	if param0.MilestoneBiggerIsBetter and param1.ValueReached >= param0.ThreshholdValue then
		param2.PassedMilestone = true
	    if param0.MilestoneName == "total_infractions" then
            HUD.ShowMessage("WANTEDEVENT_INFRACTIONS_PASSED")
        end
	    if param0.MilestoneName == "pursuit_length" then
            HUD.ShowMessage("WANTEDEVENT_PURSUIT_LENGTH_PASSED")
        end
	    if param0.MilestoneName == "roadblocks_dodged" then
            HUD.ShowMessage("WANTEDEVENT_ROADBLOCKS_PASSED")
        end
	    if param0.MilestoneName == "tire_spikes_dodged" then
            HUD.ShowMessage("WANTEDEVENT_SPIKES_PASSED")
        end
	    if param0.MilestoneName == "rhinos_destroyed" then
            HUD.ShowMessage("WANTEDEVENT_RHINOS_DEST_PASSED")
        end
	    if param0.MilestoneName == "cops_destroyed_in_pursuit" then
            HUD.ShowMessage("WANTEDEVENT_COPS_DEST_PASSED")
        end
	    if param0.MilestoneName == "cops_damaged" then
            HUD.ShowMessage("WANTEDEVENT_COPS_HIT_PASSED")
        end
	    if param0.MilestoneName == "bounty_in_pursuit" then
            HUD.ShowMessage("WANTEDEVENT_BOUNTY_PASSED")
        end
	    if param0.MilestoneName == "cost_to_state_in_pursuit" then
            HUD.ShowMessage("WANTEDEVENT_CTS_PASSED")
        end
		return
	end
end