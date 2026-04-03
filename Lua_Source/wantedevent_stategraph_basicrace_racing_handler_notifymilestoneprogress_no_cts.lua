h_F83F94A3 = function(param0, param1, param2)
	if param2.PassedMilestone then
		return
	end
	if param1.MilestoneName ~= param0.MilestoneName then
		return
	end
    local msdisp, DBSSM, P0MN
    msdisp = param1.ValueReached
    DBSSM = Debug.ShowScreenMessage
    P0MN = param0.MilestoneName
    if param1.ValueReached >= msdisp then
        if P0MN == "insurance_claims" then
            DBSSM("TRAFFIC HIT: "..param1.ValueReached.."/"..param0.ThreshholdValue)
        elseif P0MN == "tire_spikes_dodged" then
            DBSSM("SPIKE STRIPS: "..param1.ValueReached.."/"..param0.ThreshholdValue)
        elseif P0MN == "cops_damaged" then
            DBSSM("COPS HIT: "..param1.ValueReached.."/"..param0.ThreshholdValue)
        elseif P0MN == "total_infractions" then
            DBSSM("INFRACTIONS: "..param1.ValueReached.."/"..param0.ThreshholdValue)
        elseif P0MN == "rhinos_destroyed" then
            DBSSM("RHINOS DESTROYED: "..param1.ValueReached.."/"..param0.ThreshholdValue)
        elseif P0MN == "roadblocks_dodged" then
            DBSSM("ROADBLOCKS: "..param1.ValueReached.."/"..param0.ThreshholdValue)
        elseif P0MN == "cops_destroyed_in_pursuit" then
            DBSSM("COPS DESTROYED: "..param1.ValueReached.."/"..param0.ThreshholdValue)
        elseif P0MN == "bounty_in_pursuit" then
            DBSSM("BOUNTY: "..param1.ValueReached.."/"..param0.ThreshholdValue)
        elseif P0MN == "cops_in_pursuit" then
            DBSSM("COPS CHASING: "..param1.ValueReached.."/"..param0.ThreshholdValue)
        elseif P0MN == "total_cops_in_pursuit" then
            DBSSM("COPS INVOLVED: "..param1.ValueReached.."/"..param0.ThreshholdValue)
        elseif P0MN == "pursuits_in_a_row" then
            DBSSM("PURSUITS EVADED: "..param1.ValueReached.."/"..param0.ThreshholdValue)
        end
    end
	if not param0.MilestoneBiggerIsBetter and param0.ThreshholdValue > param1.ValueReached then
		param2.PassedMilestone = true
    end
	if param0.MilestoneBiggerIsBetter and param1.ValueReached >= param0.ThreshholdValue then
		param2.PassedMilestone = true
	end
    if not param2.PassedMilestone then
        return
    end
	if P0MN == "total_infractions" then
        HUD.ShowMessage("WANTEDEVENT_INFRACTIONS_PASSED")
	elseif P0MN == "pursuit_length" then
        HUD.ShowMessage("WANTEDEVENT_PURSUIT_LENGTH_PASSED")
	elseif P0MN == "roadblocks_dodged" then
        HUD.ShowMessage("WANTEDEVENT_ROADBLOCKS_PASSED")
	elseif P0MN == "tire_spikes_dodged" then
        HUD.ShowMessage("WANTEDEVENT_SPIKES_PASSED")
	elseif P0MN == "rhinos_destroyed" then
        HUD.ShowMessage("WANTEDEVENT_RHINOS_DEST_PASSED")
	elseif P0MN == "cops_destroyed_in_pursuit" then
        HUD.ShowMessage("WANTEDEVENT_COPS_DEST_PASSED")
	elseif P0MN == "cops_damaged" then
        HUD.ShowMessage("WANTEDEVENT_COPS_HIT_PASSED")
	elseif P0MN == "bounty_in_pursuit" then
        HUD.ShowMessage("WANTEDEVENT_BOUNTY_PASSED")
	elseif P0MN == "cost_to_state_in_pursuit" then
        HUD.ShowMessage("WANTEDEVENT_CTS_PASSED")
	elseif P0MN == "insurance_claims" then
        HUD.ShowMessage("WANTEDEVENT_INSURANCE_PASSED")
	elseif P0MN == "cops_in_pursuit" then
        HUD.ShowMessage("WANTEDEVENT_COPS_CHASING_PASSED")
	elseif P0MN == "total_cops_in_pursuit" then
        HUD.ShowMessage("WANTEDEVENT_TOTAL_COPS_PASSED")
	elseif P0MN == "pursuits_in_a_row" then
        HUD.ShowMessage("WANTEDEVENT_PUR_CONSEC_PASSED")
    elseif P0MN == "pursuit_evasion_time" then
        HUD.ShowMessage("WANTEDEVENT_PURSUIT_EVASION_PASSED")
    else
        HUD.ShowMessage("WANTEDEVENT_MILESTONE_PASSED")
    end
end