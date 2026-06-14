; =========================================================
; Game Engine Function: _ZN30CTaskSimpleCarSlowBeDraggedOut10ProcessPedEP4CPed
; Address            : 0x5047BC - 0x5048E2
; =========================================================

5047BC:  PUSH            {R4-R7,LR}
5047BE:  ADD             R7, SP, #0xC
5047C0:  PUSH.W          {R11}
5047C4:  SUB             SP, SP, #8
5047C6:  MOV             R4, R0
5047C8:  MOV             R5, R1
5047CA:  LDR             R0, [R4,#0x10]
5047CC:  CBZ             R0, loc_504810
5047CE:  LDRB            R0, [R4,#8]
5047D0:  CBZ             R0, loc_504804
5047D2:  LDR             R0, [R5,#0x18]
5047D4:  MOVS            R1, #0x27 ; '''
5047D6:  BLX             j__Z30RpAnimBlendClumpGetAssociationP7RpClumpj; RpAnimBlendClumpGetAssociation(RpClump *,uint)
5047DA:  CBNZ            R0, loc_504810
5047DC:  LDR             R0, [R5,#0x18]
5047DE:  MOVS            R1, #0x24 ; '$'
5047E0:  BLX             j__Z30RpAnimBlendClumpGetAssociationP7RpClumpj; RpAnimBlendClumpGetAssociation(RpClump *,uint)
5047E4:  CBNZ            R0, loc_504810
5047E6:  LDRB            R1, [R4,#0x19]
5047E8:  MOVS            R3, #0
5047EA:  LDR             R0, [R5,#0x18]; int
5047EC:  MOVT            R3, #0x447A
5047F0:  CMP             R1, #0
5047F2:  MOV.W           R1, #0; int
5047F6:  ITE EQ
5047F8:  MOVEQ           R2, #0x24 ; '$'
5047FA:  MOVNE           R2, #0x27 ; '''; unsigned int
5047FC:  MOVS            R4, #0
5047FE:  BLX             j__ZN12CAnimManager14BlendAnimationEP7RpClump12AssocGroupId11AnimationIdf; CAnimManager::BlendAnimation(RpClump *,AssocGroupId,AnimationId,float)
504802:  B               loc_504812
504804:  LDR             R0, [R4,#0xC]
504806:  CBZ             R0, loc_50481C
504808:  LDRB.W          R1, [R5,#0x485]
50480C:  LSLS            R1, R1, #0x1F; CPed *
50480E:  BNE             loc_50487A
504810:  MOVS            R4, #1
504812:  MOV             R0, R4
504814:  ADD             SP, SP, #8
504816:  POP.W           {R11}
50481A:  POP             {R4-R7,PC}
50481C:  MOV             R0, R5; this
50481E:  BLX             j__ZN13CCarEnterExit16RemoveCarSitAnimERK4CPed; CCarEnterExit::RemoveCarSitAnim(CPed const&)
504822:  LDRD.W          R0, R1, [R4,#0x10]
504826:  MOVS            R3, #0x94
504828:  LDR             R2, =(_ZN21CVehicleAnimGroupData19m_vehicleAnimGroupsE_ptr - 0x50483C)
50482A:  BIC.W           R1, R1, #1
50482E:  MOVW            R6, #0x17B
504832:  CMP             R1, #0xA
504834:  LDR.W           R0, [R0,#0x388]
504838:  ADD             R2, PC; _ZN21CVehicleAnimGroupData19m_vehicleAnimGroupsE_ptr
50483A:  LDR             R2, [R2]; CVehicleAnimGroupData::m_vehicleAnimGroups ...
50483C:  LDRB.W          R0, [R0,#0xDE]
504840:  IT EQ
504842:  MOVEQ.W         R6, #0x17A
504846:  MOV             R1, R6; int
504848:  SMLABB.W        R0, R0, R3, R2; this
50484C:  BLX             j__ZN17CVehicleAnimGroup8GetGroupEi; CVehicleAnimGroup::GetGroup(int)
504850:  MOV             R1, R0; int
504852:  LDR             R0, [R5,#0x18]; int
504854:  MOVS            R3, #0
504856:  MOV             R2, R6; unsigned int
504858:  MOVT            R3, #0x447A
50485C:  BLX             j__ZN12CAnimManager14BlendAnimationEP7RpClump12AssocGroupId11AnimationIdf; CAnimManager::BlendAnimation(RpClump *,AssocGroupId,AnimationId,float)
504860:  LDR             R1, =(_ZN30CTaskSimpleCarSlowBeDraggedOut31FinishAnimCarSlowBeDraggedOutCBEP21CAnimBlendAssociationPv_ptr - 0x50486A)
504862:  MOV             R2, R4; void *
504864:  STR             R0, [R4,#0xC]
504866:  ADD             R1, PC; _ZN30CTaskSimpleCarSlowBeDraggedOut31FinishAnimCarSlowBeDraggedOutCBEP21CAnimBlendAssociationPv_ptr
504868:  LDR             R1, [R1]; CTaskSimpleCarSlowBeDraggedOut::FinishAnimCarSlowBeDraggedOutCB(CAnimBlendAssociation *,void *) ; void (*)(CAnimBlendAssociation *, void *)
50486A:  BLX             j__ZN21CAnimBlendAssociation17SetFinishCallbackEPFvPS_PvES1_; CAnimBlendAssociation::SetFinishCallback(void (*)(CAnimBlendAssociation*,void *),void *)
50486E:  LDR             R0, [R4,#0xC]
504870:  LDRH            R0, [R0,#0x2E]
504872:  UBFX.W          R0, R0, #0xB, #1
504876:  STRB            R0, [R4,#0x19]
504878:  B               loc_5048DE
50487A:  VLDR            S0, =1.7
50487E:  VLDR            S2, [R0,#0x20]
504882:  VCMPE.F32       S2, S0
504886:  VMRS            APSR_nzcv, FPSCR
50488A:  ITTT GT
50488C:  LDRGT           R0, [R4,#0x1C]
50488E:  MOVGT           R1, #2
504890:  STRGT           R1, [R0,#0x14]
504892:  LDRB            R0, [R4,#0x18]
504894:  CBZ             R0, loc_5048DE
504896:  LDRD.W          R0, R1, [R4,#0x10]
50489A:  MOVS            R3, #0x94
50489C:  LDR             R2, =(_ZN21CVehicleAnimGroupData19m_vehicleAnimGroupsE_ptr - 0x5048B0)
50489E:  BIC.W           R1, R1, #1
5048A2:  MOVW            R6, #0x17B
5048A6:  CMP             R1, #0xA
5048A8:  LDR.W           R0, [R0,#0x388]
5048AC:  ADD             R2, PC; _ZN21CVehicleAnimGroupData19m_vehicleAnimGroupsE_ptr
5048AE:  LDR             R2, [R2]; CVehicleAnimGroupData::m_vehicleAnimGroups ...
5048B0:  LDRB.W          R0, [R0,#0xDE]
5048B4:  IT EQ
5048B6:  MOVEQ.W         R6, #0x17A
5048BA:  MOV             R1, R6; int
5048BC:  SMLABB.W        R0, R0, R3, R2; this
5048C0:  BLX             j__ZN17CVehicleAnimGroup8GetGroupEi; CVehicleAnimGroup::GetGroup(int)
5048C4:  MOV             R3, R0
5048C6:  LDRD.W          R1, R0, [R4,#0xC]
5048CA:  LDR             R2, [R4,#0x14]
5048CC:  LDR             R4, [R0]
5048CE:  VLDR            S0, [R1,#0x20]
5048D2:  MOV             R1, R5
5048D4:  LDR             R4, [R4,#0x74]
5048D6:  VSTR            S0, [SP,#0x18+var_14]
5048DA:  STR             R6, [SP,#0x18+var_18]
5048DC:  BLX             R4
5048DE:  MOVS            R4, #0
5048E0:  B               loc_504812
