; =========================================================
; Game Engine Function: _ZN10CCollision23Test2DLineAgainst2DLineEffffffff
; Address            : 0x2DBA94 - 0x2DBB28
; =========================================================

2DBA94:  VMOV            S8, R0
2DBA98:  VLDR            S0, [SP,#arg_0]
2DBA9C:  VLDR            S4, [SP,#arg_4]
2DBAA0:  VMOV            S10, R1
2DBAA4:  VSUB.F32        S3, S0, S8
2DBAA8:  VLDR            S6, [SP,#arg_8]
2DBAAC:  VSUB.F32        S1, S4, S10
2DBAB0:  VLDR            S2, [SP,#arg_C]
2DBAB4:  VMOV            S12, R2
2DBAB8:  MOVS            R0, #0
2DBABA:  VMOV            S14, R3
2DBABE:  VADD.F32        S7, S3, S6
2DBAC2:  VADD.F32        S5, S1, S2
2DBAC6:  VMUL.F32        S1, S1, S12
2DBACA:  VMUL.F32        S3, S3, S14
2DBACE:  VMUL.F32        S7, S7, S14
2DBAD2:  VMUL.F32        S5, S5, S12
2DBAD6:  VSUB.F32        S1, S3, S1
2DBADA:  VSUB.F32        S3, S7, S5
2DBADE:  VMUL.F32        S1, S1, S3
2DBAE2:  VCMPE.F32       S1, #0.0
2DBAE6:  VMRS            APSR_nzcv, FPSCR
2DBAEA:  IT GT
2DBAEC:  BXGT            LR
2DBAEE:  VSUB.F32        S4, S10, S4
2DBAF2:  VSUB.F32        S0, S8, S0
2DBAF6:  VADD.F32        S8, S4, S14
2DBAFA:  VADD.F32        S10, S0, S12
2DBAFE:  VMUL.F32        S4, S4, S6
2DBB02:  VMUL.F32        S0, S0, S2
2DBB06:  VMUL.F32        S6, S8, S6
2DBB0A:  VMUL.F32        S2, S10, S2
2DBB0E:  VSUB.F32        S0, S0, S4
2DBB12:  VSUB.F32        S2, S2, S6
2DBB16:  VMUL.F32        S0, S0, S2
2DBB1A:  VCMPE.F32       S0, #0.0
2DBB1E:  VMRS            APSR_nzcv, FPSCR
2DBB22:  IT LE
2DBB24:  MOVLE           R0, #1
2DBB26:  BX              LR
