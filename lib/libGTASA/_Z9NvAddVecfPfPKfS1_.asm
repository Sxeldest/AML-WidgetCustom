; =========================================================
; Game Engine Function: _Z9NvAddVecfPfPKfS1_
; Address            : 0x2772C0 - 0x2772F2
; =========================================================

2772C0:  VLDR            S0, [R2]
2772C4:  VLDR            S2, [R1]
2772C8:  VADD.F32        S0, S2, S0
2772CC:  VSTR            S0, [R0]
2772D0:  VLDR            S0, [R2,#4]
2772D4:  VLDR            S2, [R1,#4]
2772D8:  VADD.F32        S0, S2, S0
2772DC:  VSTR            S0, [R0,#4]
2772E0:  VLDR            S0, [R2,#8]
2772E4:  VLDR            S2, [R1,#8]
2772E8:  VADD.F32        S0, S2, S0
2772EC:  VSTR            S0, [R0,#8]
2772F0:  BX              LR
