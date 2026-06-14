; =========================================================
; Game Engine Function: _ZN22CTaskSimpleEvasiveStep9StartAnimEP4CPed
; Address            : 0x50AE90 - 0x50AEC0
; =========================================================

50AE90:  PUSH            {R4,R6,R7,LR}
50AE92:  ADD             R7, SP, #8
50AE94:  MOV             R4, R0
50AE96:  LDR             R0, [R1,#0x18]; int
50AE98:  MOVS            R1, #0; int
50AE9A:  MOVS            R2, #0x7E ; '~'; unsigned int
50AE9C:  MOV.W           R3, #0x41000000
50AEA0:  BLX             j__ZN12CAnimManager14BlendAnimationEP7RpClump12AssocGroupId11AnimationIdf; CAnimManager::BlendAnimation(RpClump *,AssocGroupId,AnimationId,float)
50AEA4:  LDR             R1, =(_ZN22CTaskSimpleEvasiveStep23FinishAnimEvasiveStepCBEP21CAnimBlendAssociationPv_ptr - 0x50AEAE)
50AEA6:  STR             R0, [R4,#0x10]
50AEA8:  LDRH            R2, [R0,#0x2E]
50AEAA:  ADD             R1, PC; _ZN22CTaskSimpleEvasiveStep23FinishAnimEvasiveStepCBEP21CAnimBlendAssociationPv_ptr
50AEAC:  BIC.W           R2, R2, #4
50AEB0:  STRH            R2, [R0,#0x2E]
50AEB2:  LDR             R1, [R1]; CTaskSimpleEvasiveStep::FinishAnimEvasiveStepCB(CAnimBlendAssociation *,void *)
50AEB4:  MOV             R2, R4
50AEB6:  LDR             R0, [R4,#0x10]
50AEB8:  POP.W           {R4,R6,R7,LR}
50AEBC:  B.W             sub_18C20C
