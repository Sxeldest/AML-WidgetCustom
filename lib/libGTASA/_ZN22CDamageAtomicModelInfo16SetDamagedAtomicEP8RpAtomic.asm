; =========================================================
; Game Engine Function: _ZN22CDamageAtomicModelInfo16SetDamagedAtomicEP8RpAtomic
; Address            : 0x384DD0 - 0x384E02
; =========================================================

384DD0:  PUSH            {R4,R6,R7,LR}
384DD2:  ADD             R7, SP, #8
384DD4:  MOV             R4, R1
384DD6:  STR             R4, [R0,#0x38]
384DD8:  MOV             R0, R4
384DDA:  BLX             j__ZN23CCustomBuildingRenderer22IsCBPCPipelineAttachedEP8RpAtomic; CCustomBuildingRenderer::IsCBPCPipelineAttached(RpAtomic *)
384DDE:  CBZ             R0, loc_384DEA
384DE0:  MOV             R0, R4
384DE2:  POP.W           {R4,R6,R7,LR}
384DE6:  B.W             j_j__ZN23CCustomBuildingRenderer11AtomicSetupEP8RpAtomic; j_CCustomBuildingRenderer::AtomicSetup(RpAtomic *)
384DEA:  MOV             R0, R4
384DEC:  BLX             j__ZN14CCarFXRenderer22IsCCPCPipelineAttachedEP8RpAtomic; CCarFXRenderer::IsCCPCPipelineAttached(RpAtomic *)
384DF0:  CMP             R0, #0
384DF2:  IT EQ
384DF4:  POPEQ           {R4,R6,R7,PC}
384DF6:  MOV             R0, R4
384DF8:  MOVS            R1, #0
384DFA:  POP.W           {R4,R6,R7,LR}
384DFE:  B.W             j_j__ZN14CCarFXRenderer37SetCustomFXAtomicRenderPipelinesVMICBEP8RpAtomicPv; j_CCarFXRenderer::SetCustomFXAtomicRenderPipelinesVMICB(RpAtomic *,void *)
