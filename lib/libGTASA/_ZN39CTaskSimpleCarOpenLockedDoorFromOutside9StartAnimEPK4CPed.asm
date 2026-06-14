; =========================================================
; Game Engine Function: _ZN39CTaskSimpleCarOpenLockedDoorFromOutside9StartAnimEPK4CPed
; Address            : 0x501104 - 0x501162
; =========================================================

501104:  PUSH            {R4-R7,LR}
501106:  ADD             R7, SP, #0xC
501108:  PUSH.W          {R11}
50110C:  MOV             R4, R0
50110E:  MOV             R5, R1
501110:  LDRD.W          R0, R1, [R4,#0x10]
501114:  MOVS            R3, #0x94
501116:  LDR             R2, =(_ZN21CVehicleAnimGroupData19m_vehicleAnimGroupsE_ptr - 0x50112A)
501118:  BIC.W           R1, R1, #1
50111C:  MOV.W           R6, #0x186
501120:  CMP             R1, #0xA
501122:  LDR.W           R0, [R0,#0x388]
501126:  ADD             R2, PC; _ZN21CVehicleAnimGroupData19m_vehicleAnimGroupsE_ptr
501128:  LDR             R2, [R2]; CVehicleAnimGroupData::m_vehicleAnimGroups ...
50112A:  LDRB.W          R0, [R0,#0xDE]
50112E:  IT EQ
501130:  MOVWEQ          R6, #0x185
501134:  MOV             R1, R6; int
501136:  SMLABB.W        R0, R0, R3, R2; this
50113A:  BLX             j__ZN17CVehicleAnimGroup8GetGroupEi; CVehicleAnimGroup::GetGroup(int)
50113E:  MOV             R1, R0; int
501140:  LDR             R0, [R5,#0x18]; int
501142:  MOV             R2, R6; unsigned int
501144:  MOV.W           R3, #0x40800000
501148:  BLX             j__ZN12CAnimManager14BlendAnimationEP7RpClump12AssocGroupId11AnimationIdf; CAnimManager::BlendAnimation(RpClump *,AssocGroupId,AnimationId,float)
50114C:  LDR             R1, =(_ZN39CTaskSimpleCarOpenLockedDoorFromOutside40FinishAnimCarOpenLockedDoorFromOutsideCBEP21CAnimBlendAssociationPv_ptr - 0x501156)
50114E:  MOV             R2, R4
501150:  STR             R0, [R4,#0xC]
501152:  ADD             R1, PC; _ZN39CTaskSimpleCarOpenLockedDoorFromOutside40FinishAnimCarOpenLockedDoorFromOutsideCBEP21CAnimBlendAssociationPv_ptr
501154:  LDR             R1, [R1]; CTaskSimpleCarOpenLockedDoorFromOutside::FinishAnimCarOpenLockedDoorFromOutsideCB(CAnimBlendAssociation *,void *)
501156:  POP.W           {R11}
50115A:  POP.W           {R4-R7,LR}
50115E:  B.W             sub_18C20C
