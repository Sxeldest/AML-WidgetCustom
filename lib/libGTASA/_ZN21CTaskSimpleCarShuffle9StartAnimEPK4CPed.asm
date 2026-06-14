; =========================================================
; Game Engine Function: _ZN21CTaskSimpleCarShuffle9StartAnimEPK4CPed
; Address            : 0x502094 - 0x5020DE
; =========================================================

502094:  PUSH            {R4,R5,R7,LR}
502096:  ADD             R7, SP, #8
502098:  MOV             R5, R0
50209A:  MOV             R4, R1
50209C:  LDR             R0, [R5,#0x10]
50209E:  MOVS            R2, #0x94
5020A0:  LDR             R1, =(_ZN21CVehicleAnimGroupData19m_vehicleAnimGroupsE_ptr - 0x5020AA)
5020A2:  LDR.W           R0, [R0,#0x388]
5020A6:  ADD             R1, PC; _ZN21CVehicleAnimGroupData19m_vehicleAnimGroupsE_ptr
5020A8:  LDR             R1, [R1]; CVehicleAnimGroupData::m_vehicleAnimGroups ...
5020AA:  LDRB.W          R0, [R0,#0xDE]
5020AE:  SMLABB.W        R0, R0, R2, R1; this
5020B2:  MOV.W           R1, #0x174; int
5020B6:  BLX             j__ZN17CVehicleAnimGroup8GetGroupEi; CVehicleAnimGroup::GetGroup(int)
5020BA:  MOV             R1, R0; int
5020BC:  LDR             R0, [R4,#0x18]; int
5020BE:  MOVS            R3, #0
5020C0:  MOV.W           R2, #0x174; unsigned int
5020C4:  MOVT            R3, #0x447A
5020C8:  BLX             j__ZN12CAnimManager14BlendAnimationEP7RpClump12AssocGroupId11AnimationIdf; CAnimManager::BlendAnimation(RpClump *,AssocGroupId,AnimationId,float)
5020CC:  LDR             R1, =(_ZN21CTaskSimpleCarShuffle22FinishAnimCarShuffleCBEP21CAnimBlendAssociationPv_ptr - 0x5020D6)
5020CE:  MOV             R2, R5
5020D0:  STR             R0, [R5,#0xC]
5020D2:  ADD             R1, PC; _ZN21CTaskSimpleCarShuffle22FinishAnimCarShuffleCBEP21CAnimBlendAssociationPv_ptr
5020D4:  LDR             R1, [R1]; CTaskSimpleCarShuffle::FinishAnimCarShuffleCB(CAnimBlendAssociation *,void *)
5020D6:  POP.W           {R4,R5,R7,LR}
5020DA:  B.W             sub_18C20C
