; =========================================================
; Game Engine Function: sub_21CA40
; Address            : 0x21CA40 - 0x21CA66
; =========================================================

21CA40:  LDR             R2, [R1,#0x10]
21CA42:  ADDS            R2, #1
21CA44:  BEQ             loc_21CA4C
21CA46:  LDR             R3, [R0,#0xC]
21CA48:  LDR             R2, [R1,#0xC]
21CA4A:  B               loc_21CA54
21CA4C:  LDR             R3, [R0,#0xC]
21CA4E:  MOVS            R2, #0
21CA50:  STR             R2, [R1,#0xC]
21CA52:  STR             R3, [R1,#0x10]
21CA54:  CMP             R2, R3
21CA56:  ITT CS
21CA58:  MOVCS           R0, #0
21CA5A:  BXCS            LR
21CA5C:  LDR             R0, [R0,#8]
21CA5E:  LDR.W           R0, [R0,R2,LSL#2]
21CA62:  B.W             sub_217AE2
