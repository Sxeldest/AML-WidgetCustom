; =========================================================
; Game Engine Function: sub_1028C8
; Address            : 0x1028C8 - 0x102914
; =========================================================

1028C8:  LDRH            R1, [R0,#0xE]
1028CA:  MOVW            R2, #0xFFFF
1028CE:  CMP             R1, R2
1028D0:  BNE             loc_1028E6
1028D2:  LDRH            R1, [R0,#0xC]
1028D4:  CMP             R1, R2
1028D6:  ITT NE
1028D8:  MOVNE           R0, #1
1028DA:  BXNE            LR
1028DC:  LDRB.W          R0, [R0,#0x2C4]
1028E0:  AND.W           R0, R0, #1
1028E4:  BX              LR
1028E6:  LDR             R0, =(off_23496C - 0x1028EC)
1028E8:  ADD             R0, PC; off_23496C
1028EA:  LDR             R0, [R0]; dword_23DEF4
1028EC:  LDR             R0, [R0]
1028EE:  CBZ             R0, loc_102910
1028F0:  LDR.W           R0, [R0,#0x3B0]
1028F4:  LDR             R0, [R0,#0x10]
1028F6:  CBZ             R0, loc_102910
1028F8:  CMP.W           R1, #0x3E8
1028FC:  BHI             loc_102910
1028FE:  ADDS            R2, R0, R1
102900:  LDRB            R2, [R2,#4]
102902:  CBZ             R2, loc_102910
102904:  ADD.W           R0, R0, R1,LSL#2
102908:  LDR.W           R0, [R0,#0x3EC]
10290C:  CMP             R0, #0
10290E:  BNE             loc_1028DC
102910:  MOVS            R0, #0
102912:  BX              LR
