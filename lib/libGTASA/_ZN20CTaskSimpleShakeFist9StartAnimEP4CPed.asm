; =========================================================
; Game Engine Function: _ZN20CTaskSimpleShakeFist9StartAnimEP4CPed
; Address            : 0x540C3C - 0x540C76
; =========================================================

540C3C:  PUSH            {R4,R6,R7,LR}
540C3E:  ADD             R7, SP, #8
540C40:  MOV             R4, R0
540C42:  LDR             R0, [R1,#0x18]; int
540C44:  MOVS            R1, #0; int
540C46:  MOVS            R2, #0x90; unsigned int
540C48:  MOV.W           R3, #0x40800000
540C4C:  BLX             j__ZN12CAnimManager14BlendAnimationEP7RpClump12AssocGroupId11AnimationIdf; CAnimManager::BlendAnimation(RpClump *,AssocGroupId,AnimationId,float)
540C50:  STR             R0, [R4,#0xC]
540C52:  LDRH            R1, [R0,#0x2E]
540C54:  LDR             R2, =(_ZN20CTaskSimpleShakeFist21FinishAnimShakeFistCBEP21CAnimBlendAssociationPv_ptr - 0x540C62)
540C56:  ORR.W           R1, R1, #8
540C5A:  STRH            R1, [R0,#0x2E]
540C5C:  LDR             R0, [R4,#0xC]
540C5E:  ADD             R2, PC; _ZN20CTaskSimpleShakeFist21FinishAnimShakeFistCBEP21CAnimBlendAssociationPv_ptr
540C60:  LDR             R1, [R2]; CTaskSimpleShakeFist::FinishAnimShakeFistCB(CAnimBlendAssociation *,void *)
540C62:  LDRH            R3, [R0,#0x2E]
540C64:  ORR.W           R2, R3, #4
540C68:  STRH            R2, [R0,#0x2E]
540C6A:  LDR             R0, [R4,#0xC]
540C6C:  MOV             R2, R4
540C6E:  POP.W           {R4,R6,R7,LR}
540C72:  B.W             sub_192A28
