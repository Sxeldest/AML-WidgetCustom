; =========================================================
; Game Engine Function: sub_9777C
; Address            : 0x9777C - 0x977E8
; =========================================================

9777C:  LDR             R1, =(dword_1ACF68 - 0x97786)
9777E:  MOVW            R2, #0x19AC
97782:  ADD             R1, PC; dword_1ACF68
97784:  LDR             R1, [R1]
97786:  LDR             R1, [R1,R2]
97788:  VLDR            S0, [R1,#0xC]
9778C:  VLDR            S4, [R1,#0x228]
97790:  VLDR            S2, [R1,#0x10]
97794:  VLDR            S6, [R1,#0x22C]
97798:  VSUB.F32        S0, S4, S0
9779C:  LDR.W           R2, [R1,#0x1C0]
977A0:  VSUB.F32        S2, S6, S2
977A4:  CMP             R2, #0
977A6:  VSTR            S0, [R0]
977AA:  VSTR            S2, [R0,#4]
977AE:  IT EQ
977B0:  BXEQ            LR
977B2:  LDR             R3, [R2,#0xC]
977B4:  VLDR            S0, [R2,#0x14]
977B8:  VLDR            S2, [R2,#0x18]
977BC:  CMN.W           R3, #2
977C0:  LDR             R2, [R2,#0x44]
977C2:  IT GT
977C4:  ADDGT           R3, #1
977C6:  VSUB.F32        S2, S2, S0
977CA:  RSB.W           R3, R3, R3,LSL#3
977CE:  ADD.W           R2, R2, R3,LSL#2
977D2:  VLDR            S4, [R2]
977D6:  VMLA.F32        S0, S2, S4
977DA:  VLDR            S2, [R1,#0x34]
977DE:  VSUB.F32        S0, S0, S2
977E2:  VSTR            S0, [R0]
977E6:  BX              LR
