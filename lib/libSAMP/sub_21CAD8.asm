; =========================================================
; Game Engine Function: sub_21CAD8
; Address            : 0x21CAD8 - 0x21CAFE
; =========================================================

21CAD8:  LDR             R2, [R1,#0x10]
21CADA:  ADDS            R2, #1
21CADC:  BEQ             loc_21CAE4
21CADE:  LDR             R3, [R0,#0xC]
21CAE0:  LDR             R2, [R1,#0xC]
21CAE2:  B               loc_21CAEC
21CAE4:  LDR             R3, [R0,#0xC]
21CAE6:  MOVS            R2, #0
21CAE8:  STR             R2, [R1,#0xC]
21CAEA:  STR             R3, [R1,#0x10]
21CAEC:  CMP             R2, R3
21CAEE:  IT CS
21CAF0:  BXCS            LR
21CAF2:  LDR             R0, [R0,#8]
21CAF4:  LDR.W           R0, [R0,R2,LSL#2]
21CAF8:  LDR             R2, [R0]
21CAFA:  LDR             R2, [R2,#0x10]
21CAFC:  BX              R2
