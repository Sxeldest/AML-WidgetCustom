; =========================================================
; Game Engine Function: _ZN23CTaskSimpleRunTimedAnim9StartAnimEP4CPed
; Address            : 0x4D7280 - 0x4D72A6
; =========================================================

4D7280:  PUSH            {R4,R6,R7,LR}
4D7282:  ADD             R7, SP, #8
4D7284:  MOV             R4, R0
4D7286:  LDRD.W          R12, R2, [R4,#0x10]; unsigned int
4D728A:  LDR             R0, [R1,#0x18]; int
4D728C:  LDR             R3, [R4,#0x18]
4D728E:  MOV             R1, R12; int
4D7290:  BLX             j__ZN12CAnimManager14BlendAnimationEP7RpClump12AssocGroupId11AnimationIdf; CAnimManager::BlendAnimation(RpClump *,AssocGroupId,AnimationId,float)
4D7294:  LDR             R1, =(_ZN15CTaskSimpleAnim15FinishRunAnimCBEP21CAnimBlendAssociationPv_ptr - 0x4D729E)
4D7296:  MOV             R2, R4
4D7298:  STR             R0, [R4,#8]
4D729A:  ADD             R1, PC; _ZN15CTaskSimpleAnim15FinishRunAnimCBEP21CAnimBlendAssociationPv_ptr
4D729C:  LDR             R1, [R1]; CTaskSimpleAnim::FinishRunAnimCB(CAnimBlendAssociation *,void *)
4D729E:  POP.W           {R4,R6,R7,LR}
4D72A2:  B.W             sub_192A28
