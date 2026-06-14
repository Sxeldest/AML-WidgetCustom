; =========================================================
; Game Engine Function: _ZN25CTaskSimpleAchieveHeading10ProcessPedEP4CPed
; Address            : 0x51D224 - 0x51D2DA
; =========================================================

51D224:  PUSH            {R4,R5,R7,LR}
51D226:  ADD             R7, SP, #8
51D228:  MOV             R4, R1
51D22A:  MOV             R5, R0
51D22C:  LDRB.W          R0, [R4,#0x485]
51D230:  LSLS            R0, R0, #0x1F
51D232:  BNE             loc_51D2CA
51D234:  MOV             R0, R4; this
51D236:  BLX             j__ZN4CPed18RestoreHeadingRateEv; CPed::RestoreHeadingRate(void)
51D23A:  ADDW            R0, R4, #0x564
51D23E:  VLDR            S0, [R5,#0xC]
51D242:  MOVS            R1, #1
51D244:  VLDR            S2, [R0]
51D248:  VMUL.F32        S0, S2, S0
51D24C:  VSTR            S0, [R0]
51D250:  MOV             R0, R4
51D252:  BLX             j__ZN4CPed12SetMoveStateE10eMoveState; CPed::SetMoveState(eMoveState)
51D256:  LDR             R0, [R4]
51D258:  LDR             R1, [R0,#0x60]
51D25A:  MOV             R0, R4
51D25C:  BLX             R1
51D25E:  ADDW            R1, R4, #0x55C; float
51D262:  LDR             R0, [R5,#8]
51D264:  VLDR            S0, [R1]
51D268:  STR.W           R0, [R4,#0x560]
51D26C:  VLDR            S2, [R5,#8]
51D270:  VSUB.F32        S0, S2, S0
51D274:  VMOV            R0, S0
51D278:  BIC.W           R0, R0, #0x80000000; this
51D27C:  BLX             j__ZN8CGeneral16LimitRadianAngleEf; CGeneral::LimitRadianAngle(float)
51D280:  BIC.W           R0, R0, #0x80000000
51D284:  VLDR            S0, [R5,#0x10]
51D288:  VMOV            S2, R0
51D28C:  VCMPE.F32       S2, S0
51D290:  VMRS            APSR_nzcv, FPSCR
51D294:  BGE             loc_51D2CE
51D296:  LDR.W           R0, [R4,#0x55C]
51D29A:  STR.W           R0, [R4,#0x560]
51D29E:  MOV             R0, R4; this
51D2A0:  BLX             j__ZN4CPed18RestoreHeadingRateEv; CPed::RestoreHeadingRate(void)
51D2A4:  LDRB            R0, [R5,#0x14]
51D2A6:  LSLS            R0, R0, #0x1F
51D2A8:  BEQ             loc_51D2CA
51D2AA:  LDR             R0, =(g_ikChainMan_ptr - 0x51D2B2)
51D2AC:  MOV             R1, R4; CPed *
51D2AE:  ADD             R0, PC; g_ikChainMan_ptr
51D2B0:  LDR             R0, [R0]; g_ikChainMan ; this
51D2B2:  BLX             j__ZN16IKChainManager_c9IsLookingEP4CPed; IKChainManager_c::IsLooking(CPed *)
51D2B6:  CBZ             R0, loc_51D2CA
51D2B8:  LDR             R0, =(g_ikChainMan_ptr - 0x51D2C2)
51D2BA:  MOV             R1, R4; CPed *
51D2BC:  MOVS            R2, #0xFA; int
51D2BE:  ADD             R0, PC; g_ikChainMan_ptr
51D2C0:  LDR             R0, [R0]; g_ikChainMan ; this
51D2C2:  BLX             j__ZN16IKChainManager_c11AbortLookAtEP4CPedi; IKChainManager_c::AbortLookAt(CPed *,int)
51D2C6:  MOVS            R0, #1
51D2C8:  POP             {R4,R5,R7,PC}
51D2CA:  MOVS            R0, #1
51D2CC:  POP             {R4,R5,R7,PC}
51D2CE:  MOV             R0, R5; this
51D2D0:  MOV             R1, R4; CPed *
51D2D2:  BLX             j__ZN25CTaskSimpleAchieveHeading7SetUpIKEP4CPed; CTaskSimpleAchieveHeading::SetUpIK(CPed *)
51D2D6:  MOVS            R0, #0
51D2D8:  POP             {R4,R5,R7,PC}
