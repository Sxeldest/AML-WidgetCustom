; =========================================================
; Game Engine Function: _ZN24CCustomCarEnvMapPipeline16GetFxSpecTextureEP10RpMaterial
; Address            : 0x2CB7C8 - 0x2CB7DC
; =========================================================

2CB7C8:  LDR             R1, =(_ZN24CCustomCarEnvMapPipeline26ms_specularMapPluginOffsetE_ptr - 0x2CB7CE)
2CB7CA:  ADD             R1, PC; _ZN24CCustomCarEnvMapPipeline26ms_specularMapPluginOffsetE_ptr
2CB7CC:  LDR             R1, [R1]; CCustomCarEnvMapPipeline::ms_specularMapPluginOffset ...
2CB7CE:  LDR             R1, [R1]; CCustomCarEnvMapPipeline::ms_specularMapPluginOffset
2CB7D0:  LDR             R0, [R0,R1]
2CB7D2:  CMP             R0, #0
2CB7D4:  ITE NE
2CB7D6:  LDRNE           R0, [R0,#4]
2CB7D8:  MOVEQ           R0, #0
2CB7DA:  BX              LR
