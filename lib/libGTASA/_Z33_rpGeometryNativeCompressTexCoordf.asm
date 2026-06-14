; =========================================================
; Game Engine Function: _Z33_rpGeometryNativeCompressTexCoordf
; Address            : 0x21FA0C - 0x21FA22
; =========================================================

21FA0C:  VLDR            S0, =512.0
21FA10:  VMOV            S2, R0
21FA14:  VMUL.F32        S0, S2, S0
21FA18:  VCVT.S32.F32    S0, S0
21FA1C:  VMOV            R0, S0
21FA20:  BX              LR
