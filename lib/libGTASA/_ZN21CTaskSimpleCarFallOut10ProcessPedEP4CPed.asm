; =========================================================
; Game Engine Function: _ZN21CTaskSimpleCarFallOut10ProcessPedEP4CPed
; Address            : 0x505A90 - 0x505B5A
; =========================================================

505A90:  PUSH            {R4-R7,LR}
505A92:  ADD             R7, SP, #0xC
505A94:  PUSH.W          {R11}
505A98:  SUB             SP, SP, #8
505A9A:  MOV             R4, R0
505A9C:  MOV             R5, R1
505A9E:  LDR             R0, [R4,#0x10]
505AA0:  CBZ             R0, loc_505AA6
505AA2:  LDRB            R1, [R4,#8]
505AA4:  CBZ             R1, loc_505AB0
505AA6:  MOVS            R0, #1
505AA8:  ADD             SP, SP, #8
505AAA:  POP.W           {R11}
505AAE:  POP             {R4-R7,PC}
505AB0:  LDR             R1, [R4,#0xC]; CPed *
505AB2:  CBZ             R1, loc_505B04
505AB4:  LDRB.W          R1, [R5,#0x485]
505AB8:  LSLS            R1, R1, #0x1F
505ABA:  BEQ             loc_505AA6
505ABC:  LDR.W           R0, [R0,#0x388]
505AC0:  MOVS            R3, #0x94
505AC2:  LDR             R1, =(_ZN21CVehicleAnimGroupData19m_vehicleAnimGroupsE_ptr - 0x505ACE)
505AC4:  MOV.W           R6, #0x184
505AC8:  LDR             R2, [R4,#0x14]
505ACA:  ADD             R1, PC; _ZN21CVehicleAnimGroupData19m_vehicleAnimGroupsE_ptr
505ACC:  LDRB.W          R0, [R0,#0xDE]
505AD0:  LDR             R1, [R1]; CVehicleAnimGroupData::m_vehicleAnimGroups ...
505AD2:  SMLABB.W        R0, R0, R3, R1; this
505AD6:  BIC.W           R1, R2, #1
505ADA:  CMP             R1, #0xA
505ADC:  IT EQ
505ADE:  MOVWEQ          R6, #0x183
505AE2:  MOV             R1, R6; int
505AE4:  BLX             j__ZN17CVehicleAnimGroup8GetGroupEi; CVehicleAnimGroup::GetGroup(int)
505AE8:  MOV             R3, R0
505AEA:  LDRD.W          R1, R0, [R4,#0xC]
505AEE:  LDR             R2, [R4,#0x14]
505AF0:  LDR             R4, [R0]
505AF2:  VLDR            S0, [R1,#0x20]
505AF6:  MOV             R1, R5
505AF8:  LDR             R4, [R4,#0x74]
505AFA:  VSTR            S0, [SP,#0x18+var_14]
505AFE:  STR             R6, [SP,#0x18+var_18]
505B00:  BLX             R4
505B02:  B               loc_505B56
505B04:  MOV             R0, R5; this
505B06:  BLX             j__ZN13CCarEnterExit16RemoveCarSitAnimERK4CPed; CCarEnterExit::RemoveCarSitAnim(CPed const&)
505B0A:  LDRD.W          R0, R1, [R4,#0x10]
505B0E:  MOVS            R3, #0x94
505B10:  LDR             R2, =(_ZN21CVehicleAnimGroupData19m_vehicleAnimGroupsE_ptr - 0x505B24)
505B12:  BIC.W           R1, R1, #1
505B16:  MOV.W           R6, #0x184
505B1A:  CMP             R1, #0xA
505B1C:  LDR.W           R0, [R0,#0x388]
505B20:  ADD             R2, PC; _ZN21CVehicleAnimGroupData19m_vehicleAnimGroupsE_ptr
505B22:  LDR             R2, [R2]; CVehicleAnimGroupData::m_vehicleAnimGroups ...
505B24:  LDRB.W          R0, [R0,#0xDE]
505B28:  IT EQ
505B2A:  MOVWEQ          R6, #0x183
505B2E:  MOV             R1, R6; int
505B30:  SMLABB.W        R0, R0, R3, R2; this
505B34:  BLX             j__ZN17CVehicleAnimGroup8GetGroupEi; CVehicleAnimGroup::GetGroup(int)
505B38:  MOV             R1, R0; int
505B3A:  LDR             R0, [R5,#0x18]; int
505B3C:  MOVS            R3, #0
505B3E:  MOV             R2, R6; unsigned int
505B40:  MOVT            R3, #0x447A
505B44:  BLX             j__ZN12CAnimManager14BlendAnimationEP7RpClump12AssocGroupId11AnimationIdf; CAnimManager::BlendAnimation(RpClump *,AssocGroupId,AnimationId,float)
505B48:  LDR             R1, =(_ZN21CTaskSimpleCarFallOut19FinishAnimFallOutCBEP21CAnimBlendAssociationPv_ptr - 0x505B52)
505B4A:  MOV             R2, R4; void *
505B4C:  STR             R0, [R4,#0xC]
505B4E:  ADD             R1, PC; _ZN21CTaskSimpleCarFallOut19FinishAnimFallOutCBEP21CAnimBlendAssociationPv_ptr
505B50:  LDR             R1, [R1]; CTaskSimpleCarFallOut::FinishAnimFallOutCB(CAnimBlendAssociation *,void *) ; void (*)(CAnimBlendAssociation *, void *)
505B52:  BLX             j__ZN21CAnimBlendAssociation17SetFinishCallbackEPFvPS_PvES1_; CAnimBlendAssociation::SetFinishCallback(void (*)(CAnimBlendAssociation*,void *),void *)
505B56:  MOVS            R0, #0
505B58:  B               loc_505AA8
