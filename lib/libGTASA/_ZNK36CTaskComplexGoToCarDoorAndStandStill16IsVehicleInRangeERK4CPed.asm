; =========================================================
; Game Engine Function: _ZNK36CTaskComplexGoToCarDoorAndStandStill16IsVehicleInRangeERK4CPed
; Address            : 0x4FFDE2 - 0x4FFE48
; =========================================================

4FFDE2:  PUSH            {R7,LR}
4FFDE4:  MOV             R7, SP
4FFDE6:  LDR.W           R12, [R0,#0xC]
4FFDEA:  LDR             R3, [R1,#0x14]
4FFDEC:  LDR.W           LR, [R12,#0x14]
4FFDF0:  ADD.W           R2, R3, #0x30 ; '0'
4FFDF4:  CMP             R3, #0
4FFDF6:  IT EQ
4FFDF8:  ADDEQ           R2, R1, #4
4FFDFA:  ADD.W           R1, LR, #0x30 ; '0'
4FFDFE:  CMP.W           LR, #0
4FFE02:  VLDR            S0, [R2]
4FFE06:  IT EQ
4FFE08:  ADDEQ.W         R1, R12, #4
4FFE0C:  VLDR            D16, [R2,#4]
4FFE10:  VLDR            S2, [R1]
4FFE14:  VLDR            D17, [R1,#4]
4FFE18:  VSUB.F32        S0, S2, S0
4FFE1C:  VLDR            S4, [R0,#0x20]
4FFE20:  VSUB.F32        D16, D17, D16
4FFE24:  MOVS            R0, #0
4FFE26:  VMUL.F32        S4, S4, S4
4FFE2A:  VMUL.F32        D1, D16, D16
4FFE2E:  VMUL.F32        S0, S0, S0
4FFE32:  VADD.F32        S0, S0, S2
4FFE36:  VADD.F32        S0, S0, S3
4FFE3A:  VCMPE.F32       S0, S4
4FFE3E:  VMRS            APSR_nzcv, FPSCR
4FFE42:  IT LT
4FFE44:  MOVLT           R0, #1
4FFE46:  POP             {R7,PC}
