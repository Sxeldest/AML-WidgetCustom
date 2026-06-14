; =========================================================
; Game Engine Function: _ZN21CTaskSimpleCarShuffle10ProcessPedEP4CPed
; Address            : 0x50202C - 0x50208A
; =========================================================

50202C:  PUSH            {R4,R5,R7,LR}
50202E:  ADD             R7, SP, #8
502030:  MOV             R4, R0
502032:  MOV             R5, R1
502034:  LDRB            R0, [R4,#8]
502036:  CBZ             R0, loc_50203C
502038:  MOVS            R0, #1
50203A:  POP             {R4,R5,R7,PC}
50203C:  LDR             R0, [R4,#0x10]
50203E:  CMP             R0, #0
502040:  BEQ             loc_502038
502042:  LDR             R1, [R4,#0xC]
502044:  CBZ             R1, loc_50204A
502046:  MOVS            R0, #0
502048:  POP             {R4,R5,R7,PC}
50204A:  LDR.W           R0, [R0,#0x388]
50204E:  MOVS            R2, #0x94
502050:  LDR             R1, =(_ZN21CVehicleAnimGroupData19m_vehicleAnimGroupsE_ptr - 0x502056)
502052:  ADD             R1, PC; _ZN21CVehicleAnimGroupData19m_vehicleAnimGroupsE_ptr
502054:  LDRB.W          R0, [R0,#0xDE]
502058:  LDR             R1, [R1]; CVehicleAnimGroupData::m_vehicleAnimGroups ...
50205A:  SMLABB.W        R0, R0, R2, R1; this
50205E:  MOV.W           R1, #0x174; int
502062:  BLX             j__ZN17CVehicleAnimGroup8GetGroupEi; CVehicleAnimGroup::GetGroup(int)
502066:  MOV             R1, R0; int
502068:  LDR             R0, [R5,#0x18]; int
50206A:  MOVS            R3, #0
50206C:  MOV.W           R2, #0x174; unsigned int
502070:  MOVT            R3, #0x447A
502074:  BLX             j__ZN12CAnimManager14BlendAnimationEP7RpClump12AssocGroupId11AnimationIdf; CAnimManager::BlendAnimation(RpClump *,AssocGroupId,AnimationId,float)
502078:  LDR             R1, =(_ZN21CTaskSimpleCarShuffle22FinishAnimCarShuffleCBEP21CAnimBlendAssociationPv_ptr - 0x502082)
50207A:  MOV             R2, R4; void *
50207C:  STR             R0, [R4,#0xC]
50207E:  ADD             R1, PC; _ZN21CTaskSimpleCarShuffle22FinishAnimCarShuffleCBEP21CAnimBlendAssociationPv_ptr
502080:  LDR             R1, [R1]; CTaskSimpleCarShuffle::FinishAnimCarShuffleCB(CAnimBlendAssociation *,void *) ; void (*)(CAnimBlendAssociation *, void *)
502082:  BLX             j__ZN21CAnimBlendAssociation17SetFinishCallbackEPFvPS_PvES1_; CAnimBlendAssociation::SetFinishCallback(void (*)(CAnimBlendAssociation*,void *),void *)
502086:  MOVS            R0, #0
502088:  POP             {R4,R5,R7,PC}
