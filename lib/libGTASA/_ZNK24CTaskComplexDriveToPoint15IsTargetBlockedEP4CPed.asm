; =========================================================
; Game Engine Function: _ZNK24CTaskComplexDriveToPoint15IsTargetBlockedEP4CPed
; Address            : 0x4FC57C - 0x4FC602
; =========================================================

4FC57C:  PUSH            {R4-R7,LR}
4FC57E:  ADD             R7, SP, #0xC
4FC580:  PUSH.W          {R11}
4FC584:  MOV             R4, R1
4FC586:  MOV             R5, R0
4FC588:  LDR             R0, [R4,#0x14]
4FC58A:  VLDR            S0, [R5,#0x24]
4FC58E:  ADD.W           R1, R0, #0x30 ; '0'
4FC592:  CMP             R0, #0
4FC594:  IT EQ
4FC596:  ADDEQ           R1, R4, #4
4FC598:  VLDR            D16, [R5,#0x28]
4FC59C:  VLDR            S2, [R1]
4FC5A0:  VLDR            D17, [R1,#4]
4FC5A4:  VSUB.F32        S0, S2, S0
4FC5A8:  VSUB.F32        D16, D17, D16
4FC5AC:  VMUL.F32        D1, D16, D16
4FC5B0:  VMUL.F32        S0, S0, S0
4FC5B4:  VADD.F32        S0, S0, S2
4FC5B8:  VADD.F32        S0, S0, S3
4FC5BC:  VLDR            S2, =36.0
4FC5C0:  VCMPE.F32       S0, S2
4FC5C4:  VMRS            APSR_nzcv, FPSCR
4FC5C8:  BLE             loc_4FC5D2
4FC5CA:  MOVS            R0, #0
4FC5CC:  POP.W           {R11}
4FC5D0:  POP             {R4-R7,PC}
4FC5D2:  LDR.W           R6, [R4,#0x440]
4FC5D6:  MOV             R0, R5; this
4FC5D8:  MOV             R1, R4; CPed *
4FC5DA:  MOVS            R3, #0x10; int
4FC5DC:  ADD.W           R2, R6, #0x130; CEntity **
4FC5E0:  BLX             j__ZNK24CTaskComplexDriveToPoint15IsTargetBlockedEP4CPedPP7CEntityi; CTaskComplexDriveToPoint::IsTargetBlocked(CPed *,CEntity **,int)
4FC5E4:  CBZ             R0, loc_4FC5EE
4FC5E6:  MOVS            R0, #1
4FC5E8:  POP.W           {R11}
4FC5EC:  POP             {R4-R7,PC}
4FC5EE:  ADD.W           R2, R6, #0xE0; CEntity **
4FC5F2:  MOV             R0, R5; this
4FC5F4:  MOV             R1, R4; CPed *
4FC5F6:  MOVS            R3, #0x10; int
4FC5F8:  POP.W           {R11}
4FC5FC:  POP.W           {R4-R7,LR}
4FC600:  B               _ZNK24CTaskComplexDriveToPoint15IsTargetBlockedEP4CPedPP7CEntityi; CTaskComplexDriveToPoint::IsTargetBlocked(CPed *,CEntity **,int)
