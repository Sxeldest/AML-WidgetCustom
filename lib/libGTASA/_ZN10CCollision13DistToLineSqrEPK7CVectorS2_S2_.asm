; =========================================================
; Game Engine Function: _ZN10CCollision13DistToLineSqrEPK7CVectorS2_S2_
; Address            : 0x2DAD94 - 0x2DAE84
; =========================================================

2DAD94:  VLDR            S8, [R0]
2DAD98:  VLDR            S6, [R1]
2DAD9C:  VLDR            S12, [R0,#4]
2DADA0:  VLDR            S4, [R2,#4]
2DADA4:  VSUB.F32        S7, S6, S8
2DADA8:  VLDR            S1, [R1,#4]
2DADAC:  VLDR            S0, [R2]
2DADB0:  VSUB.F32        S14, S4, S12
2DADB4:  VSUB.F32        S5, S1, S12
2DADB8:  VLDR            S3, [R0,#8]
2DADBC:  VSUB.F32        S12, S0, S8
2DADC0:  VLDR            S2, [R2,#8]
2DADC4:  VLDR            S10, [R1,#8]
2DADC8:  VSUB.F32        S8, S2, S3
2DADCC:  VSUB.F32        S9, S10, S3
2DADD0:  VMUL.F32        S3, S5, S14
2DADD4:  VMUL.F32        S11, S7, S12
2DADD8:  VMUL.F32        S13, S9, S8
2DADDC:  VADD.F32        S3, S11, S3
2DADE0:  VADD.F32        S3, S3, S13
2DADE4:  VCMPE.F32       S3, #0.0
2DADE8:  VMRS            APSR_nzcv, FPSCR
2DADEC:  BLE             loc_2DAE44
2DADEE:  VMUL.F32        S5, S5, S5
2DADF2:  VMUL.F32        S7, S7, S7
2DADF6:  VMUL.F32        S9, S9, S9
2DADFA:  VADD.F32        S5, S7, S5
2DADFE:  VADD.F32        S5, S5, S9
2DAE02:  VCMPE.F32       S3, S5
2DAE06:  VMRS            APSR_nzcv, FPSCR
2DAE0A:  BGE             loc_2DAE5E
2DAE0C:  VMUL.F32        S0, S3, S3
2DAE10:  VMUL.F32        S2, S14, S14
2DAE14:  VMUL.F32        S4, S12, S12
2DAE18:  VMUL.F32        S6, S8, S8
2DAE1C:  VDIV.F32        S0, S0, S5
2DAE20:  VADD.F32        S2, S4, S2
2DAE24:  VADD.F32        S2, S2, S6
2DAE28:  VSUB.F32        S0, S2, S0
2DAE2C:  VLDR            S2, =0.0
2DAE30:  VCMPE.F32       S0, #0.0
2DAE34:  VMRS            APSR_nzcv, FPSCR
2DAE38:  IT LE
2DAE3A:  VMOVLE.F32      S0, S2
2DAE3E:  VMOV            R0, S0
2DAE42:  BX              LR
2DAE44:  VMUL.F32        S0, S14, S14
2DAE48:  VMUL.F32        S2, S12, S12
2DAE4C:  VMUL.F32        S4, S8, S8
2DAE50:  VADD.F32        S0, S2, S0
2DAE54:  VADD.F32        S0, S0, S4
2DAE58:  VMOV            R0, S0
2DAE5C:  BX              LR
2DAE5E:  VSUB.F32        S4, S4, S1
2DAE62:  VSUB.F32        S0, S0, S6
2DAE66:  VSUB.F32        S2, S2, S10
2DAE6A:  VMUL.F32        S4, S4, S4
2DAE6E:  VMUL.F32        S0, S0, S0
2DAE72:  VMUL.F32        S2, S2, S2
2DAE76:  VADD.F32        S0, S0, S4
2DAE7A:  VADD.F32        S0, S0, S2
2DAE7E:  VMOV            R0, S0
2DAE82:  BX              LR
