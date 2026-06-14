; =========================================================
; Game Engine Function: _ZN19CTaskSimpleCarAlign10ProcessPedEP4CPed
; Address            : 0x5007B8 - 0x50087A
; =========================================================

5007B8:  PUSH            {R4-R7,LR}
5007BA:  ADD             R7, SP, #0xC
5007BC:  PUSH.W          {R11}
5007C0:  SUB             SP, SP, #0x10
5007C2:  MOV             R4, R0
5007C4:  MOV             R5, R1
5007C6:  LDRB            R0, [R4,#8]
5007C8:  CBZ             R0, loc_5007CE
5007CA:  MOVS            R0, #1
5007CC:  B               loc_500872
5007CE:  LDR             R0, [R4,#0x10]
5007D0:  CMP             R0, #0
5007D2:  BEQ             loc_5007CA
5007D4:  LDR             R0, [R4,#0xC]
5007D6:  CMP             R0, #0
5007D8:  BNE             loc_500870
5007DA:  MOV             R0, R4; this
5007DC:  MOV             R1, R5; CPed *
5007DE:  BLX             j__ZN19CTaskSimpleCarAlign10FixHeadingEP4CPed; CTaskSimpleCarAlign::FixHeading(CPed *)
5007E2:  LDR             R1, [R4,#0x10]; CVehicle *
5007E4:  ADD             R0, SP, #0x20+var_1C; this
5007E6:  LDR             R2, [R4,#0x20]; int
5007E8:  BLX             j__ZN13CCarEnterExit24GetPositionToOpenCarDoorERK8CVehiclei; CCarEnterExit::GetPositionToOpenCarDoor(CVehicle const&,int)
5007EC:  LDR             R0, [R4,#0x10]
5007EE:  LDR             R2, [R5,#0x14]
5007F0:  LDR             R1, [R4,#0x20]
5007F2:  ADD.W           R6, R2, #0x30 ; '0'
5007F6:  CMP             R2, #0
5007F8:  VLDR            S0, [SP,#0x20+var_14]
5007FC:  MOVW            R2, #0x15F
500800:  LDR.W           R0, [R0,#0x388]
500804:  IT EQ
500806:  ADDEQ           R6, R5, #4
500808:  VLDR            S2, [R6,#8]
50080C:  MOVS            R6, #0x94
50080E:  VLDR            S6, =0.0
500812:  BIC.W           R1, R1, #1
500816:  VSUB.F32        S0, S0, S2
50081A:  VLDR            S4, =4.4
50081E:  LDR             R3, =(_ZN21CVehicleAnimGroupData19m_vehicleAnimGroupsE_ptr - 0x500828)
500820:  LDRB.W          R0, [R0,#0xDE]
500824:  ADD             R3, PC; _ZN21CVehicleAnimGroupData19m_vehicleAnimGroupsE_ptr
500826:  LDR             R3, [R3]; CVehicleAnimGroupData::m_vehicleAnimGroups ...
500828:  VMAX.F32        D0, D0, D3
50082C:  SMLABB.W        R0, R0, R6, R3; this
500830:  MOV.W           R6, #0x160
500834:  VCMPE.F32       S0, S4
500838:  VMRS            APSR_nzcv, FPSCR
50083C:  IT GT
50083E:  MOVWGT          R2, #0x161
500842:  IT GT
500844:  MOVGT.W         R6, #0x162
500848:  CMP             R1, #0xA
50084A:  IT EQ
50084C:  MOVEQ           R6, R2
50084E:  MOV             R1, R6; int
500850:  BLX             j__ZN17CVehicleAnimGroup8GetGroupEi; CVehicleAnimGroup::GetGroup(int)
500854:  MOV             R1, R0; int
500856:  LDR             R0, [R5,#0x18]; int
500858:  MOV             R2, R6; unsigned int
50085A:  MOV.W           R3, #0x40800000
50085E:  BLX             j__ZN12CAnimManager14BlendAnimationEP7RpClump12AssocGroupId11AnimationIdf; CAnimManager::BlendAnimation(RpClump *,AssocGroupId,AnimationId,float)
500862:  LDR             R1, =(_ZN19CTaskSimpleCarAlign20FinishAnimCarAlignCBEP21CAnimBlendAssociationPv_ptr - 0x50086C)
500864:  MOV             R2, R4; void *
500866:  STR             R0, [R4,#0xC]
500868:  ADD             R1, PC; _ZN19CTaskSimpleCarAlign20FinishAnimCarAlignCBEP21CAnimBlendAssociationPv_ptr
50086A:  LDR             R1, [R1]; CTaskSimpleCarAlign::FinishAnimCarAlignCB(CAnimBlendAssociation *,void *) ; void (*)(CAnimBlendAssociation *, void *)
50086C:  BLX             j__ZN21CAnimBlendAssociation17SetFinishCallbackEPFvPS_PvES1_; CAnimBlendAssociation::SetFinishCallback(void (*)(CAnimBlendAssociation*,void *),void *)
500870:  MOVS            R0, #0
500872:  ADD             SP, SP, #0x10
500874:  POP.W           {R11}
500878:  POP             {R4-R7,PC}
