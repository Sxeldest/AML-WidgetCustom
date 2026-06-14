; =========================================================
; Game Engine Function: _ZN16CTaskSimpleClimb9StartAnimEP4CPed
; Address            : 0x52EF0C - 0x52F0A0
; =========================================================

52EF0C:  PUSH            {R4,R5,R7,LR}
52EF0E:  ADD             R7, SP, #8
52EF10:  MOV             R4, R0
52EF12:  MOV             R5, R1
52EF14:  LDRSB.W         R0, [R4,#0xD]
52EF18:  SUBS            R0, #1; switch 6 cases
52EF1A:  CMP             R0, #5
52EF1C:  BHI.W           def_52EF20; jumptable 0052EF20 default case
52EF20:  TBB.W           [PC,R0]; switch jump
52EF24:  DCB 0x2D; jump table for switch statement
52EF25:  DCB 0x3C
52EF26:  DCB 0x54
52EF27:  DCB 3
52EF28:  DCB 0x63
52EF29:  DCB 3
52EF2A:  LDR.W           R1, [R5,#0x4E0]; jumptable 0052EF20 cases 4,6
52EF2E:  MOVS            R3, #0
52EF30:  LDR             R0, [R5,#0x18]; int
52EF32:  MOVT            R3, #0x447A
52EF36:  MOVS            R2, #3; unsigned int
52EF38:  BLX             j__ZN12CAnimManager14BlendAnimationEP7RpClump12AssocGroupId11AnimationIdf; CAnimManager::BlendAnimation(RpClump *,AssocGroupId,AnimationId,float)
52EF3C:  MOV             R0, R5
52EF3E:  MOVS            R1, #1
52EF40:  BLX             j__ZN4CPed12SetMoveStateE10eMoveState; CPed::SetMoveState(eMoveState)
52EF44:  LDR             R0, [R5]
52EF46:  LDR             R1, [R0,#0x60]
52EF48:  MOV             R0, R5
52EF4A:  BLX             R1
52EF4C:  LDR.W           R0, [R5,#0x444]
52EF50:  CMP             R0, #0
52EF52:  ITT NE
52EF54:  MOVNE           R1, #0
52EF56:  STRNE           R1, [R0,#0x14]
52EF58:  LDR             R0, [R4,#0x2C]; this
52EF5A:  CBZ             R0, loc_52EF68
52EF5C:  LDR             R1, =(_ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr - 0x52EF64)
52EF5E:  MOVS            R2, #0; void *
52EF60:  ADD             R1, PC; _ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr
52EF62:  LDR             R1, [R1]; CDefaultAnimCallback::DefaultAnimCB(CAnimBlendAssociation *,void *) ; void (*)(CAnimBlendAssociation *, void *)
52EF64:  BLX             j__ZN21CAnimBlendAssociation17SetDeleteCallbackEPFvPS_PvES1_; CAnimBlendAssociation::SetDeleteCallback(void (*)(CAnimBlendAssociation*,void *),void *)
52EF68:  LDRB            R1, [R4,#0xD]
52EF6A:  MOVS            R3, #0
52EF6C:  LDR             R0, [R5,#0x18]
52EF6E:  MOVS            R2, #0x84
52EF70:  CMP             R1, #6
52EF72:  MOVT            R3, #0x447A
52EF76:  IT EQ
52EF78:  MOVEQ           R2, #0x86
52EF7A:  MOVS            R1, #0
52EF7C:  B               loc_52F018
52EF7E:  LDR             R0, [R4,#0x2C]; jumptable 0052EF20 case 1
52EF80:  CMP             R0, #0
52EF82:  BEQ             loc_52F064
52EF84:  LDR             R1, =(_ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr - 0x52EF8C)
52EF86:  MOVS            R2, #0; void *
52EF88:  ADD             R1, PC; _ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr
52EF8A:  LDR             R1, [R1]; CDefaultAnimCallback::DefaultAnimCB(CAnimBlendAssociation *,void *) ; void (*)(CAnimBlendAssociation *, void *)
52EF8C:  BLX             j__ZN21CAnimBlendAssociation17SetDeleteCallbackEPFvPS_PvES1_; CAnimBlendAssociation::SetDeleteCallback(void (*)(CAnimBlendAssociation*,void *),void *)
52EF90:  LDR             R0, [R5,#0x18]
52EF92:  MOVS            R1, #0
52EF94:  MOVS            R2, #0x81
52EF96:  MOV.W           R3, #0x40800000
52EF9A:  B               loc_52F06E
52EF9C:  LDRB            R0, [R4,#0xE]; jumptable 0052EF20 case 2
52EF9E:  CMP             R0, #0
52EFA0:  BEQ             loc_52F07C
52EFA2:  LDR             R0, [R4,#0x2C]; this
52EFA4:  CBZ             R0, loc_52EFB2
52EFA6:  LDR             R1, =(_ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr - 0x52EFAE)
52EFA8:  MOVS            R2, #0; void *
52EFAA:  ADD             R1, PC; _ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr
52EFAC:  LDR             R1, [R1]; CDefaultAnimCallback::DefaultAnimCB(CAnimBlendAssociation *,void *) ; void (*)(CAnimBlendAssociation *, void *)
52EFAE:  BLX             j__ZN21CAnimBlendAssociation17SetDeleteCallbackEPFvPS_PvES1_; CAnimBlendAssociation::SetDeleteCallback(void (*)(CAnimBlendAssociation*,void *),void *)
52EFB2:  LDR             R0, [R5,#0x18]; int
52EFB4:  MOVS            R3, #0x447A0000
52EFBA:  MOVS            R1, #0; int
52EFBC:  MOVS            R2, #0x82; unsigned int
52EFBE:  BLX             j__ZN12CAnimManager14BlendAnimationEP7RpClump12AssocGroupId11AnimationIdf; CAnimManager::BlendAnimation(RpClump *,AssocGroupId,AnimationId,float)
52EFC2:  STR             R0, [R4,#0x2C]
52EFC4:  MOVS            R0, #2
52EFC6:  STRB            R0, [R4,#0xE]
52EFC8:  MOVS            R0, #0
52EFCA:  B               loc_52F022
52EFCC:  LDR             R0, [R4,#0x2C]; jumptable 0052EF20 case 3
52EFCE:  CBZ             R0, loc_52EFDC
52EFD0:  LDR             R1, =(_ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr - 0x52EFD8)
52EFD2:  MOVS            R2, #0; void *
52EFD4:  ADD             R1, PC; _ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr
52EFD6:  LDR             R1, [R1]; CDefaultAnimCallback::DefaultAnimCB(CAnimBlendAssociation *,void *) ; void (*)(CAnimBlendAssociation *, void *)
52EFD8:  BLX             j__ZN21CAnimBlendAssociation17SetDeleteCallbackEPFvPS_PvES1_; CAnimBlendAssociation::SetDeleteCallback(void (*)(CAnimBlendAssociation*,void *),void *)
52EFDC:  MOVS            R3, #0
52EFDE:  LDR             R0, [R5,#0x18]
52EFE0:  MOVT            R3, #0x447A
52EFE4:  MOVS            R1, #0
52EFE6:  MOVS            R2, #0x83
52EFE8:  B               loc_52F018
52EFEA:  LDR             R0, [R4,#0x2C]; jumptable 0052EF20 case 5
52EFEC:  CBZ             R0, loc_52F00A
52EFEE:  LDR             R1, =(_ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr - 0x52EFF6)
52EFF0:  MOVS            R2, #0; void *
52EFF2:  ADD             R1, PC; _ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr
52EFF4:  LDR             R1, [R1]; CDefaultAnimCallback::DefaultAnimCB(CAnimBlendAssociation *,void *) ; void (*)(CAnimBlendAssociation *, void *)
52EFF6:  BLX             j__ZN21CAnimBlendAssociation17SetDeleteCallbackEPFvPS_PvES1_; CAnimBlendAssociation::SetDeleteCallback(void (*)(CAnimBlendAssociation*,void *),void *)
52EFFA:  LDR             R0, [R4,#0x2C]
52EFFC:  CBZ             R0, loc_52F00A
52EFFE:  LDRH            R0, [R0,#0x2C]
52F000:  CMP             R0, #0x83
52F002:  BNE             loc_52F00A
52F004:  VMOV.F32        S0, #16.0
52F008:  B               loc_52F00E
52F00A:  VLDR            S0, =1000.0
52F00E:  VMOV            R3, S0
52F012:  LDR             R0, [R5,#0x18]; int
52F014:  MOVS            R1, #0; int
52F016:  MOVS            R2, #0x85; unsigned int
52F018:  BLX             j__ZN12CAnimManager14BlendAnimationEP7RpClump12AssocGroupId11AnimationIdf; CAnimManager::BlendAnimation(RpClump *,AssocGroupId,AnimationId,float)
52F01C:  STR             R0, [R4,#0x2C]
52F01E:  MOV.W           R0, #0x100
52F022:  STRH.W          R0, [R4,#9]
52F026:  LDR             R0, [R4,#0x2C]; jumptable 0052EF20 default case
52F028:  CBZ             R0, locret_52F062
52F02A:  LDR             R1, =(_ZN16CTaskSimpleClimb17DeleteAnimClimbCBEP21CAnimBlendAssociationPv_ptr - 0x52F032)
52F02C:  MOV             R2, R4; void *
52F02E:  ADD             R1, PC; _ZN16CTaskSimpleClimb17DeleteAnimClimbCBEP21CAnimBlendAssociationPv_ptr
52F030:  LDR             R1, [R1]; CTaskSimpleClimb::DeleteAnimClimbCB(CAnimBlendAssociation *,void *) ; void (*)(CAnimBlendAssociation *, void *)
52F032:  BLX             j__ZN21CAnimBlendAssociation17SetDeleteCallbackEPFvPS_PvES1_; CAnimBlendAssociation::SetDeleteCallback(void (*)(CAnimBlendAssociation*,void *),void *)
52F036:  LDR.W           R0, [R5,#0x444]
52F03A:  CMP             R0, #0
52F03C:  ITTT NE
52F03E:  LDRNE           R4, [R4,#0x2C]
52F040:  LDRBNE.W        R0, [R4,#0x2E]
52F044:  MOVSNE.W        R0, R0,LSL#31
52F048:  BEQ             locret_52F062
52F04A:  LDRSH.W         R0, [R4,#0x2C]
52F04E:  SUBS            R0, #0x82
52F050:  CMP             R0, #3
52F052:  BHI             locret_52F062
52F054:  CMP             R0, #2
52F056:  IT EQ
52F058:  POPEQ           {R4,R5,R7,PC}
52F05A:  MOVS            R0, #1
52F05C:  BLX             j__ZN6CStats23GetFatAndMuscleModifierE17eStatModAbilities; CStats::GetFatAndMuscleModifier(eStatModAbilities)
52F060:  STR             R0, [R4,#0x24]
52F062:  POP             {R4,R5,R7,PC}
52F064:  LDR             R0, [R5,#0x18]; int
52F066:  MOVS            R1, #0; int
52F068:  MOVS            R2, #0x80; unsigned int
52F06A:  MOV.W           R3, #0x41000000
52F06E:  BLX             j__ZN12CAnimManager14BlendAnimationEP7RpClump12AssocGroupId11AnimationIdf; CAnimManager::BlendAnimation(RpClump *,AssocGroupId,AnimationId,float)
52F072:  MOVS            R1, #1
52F074:  STRB            R1, [R4,#0xE]
52F076:  STR             R0, [R4,#0x2C]
52F078:  MOVS            R0, #0
52F07A:  B               loc_52F022
52F07C:  MOVW            R0, #0x303
52F080:  MOVS            R1, #0; int
52F082:  STRH.W          R0, [R4,#0xD]
52F086:  MOVS            R2, #0x83; unsigned int
52F088:  LDR             R0, [R5,#0x18]; int
52F08A:  MOV.W           R3, #0x40800000
52F08E:  BLX             j__ZN12CAnimManager14BlendAnimationEP7RpClump12AssocGroupId11AnimationIdf; CAnimManager::BlendAnimation(RpClump *,AssocGroupId,AnimationId,float)
52F092:  STR             R0, [R4,#0x2C]
52F094:  LDRH            R1, [R0,#0x2E]
52F096:  BIC.W           R1, R1, #1
52F09A:  STRH            R1, [R0,#0x2E]
52F09C:  MOVS            R0, #0
52F09E:  B               loc_52F022
