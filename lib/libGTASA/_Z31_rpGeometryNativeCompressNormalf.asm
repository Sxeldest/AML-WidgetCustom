; =========================================================
; Game Engine Function: _Z31_rpGeometryNativeCompressNormalf
; Address            : 0x21F9AC - 0x21FA02
; =========================================================

21F9AC:  VMOV            S0, R0
21F9B0:  VCMPE.F32       S0, #0.0
21F9B4:  VMRS            APSR_nzcv, FPSCR
21F9B8:  BGE             loc_21F9E0
21F9BA:  VLDR            S2, =128.0
21F9BE:  VMOV.F32        S4, #0.5
21F9C2:  VMUL.F32        S0, S0, S2
21F9C6:  VADD.F32        S0, S0, S4
21F9CA:  VCVT.S32.F32    S0, S0
21F9CE:  VMOV            R0, S0
21F9D2:  CMN.W           R0, #0x80
21F9D6:  IT LE
21F9D8:  MOVLE           R0, #0xFFFFFF80
21F9DC:  SXTB            R0, R0
21F9DE:  BX              LR
21F9E0:  VLDR            S2, =127.0
21F9E4:  VMOV.F32        S4, #0.5
21F9E8:  VMUL.F32        S0, S0, S2
21F9EC:  VADD.F32        S0, S0, S4
21F9F0:  VCVT.S32.F32    S0, S0
21F9F4:  VMOV            R0, S0
21F9F8:  CMP             R0, #0x7F
21F9FA:  IT GE
21F9FC:  MOVGE           R0, #0x7F
21F9FE:  SXTB            R0, R0
21FA00:  BX              LR
