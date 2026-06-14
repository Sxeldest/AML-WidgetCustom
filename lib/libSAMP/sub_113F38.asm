; =========================================================
; Game Engine Function: sub_113F38
; Address            : 0x113F38 - 0x113F62
; =========================================================

113F38:  LDR             R1, [R2]
113F3A:  CBZ             R1, loc_113F5A
113F3C:  LDR             R1, [R1]
113F3E:  CBZ             R1, loc_113F5A
113F40:  VLDR            S0, [R1,#0xC]
113F44:  VLDR            S2, [R1,#0x10]
113F48:  VCVT.F32.S32    S0, S0
113F4C:  VCVT.F32.S32    S2, S2
113F50:  VSTR            S0, [R0]
113F54:  VSTR            S2, [R0,#4]
113F58:  BX              LR
113F5A:  MOVS            R1, #0
113F5C:  STR             R1, [R0]
113F5E:  STR             R1, [R0,#4]
113F60:  BX              LR
