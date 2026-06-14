; =========================================================
; Game Engine Function: _Z15NvNormalizeVecfPfPKf
; Address            : 0x27727A - 0x2772C0
; =========================================================

27727A:  VLDR            S2, [R1,#4]
27727E:  VLDR            S0, [R1]
277282:  VMUL.F32        S2, S2, S2
277286:  VLDR            S4, [R1,#8]
27728A:  VMUL.F32        S6, S0, S0
27728E:  VMUL.F32        S4, S4, S4
277292:  VADD.F32        S2, S6, S2
277296:  VADD.F32        S2, S2, S4
27729A:  VSQRT.F32       S2, S2
27729E:  VDIV.F32        S0, S0, S2
2772A2:  VSTR            S0, [R0]
2772A6:  VLDR            S0, [R1,#4]
2772AA:  VDIV.F32        S0, S0, S2
2772AE:  VSTR            S0, [R0,#4]
2772B2:  VLDR            S0, [R1,#8]
2772B6:  VDIV.F32        S0, S0, S2
2772BA:  VSTR            S0, [R0,#8]
2772BE:  BX              LR
