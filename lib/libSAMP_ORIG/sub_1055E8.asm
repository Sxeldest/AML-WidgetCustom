; =========================================================
; Game Engine Function: sub_1055E8
; Address            : 0x1055E8 - 0x10560E
; =========================================================

1055E8:  LDR             R2, [R1,#0x10]
1055EA:  ADDS            R2, #1
1055EC:  BEQ             loc_1055F4
1055EE:  LDR             R3, [R0,#0xC]
1055F0:  LDR             R2, [R1,#0xC]
1055F2:  B               loc_1055FC
1055F4:  LDR             R3, [R0,#0xC]
1055F6:  MOVS            R2, #0
1055F8:  STR             R2, [R1,#0xC]
1055FA:  STR             R3, [R1,#0x10]
1055FC:  CMP             R2, R3
1055FE:  ITT CS
105600:  MOVCS           R0, #0
105602:  BXCS            LR
105604:  LDR             R0, [R0,#8]
105606:  LDR.W           R0, [R0,R2,LSL#2]
10560A:  B.W             sub_10068A
