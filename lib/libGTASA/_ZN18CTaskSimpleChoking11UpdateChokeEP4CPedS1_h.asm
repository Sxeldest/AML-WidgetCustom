; =========================================================
; Game Engine Function: _ZN18CTaskSimpleChoking11UpdateChokeEP4CPedS1_h
; Address            : 0x4DFA0C - 0x4DFAE8
; =========================================================

4DFA0C:  PUSH            {R4-R7,LR}
4DFA0E:  ADD             R7, SP, #0xC
4DFA10:  PUSH.W          {R8}
4DFA14:  MOV             R4, R0
4DFA16:  MOV             R6, R2
4DFA18:  MOV             R5, R4
4DFA1A:  MOV             R8, R1
4DFA1C:  LDR.W           R0, [R5,#8]!; this
4DFA20:  CMP             R0, R6
4DFA22:  STRB            R3, [R5,#0x10]
4DFA24:  BEQ             loc_4DFA3E
4DFA26:  CMP             R0, #0
4DFA28:  ITT NE
4DFA2A:  MOVNE           R1, R5; CEntity **
4DFA2C:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
4DFA30:  CMP             R6, #0
4DFA32:  STR             R6, [R5]
4DFA34:  ITTT NE
4DFA36:  MOVNE           R0, R6; this
4DFA38:  MOVNE           R1, R5; CEntity **
4DFA3A:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
4DFA3E:  LDRB            R0, [R4,#0x19]
4DFA40:  CMP             R0, #0
4DFA42:  ITT NE
4DFA44:  MOVNE           R0, #0
4DFA46:  STRBNE          R0, [R4,#0x19]
4DFA48:  LDR             R0, [R4,#0xC]; this
4DFA4A:  CMP             R0, #0
4DFA4C:  ITT NE
4DFA4E:  LDRHNE          R1, [R0,#0x2C]
4DFA50:  CMPNE           R1, #0x15
4DFA52:  BEQ             loc_4DFAB6
4DFA54:  LDR             R1, =(_ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr - 0x4DFA5C)
4DFA56:  MOVS            R2, #0; void *
4DFA58:  ADD             R1, PC; _ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr
4DFA5A:  LDR             R1, [R1]; CDefaultAnimCallback::DefaultAnimCB(CAnimBlendAssociation *,void *) ; void (*)(CAnimBlendAssociation *, void *)
4DFA5C:  BLX             j__ZN21CAnimBlendAssociation17SetFinishCallbackEPFvPS_PvES1_; CAnimBlendAssociation::SetFinishCallback(void (*)(CAnimBlendAssociation*,void *),void *)
4DFA60:  LDR.W           R0, [R8,#0x18]; int
4DFA64:  MOVS            R1, #0; int
4DFA66:  MOVS            R2, #0x15; unsigned int
4DFA68:  MOV.W           R3, #0x40800000
4DFA6C:  BLX             j__ZN12CAnimManager14BlendAnimationEP7RpClump12AssocGroupId11AnimationIdf; CAnimManager::BlendAnimation(RpClump *,AssocGroupId,AnimationId,float)
4DFA70:  LDR             R1, =(_ZN18CTaskSimpleChoking17DeleteAnimChokeCBEP21CAnimBlendAssociationPv_ptr - 0x4DFA7A)
4DFA72:  MOV             R2, R4; void *
4DFA74:  STR             R0, [R4,#0xC]
4DFA76:  ADD             R1, PC; _ZN18CTaskSimpleChoking17DeleteAnimChokeCBEP21CAnimBlendAssociationPv_ptr
4DFA78:  LDR             R1, [R1]; CTaskSimpleChoking::DeleteAnimChokeCB(CAnimBlendAssociation *,void *) ; void (*)(CAnimBlendAssociation *, void *)
4DFA7A:  BLX             j__ZN21CAnimBlendAssociation17SetFinishCallbackEPFvPS_PvES1_; CAnimBlendAssociation::SetFinishCallback(void (*)(CAnimBlendAssociation*,void *),void *)
4DFA7E:  LDR             R5, [R4,#0xC]
4DFA80:  BLX             rand
4DFA84:  VMOV            S0, R0
4DFA88:  VLDR            S2, =4.6566e-10
4DFA8C:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x4DFA96)
4DFA8E:  VCVT.F32.S32    S0, S0
4DFA92:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
4DFA94:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
4DFA96:  VMUL.F32        S0, S0, S2
4DFA9A:  VLDR            S2, =0.3
4DFA9E:  VMUL.F32        S0, S0, S2
4DFAA2:  VLDR            S2, =0.8
4DFAA6:  VADD.F32        S0, S0, S2
4DFAAA:  VSTR            S0, [R5,#0x24]
4DFAAE:  LDR             R1, [R4,#0x10]
4DFAB0:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
4DFAB2:  SUBS            R0, R0, R1
4DFAB4:  STR             R0, [R4,#0x14]
4DFAB6:  BLX             rand
4DFABA:  UXTH            R0, R0
4DFABC:  VLDR            S2, =0.000015259
4DFAC0:  VMOV            S0, R0
4DFAC4:  VCVT.F32.S32    S0, S0
4DFAC8:  VMUL.F32        S0, S0, S2
4DFACC:  VLDR            S2, =1000.0
4DFAD0:  VMUL.F32        S0, S0, S2
4DFAD4:  VCVT.S32.F32    S0, S0
4DFAD8:  VMOV            R0, S0
4DFADC:  ADD.W           R0, R0, #0x3E8
4DFAE0:  STR             R0, [R4,#0x10]
4DFAE2:  POP.W           {R8}
4DFAE6:  POP             {R4-R7,PC}
