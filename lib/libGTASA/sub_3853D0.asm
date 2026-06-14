; =========================================================
; Game Engine Function: sub_3853D0
; Address            : 0x3853D0 - 0x3853FA
; =========================================================

3853D0:  PUSH            {R4,R6,R7,LR}
3853D2:  ADD             R7, SP, #8
3853D4:  MOV             R4, R0
3853D6:  BLX             j__ZN23CCustomBuildingRenderer22IsCBPCPipelineAttachedEP8RpAtomic; CCustomBuildingRenderer::IsCBPCPipelineAttached(RpAtomic *)
3853DA:  CBZ             R0, loc_3853E6
3853DC:  MOV             R0, R4
3853DE:  BLX             j__ZN23CCustomBuildingRenderer11AtomicSetupEP8RpAtomic; CCustomBuildingRenderer::AtomicSetup(RpAtomic *)
3853E2:  MOV             R0, R4
3853E4:  POP             {R4,R6,R7,PC}
3853E6:  MOV             R0, R4
3853E8:  BLX             j__ZN14CCarFXRenderer22IsCCPCPipelineAttachedEP8RpAtomic; CCarFXRenderer::IsCCPCPipelineAttached(RpAtomic *)
3853EC:  CMP             R0, #0
3853EE:  ITT NE
3853F0:  MOVNE           R0, R4
3853F2:  BLXNE           j__ZN14CCarFXRenderer24CustomCarPipeAtomicSetupEP8RpAtomic; CCarFXRenderer::CustomCarPipeAtomicSetup(RpAtomic *)
3853F6:  MOV             R0, R4
3853F8:  POP             {R4,R6,R7,PC}
