; =========================================================
; Game Engine Function: _ZN18CTaskSimpleHitHead10ProcessPedEP4CPed
; Address            : 0x50ACAC - 0x50ACEC
; =========================================================

50ACAC:  PUSH            {R4,R6,R7,LR}
50ACAE:  ADD             R7, SP, #8
50ACB0:  MOV             R4, R0
50ACB2:  LDRB            R0, [R4,#8]
50ACB4:  CMP             R0, #0
50ACB6:  ITT NE
50ACB8:  MOVNE           R0, #1
50ACBA:  POPNE           {R4,R6,R7,PC}
50ACBC:  LDR             R0, [R4,#0xC]
50ACBE:  CMP             R0, #0
50ACC0:  ITT NE
50ACC2:  MOVNE           R0, #0
50ACC4:  POPNE           {R4,R6,R7,PC}
50ACC6:  LDR             R0, [R1,#0x18]; int
50ACC8:  MOVS            R1, #0; int
50ACCA:  MOVS            R2, #0x26 ; '&'; unsigned int
50ACCC:  MOV.W           R3, #0x41000000
50ACD0:  BLX             j__ZN12CAnimManager14BlendAnimationEP7RpClump12AssocGroupId11AnimationIdf; CAnimManager::BlendAnimation(RpClump *,AssocGroupId,AnimationId,float)
50ACD4:  LDR             R1, =(_ZN18CTaskSimpleHitHead19FinishAnimHitHeadCBEP21CAnimBlendAssociationPv_ptr - 0x50ACDE)
50ACD6:  MOV             R2, R4; void *
50ACD8:  STR             R0, [R4,#0xC]
50ACDA:  ADD             R1, PC; _ZN18CTaskSimpleHitHead19FinishAnimHitHeadCBEP21CAnimBlendAssociationPv_ptr
50ACDC:  LDR             R1, [R1]; CTaskSimpleHitHead::FinishAnimHitHeadCB(CAnimBlendAssociation *,void *) ; void (*)(CAnimBlendAssociation *, void *)
50ACDE:  BLX             j__ZN21CAnimBlendAssociation17SetFinishCallbackEPFvPS_PvES1_; CAnimBlendAssociation::SetFinishCallback(void (*)(CAnimBlendAssociation*,void *),void *)
50ACE2:  LDRB            R0, [R4,#8]
50ACE4:  CMP             R0, #0
50ACE6:  IT NE
50ACE8:  MOVNE           R0, #1
50ACEA:  POP             {R4,R6,R7,PC}
