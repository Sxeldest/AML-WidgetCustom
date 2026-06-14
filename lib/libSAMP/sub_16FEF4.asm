; =========================================================
; Game Engine Function: sub_16FEF4
; Address            : 0x16FEF4 - 0x16FF22
; =========================================================

16FEF4:  LDR             R1, =(dword_381B58 - 0x16FEFE)
16FEF6:  MOVW            R2, #0x19AC
16FEFA:  ADD             R1, PC; dword_381B58
16FEFC:  LDR             R1, [R1]
16FEFE:  LDR             R1, [R1,R2]
16FF00:  VLDR            S0, [R1,#0xC]
16FF04:  VLDR            S4, [R1,#0x228]
16FF08:  VLDR            S2, [R1,#0x10]
16FF0C:  VLDR            S6, [R1,#0x22C]
16FF10:  VSUB.F32        S0, S4, S0
16FF14:  VSUB.F32        S2, S6, S2
16FF18:  VSTR            S0, [R0]
16FF1C:  VSTR            S2, [R0,#4]
16FF20:  BX              LR
