; =========================================================
; Game Engine Function: _ZN10CCollision10DistToLineEPK7CVectorS2_S2_
; Address            : 0x2DACAC - 0x2DAD94
; =========================================================

2DACAC:  VLDR            S8, [R0]
2DACB0:  VLDR            S6, [R1]
2DACB4:  VLDR            S12, [R0,#4]
2DACB8:  VLDR            S4, [R2,#4]
2DACBC:  VSUB.F32        S7, S6, S8
2DACC0:  VLDR            S1, [R1,#4]
2DACC4:  VLDR            S0, [R2]
2DACC8:  VSUB.F32        S14, S4, S12
2DACCC:  VSUB.F32        S5, S1, S12
2DACD0:  VLDR            S3, [R0,#8]
2DACD4:  VSUB.F32        S12, S0, S8
2DACD8:  VLDR            S2, [R2,#8]
2DACDC:  VLDR            S10, [R1,#8]
2DACE0:  VSUB.F32        S8, S2, S3
2DACE4:  VSUB.F32        S9, S10, S3
2DACE8:  VMUL.F32        S3, S5, S14
2DACEC:  VMUL.F32        S11, S7, S12
2DACF0:  VMUL.F32        S13, S9, S8
2DACF4:  VADD.F32        S3, S11, S3
2DACF8:  VADD.F32        S3, S3, S13
2DACFC:  VCMPE.F32       S3, #0.0
2DAD00:  VMRS            APSR_nzcv, FPSCR
2DAD04:  BLE             loc_2DAD54
2DAD06:  VMUL.F32        S5, S5, S5
2DAD0A:  VMUL.F32        S7, S7, S7
2DAD0E:  VMUL.F32        S9, S9, S9
2DAD12:  VADD.F32        S5, S7, S5
2DAD16:  VADD.F32        S5, S5, S9
2DAD1A:  VCMPE.F32       S3, S5
2DAD1E:  VMRS            APSR_nzcv, FPSCR
2DAD22:  BGE             loc_2DAD6A
2DAD24:  VMUL.F32        S0, S3, S3
2DAD28:  VMUL.F32        S2, S14, S14
2DAD2C:  VMUL.F32        S4, S12, S12
2DAD30:  VMUL.F32        S6, S8, S8
2DAD34:  VDIV.F32        S0, S0, S5
2DAD38:  VADD.F32        S2, S4, S2
2DAD3C:  VADD.F32        S2, S2, S6
2DAD40:  VSUB.F32        S0, S2, S0
2DAD44:  VCMPE.F32       S0, #0.0
2DAD48:  VMRS            APSR_nzcv, FPSCR
2DAD4C:  ITT LE
2DAD4E:  MOVLE           R0, #0
2DAD50:  BXLE            LR
2DAD52:  B               loc_2DAD8A
2DAD54:  VMUL.F32        S0, S14, S14
2DAD58:  VMUL.F32        S2, S12, S12
2DAD5C:  VMUL.F32        S4, S8, S8
2DAD60:  VADD.F32        S0, S2, S0
2DAD64:  VADD.F32        S0, S0, S4
2DAD68:  B               loc_2DAD8A
2DAD6A:  VSUB.F32        S4, S4, S1
2DAD6E:  VSUB.F32        S0, S0, S6
2DAD72:  VSUB.F32        S2, S2, S10
2DAD76:  VMUL.F32        S4, S4, S4
2DAD7A:  VMUL.F32        S0, S0, S0
2DAD7E:  VMUL.F32        S2, S2, S2
2DAD82:  VADD.F32        S0, S0, S4
2DAD86:  VADD.F32        S0, S0, S2
2DAD8A:  VSQRT.F32       S0, S0
2DAD8E:  VMOV            R0, S0
2DAD92:  BX              LR
