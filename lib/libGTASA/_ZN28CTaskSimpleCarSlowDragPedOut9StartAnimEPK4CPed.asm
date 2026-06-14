; =========================================================
; Game Engine Function: _ZN28CTaskSimpleCarSlowDragPedOut9StartAnimEPK4CPed
; Address            : 0x504438 - 0x5044A2
; =========================================================

504438:  PUSH            {R4-R7,LR}
50443A:  ADD             R7, SP, #0xC
50443C:  PUSH.W          {R11}
504440:  MOV             R4, R0
504442:  MOV             R5, R1
504444:  LDR             R0, [R4,#0x14]
504446:  SUB.W           R1, R0, #0xA
50444A:  CMP             R1, #2
50444C:  BCS             loc_504454
50444E:  MOV.W           R6, #0x16C
504452:  B               loc_504460
504454:  CMP             R0, #0x12
504456:  ITE EQ
504458:  MOVEQ.W         R6, #0x16E
50445C:  MOVWNE          R6, #0x16D
504460:  LDR             R0, [R4,#0x10]
504462:  MOVS            R2, #0x94
504464:  LDR             R1, =(_ZN21CVehicleAnimGroupData19m_vehicleAnimGroupsE_ptr - 0x50446E)
504466:  LDR.W           R0, [R0,#0x388]
50446A:  ADD             R1, PC; _ZN21CVehicleAnimGroupData19m_vehicleAnimGroupsE_ptr
50446C:  LDR             R1, [R1]; CVehicleAnimGroupData::m_vehicleAnimGroups ...
50446E:  LDRB.W          R0, [R0,#0xDE]
504472:  SMLABB.W        R0, R0, R2, R1; this
504476:  MOV             R1, R6; int
504478:  BLX             j__ZN17CVehicleAnimGroup8GetGroupEi; CVehicleAnimGroup::GetGroup(int)
50447C:  MOV             R1, R0; int
50447E:  LDR             R0, [R5,#0x18]; int
504480:  MOVS            R3, #0
504482:  MOV             R2, R6; unsigned int
504484:  MOVT            R3, #0x447A
504488:  BLX             j__ZN12CAnimManager14BlendAnimationEP7RpClump12AssocGroupId11AnimationIdf; CAnimManager::BlendAnimation(RpClump *,AssocGroupId,AnimationId,float)
50448C:  LDR             R1, =(_ZN28CTaskSimpleCarSlowDragPedOut29FinishAnimCarSlowDragPedOutCBEP21CAnimBlendAssociationPv_ptr - 0x504496)
50448E:  MOV             R2, R4
504490:  STR             R0, [R4,#0xC]
504492:  ADD             R1, PC; _ZN28CTaskSimpleCarSlowDragPedOut29FinishAnimCarSlowDragPedOutCBEP21CAnimBlendAssociationPv_ptr
504494:  LDR             R1, [R1]; CTaskSimpleCarSlowDragPedOut::FinishAnimCarSlowDragPedOutCB(CAnimBlendAssociation *,void *)
504496:  POP.W           {R11}
50449A:  POP.W           {R4-R7,LR}
50449E:  B.W             sub_18C20C
