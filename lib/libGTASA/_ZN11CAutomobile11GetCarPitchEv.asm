; =========================================================
; Game Engine Function: _ZN11CAutomobile11GetCarPitchEv
; Address            : 0x55FE40 - 0x55FE7A
; =========================================================

55FE40:  LDR             R0, [R0,#0x14]
55FE42:  VLDR            S0, [R0,#0x10]
55FE46:  VLDR            S2, [R0,#0x14]
55FE4A:  VMUL.F32        S0, S0, S0
55FE4E:  VLDR            S4, [R0,#0x28]
55FE52:  VMUL.F32        S2, S2, S2
55FE56:  VCMPE.F32       S4, #0.0
55FE5A:  VMRS            APSR_nzcv, FPSCR
55FE5E:  VADD.F32        S0, S0, S2
55FE62:  VSQRT.F32       S0, S0
55FE66:  VNEG.F32        S2, S0
55FE6A:  IT LT
55FE6C:  VMOVLT.F32      S0, S2
55FE70:  LDR             R0, [R0,#0x18]; y
55FE72:  VMOV            R1, S0; x
55FE76:  B.W             j_atan2f
