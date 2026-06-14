; =========================================================
; Game Engine Function: sub_1E64CC
; Address            : 0x1E64CC - 0x1E6564
; =========================================================

1E64CC:  CMP             R2, #1
1E64CE:  IT LT
1E64D0:  BXLT            LR
1E64D2:  ADD.W           R12, R2, #1
1E64D6:  MOV             R2, R0
1E64D8:  VLDR            S0, [R3]
1E64DC:  SUB.W           R12, R12, #1
1E64E0:  VLDR            S8, [R1]
1E64E4:  CMP.W           R12, #1
1E64E8:  VLDR            S6, [R3,#0x10]
1E64EC:  VLDR            S10, [R1,#4]
1E64F0:  VMUL.F32        S0, S8, S0
1E64F4:  VLDR            S12, [R1,#8]
1E64F8:  ADD.W           R1, R1, #0xC
1E64FC:  VMUL.F32        S6, S10, S6
1E6500:  VLDR            S14, [R3,#0x20]
1E6504:  VLDR            S2, [R3,#4]
1E6508:  VMUL.F32        S14, S12, S14
1E650C:  VLDR            S4, [R3,#8]
1E6510:  VMUL.F32        S2, S8, S2
1E6514:  VMUL.F32        S4, S8, S4
1E6518:  VADD.F32        S0, S0, S6
1E651C:  VLDR            S6, [R3,#0x14]
1E6520:  VMUL.F32        S6, S10, S6
1E6524:  VADD.F32        S0, S0, S14
1E6528:  VLDR            S14, [R3,#0x18]
1E652C:  VADD.F32        S2, S2, S6
1E6530:  VSTR            S0, [R2]
1E6534:  VLDR            S0, [R3,#0x24]
1E6538:  VMUL.F32        S0, S12, S0
1E653C:  VADD.F32        S0, S2, S0
1E6540:  VMUL.F32        S2, S10, S14
1E6544:  VSTR            S0, [R2,#4]
1E6548:  VLDR            S0, [R3,#0x28]
1E654C:  VADD.F32        S2, S4, S2
1E6550:  VMUL.F32        S0, S12, S0
1E6554:  VADD.F32        S0, S2, S0
1E6558:  VSTR            S0, [R2,#8]
1E655C:  ADD.W           R2, R2, #0xC
1E6560:  BGT             loc_1E64D8
1E6562:  BX              LR
