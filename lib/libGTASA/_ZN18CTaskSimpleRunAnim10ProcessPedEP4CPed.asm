; =========================================================
; Game Engine Function: _ZN18CTaskSimpleRunAnim10ProcessPedEP4CPed
; Address            : 0x4D6CC0 - 0x4D6D02
; =========================================================

4D6CC0:  PUSH            {R4,R5,R7,LR}
4D6CC2:  ADD             R7, SP, #8
4D6CC4:  MOV             R4, R0
4D6CC6:  MOV             R5, R1
4D6CC8:  LDRB            R0, [R4,#0xC]
4D6CCA:  LSLS            R0, R0, #0x1F
4D6CCC:  ITT NE
4D6CCE:  MOVNE           R0, #1
4D6CD0:  POPNE           {R4,R5,R7,PC}
4D6CD2:  LDR             R0, [R4,#8]
4D6CD4:  CBNZ            R0, loc_4D6CFA
4D6CD6:  LDR             R1, [R4,#0x14]
4D6CD8:  LDR             R0, [R5,#0x18]
4D6CDA:  BLX             j__Z30RpAnimBlendClumpGetAssociationP7RpClumpj; RpAnimBlendClumpGetAssociation(RpClump *,uint)
4D6CDE:  CBNZ            R0, loc_4D6CFA
4D6CE0:  ADD.W           R3, R4, #0x10
4D6CE4:  LDM             R3, {R1-R3}; unsigned int
4D6CE6:  LDR             R0, [R5,#0x18]; int
4D6CE8:  BLX             j__ZN12CAnimManager14BlendAnimationEP7RpClump12AssocGroupId11AnimationIdf; CAnimManager::BlendAnimation(RpClump *,AssocGroupId,AnimationId,float)
4D6CEC:  LDR             R1, =(_ZN15CTaskSimpleAnim15FinishRunAnimCBEP21CAnimBlendAssociationPv_ptr - 0x4D6CF6)
4D6CEE:  MOV             R2, R4; void *
4D6CF0:  STR             R0, [R4,#8]
4D6CF2:  ADD             R1, PC; _ZN15CTaskSimpleAnim15FinishRunAnimCBEP21CAnimBlendAssociationPv_ptr
4D6CF4:  LDR             R1, [R1]; CTaskSimpleAnim::FinishRunAnimCB(CAnimBlendAssociation *,void *) ; void (*)(CAnimBlendAssociation *, void *)
4D6CF6:  BLX             j__ZN21CAnimBlendAssociation17SetFinishCallbackEPFvPS_PvES1_; CAnimBlendAssociation::SetFinishCallback(void (*)(CAnimBlendAssociation*,void *),void *)
4D6CFA:  LDRB            R0, [R4,#0xC]
4D6CFC:  AND.W           R0, R0, #1
4D6D00:  POP             {R4,R5,R7,PC}
