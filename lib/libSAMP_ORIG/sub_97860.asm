; =========================================================
; Game Engine Function: sub_97860
; Address            : 0x97860 - 0x9788E
; =========================================================

97860:  LDR             R1, =(dword_1ACF68 - 0x9786A)
97862:  MOVW            R2, #0x19AC
97866:  ADD             R1, PC; dword_1ACF68
97868:  LDR             R1, [R1]
9786A:  LDR             R1, [R1,R2]
9786C:  VLDR            S0, [R1,#0xC]
97870:  VLDR            S4, [R1,#0x228]
97874:  VLDR            S2, [R1,#0x10]
97878:  VLDR            S6, [R1,#0x22C]
9787C:  VSUB.F32        S0, S4, S0
97880:  VSUB.F32        S2, S6, S2
97884:  VSTR            S0, [R0]
97888:  VSTR            S2, [R0,#4]
9788C:  BX              LR
