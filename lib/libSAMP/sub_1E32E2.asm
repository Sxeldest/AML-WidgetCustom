; =========================================================
; Game Engine Function: sub_1E32E2
; Address            : 0x1E32E2 - 0x1E3316
; =========================================================

1E32E2:  LDR             R2, [R0,#4]
1E32E4:  LDR             R3, [R1]
1E32E6:  LDR             R2, [R2]
1E32E8:  CMP             R2, R3
1E32EA:  BCC             loc_1E32FA
1E32EC:  LDR             R3, [R0,#8]
1E32EE:  LDR.W           R12, [R1,#4]
1E32F2:  LDR             R3, [R3]
1E32F4:  ADD             R2, R3
1E32F6:  CMP             R12, R2
1E32F8:  BCS             loc_1E32FE
1E32FA:  MOVS            R0, #0
1E32FC:  BX              LR
1E32FE:  LDR             R0, [R0,#0xC]
1E3300:  LDR             R1, [R1,#8]
1E3302:  LDR             R2, [R0]
1E3304:  ADDS            R3, R2, #1
1E3306:  BEQ             loc_1E3310
1E3308:  CMP             R1, R2
1E330A:  IT LT
1E330C:  STRLT           R1, [R0]
1E330E:  B               loc_1E3312
1E3310:  STR             R1, [R0]
1E3312:  MOVS            R0, #1
1E3314:  BX              LR
