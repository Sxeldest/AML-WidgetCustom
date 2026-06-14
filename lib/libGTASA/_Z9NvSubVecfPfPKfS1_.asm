; =========================================================
; Game Engine Function: _Z9NvSubVecfPfPKfS1_
; Address            : 0x2772F2 - 0x277324
; =========================================================

2772F2:  VLDR            S0, [R2]
2772F6:  VLDR            S2, [R1]
2772FA:  VSUB.F32        S0, S2, S0
2772FE:  VSTR            S0, [R0]
277302:  VLDR            S0, [R2,#4]
277306:  VLDR            S2, [R1,#4]
27730A:  VSUB.F32        S0, S2, S0
27730E:  VSTR            S0, [R0,#4]
277312:  VLDR            S0, [R2,#8]
277316:  VLDR            S2, [R1,#8]
27731A:  VSUB.F32        S0, S2, S0
27731E:  VSTR            S0, [R0,#8]
277322:  BX              LR
