h_D126092C = function(param0, param1, param2)
    if param2.PlayerHasWon then
        return
    end
    local G1, GST, GET, numbreakers, breakersdest, breakerdisp
    G1 = Game
    GST = G1.SetTimer
    GET = G1.EnableTrigger
    numbreakers = 0
    numbreakers = param0.Checkpoint.Count
    breakersdest = 0
    breakerdisp = breakersdest
    if not param1.Element:IsPlayer() then
        return
    end
	if param1.Sender == param0.breakertrigger1 then
        G1.ShowGPS(false)
        GET(param0.breakertrigger1, false)
        GET(param0.breakertrigger2, true)
        breakersdest = 1
        GST("BD1", 0.1)
        GST("BT1", 2.6)
	end
	if param1.Sender == param0.breakertrigger2 then
        G1.ShowGPS(false)
        GET(param0.breakertrigger2, false)
        GET(param0.breakertrigger3, true)
        breakersdest = 2
        GST("BD2", 0.1)
        GST("BT2", 2.6)
        GST("TRGT_3_HINT", 5.2)
	end
	if param1.Sender == param0.breakertrigger3 then
        G1.ShowGPS(false)
        GET(param0.breakertrigger3, false)
        GET(param0.texcasinotrigger, true)
        breakersdest = 3
        GST("BD3", 0.1)
        GST("BT3", 2.6)
	end
	if param1.Sender == param0.texcasinotrigger then
        G1.ShowGPS(false)
        GET(param0.texcasinotrigger, false)
        GET(param0.refinerytrigger, true)
        breakersdest = 4
        GST("TXCAS", 0.1)
        GST("TXCAS2", 2.6)
	end
	if param1.Sender == param0.refinerytrigger then
        G1.ShowGPS(false)
        GET(param0.refinerytrigger, false)
        breakersdest = 5
        GST("SILREF", 0.1)
	end
    if breakersdest > breakerdisp then
        Debug.ShowScreenMessage("Businesses Wrecked: "..breakersdest.."/"..numbreakers)
    end
    if breakersdest >= numbreakers then
        param2.PlayerHasWon = true
        GST("PHW", 2.6)
    end
end