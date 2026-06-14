; =========================================================
; Game Engine Function: _ZN18CTaskLeanOnVehicle10ProcessPedEP4CPed
; Address            : 0x51AAA8 - 0x51AC6A
; =========================================================

51AAA8:  PUSH            {R4-R7,LR}
51AAAA:  ADD             R7, SP, #0xC
51AAAC:  PUSH.W          {R11}
51AAB0:  MOV             R4, R0
51AAB2:  MOV             R5, R1
51AAB4:  LDR             R0, [R4,#8]
51AAB6:  CMP             R0, #0
51AAB8:  ITT EQ
51AABA:  MOVEQ           R1, #1
51AABC:  STRBEQ.W        R1, [R4,#0x2A]
51AAC0:  STR.W           R0, [R5,#0x12C]
51AAC4:  LDR             R0, [R4,#0x14]
51AAC6:  CMP             R0, #0
51AAC8:  ITE NE
51AACA:  LDRSHNE.W       R6, [R0,#0x2C]
51AACE:  MOVEQ.W         R6, #0xFFFFFFFF
51AAD2:  LDRB.W          R0, [R4,#0x2A]
51AAD6:  CBZ             R0, loc_51AAE8
51AAD8:  MOVS            R0, #0
51AADA:  MOVS            R6, #1
51AADC:  STR.W           R0, [R5,#0x12C]
51AAE0:  MOV             R0, R6
51AAE2:  POP.W           {R11}
51AAE6:  POP             {R4-R7,PC}
51AAE8:  MOV             R0, R5
51AAEA:  MOVS            R1, #1
51AAEC:  BLX             j__ZN4CPed12SetMoveStateE10eMoveState; CPed::SetMoveState(eMoveState)
51AAF0:  LDRB.W          R0, [R4,#0x28]
51AAF4:  CBZ             R0, loc_51AB04
51AAF6:  LDR             R0, [R5,#0x18]
51AAF8:  MOVW            R1, #0x131
51AAFC:  BLX             j__Z30RpAnimBlendClumpGetAssociationP7RpClumpj; RpAnimBlendClumpGetAssociation(RpClump *,uint)
51AB00:  CMP             R0, #0
51AB02:  BEQ             loc_51AAD8
51AB04:  LDRB.W          R0, [R4,#0x29]
51AB08:  CBZ             R0, loc_51AB34
51AB0A:  MOVW            R0, #0x131
51AB0E:  CMP             R6, R0
51AB10:  BEQ             loc_51AB2A
51AB12:  CMP.W           R6, #0x130
51AB16:  BEQ             loc_51ABA0
51AB18:  MOVW            R0, #0x12F
51AB1C:  CMP             R6, R0
51AB1E:  ITTT EQ
51AB20:  LDREQ           R0, [R4,#0x14]
51AB22:  MOVEQ.W         R1, #0xC1000000
51AB26:  STREQ           R1, [R0,#0x1C]
51AB28:  B               loc_51AB34
51AB2A:  LDR             R0, [R4,#0x14]
51AB2C:  MOVS            R1, #0x40400000
51AB32:  STR             R1, [R0,#0x24]
51AB34:  LDR             R0, [R4,#0x14]; this
51AB36:  CBZ             R0, loc_51AB5C
51AB38:  LDRB.W          R1, [R4,#0x24]
51AB3C:  CMP             R1, #0
51AB3E:  BEQ             loc_51ABE4
51AB40:  LDRB.W          R1, [R4,#0x25]
51AB44:  CMP             R1, #0
51AB46:  BEQ             loc_51ABC8
51AB48:  LDR             R1, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x51AB50)
51AB4A:  MOVS            R2, #0
51AB4C:  ADD             R1, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
51AB4E:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds ...
51AB50:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds
51AB52:  STRB.W          R2, [R4,#0x25]
51AB56:  STR             R1, [R4,#0x1C]
51AB58:  MOV             R2, R1
51AB5A:  B               loc_51ABD2
51AB5C:  LDR             R0, [R4,#0x18]
51AB5E:  MOVW            R1, #0x12F
51AB62:  CMP             R0, R1
51AB64:  BEQ             loc_51ABE8
51AB66:  ADDS            R0, #1
51AB68:  BNE             loc_51ABE4
51AB6A:  LDRB            R0, [R4,#0x10]
51AB6C:  CMP             R0, #0
51AB6E:  BEQ             loc_51AC48
51AB70:  LDR             R0, [R4,#0xC]
51AB72:  CMP             R0, #0
51AB74:  BLT             loc_51AB88
51AB76:  LDR             R1, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x51AB7E)
51AB78:  MOVS            R2, #1
51AB7A:  ADD             R1, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
51AB7C:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds ...
51AB7E:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds
51AB80:  STRB.W          R2, [R4,#0x24]
51AB84:  STRD.W          R1, R0, [R4,#0x1C]
51AB88:  LDR             R0, [R5,#0x18]; int
51AB8A:  MOVS            R3, #0x447A0000
51AB90:  MOVS            R1, #0x34 ; '4'; int
51AB92:  MOV.W           R2, #0x130; unsigned int
51AB96:  BLX             j__ZN12CAnimManager14BlendAnimationEP7RpClump12AssocGroupId11AnimationIdf; CAnimManager::BlendAnimation(RpClump *,AssocGroupId,AnimationId,float)
51AB9A:  LDR             R1, =(_ZN18CTaskLeanOnVehicle12FinishAnimCBEP21CAnimBlendAssociationPv_ptr - 0x51ABA0)
51AB9C:  ADD             R1, PC; _ZN18CTaskLeanOnVehicle12FinishAnimCBEP21CAnimBlendAssociationPv_ptr
51AB9E:  B               loc_51AC5C
51ABA0:  LDR             R1, =(_ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr - 0x51ABAC)
51ABA2:  MOVS            R2, #0; void *
51ABA4:  LDR             R0, [R4,#0x14]; this
51ABA6:  MOVS            R6, #0
51ABA8:  ADD             R1, PC; _ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr
51ABAA:  LDR             R1, [R1]; CDefaultAnimCallback::DefaultAnimCB(CAnimBlendAssociation *,void *) ; void (*)(CAnimBlendAssociation *, void *)
51ABAC:  BLX             j__ZN21CAnimBlendAssociation17SetDeleteCallbackEPFvPS_PvES1_; CAnimBlendAssociation::SetDeleteCallback(void (*)(CAnimBlendAssociation*,void *),void *)
51ABB0:  LDR             R0, [R5,#0x18]; int
51ABB2:  MOVS            R3, #0x447A0000
51ABB8:  MOVS            R1, #0x34 ; '4'; int
51ABBA:  MOVW            R2, #0x131; unsigned int
51ABBE:  BLX             j__ZN12CAnimManager14BlendAnimationEP7RpClump12AssocGroupId11AnimationIdf; CAnimManager::BlendAnimation(RpClump *,AssocGroupId,AnimationId,float)
51ABC2:  LDR             R1, =(_ZN18CTaskLeanOnVehicle12FinishAnimCBEP21CAnimBlendAssociationPv_ptr - 0x51ABC8)
51ABC4:  ADD             R1, PC; _ZN18CTaskLeanOnVehicle12FinishAnimCBEP21CAnimBlendAssociationPv_ptr
51ABC6:  B               loc_51AC3C
51ABC8:  LDR             R1, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x51ABD0)
51ABCA:  LDR             R2, [R4,#0x1C]
51ABCC:  ADD             R1, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
51ABCE:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds ...
51ABD0:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds
51ABD2:  LDR             R3, [R4,#0x20]
51ABD4:  ADD             R2, R3
51ABD6:  CMP             R2, R1
51ABD8:  BHI             loc_51ABE4
51ABDA:  LDRH            R1, [R0,#0x2C]
51ABDC:  MOVW            R2, #0x131
51ABE0:  CMP             R1, R2
51ABE2:  BNE             loc_51AC18
51ABE4:  MOVS            R6, #0
51ABE6:  B               loc_51AAE0
51ABE8:  LDR             R0, [R4,#0xC]
51ABEA:  CMP             R0, #0
51ABEC:  BLT             loc_51AC00
51ABEE:  LDR             R1, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x51ABF6)
51ABF0:  MOVS            R2, #1
51ABF2:  ADD             R1, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
51ABF4:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds ...
51ABF6:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds
51ABF8:  STRB.W          R2, [R4,#0x24]
51ABFC:  STRD.W          R1, R0, [R4,#0x1C]
51AC00:  LDR             R0, [R5,#0x18]; int
51AC02:  MOVS            R3, #0x447A0000
51AC08:  MOVS            R1, #0x34 ; '4'; int
51AC0A:  MOV.W           R2, #0x130; unsigned int
51AC0E:  BLX             j__ZN12CAnimManager14BlendAnimationEP7RpClump12AssocGroupId11AnimationIdf; CAnimManager::BlendAnimation(RpClump *,AssocGroupId,AnimationId,float)
51AC12:  LDR             R1, =(_ZN18CTaskLeanOnVehicle12FinishAnimCBEP21CAnimBlendAssociationPv_ptr - 0x51AC18)
51AC14:  ADD             R1, PC; _ZN18CTaskLeanOnVehicle12FinishAnimCBEP21CAnimBlendAssociationPv_ptr
51AC16:  B               loc_51AC5C
51AC18:  LDR             R1, =(_ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr - 0x51AC22)
51AC1A:  MOVS            R2, #0; void *
51AC1C:  MOVS            R6, #0
51AC1E:  ADD             R1, PC; _ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr
51AC20:  LDR             R1, [R1]; CDefaultAnimCallback::DefaultAnimCB(CAnimBlendAssociation *,void *) ; void (*)(CAnimBlendAssociation *, void *)
51AC22:  BLX             j__ZN21CAnimBlendAssociation17SetDeleteCallbackEPFvPS_PvES1_; CAnimBlendAssociation::SetDeleteCallback(void (*)(CAnimBlendAssociation*,void *),void *)
51AC26:  LDR             R0, [R5,#0x18]; int
51AC28:  MOVS            R3, #0x447A0000
51AC2E:  MOVS            R1, #0x34 ; '4'; int
51AC30:  MOVW            R2, #0x131; unsigned int
51AC34:  BLX             j__ZN12CAnimManager14BlendAnimationEP7RpClump12AssocGroupId11AnimationIdf; CAnimManager::BlendAnimation(RpClump *,AssocGroupId,AnimationId,float)
51AC38:  LDR             R1, =(_ZN18CTaskLeanOnVehicle12FinishAnimCBEP21CAnimBlendAssociationPv_ptr - 0x51AC3E)
51AC3A:  ADD             R1, PC; _ZN18CTaskLeanOnVehicle12FinishAnimCBEP21CAnimBlendAssociationPv_ptr
51AC3C:  LDR             R1, [R1]; CTaskLeanOnVehicle::FinishAnimCB(CAnimBlendAssociation *,void *) ; void (*)(CAnimBlendAssociation *, void *)
51AC3E:  MOV             R2, R4; void *
51AC40:  STR             R0, [R4,#0x14]
51AC42:  BLX             j__ZN21CAnimBlendAssociation17SetFinishCallbackEPFvPS_PvES1_; CAnimBlendAssociation::SetFinishCallback(void (*)(CAnimBlendAssociation*,void *),void *)
51AC46:  B               loc_51AAE0
51AC48:  LDR             R0, [R5,#0x18]; int
51AC4A:  MOVS            R1, #0x34 ; '4'; int
51AC4C:  MOVW            R2, #0x12F; unsigned int
51AC50:  MOV.W           R3, #0x40800000
51AC54:  BLX             j__ZN12CAnimManager14BlendAnimationEP7RpClump12AssocGroupId11AnimationIdf; CAnimManager::BlendAnimation(RpClump *,AssocGroupId,AnimationId,float)
51AC58:  LDR             R1, =(_ZN18CTaskLeanOnVehicle12FinishAnimCBEP21CAnimBlendAssociationPv_ptr - 0x51AC5E)
51AC5A:  ADD             R1, PC; _ZN18CTaskLeanOnVehicle12FinishAnimCBEP21CAnimBlendAssociationPv_ptr
51AC5C:  LDR             R1, [R1]; CTaskLeanOnVehicle::FinishAnimCB(CAnimBlendAssociation *,void *) ; void (*)(CAnimBlendAssociation *, void *)
51AC5E:  MOV             R2, R4; void *
51AC60:  STR             R0, [R4,#0x14]
51AC62:  BLX             j__ZN21CAnimBlendAssociation17SetFinishCallbackEPFvPS_PvES1_; CAnimBlendAssociation::SetFinishCallback(void (*)(CAnimBlendAssociation*,void *),void *)
51AC66:  MOVS            R6, #0
51AC68:  B               loc_51AAE0
