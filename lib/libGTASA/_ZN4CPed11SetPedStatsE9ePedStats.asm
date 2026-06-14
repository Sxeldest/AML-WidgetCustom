; =========================================================
; Game Engine Function: _ZN4CPed11SetPedStatsE9ePedStats
; Address            : 0x49FBDC - 0x49FBF0
; =========================================================

49FBDC:  LDR             R2, =(_ZN9CPedStats13ms_apPedStatsE_ptr - 0x49FBE4)
49FBDE:  MOVS            R3, #0x34 ; '4'
49FBE0:  ADD             R2, PC; _ZN9CPedStats13ms_apPedStatsE_ptr
49FBE2:  LDR             R2, [R2]; CPedStats::ms_apPedStats ...
49FBE4:  LDR             R2, [R2]; CPedStats::ms_apPedStats
49FBE6:  MLA.W           R1, R1, R3, R2
49FBEA:  STR.W           R1, [R0,#0x5A0]
49FBEE:  BX              LR
