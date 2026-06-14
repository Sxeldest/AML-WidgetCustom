; =========================================================
; Game Engine Function: _Z15NvQuatNormalizePfPKf
; Address            : 0x27995C - 0x2799C2
; =========================================================

27995C:  VLDR            S2, [R1,#4]
279960:  VLDR            S0, [R1]
279964:  VMUL.F32        S2, S2, S2
279968:  VLDR            S4, [R1,#8]
27996C:  VMUL.F32        S8, S0, S0
279970:  VLDR            S6, [R1,#0xC]
279974:  VMUL.F32        S4, S4, S4
279978:  VMUL.F32        S6, S6, S6
27997C:  VADD.F32        S2, S8, S2
279980:  VADD.F32        S2, S2, S4
279984:  VMOV.F32        S4, #1.0
279988:  VADD.F32        S2, S2, S6
27998C:  VSQRT.F32       S2, S2
279990:  VDIV.F32        S2, S4, S2
279994:  VMUL.F32        S0, S0, S2
279998:  VSTR            S0, [R0]
27999C:  VLDR            S0, [R1,#4]
2799A0:  VMUL.F32        S0, S0, S2
2799A4:  VSTR            S0, [R0,#4]
2799A8:  VLDR            S0, [R1,#8]
2799AC:  VMUL.F32        S0, S2, S0
2799B0:  VSTR            S0, [R0,#8]
2799B4:  VLDR            S0, [R1,#0xC]
2799B8:  VMUL.F32        S0, S2, S0
2799BC:  VSTR            S0, [R0,#0xC]
2799C0:  BX              LR
