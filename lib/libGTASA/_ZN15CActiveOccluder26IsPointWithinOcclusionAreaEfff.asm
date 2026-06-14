; =========================================================
; Game Engine Function: _ZN15CActiveOccluder26IsPointWithinOcclusionAreaEfff
; Address            : 0x5B00D8 - 0x5B0136
; =========================================================

5B00D8:  LDRSB.W         R12, [R0,#0x7A]
5B00DC:  CMP.W           R12, #1
5B00E0:  ITT LT
5B00E2:  MOVLT           R0, #1
5B00E4:  BXLT            LR
5B00E6:  VMOV            S4, R1
5B00EA:  ADDS            R0, #8
5B00EC:  VMOV            S0, R3
5B00F0:  MOVS            R1, #0
5B00F2:  VMOV            S2, R2
5B00F6:  VLDR            S6, [R0,#-8]
5B00FA:  VLDR            S8, [R0,#-4]
5B00FE:  VSUB.F32        S6, S4, S6
5B0102:  VLDR            S12, [R0,#4]
5B0106:  VSUB.F32        S8, S2, S8
5B010A:  VLDR            S10, [R0]
5B010E:  VMUL.F32        S6, S6, S12
5B0112:  VMUL.F32        S8, S8, S10
5B0116:  VSUB.F32        S6, S6, S8
5B011A:  VCMPE.F32       S6, S0
5B011E:  VMRS            APSR_nzcv, FPSCR
5B0122:  ITT LT
5B0124:  MOVLT           R0, #0
5B0126:  BXLT            LR
5B0128:  ADDS            R1, #1
5B012A:  ADDS            R0, #0x14
5B012C:  CMP             R1, R12
5B012E:  ITT GE
5B0130:  MOVGE           R0, #1
5B0132:  BXGE            LR
5B0134:  B               loc_5B00F6
