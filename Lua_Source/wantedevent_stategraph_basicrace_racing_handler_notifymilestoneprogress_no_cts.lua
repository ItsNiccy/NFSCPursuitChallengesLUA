h_F83F94A3 = function(param0, param1, param2)
	if param2.PassedMilestone then
		return
	end
	if param1.MilestoneName ~= param0.MilestoneName then
		return
	end
    if param0.MilestoneName == "" then
        return
    end
    local msdisp, custmsg, DBSSM, P0MN
    msdisp = param1.ValueReached
    custmsg = false
    DBSSM = Debug.ShowScreenMessage
    P0MN = param0.MilestoneName
    if param1.ValueReached >= msdisp then
        if P0MN == "insurance_claims" then
            DBSSM("Traffic Hit: "..param1.ValueReached.."/"..param0.ThreshholdValue)
        end
        if P0MN == "tire_spikes_dodged" then
            DBSSM("Spike Strips Avoided: "..param1.ValueReached.."/"..param0.ThreshholdValue)
        end
        if P0MN == "cops_damaged" then
            DBSSM("Cops Hit: "..param1.ValueReached.."/"..param0.ThreshholdValue)
        end
        if P0MN == "total_infractions" then
            DBSSM("Infractions: "..param1.ValueReached.."/"..param0.ThreshholdValue)
        end
        if P0MN == "rhinos_destroyed" then
            DBSSM("Rhinos Destroyed: "..param1.ValueReached.."/"..param0.ThreshholdValue)
        end
        if P0MN == "roadblocks_dodged" then
            DBSSM("Roadblocks Avoided: "..param1.ValueReached.."/"..param0.ThreshholdValue)
        end
        if P0MN == "cops_destroyed_in_pursuit" then
            DBSSM("Cops Destroyed: "..param1.ValueReached.."/"..param0.ThreshholdValue)
        end
        if P0MN == "bounty_in_pursuit" then
            DBSSM("Bounty: "..param1.ValueReached.."/"..param0.ThreshholdValue)
        end
        if P0MN == "cops_in_pursuit" then
            DBSSM("Cops Chasing You: "..param1.ValueReached.."/"..param0.ThreshholdValue)
        end
        if P0MN == "total_cops_in_pursuit" then
            DBSSM("Cops Involved: "..param1.ValueReached.."/"..param0.ThreshholdValue)
        end
        if P0MN == "pursuits_in_a_row" then
            DBSSM("Pursuits Evaded: "..param1.ValueReached.."/"..param0.ThreshholdValue)
        end
    end
	if not param0.MilestoneBiggerIsBetter and param0.ThreshholdValue > param1.ValueReached then
		param2.PassedMilestone = true
        if P0MN == "pursuit_evasion_time" then
            HUD.ShowMessage("WANTEDEVENT_PURSUIT_EVASION_PASSED")
            custmsg = true
        end
        if not custmsg then
            HUD.ShowMessage("WANTEDEVENT_MILESTONE_PASSED")
        end
		return
	end
	if param0.MilestoneBiggerIsBetter and param1.ValueReached >= param0.ThreshholdValue then
		param2.PassedMilestone = true
	    if P0MN == "total_infractions" then
            HUD.ShowMessage("WANTEDEVENT_INFRACTIONS_PASSED")
            custmsg = true
        end
	    if P0MN == "pursuit_length" then
            HUD.ShowMessage("WANTEDEVENT_PURSUIT_LENGTH_PASSED")
            custmsg = true
        end
	    if P0MN == "roadblocks_dodged" then
            HUD.ShowMessage("WANTEDEVENT_ROADBLOCKS_PASSED")
            custmsg = true
        end
	    if P0MN == "tire_spikes_dodged" then
            HUD.ShowMessage("WANTEDEVENT_SPIKES_PASSED")
            custmsg = true
        end
	    if P0MN == "rhinos_destroyed" then
            HUD.ShowMessage("WANTEDEVENT_RHINOS_DEST_PASSED")
            custmsg = true
        end
	    if P0MN == "cops_destroyed_in_pursuit" then
            HUD.ShowMessage("WANTEDEVENT_COPS_DEST_PASSED")
            custmsg = true
        end
	    if P0MN == "cops_damaged" then
            HUD.ShowMessage("WANTEDEVENT_COPS_HIT_PASSED")
            custmsg = true
        end
	    if P0MN == "bounty_in_pursuit" then
            HUD.ShowMessage("WANTEDEVENT_BOUNTY_PASSED")
            custmsg = true
        end
	    if P0MN == "cost_to_state_in_pursuit" then
            HUD.ShowMessage("WANTEDEVENT_CTS_PASSED")
            custmsg = true
        end
	    if P0MN == "insurance_claims" then
            HUD.ShowMessage("WANTEDEVENT_INSURANCE_PASSED")
            custmsg = true
        end
	    if P0MN == "cops_in_pursuit" then
            HUD.ShowMessage("WANTEDEVENT_COPS_CHASING_PASSED")
            custmsg = true
        end
	    if P0MN == "total_cops_in_pursuit" then
            HUD.ShowMessage("WANTEDEVENT_TOTAL_COPS_PASSED")
            custmsg = true
        end
	    if P0MN == "pursuits_in_a_row" then
            HUD.ShowMessage("WANTEDEVENT_PUR_CONSEC_PASSED")
            custmsg = true
        end
        if not custmsg then
            HUD.ShowMessage("WANTEDEVENT_MILESTONE_PASSED")
        end
		return
	end
end