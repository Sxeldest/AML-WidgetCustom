; =========================================================
; Game Engine Function: _ZN30CTaskSimpleRunAnimLoopedMiddle9StartAnimEP4CPed
; Address            : 0x4D74C8 - 0x4D74FA
; =========================================================

4D74C8:  PUSH            {R4,R6,R7,LR}
4D74CA:  ADD             R7, SP, #8
4D74CC:  MOV             R4, R0
4D74CE:  LDR             R0, [R1,#0x18]; int
4D74D0:  LDR             R1, [R4,#0x44]
4D74D2:  CBZ             R1, loc_4D74DE
4D74D4:  LDR             R2, [R4,#0x18]
4D74D6:  LDR             R3, [R4,#0x48]
4D74D8:  BLX             j__ZN12CAnimManager14BlendAnimationEP7RpClumpP19CAnimBlendHierarchyif; CAnimManager::BlendAnimation(RpClump *,CAnimBlendHierarchy *,int,float)
4D74DC:  B               loc_4D74E8
4D74DE:  LDRD.W          R1, R2, [R4,#0x10]; unsigned int
4D74E2:  LDR             R3, [R4,#0x48]
4D74E4:  BLX             j__ZN12CAnimManager14BlendAnimationEP7RpClump12AssocGroupId11AnimationIdf; CAnimManager::BlendAnimation(RpClump *,AssocGroupId,AnimationId,float)
4D74E8:  LDR             R1, =(_ZN15CTaskSimpleAnim15FinishRunAnimCBEP21CAnimBlendAssociationPv_ptr - 0x4D74F2)
4D74EA:  MOV             R2, R4
4D74EC:  STR             R0, [R4,#8]
4D74EE:  ADD             R1, PC; _ZN15CTaskSimpleAnim15FinishRunAnimCBEP21CAnimBlendAssociationPv_ptr
4D74F0:  LDR             R1, [R1]; CTaskSimpleAnim::FinishRunAnimCB(CAnimBlendAssociation *,void *)
4D74F2:  POP.W           {R4,R6,R7,LR}
4D74F6:  B.W             sub_18C20C
