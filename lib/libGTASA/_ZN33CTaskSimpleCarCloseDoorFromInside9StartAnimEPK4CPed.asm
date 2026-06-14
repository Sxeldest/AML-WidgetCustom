; =========================================================
; Game Engine Function: _ZN33CTaskSimpleCarCloseDoorFromInside9StartAnimEPK4CPed
; Address            : 0x5016E8 - 0x50174C
; =========================================================

5016E8:  PUSH            {R4-R7,LR}
5016EA:  ADD             R7, SP, #0xC
5016EC:  PUSH.W          {R11}
5016F0:  MOV             R4, R0
5016F2:  MOV             R5, R1
5016F4:  LDR             R0, [R4,#0x14]
5016F6:  SUBS            R0, #8
5016F8:  CMP             R0, #2
5016FA:  BHI             loc_501706
5016FC:  LDR             R1, =(unk_61E6B4 - 0x501702)
5016FE:  ADD             R1, PC; unk_61E6B4
501700:  LDR.W           R6, [R1,R0,LSL#2]
501704:  B               loc_50170A
501706:  MOVW            R6, #0x171
50170A:  LDR             R0, [R4,#0x10]
50170C:  MOVS            R2, #0x94
50170E:  LDR             R1, =(_ZN21CVehicleAnimGroupData19m_vehicleAnimGroupsE_ptr - 0x501718)
501710:  LDR.W           R0, [R0,#0x388]
501714:  ADD             R1, PC; _ZN21CVehicleAnimGroupData19m_vehicleAnimGroupsE_ptr
501716:  LDR             R1, [R1]; CVehicleAnimGroupData::m_vehicleAnimGroups ...
501718:  LDRB.W          R0, [R0,#0xDE]
50171C:  SMLABB.W        R0, R0, R2, R1; this
501720:  MOV             R1, R6; int
501722:  BLX             j__ZN17CVehicleAnimGroup8GetGroupEi; CVehicleAnimGroup::GetGroup(int)
501726:  MOV             R1, R0; int
501728:  LDR             R0, [R5,#0x18]; int
50172A:  MOVS            R3, #0
50172C:  MOV             R2, R6; unsigned int
50172E:  MOVT            R3, #0x447A
501732:  BLX             j__ZN12CAnimManager14BlendAnimationEP7RpClump12AssocGroupId11AnimationIdf; CAnimManager::BlendAnimation(RpClump *,AssocGroupId,AnimationId,float)
501736:  LDR             R1, =(_ZN33CTaskSimpleCarCloseDoorFromInside34FinishAnimCarCloseDoorFromInsideCBEP21CAnimBlendAssociationPv_ptr - 0x501740)
501738:  MOV             R2, R4
50173A:  STR             R0, [R4,#0xC]
50173C:  ADD             R1, PC; _ZN33CTaskSimpleCarCloseDoorFromInside34FinishAnimCarCloseDoorFromInsideCBEP21CAnimBlendAssociationPv_ptr
50173E:  LDR             R1, [R1]; CTaskSimpleCarCloseDoorFromInside::FinishAnimCarCloseDoorFromInsideCB(CAnimBlendAssociation *,void *)
501740:  POP.W           {R11}
501744:  POP.W           {R4-R7,LR}
501748:  B.W             sub_18C20C
