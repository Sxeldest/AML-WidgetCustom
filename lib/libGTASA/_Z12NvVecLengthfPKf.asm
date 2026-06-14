; =========================================================
; Game Engine Function: _Z12NvVecLengthfPKf
; Address            : 0x277250 - 0x27727A
; =========================================================

277250:  VLDR            S0, [R0]
277254:  VLDR            S2, [R0,#4]
277258:  VMUL.F32        S0, S0, S0
27725C:  VLDR            S4, [R0,#8]
277260:  VMUL.F32        S2, S2, S2
277264:  VMUL.F32        S4, S4, S4
277268:  VADD.F32        S0, S0, S2
27726C:  VADD.F32        S0, S0, S4
277270:  VSQRT.F32       S0, S0
277274:  VMOV            R0, S0
277278:  BX              LR
