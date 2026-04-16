h_D370CA26 = function(param0, param1, param2)
    local G1 = Game
    if param1.Name == "pur_refresh_msg" then
        G1.KillTimer("pur_refresh_msg")
        Debug.ShowScreenMessage("")
    elseif param1.Name == "pur_refresh" then
        G1.KillTimer("pur_refresh")
        ERefreshHud()
    end
end