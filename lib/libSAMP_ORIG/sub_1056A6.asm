; =========================================================
; Game Engine Function: sub_1056A6
; Address            : 0x1056A6 - 0x1056CC
; =========================================================

1056A6:  LDR             R2, [R1,#0x10]
1056A8:  ADDS            R2, #1
1056AA:  BEQ             loc_1056B2
1056AC:  LDR             R3, [R0,#0xC]
1056AE:  LDR             R2, [R1,#0xC]
1056B0:  B               loc_1056BA
1056B2:  LDR             R3, [R0,#0xC]
1056B4:  MOVS            R2, #0
1056B6:  STR             R2, [R1,#0xC]
1056B8:  STR             R3, [R1,#0x10]
1056BA:  CMP             R2, R3
1056BC:  IT CS
1056BE:  BXCS            LR
1056C0:  LDR             R0, [R0,#8]
1056C2:  LDR.W           R0, [R0,R2,LSL#2]
1056C6:  LDR             R2, [R0]
1056C8:  LDR             R2, [R2,#0x14]
1056CA:  BX              R2
