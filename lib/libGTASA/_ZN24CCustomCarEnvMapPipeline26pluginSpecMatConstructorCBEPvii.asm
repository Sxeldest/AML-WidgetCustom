; =========================================================
; Game Engine Function: _ZN24CCustomCarEnvMapPipeline26pluginSpecMatConstructorCBEPvii
; Address            : 0x2CCBCC - 0x2CCBDA
; =========================================================

2CCBCC:  LDR             R1, =(_ZN24CCustomCarEnvMapPipeline26ms_specularMapPluginOffsetE_ptr - 0x2CCBD4)
2CCBCE:  MOVS            R2, #0
2CCBD0:  ADD             R1, PC; _ZN24CCustomCarEnvMapPipeline26ms_specularMapPluginOffsetE_ptr
2CCBD2:  LDR             R1, [R1]; CCustomCarEnvMapPipeline::ms_specularMapPluginOffset ...
2CCBD4:  LDR             R1, [R1]; CCustomCarEnvMapPipeline::ms_specularMapPluginOffset
2CCBD6:  STR             R2, [R0,R1]
2CCBD8:  BX              LR
