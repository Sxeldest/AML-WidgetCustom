; =========================================================
; Game Engine Function: _ZN10CCollision24DistToMathematicalLine2DEffffff
; Address            : 0x2DAF2C - 0x2DAF88
; =========================================================

2DAF2C:  VLDR            S0, [SP,#arg_0]
2DAF30:  VMOV            S6, R0
2DAF34:  VLDR            S2, [SP,#arg_4]
2DAF38:  VMOV            S4, R1
2DAF3C:  VSUB.F32        S0, S0, S6
2DAF40:  VSUB.F32        S2, S2, S4
2DAF44:  VMOV            S4, R3
2DAF48:  VMOV            S6, R2
2DAF4C:  VMUL.F32        S6, S0, S6
2DAF50:  VMUL.F32        S4, S2, S4
2DAF54:  VMUL.F32        S2, S2, S2
2DAF58:  VMUL.F32        S0, S0, S0
2DAF5C:  VADD.F32        S4, S6, S4
2DAF60:  VADD.F32        S0, S0, S2
2DAF64:  VMUL.F32        S2, S4, S4
2DAF68:  VLDR            S4, =0.0
2DAF6C:  VSUB.F32        S0, S0, S2
2DAF70:  VCMPE.F32       S0, #0.0
2DAF74:  VMRS            APSR_nzcv, FPSCR
2DAF78:  VSQRT.F32       S2, S0
2DAF7C:  IT GT
2DAF7E:  VMOVGT.F32      S4, S2
2DAF82:  VMOV            R0, S4
2DAF86:  BX              LR
