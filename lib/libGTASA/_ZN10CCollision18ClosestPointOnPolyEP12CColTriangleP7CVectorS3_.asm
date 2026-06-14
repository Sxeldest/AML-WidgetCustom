; =========================================================
; Game Engine Function: _ZN10CCollision18ClosestPointOnPolyEP12CColTriangleP7CVectorS3_
; Address            : 0x2E085A - 0x2E0938
; =========================================================

2E085A:  PUSH            {R4,R5,R7,LR}
2E085C:  ADD             R7, SP, #8
2E085E:  SUB             SP, SP, #0x28
2E0860:  MOV             R5, SP
2E0862:  MOV             R4, R2
2E0864:  MOV             R3, R5
2E0866:  BLX             j__ZN10CCollision19ClosestPointsOnPolyEP12CColTriangleP7CVectorS3_S3_; CCollision::ClosestPointsOnPoly(CColTriangle *,CVector *,CVector *,CVector *)
2E086A:  VLDR            S0, [R4]
2E086E:  ADD.W           R0, R5, #0x18
2E0872:  VLDR            S8, [SP,#0x30+var_30]
2E0876:  VLDR            S14, [SP,#0x30+var_24]
2E087A:  VLDR            S2, [R4,#4]
2E087E:  VSUB.F32        S8, S0, S8
2E0882:  VLDR            S6, [SP,#0x30+var_20]
2E0886:  VSUB.F32        S14, S0, S14
2E088A:  VLDR            S10, [SP,#0x30+var_30+4]
2E088E:  VSUB.F32        S6, S2, S6
2E0892:  VLDR            S3, [SP,#0x30+var_18]
2E0896:  VSUB.F32        S10, S2, S10
2E089A:  VLDR            S1, [SP,#0x30+var_14]
2E089E:  VSUB.F32        S0, S0, S3
2E08A2:  VLDR            S4, [R4,#8]
2E08A6:  VSUB.F32        S2, S2, S1
2E08AA:  VLDR            S12, [SP,#0x30+var_28]
2E08AE:  VLDR            S5, [SP,#0x30+var_1C]
2E08B2:  VMUL.F32        S8, S8, S8
2E08B6:  VSUB.F32        S12, S4, S12
2E08BA:  VLDR            S3, [SP,#0x30+var_10]
2E08BE:  VSUB.F32        S1, S4, S5
2E08C2:  VMUL.F32        S6, S6, S6
2E08C6:  VMUL.F32        S14, S14, S14
2E08CA:  VMUL.F32        S10, S10, S10
2E08CE:  VSUB.F32        S4, S4, S3
2E08D2:  VMUL.F32        S2, S2, S2
2E08D6:  VMUL.F32        S0, S0, S0
2E08DA:  VMUL.F32        S1, S1, S1
2E08DE:  VMUL.F32        S12, S12, S12
2E08E2:  VADD.F32        S6, S14, S6
2E08E6:  VADD.F32        S8, S8, S10
2E08EA:  VMUL.F32        S10, S4, S4
2E08EE:  VADD.F32        S2, S0, S2
2E08F2:  VADD.F32        S0, S6, S1
2E08F6:  VADD.F32        S4, S8, S12
2E08FA:  VADD.F32        S2, S2, S10
2E08FE:  VCMPE.F32       S4, S0
2E0902:  VMRS            APSR_nzcv, FPSCR
2E0906:  BGE             loc_2E091A
2E0908:  VCMPE.F32       S4, S2
2E090C:  VMRS            APSR_nzcv, FPSCR
2E0910:  BGE             loc_2E0928
2E0912:  VLDR            D16, [SP,#0x30+var_30]
2E0916:  LDR             R0, [SP,#0x30+var_28]
2E0918:  B               loc_2E092E
2E091A:  VCMPE.F32       S0, S2
2E091E:  VMRS            APSR_nzcv, FPSCR
2E0922:  IT LT
2E0924:  ADDLT.W         R0, R5, #0xC
2E0928:  VLDR            D16, [R0]
2E092C:  LDR             R0, [R0,#8]
2E092E:  STR             R0, [R4,#8]
2E0930:  VSTR            D16, [R4]
2E0934:  ADD             SP, SP, #0x28 ; '('
2E0936:  POP             {R4,R5,R7,PC}
