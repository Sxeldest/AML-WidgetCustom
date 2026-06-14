; =========================================================
; Game Engine Function: _ZN30CTaskSimpleCarSlowBeDraggedOut9StartAnimEPK4CPed
; Address            : 0x5048F4 - 0x504962
; =========================================================

5048F4:  PUSH            {R4-R7,LR}
5048F6:  ADD             R7, SP, #0xC
5048F8:  PUSH.W          {R11}
5048FC:  MOV             R5, R1
5048FE:  MOV             R4, R0
504900:  MOV             R0, R5; this
504902:  BLX             j__ZN13CCarEnterExit16RemoveCarSitAnimERK4CPed; CCarEnterExit::RemoveCarSitAnim(CPed const&)
504906:  LDRD.W          R0, R1, [R4,#0x10]
50490A:  MOVS            R3, #0x94
50490C:  LDR             R2, =(_ZN21CVehicleAnimGroupData19m_vehicleAnimGroupsE_ptr - 0x504920)
50490E:  BIC.W           R1, R1, #1
504912:  MOVW            R6, #0x17B
504916:  CMP             R1, #0xA
504918:  LDR.W           R0, [R0,#0x388]
50491C:  ADD             R2, PC; _ZN21CVehicleAnimGroupData19m_vehicleAnimGroupsE_ptr
50491E:  LDR             R2, [R2]; CVehicleAnimGroupData::m_vehicleAnimGroups ...
504920:  LDRB.W          R0, [R0,#0xDE]
504924:  IT EQ
504926:  MOVEQ.W         R6, #0x17A
50492A:  MOV             R1, R6; int
50492C:  SMLABB.W        R0, R0, R3, R2; this
504930:  BLX             j__ZN17CVehicleAnimGroup8GetGroupEi; CVehicleAnimGroup::GetGroup(int)
504934:  MOV             R1, R0; int
504936:  LDR             R0, [R5,#0x18]; int
504938:  MOVS            R3, #0
50493A:  MOV             R2, R6; unsigned int
50493C:  MOVT            R3, #0x447A
504940:  BLX             j__ZN12CAnimManager14BlendAnimationEP7RpClump12AssocGroupId11AnimationIdf; CAnimManager::BlendAnimation(RpClump *,AssocGroupId,AnimationId,float)
504944:  LDR             R1, =(_ZN30CTaskSimpleCarSlowBeDraggedOut31FinishAnimCarSlowBeDraggedOutCBEP21CAnimBlendAssociationPv_ptr - 0x50494E)
504946:  MOV             R2, R4; void *
504948:  STR             R0, [R4,#0xC]
50494A:  ADD             R1, PC; _ZN30CTaskSimpleCarSlowBeDraggedOut31FinishAnimCarSlowBeDraggedOutCBEP21CAnimBlendAssociationPv_ptr
50494C:  LDR             R1, [R1]; CTaskSimpleCarSlowBeDraggedOut::FinishAnimCarSlowBeDraggedOutCB(CAnimBlendAssociation *,void *) ; void (*)(CAnimBlendAssociation *, void *)
50494E:  BLX             j__ZN21CAnimBlendAssociation17SetFinishCallbackEPFvPS_PvES1_; CAnimBlendAssociation::SetFinishCallback(void (*)(CAnimBlendAssociation*,void *),void *)
504952:  LDR             R0, [R4,#0xC]
504954:  LDRH            R0, [R0,#0x2E]
504956:  UBFX.W          R0, R0, #0xB, #1
50495A:  STRB            R0, [R4,#0x19]
50495C:  POP.W           {R11}
504960:  POP             {R4-R7,PC}
