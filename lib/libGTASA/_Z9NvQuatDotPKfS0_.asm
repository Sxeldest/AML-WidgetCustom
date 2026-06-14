; =========================================================
; Game Engine Function: _Z9NvQuatDotPKfS0_
; Address            : 0x2797E0 - 0x279822
; =========================================================

2797E0:  VLDR            S0, [R1]
2797E4:  VLDR            S8, [R0]
2797E8:  VLDR            S2, [R1,#4]
2797EC:  VLDR            S10, [R0,#4]
2797F0:  VMUL.F32        S0, S8, S0
2797F4:  VLDR            S4, [R1,#8]
2797F8:  VMUL.F32        S2, S10, S2
2797FC:  VLDR            S12, [R0,#8]
279800:  VLDR            S6, [R1,#0xC]
279804:  VMUL.F32        S4, S12, S4
279808:  VLDR            S14, [R0,#0xC]
27980C:  VADD.F32        S0, S0, S2
279810:  VMUL.F32        S2, S14, S6
279814:  VADD.F32        S0, S0, S4
279818:  VADD.F32        S0, S0, S2
27981C:  VMOV            R0, S0
279820:  BX              LR
