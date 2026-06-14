; =========================================================
; Game Engine Function: _ZN10CCollision22DistToMathematicalLineEPK7CVectorS2_S2_
; Address            : 0x2DAE88 - 0x2DAF28
; =========================================================

2DAE88:  VLDR            S0, [R0]
2DAE8C:  VLDR            S6, [R2]
2DAE90:  VLDR            S2, [R0,#4]
2DAE94:  VLDR            S8, [R2,#4]
2DAE98:  VSUB.F32        S6, S6, S0
2DAE9C:  VLDR            S12, [R1]
2DAEA0:  VLDR            S14, [R1,#4]
2DAEA4:  VSUB.F32        S8, S8, S2
2DAEA8:  VSUB.F32        S0, S12, S0
2DAEAC:  VLDR            S4, [R0,#8]
2DAEB0:  VSUB.F32        S2, S14, S2
2DAEB4:  VLDR            S10, [R2,#8]
2DAEB8:  VLDR            S1, [R1,#8]
2DAEBC:  VSUB.F32        S10, S10, S4
2DAEC0:  VSUB.F32        S4, S1, S4
2DAEC4:  VMUL.F32        S14, S0, S6
2DAEC8:  VMUL.F32        S12, S2, S8
2DAECC:  VMUL.F32        S2, S2, S2
2DAED0:  VMUL.F32        S0, S0, S0
2DAED4:  VMUL.F32        S1, S4, S10
2DAED8:  VMUL.F32        S4, S4, S4
2DAEDC:  VMUL.F32        S6, S6, S6
2DAEE0:  VADD.F32        S12, S14, S12
2DAEE4:  VADD.F32        S0, S0, S2
2DAEE8:  VADD.F32        S2, S12, S1
2DAEEC:  VADD.F32        S0, S0, S4
2DAEF0:  VMUL.F32        S4, S8, S8
2DAEF4:  VMUL.F32        S2, S2, S2
2DAEF8:  VADD.F32        S4, S6, S4
2DAEFC:  VDIV.F32        S0, S2, S0
2DAF00:  VMUL.F32        S2, S10, S10
2DAF04:  VADD.F32        S2, S4, S2
2DAF08:  VLDR            S4, =0.0
2DAF0C:  VSUB.F32        S0, S2, S0
2DAF10:  VCMPE.F32       S0, #0.0
2DAF14:  VMRS            APSR_nzcv, FPSCR
2DAF18:  VSQRT.F32       S2, S0
2DAF1C:  IT GT
2DAF1E:  VMOVGT.F32      S4, S2
2DAF22:  VMOV            R0, S4
2DAF26:  BX              LR
