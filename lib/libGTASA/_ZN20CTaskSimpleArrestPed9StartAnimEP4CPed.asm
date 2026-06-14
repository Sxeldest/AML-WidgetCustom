; =========================================================
; Game Engine Function: _ZN20CTaskSimpleArrestPed9StartAnimEP4CPed
; Address            : 0x53CA30 - 0x53CAEA
; =========================================================

53CA30:  PUSH            {R4,R5,R7,LR}
53CA32:  ADD             R7, SP, #8
53CA34:  SUB             SP, SP, #0x10
53CA36:  MOV             R4, R1
53CA38:  MOV             R5, R0
53CA3A:  LDR             R0, [R4,#0x18]; int
53CA3C:  MOVS            R1, #0; int
53CA3E:  MOVS            R2, #0x8B; unsigned int
53CA40:  MOV.W           R3, #0x40800000
53CA44:  BLX             j__ZN12CAnimManager14BlendAnimationEP7RpClump12AssocGroupId11AnimationIdf; CAnimManager::BlendAnimation(RpClump *,AssocGroupId,AnimationId,float)
53CA48:  LDR             R1, =(_ZN20CTaskSimpleArrestPed21FinishAnimArrestPedCBEP21CAnimBlendAssociationPv_ptr - 0x53CA52)
53CA4A:  STR             R0, [R5,#0x10]
53CA4C:  LDRH            R2, [R0,#0x2E]
53CA4E:  ADD             R1, PC; _ZN20CTaskSimpleArrestPed21FinishAnimArrestPedCBEP21CAnimBlendAssociationPv_ptr
53CA50:  ORR.W           R2, R2, #1
53CA54:  STRH            R2, [R0,#0x2E]
53CA56:  LDR             R0, [R5,#0x10]; this
53CA58:  MOV             R2, R5; void *
53CA5A:  LDR             R1, [R1]; CTaskSimpleArrestPed::FinishAnimArrestPedCB(CAnimBlendAssociation *,void *) ; void (*)(CAnimBlendAssociation *, void *)
53CA5C:  BLX             j__ZN21CAnimBlendAssociation17SetDeleteCallbackEPFvPS_PvES1_; CAnimBlendAssociation::SetDeleteCallback(void (*)(CAnimBlendAssociation*,void *),void *)
53CA60:  LDR             R0, [R5,#8]; this
53CA62:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
53CA66:  CMP             R0, #1
53CA68:  BNE             loc_53CA80
53CA6A:  MOVS            R0, #1
53CA6C:  MOVS            R1, #0xD; unsigned __int16
53CA6E:  STRD.W          R0, R0, [SP,#0x18+var_18]; unsigned __int8
53CA72:  MOVS            R2, #0; unsigned int
53CA74:  STR             R0, [SP,#0x18+var_10]; unsigned __int8
53CA76:  MOV             R0, R4; this
53CA78:  MOV.W           R3, #0x3F800000; float
53CA7C:  BLX             j__ZN4CPed3SayEtjfhhh; CPed::Say(ushort,uint,float,uchar,uchar,uchar)
53CA80:  LDR             R0, [R5,#8]; this
53CA82:  BLX             j__ZN4CPed14CanSetPedStateEv; CPed::CanSetPedState(void)
53CA86:  CMP             R0, #1
53CA88:  BNE             loc_53CA92
53CA8A:  LDR             R0, [R5,#8]; CPed *
53CA8C:  MOVS            R1, #0x3F ; '?'
53CA8E:  BLX             j__ZN4CPed11SetPedStateE9ePedState; CPed::SetPedState(ePedState)
53CA92:  LDR.W           R0, [R4,#0x59C]
53CA96:  CMP             R0, #6
53CA98:  BNE             loc_53CAB6
53CA9A:  LDR             R0, [R5,#8]
53CA9C:  LDR.W           R1, [R0,#0x59C]
53CAA0:  CMP             R1, #1
53CAA2:  BHI             loc_53CAB6
53CAA4:  LDR.W           R1, [R0,#0x444]
53CAA8:  LDR.W           R0, [R1,#8]!; CEntity **
53CAAC:  CBNZ            R0, loc_53CAB6
53CAAE:  MOV             R0, R4; this
53CAB0:  STR             R4, [R1]
53CAB2:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
53CAB6:  LDR             R0, [R5,#8]
53CAB8:  LDR.W           R3, [R0,#0x48C]
53CABC:  LDR.W           R1, [R0,#0x484]
53CAC0:  LDR.W           R2, [R0,#0x488]
53CAC4:  ORR.W           R3, R3, #0x40 ; '@'
53CAC8:  LDR.W           R5, [R0,#0x490]
53CACC:  STR.W           R1, [R0,#0x484]
53CAD0:  MOVS            R1, #0x31 ; '1'
53CAD2:  STR.W           R2, [R0,#0x488]
53CAD6:  STR.W           R3, [R0,#0x48C]
53CADA:  STR.W           R5, [R0,#0x490]
53CADE:  MOV             R0, R4
53CAE0:  ADD             SP, SP, #0x10
53CAE2:  POP.W           {R4,R5,R7,LR}
53CAE6:  B.W             sub_18D928
