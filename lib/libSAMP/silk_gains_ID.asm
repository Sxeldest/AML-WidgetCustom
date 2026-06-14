; =========================================================
; Game Engine Function: silk_gains_ID
; Address            : 0x1960EE - 0x196106
; =========================================================

1960EE:  MOV             R2, R0
1960F0:  MOVS            R0, #0
1960F2:  CMP             R1, #1
1960F4:  IT LT
1960F6:  BXLT            LR
1960F8:  LDRSB.W         R3, [R2],#1
1960FC:  SUBS            R1, #1
1960FE:  ADD.W           R0, R3, R0,LSL#8
196102:  BNE             loc_1960F8
196104:  BX              LR
