; =========================================================
; Game Engine Function: _ZN21CTaskSimplePickUpBike9StartAnimEPK4CPed
; Address            : 0x501378 - 0x501400
; =========================================================

501378:  PUSH            {R4-R7,LR}
50137A:  ADD             R7, SP, #0xC
50137C:  PUSH.W          {R8}
501380:  MOV             R4, R0
501382:  MOV             R8, R1
501384:  LDRD.W          R0, R1, [R4,#0x10]
501388:  MOVS            R3, #0x94
50138A:  LDR.W           R12, =(_ZN21CVehicleAnimGroupData19m_vehicleAnimGroupsE_ptr - 0x50139C)
50138E:  MOV.W           R6, #0x162
501392:  BIC.W           R1, R1, #1
501396:  LDR             R2, [R0,#0x14]
501398:  ADD             R12, PC; _ZN21CVehicleAnimGroupData19m_vehicleAnimGroupsE_ptr
50139A:  LDR.W           R0, [R0,#0x388]
50139E:  LDR.W           R5, [R12]; CVehicleAnimGroupData::m_vehicleAnimGroups ...
5013A2:  VLDR            S0, [R2,#8]
5013A6:  MOVW            R2, #0x161
5013AA:  LDRB.W          R0, [R0,#0xDE]
5013AE:  VCMPE.F32       S0, #0.0
5013B2:  VMRS            APSR_nzcv, FPSCR
5013B6:  VCMPE.F32       S0, #0.0
5013BA:  SMLABB.W        R0, R0, R3, R5; this
5013BE:  IT GT
5013C0:  MOVWGT          R2, #0x15F
5013C4:  VMRS            APSR_nzcv, FPSCR
5013C8:  IT LT
5013CA:  MOVLT.W         R6, #0x160
5013CE:  CMP             R1, #0xA
5013D0:  IT EQ
5013D2:  MOVEQ           R6, R2
5013D4:  MOV             R1, R6; int
5013D6:  BLX             j__ZN17CVehicleAnimGroup8GetGroupEi; CVehicleAnimGroup::GetGroup(int)
5013DA:  MOV             R1, R0; int
5013DC:  LDR.W           R0, [R8,#0x18]; int
5013E0:  MOV             R2, R6; unsigned int
5013E2:  MOV.W           R3, #0x41000000
5013E6:  BLX             j__ZN12CAnimManager14BlendAnimationEP7RpClump12AssocGroupId11AnimationIdf; CAnimManager::BlendAnimation(RpClump *,AssocGroupId,AnimationId,float)
5013EA:  LDR             R1, =(_ZN21CTaskSimplePickUpBike22FinishAnimPickUpBikeCBEP21CAnimBlendAssociationPv_ptr - 0x5013F4)
5013EC:  MOV             R2, R4
5013EE:  STR             R0, [R4,#0xC]
5013F0:  ADD             R1, PC; _ZN21CTaskSimplePickUpBike22FinishAnimPickUpBikeCBEP21CAnimBlendAssociationPv_ptr
5013F2:  LDR             R1, [R1]; CTaskSimplePickUpBike::FinishAnimPickUpBikeCB(CAnimBlendAssociation *,void *)
5013F4:  POP.W           {R8}
5013F8:  POP.W           {R4-R7,LR}
5013FC:  B.W             sub_18C20C
