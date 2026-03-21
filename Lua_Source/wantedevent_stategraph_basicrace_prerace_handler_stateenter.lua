local L0_1, L1_1
function L0_1(A0_2, A1_2, A2_2)
	local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
	L3_2 = true
	A2_2.HandleICEMessage = L3_2
	L3_2 = false
	A2_2.PassedMilestone = L3_2
	L3_2 = A0_2.CopSpawnPoints
	if L3_2 then
		L3_2 = A0_2.CopSpawnPoints
		L3_2 = L3_2.Count
		L4_2 = 1
		L5_2 = L3_2
		L6_2 = 1
		L4_2 = L4_2 - L6_2
		for L4_2 = L4_2, L5_2, L6_2 do
			L7_2 = Game
			L7_2 = L7_2.SpawnCop
			L8_2 = A0_2.CopSpawnPoints
			L8_2 = L8_2[L4_2]
			L9_2 = A0_2.CopSpawnType
			L10_2 = true
			L11_2 = false
			L7_2(L8_2, L9_2, L10_2, L11_2)
		end
	end
end
h_265AD682 = L0_1
