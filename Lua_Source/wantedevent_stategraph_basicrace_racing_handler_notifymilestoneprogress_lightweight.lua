h_F83F94A3 = function(param0, param1, param2)
	if param2.PassedMilestone then
		return
	end
	if param1.MilestoneName ~= param0.MilestoneName then
		return
	end
    local DBSSM, P0MN
    DBSSM = Debug.ShowScreenMessage
    P0MN = param0.MilestoneName
    if P0MN == "insurance_claims" then
        DBSSM("TRAFFIC HIT:\n"..param1.ValueReached.."/"..param0.ThreshholdValue)
    elseif P0MN == "tire_spikes_dodged" then
        DBSSM("SPIKE STRIPS AVOIDED:\n"..param1.ValueReached.."/"..param0.ThreshholdValue)
    elseif P0MN == "cops_damaged" then
        DBSSM("COPS HIT:\n"..param1.ValueReached.."/"..param0.ThreshholdValue)
    elseif P0MN == "total_infractions" then
        DBSSM("INFRACTIONS:\n"..param1.ValueReached.."/"..param0.ThreshholdValue)
    elseif P0MN == "rhinos_destroyed" then
        DBSSM("RHINOS DESTROYED:\n"..param1.ValueReached.."/"..param0.ThreshholdValue)
    elseif P0MN == "roadblocks_dodged" then
        DBSSM("ROADBLOCKS AVOIDED:\n"..param1.ValueReached.."/"..param0.ThreshholdValue)
    elseif P0MN == "cops_destroyed_in_pursuit" then
        DBSSM("COPS DESTROYED:\n"..param1.ValueReached.."/"..param0.ThreshholdValue)
    elseif P0MN == "bounty_in_pursuit" then
        DBSSM("BOUNTY:\n"..param1.ValueReached.."/"..param0.ThreshholdValue)
    elseif P0MN == "cops_in_pursuit" then
        DBSSM("COPS INVOLVED:\n"..param1.ValueReached.."/"..param0.ThreshholdValue)
    elseif P0MN == "total_cops_in_pursuit" then
        DBSSM("TOTAL COPS INVOLVED:\n"..param1.ValueReached.."/"..param0.ThreshholdValue)
    elseif P0MN == "pursuits_in_a_row" then
        DBSSM("PURSUITS EVADED:\n"..param1.ValueReached.."/"..param0.ThreshholdValue)
    end
	if not param0.MilestoneBiggerIsBetter and param0.ThreshholdValue > param1.ValueReached then
		param2.PassedMilestone = true
        HUD.ShowMessage("WANTEDEVENT_MILESTONE_PASSED")
	elseif param0.MilestoneBiggerIsBetter and param1.ValueReached >= param0.ThreshholdValue then
		param2.PassedMilestone = true
        HUD.ShowMessage("WANTEDEVENT_MILESTONE_PASSED")
	end
end