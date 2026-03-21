h_752403F8 = function(param0, param1, param2)
    local G1 = Game
    local GET = Game.EnableTrigger
    GET(param0.breakertrigger2, false)
    GET(param0.breakertrigger3, false)
    GET(param0.texcasinotrigger, false)
    GET(param0.refinerytrigger, false)
    G1.ShowGPS(true)
	G1.NavigatePlayerTo(param0.breakertrigger1, param0.breakertrigger1, 0, true)
    G1.SetTimer("bsns_entry", 3)
    G1.SetTimer("ice_cream", 5.5)
end