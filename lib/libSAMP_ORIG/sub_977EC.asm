; =========================================================
; Game Engine Function: sub_977EC
; Address            : 0x977EC - 0x9785A
; =========================================================

977EC:  LDR             R1, =(dword_1ACF68 - 0x977F6)
977EE:  MOVW            R2, #0x19AC
977F2:  ADD             R1, PC; dword_1ACF68
977F4:  LDR             R1, [R1]
977F6:  LDR             R1, [R1,R2]
977F8:  LDR.W           R2, [R1,#0x1C0]
977FC:  VLDR            S0, [R1,#0x22C]
97800:  CBZ             R2, loc_9783C
97802:  LDR             R3, [R2,#0xC]
97804:  VLDR            S2, [R2,#0x14]
97808:  VLDR            S4, [R2,#0x18]
9780C:  CMN.W           R3, #2
97810:  LDR             R2, [R2,#0x44]
97812:  IT GT
97814:  ADDGT           R3, #1
97816:  VSUB.F32        S4, S4, S2
9781A:  RSB.W           R3, R3, R3,LSL#3
9781E:  ADD.W           R2, R2, R3,LSL#2
97822:  VLDR            S6, [R2]
97826:  VMLA.F32        S2, S4, S6
9782A:  VLDR            S4, [R1,#0xC]
9782E:  VLDR            S6, [R1,#0x34]
97832:  VADD.F32        S2, S4, S2
97836:  VSUB.F32        S2, S2, S6
9783A:  B               loc_97840
9783C:  VLDR            S2, [R1,#0x228]
97840:  VLDR            S4, [R1,#0xC8]
97844:  VLDR            S6, [R1,#0xCC]
97848:  VSUB.F32        S2, S2, S4
9784C:  VSUB.F32        S0, S0, S6
97850:  VSTR            S2, [R0]
97854:  VSTR            S0, [R0,#4]
97858:  BX              LR
