; =========================================================
; Game Engine Function: _ZN39CTaskSimpleCarOpenLockedDoorFromOutside10ProcessPedEP4CPed
; Address            : 0x501088 - 0x5010FA
; =========================================================

501088:  PUSH            {R4-R7,LR}
50108A:  ADD             R7, SP, #0xC
50108C:  PUSH.W          {R11}
501090:  MOV             R4, R0
501092:  MOV             R5, R1
501094:  LDRB            R0, [R4,#8]
501096:  CBZ             R0, loc_5010A0
501098:  MOVS            R0, #1
50109A:  POP.W           {R11}
50109E:  POP             {R4-R7,PC}
5010A0:  LDR             R0, [R4,#0x10]
5010A2:  CMP             R0, #0
5010A4:  BEQ             loc_501098
5010A6:  LDR             R1, [R4,#0xC]
5010A8:  CBNZ            R1, loc_5010F2
5010AA:  LDR.W           R0, [R0,#0x388]
5010AE:  MOVS            R3, #0x94
5010B0:  LDR             R1, =(_ZN21CVehicleAnimGroupData19m_vehicleAnimGroupsE_ptr - 0x5010BC)
5010B2:  MOV.W           R6, #0x186
5010B6:  LDR             R2, [R4,#0x14]
5010B8:  ADD             R1, PC; _ZN21CVehicleAnimGroupData19m_vehicleAnimGroupsE_ptr
5010BA:  LDRB.W          R0, [R0,#0xDE]
5010BE:  LDR             R1, [R1]; CVehicleAnimGroupData::m_vehicleAnimGroups ...
5010C0:  SMLABB.W        R0, R0, R3, R1; this
5010C4:  BIC.W           R1, R2, #1
5010C8:  CMP             R1, #0xA
5010CA:  IT EQ
5010CC:  MOVWEQ          R6, #0x185
5010D0:  MOV             R1, R6; int
5010D2:  BLX             j__ZN17CVehicleAnimGroup8GetGroupEi; CVehicleAnimGroup::GetGroup(int)
5010D6:  MOV             R1, R0; int
5010D8:  LDR             R0, [R5,#0x18]; int
5010DA:  MOV             R2, R6; unsigned int
5010DC:  MOV.W           R3, #0x40800000
5010E0:  BLX             j__ZN12CAnimManager14BlendAnimationEP7RpClump12AssocGroupId11AnimationIdf; CAnimManager::BlendAnimation(RpClump *,AssocGroupId,AnimationId,float)
5010E4:  LDR             R1, =(_ZN39CTaskSimpleCarOpenLockedDoorFromOutside40FinishAnimCarOpenLockedDoorFromOutsideCBEP21CAnimBlendAssociationPv_ptr - 0x5010EE)
5010E6:  MOV             R2, R4; void *
5010E8:  STR             R0, [R4,#0xC]
5010EA:  ADD             R1, PC; _ZN39CTaskSimpleCarOpenLockedDoorFromOutside40FinishAnimCarOpenLockedDoorFromOutsideCBEP21CAnimBlendAssociationPv_ptr
5010EC:  LDR             R1, [R1]; CTaskSimpleCarOpenLockedDoorFromOutside::FinishAnimCarOpenLockedDoorFromOutsideCB(CAnimBlendAssociation *,void *) ; void (*)(CAnimBlendAssociation *, void *)
5010EE:  BLX             j__ZN21CAnimBlendAssociation17SetFinishCallbackEPFvPS_PvES1_; CAnimBlendAssociation::SetFinishCallback(void (*)(CAnimBlendAssociation*,void *),void *)
5010F2:  MOVS            R0, #0
5010F4:  POP.W           {R11}
5010F8:  POP             {R4-R7,PC}
