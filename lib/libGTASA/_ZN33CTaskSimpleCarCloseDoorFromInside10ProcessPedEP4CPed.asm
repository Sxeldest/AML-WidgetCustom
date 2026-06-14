; =========================================================
; Game Engine Function: _ZN33CTaskSimpleCarCloseDoorFromInside10ProcessPedEP4CPed
; Address            : 0x5015B8 - 0x5016CA
; =========================================================

5015B8:  PUSH            {R4-R7,LR}
5015BA:  ADD             R7, SP, #0xC
5015BC:  PUSH.W          {R11}
5015C0:  SUB             SP, SP, #8
5015C2:  MOV             R5, R0
5015C4:  MOV             R4, R1
5015C6:  LDRB            R0, [R5,#8]
5015C8:  CBZ             R0, loc_5015D4
5015CA:  MOVS            R0, #1
5015CC:  ADD             SP, SP, #8
5015CE:  POP.W           {R11}
5015D2:  POP             {R4-R7,PC}
5015D4:  LDR             R0, [R5,#0x10]
5015D6:  CMP             R0, #0
5015D8:  BEQ             loc_5015CA
5015DA:  LDR.W           R0, [R0,#0x388]
5015DE:  MOVS            R2, #0x94
5015E0:  LDR             R1, =(_ZN21CVehicleAnimGroupData19m_vehicleAnimGroupsE_ptr - 0x5015E6)
5015E2:  ADD             R1, PC; _ZN21CVehicleAnimGroupData19m_vehicleAnimGroupsE_ptr
5015E4:  LDRB.W          R0, [R0,#0xDE]
5015E8:  LDR             R1, [R1]; CVehicleAnimGroupData::m_vehicleAnimGroups ...
5015EA:  SMLABB.W        R1, R0, R2, R1
5015EE:  LDRB            R1, [R1,#8]
5015F0:  LSLS            R1, R1, #0x1E
5015F2:  BMI             loc_501614
5015F4:  LDR             R1, [R5,#0xC]
5015F6:  CMP             R1, #0
5015F8:  BNE             loc_501694
5015FA:  LDR.W           R1, [R4,#0x44C]
5015FE:  CMP             R1, #0x3F ; '?'
501600:  BEQ             loc_5015CA
501602:  LDR             R1, [R5,#0x14]
501604:  SUBS            R1, #8
501606:  CMP             R1, #2
501608:  BHI             loc_501654
50160A:  LDR             R2, =(unk_61E6B4 - 0x501610)
50160C:  ADD             R2, PC; unk_61E6B4
50160E:  LDR.W           R6, [R2,R1,LSL#2]
501612:  B               loc_501658
501614:  LDR             R1, [R5,#0x14]
501616:  SUBS            R1, #8
501618:  CMP             R1, #2
50161A:  BHI             loc_501626
50161C:  LDR             R2, =(unk_61E6B4 - 0x501622)
50161E:  ADD             R2, PC; unk_61E6B4
501620:  LDR.W           R6, [R2,R1,LSL#2]
501624:  B               loc_50162A
501626:  MOVW            R6, #0x171
50162A:  LDR             R1, =(_ZN21CVehicleAnimGroupData19m_vehicleAnimGroupsE_ptr - 0x501632)
50162C:  MOVS            R2, #0x94
50162E:  ADD             R1, PC; _ZN21CVehicleAnimGroupData19m_vehicleAnimGroupsE_ptr
501630:  LDR             R1, [R1]; CVehicleAnimGroupData::m_vehicleAnimGroups ...
501632:  SMLABB.W        R0, R0, R2, R1; this
501636:  MOV             R1, R6; int
501638:  BLX             j__ZN17CVehicleAnimGroup8GetGroupEi; CVehicleAnimGroup::GetGroup(int)
50163C:  MOV             R3, R0
50163E:  LDRD.W          R0, R2, [R5,#0x10]
501642:  LDR             R1, [R0]
501644:  LDR             R5, [R1,#0x74]
501646:  MOV.W           R1, #0x3F800000
50164A:  STRD.W          R6, R1, [SP,#0x18+var_18]
50164E:  MOV             R1, R4
501650:  BLX             R5
501652:  B               loc_5015CA
501654:  MOVW            R6, #0x171
501658:  LDR             R1, =(_ZN21CVehicleAnimGroupData19m_vehicleAnimGroupsE_ptr - 0x501660)
50165A:  MOVS            R2, #0x94
50165C:  ADD             R1, PC; _ZN21CVehicleAnimGroupData19m_vehicleAnimGroupsE_ptr
50165E:  LDR             R1, [R1]; CVehicleAnimGroupData::m_vehicleAnimGroups ...
501660:  SMLABB.W        R0, R0, R2, R1; this
501664:  MOV             R1, R6; int
501666:  BLX             j__ZN17CVehicleAnimGroup8GetGroupEi; CVehicleAnimGroup::GetGroup(int)
50166A:  MOV             R1, R0; int
50166C:  LDR             R0, [R4,#0x18]; int
50166E:  MOVS            R3, #0
501670:  MOV             R2, R6; unsigned int
501672:  MOVT            R3, #0x447A
501676:  BLX             j__ZN12CAnimManager14BlendAnimationEP7RpClump12AssocGroupId11AnimationIdf; CAnimManager::BlendAnimation(RpClump *,AssocGroupId,AnimationId,float)
50167A:  LDR             R1, =(_ZN33CTaskSimpleCarCloseDoorFromInside34FinishAnimCarCloseDoorFromInsideCBEP21CAnimBlendAssociationPv_ptr - 0x501684)
50167C:  MOV             R2, R5; void *
50167E:  STR             R0, [R5,#0xC]
501680:  ADD             R1, PC; _ZN33CTaskSimpleCarCloseDoorFromInside34FinishAnimCarCloseDoorFromInsideCBEP21CAnimBlendAssociationPv_ptr
501682:  LDR             R1, [R1]; CTaskSimpleCarCloseDoorFromInside::FinishAnimCarCloseDoorFromInsideCB(CAnimBlendAssociation *,void *) ; void (*)(CAnimBlendAssociation *, void *)
501684:  BLX             j__ZN21CAnimBlendAssociation17SetFinishCallbackEPFvPS_PvES1_; CAnimBlendAssociation::SetFinishCallback(void (*)(CAnimBlendAssociation*,void *),void *)
501688:  LDRD.W          R1, R0, [R5,#0xC]
50168C:  LDR.W           R0, [R0,#0x388]
501690:  LDRB.W          R0, [R0,#0xDE]
501694:  LDR             R2, =(_ZN21CVehicleAnimGroupData19m_vehicleAnimGroupsE_ptr - 0x5016A0)
501696:  MOVS            R3, #0x94
501698:  LDRSH.W         R1, [R1,#0x2C]; int
50169C:  ADD             R2, PC; _ZN21CVehicleAnimGroupData19m_vehicleAnimGroupsE_ptr
50169E:  LDR             R2, [R2]; CVehicleAnimGroupData::m_vehicleAnimGroups ...
5016A0:  SMLABB.W        R0, R0, R3, R2; this
5016A4:  BLX             j__ZN17CVehicleAnimGroup8GetGroupEi; CVehicleAnimGroup::GetGroup(int)
5016A8:  MOV             R3, R0
5016AA:  LDRD.W          R1, R0, [R5,#0xC]
5016AE:  LDR             R6, [R0]
5016B0:  LDR             R2, [R5,#0x14]
5016B2:  VLDR            S0, [R1,#0x20]
5016B6:  LDR             R6, [R6,#0x74]
5016B8:  LDRSH.W         R5, [R1,#0x2C]
5016BC:  MOV             R1, R4
5016BE:  VSTR            S0, [SP,#0x18+var_14]
5016C2:  STR             R5, [SP,#0x18+var_18]
5016C4:  BLX             R6
5016C6:  MOVS            R0, #0
5016C8:  B               loc_5015CC
