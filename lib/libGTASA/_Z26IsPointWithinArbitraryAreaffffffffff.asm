; =========================================================
; Game Engine Function: _Z26IsPointWithinArbitraryAreaffffffffff
; Address            : 0x5D0448 - 0x5D0514
; =========================================================

5D0448:  VLDR            S8, [SP,#arg_0]
5D044C:  VMOV            S4, R2
5D0450:  VMOV            S0, R0
5D0454:  VLDR            S10, [SP,#arg_4]
5D0458:  VMOV            S2, R3
5D045C:  VMOV            S6, R1
5D0460:  VSUB.F32        S12, S8, S4
5D0464:  VSUB.F32        S14, S6, S2
5D0468:  VSUB.F32        S1, S10, S2
5D046C:  VSUB.F32        S3, S0, S4
5D0470:  VMUL.F32        S12, S14, S12
5D0474:  VMUL.F32        S14, S3, S1
5D0478:  VSUB.F32        S12, S14, S12
5D047C:  VCMPE.F32       S12, #0.0
5D0480:  VMRS            APSR_nzcv, FPSCR
5D0484:  BLT             loc_5D04B4
5D0486:  VLDR            S12, [SP,#arg_8]
5D048A:  VSUB.F32        S3, S6, S10
5D048E:  VLDR            S14, [SP,#arg_C]
5D0492:  VSUB.F32        S1, S12, S8
5D0496:  VSUB.F32        S10, S14, S10
5D049A:  VSUB.F32        S8, S0, S8
5D049E:  VMUL.F32        S1, S3, S1
5D04A2:  VMUL.F32        S8, S8, S10
5D04A6:  VSUB.F32        S8, S8, S1
5D04AA:  VCMPE.F32       S8, #0.0
5D04AE:  VMRS            APSR_nzcv, FPSCR
5D04B2:  BGE             loc_5D04B8
5D04B4:  MOVS            R0, #0
5D04B6:  BX              LR
5D04B8:  VLDR            S8, [SP,#arg_10]
5D04BC:  VSUB.F32        S3, S6, S14
5D04C0:  VLDR            S10, [SP,#arg_14]
5D04C4:  MOVS            R0, #0
5D04C6:  VSUB.F32        S1, S8, S12
5D04CA:  VSUB.F32        S14, S10, S14
5D04CE:  VSUB.F32        S12, S0, S12
5D04D2:  VMUL.F32        S1, S3, S1
5D04D6:  VMUL.F32        S12, S12, S14
5D04DA:  VSUB.F32        S12, S12, S1
5D04DE:  VCMPE.F32       S12, #0.0
5D04E2:  VMRS            APSR_nzcv, FPSCR
5D04E6:  IT LT
5D04E8:  BXLT            LR
5D04EA:  VSUB.F32        S6, S6, S10
5D04EE:  VSUB.F32        S4, S4, S8
5D04F2:  VSUB.F32        S2, S2, S10
5D04F6:  VSUB.F32        S0, S0, S8
5D04FA:  VMUL.F32        S4, S4, S6
5D04FE:  VMUL.F32        S0, S0, S2
5D0502:  VSUB.F32        S0, S0, S4
5D0506:  VCMPE.F32       S0, #0.0
5D050A:  VMRS            APSR_nzcv, FPSCR
5D050E:  IT GE
5D0510:  MOVGE           R0, #1
5D0512:  BX              LR
