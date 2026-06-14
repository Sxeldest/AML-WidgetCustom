; =========================================================
; Game Engine Function: _ZN14CCarFXRenderer37SetCustomFXAtomicRenderPipelinesVMICBEP8RpAtomicPv
; Address            : 0x2C9FB8 - 0x2C9FC6
; =========================================================

2C9FB8:  PUSH            {R4,R6,R7,LR}
2C9FBA:  ADD             R7, SP, #8
2C9FBC:  MOV             R4, R0
2C9FBE:  BLX             j__ZN24CCustomCarEnvMapPipeline21CustomPipeAtomicSetupEP8RpAtomic; CCustomCarEnvMapPipeline::CustomPipeAtomicSetup(RpAtomic *)
2C9FC2:  MOV             R0, R4
2C9FC4:  POP             {R4,R6,R7,PC}
