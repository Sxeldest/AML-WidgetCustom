; =========================================================
; Game Engine Function: sub_21CAB2
; Address            : 0x21CAB2 - 0x21CAD8
; =========================================================

21CAB2:  LDR             R2, [R1,#0x10]
21CAB4:  ADDS            R2, #1
21CAB6:  BEQ             loc_21CABE
21CAB8:  LDR             R3, [R0,#0xC]
21CABA:  LDR             R2, [R1,#0xC]
21CABC:  B               loc_21CAC6
21CABE:  LDR             R3, [R0,#0xC]
21CAC0:  MOVS            R2, #0
21CAC2:  STR             R2, [R1,#0xC]
21CAC4:  STR             R3, [R1,#0x10]
21CAC6:  CMP             R2, R3
21CAC8:  IT CS
21CACA:  BXCS            LR
21CACC:  LDR             R0, [R0,#8]
21CACE:  LDR.W           R0, [R0,R2,LSL#2]
21CAD2:  LDR             R2, [R0]
21CAD4:  LDR             R2, [R2,#0xC]
21CAD6:  BX              R2
