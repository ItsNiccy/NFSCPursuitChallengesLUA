h_AA3E9D36 = function(param0, param1, param2)
    if param1.Sender ~= param0.phototickettrigger then
        return
    end
    if not param1.Element:IsPlayer() then
        return
    end
	if Game.GetSimableSpeedKmh(param1.Element) >= param0.ThreshholdSpeed then
        RaceStatus:SetHasBeenWon(true)
        param2.PlayerHasWon = true
        Game.NotifyRaceFinished()
        ChangeState("raceover")
    elseif Game.GetSimableSpeedKmh(param1.Element) < param0.ThreshholdSpeed then
        HUD.ShowMessage("WANTEDEVENT_PHOTOTICKET_TOOSLOW")
        Game.SetTimer("spdtrp_tooslow", 2.5)
	end
end