; =========================================================
; Game Engine Function: _ZN21CTaskSimplePickUpBike10ProcessPedEP4CPed
; Address            : 0x50127C - 0x50136C
; =========================================================

50127C:  PUSH            {R4-R7,LR}
50127E:  ADD             R7, SP, #0xC
501280:  PUSH.W          {R11}
501284:  MOV             R4, R0
501286:  MOV             R5, R1
501288:  LDRB            R0, [R4,#8]
50128A:  CBZ             R0, loc_501294
50128C:  MOVS            R0, #1
50128E:  POP.W           {R11}
501292:  POP             {R4-R7,PC}
501294:  LDR             R0, [R4,#0x10]
501296:  CMP             R0, #0
501298:  BEQ             loc_50128C
50129A:  LDR             R1, [R4,#0xC]
50129C:  CBNZ            R1, loc_501312
50129E:  LDR             R1, [R0,#0x14]
5012A0:  MOV.W           LR, #0x94
5012A4:  LDR.W           R0, [R0,#0x388]
5012A8:  MOV.W           R6, #0x162
5012AC:  LDR             R3, [R4,#0x14]
5012AE:  VLDR            S0, [R1,#8]
5012B2:  MOVW            R1, #0x161
5012B6:  LDRB.W          R0, [R0,#0xDE]
5012BA:  VCMPE.F32       S0, #0.0
5012BE:  LDR.W           R12, =(_ZN21CVehicleAnimGroupData19m_vehicleAnimGroupsE_ptr - 0x5012CE)
5012C2:  VMRS            APSR_nzcv, FPSCR
5012C6:  VCMPE.F32       S0, #0.0
5012CA:  ADD             R12, PC; _ZN21CVehicleAnimGroupData19m_vehicleAnimGroupsE_ptr
5012CC:  LDR.W           R2, [R12]; CVehicleAnimGroupData::m_vehicleAnimGroups ...
5012D0:  SMLABB.W        R0, R0, LR, R2; this
5012D4:  BIC.W           R2, R3, #1
5012D8:  IT GT
5012DA:  MOVWGT          R1, #0x15F
5012DE:  VMRS            APSR_nzcv, FPSCR
5012E2:  IT LT
5012E4:  MOVLT.W         R6, #0x160
5012E8:  CMP             R2, #0xA
5012EA:  IT EQ
5012EC:  MOVEQ           R6, R1
5012EE:  MOV             R1, R6; int
5012F0:  BLX             j__ZN17CVehicleAnimGroup8GetGroupEi; CVehicleAnimGroup::GetGroup(int)
5012F4:  MOV             R1, R0; int
5012F6:  LDR             R0, [R5,#0x18]; int
5012F8:  MOV             R2, R6; unsigned int
5012FA:  MOV.W           R3, #0x41000000
5012FE:  BLX             j__ZN12CAnimManager14BlendAnimationEP7RpClump12AssocGroupId11AnimationIdf; CAnimManager::BlendAnimation(RpClump *,AssocGroupId,AnimationId,float)
501302:  LDR             R1, =(_ZN21CTaskSimplePickUpBike22FinishAnimPickUpBikeCBEP21CAnimBlendAssociationPv_ptr - 0x50130C)
501304:  MOV             R2, R4; void *
501306:  STR             R0, [R4,#0xC]
501308:  ADD             R1, PC; _ZN21CTaskSimplePickUpBike22FinishAnimPickUpBikeCBEP21CAnimBlendAssociationPv_ptr
50130A:  LDR             R1, [R1]; CTaskSimplePickUpBike::FinishAnimPickUpBikeCB(CAnimBlendAssociation *,void *) ; void (*)(CAnimBlendAssociation *, void *)
50130C:  BLX             j__ZN21CAnimBlendAssociation17SetFinishCallbackEPFvPS_PvES1_; CAnimBlendAssociation::SetFinishCallback(void (*)(CAnimBlendAssociation*,void *),void *)
501310:  LDR             R0, [R4,#0x10]
501312:  LDRB.W          R0, [R0,#0x628]
501316:  LSLS            R0, R0, #0x1C
501318:  BMI             loc_501364
50131A:  LDR             R0, [R4,#0xC]
50131C:  CBZ             R0, loc_501364
50131E:  LDRSH.W         R1, [R0,#0x2C]
501322:  SUBW            R2, R1, #0x15F
501326:  CMP             R2, #1
501328:  BHI             loc_50133C
50132A:  VLDR            S0, =0.4667
50132E:  VLDR            S2, [R0,#0x20]
501332:  VCMPE.F32       S2, S0
501336:  VMRS            APSR_nzcv, FPSCR
50133A:  BGT             loc_501356
50133C:  SUBW            R1, R1, #0x161
501340:  CMP             R1, #1
501342:  BHI             loc_501364
501344:  VLDR            S0, =0.4667
501348:  VLDR            S2, [R0,#0x20]
50134C:  VCMPE.F32       S2, S0
501350:  VMRS            APSR_nzcv, FPSCR
501354:  BLE             loc_501364
501356:  LDR             R0, [R4,#0x10]
501358:  LDRB.W          R1, [R0,#0x628]
50135C:  ORR.W           R1, R1, #8
501360:  STRB.W          R1, [R0,#0x628]
501364:  MOVS            R0, #0
501366:  POP.W           {R11}
50136A:  POP             {R4-R7,PC}
