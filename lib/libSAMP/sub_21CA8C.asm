; =========================================================
; Game Engine Function: sub_21CA8C
; Address            : 0x21CA8C - 0x21CAB2
; =========================================================

21CA8C:  LDR             R2, [R1,#0x10]
21CA8E:  ADDS            R2, #1
21CA90:  BEQ             loc_21CA98
21CA92:  LDR             R3, [R0,#0xC]
21CA94:  LDR             R2, [R1,#0xC]
21CA96:  B               loc_21CAA0
21CA98:  LDR             R3, [R0,#0xC]
21CA9A:  MOVS            R2, #0
21CA9C:  STR             R2, [R1,#0xC]
21CA9E:  STR             R3, [R1,#0x10]
21CAA0:  CMP             R2, R3
21CAA2:  ITT CS
21CAA4:  MOVCS           R0, #0
21CAA6:  BXCS            LR
21CAA8:  LDR             R0, [R0,#8]
21CAAA:  LDR.W           R0, [R0,R2,LSL#2]
21CAAE:  B.W             sub_217B0A
