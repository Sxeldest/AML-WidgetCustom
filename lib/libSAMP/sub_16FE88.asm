; =========================================================
; Game Engine Function: sub_16FE88
; Address            : 0x16FE88 - 0x16FEF0
; =========================================================

16FE88:  LDR             R1, =(dword_381B58 - 0x16FE92)
16FE8A:  MOVW            R2, #0x19AC
16FE8E:  ADD             R1, PC; dword_381B58
16FE90:  LDR             R1, [R1]
16FE92:  LDR             R1, [R1,R2]
16FE94:  VLDR            S0, [R1,#0xC]
16FE98:  VLDR            S4, [R1,#0x228]
16FE9C:  VLDR            S2, [R1,#0x10]
16FEA0:  VLDR            S6, [R1,#0x22C]
16FEA4:  VSUB.F32        S0, S4, S0
16FEA8:  LDR.W           R2, [R1,#0x1C0]
16FEAC:  VSUB.F32        S2, S6, S2
16FEB0:  VSTR            S0, [R0]
16FEB4:  VSTR            S2, [R0,#4]
16FEB8:  CBZ             R2, locret_16FEEE
16FEBA:  LDR             R3, [R2,#0xC]
16FEBC:  VLDR            S0, [R2,#0x14]
16FEC0:  VLDR            S2, [R2,#0x18]
16FEC4:  CMN.W           R3, #2
16FEC8:  LDR             R2, [R2,#0x44]
16FECA:  IT GT
16FECC:  ADDGT           R3, #1
16FECE:  VSUB.F32        S2, S2, S0
16FED2:  RSB.W           R3, R3, R3,LSL#3
16FED6:  ADD.W           R2, R2, R3,LSL#2
16FEDA:  VLDR            S4, [R2]
16FEDE:  VMLA.F32        S0, S2, S4
16FEE2:  VLDR            S2, [R1,#0x3C]
16FEE6:  VSUB.F32        S0, S0, S2
16FEEA:  VSTR            S0, [R0]
16FEEE:  BX              LR
