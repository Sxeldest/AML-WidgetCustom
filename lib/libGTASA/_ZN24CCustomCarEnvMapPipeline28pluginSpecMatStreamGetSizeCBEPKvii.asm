; =========================================================
; Game Engine Function: _ZN24CCustomCarEnvMapPipeline28pluginSpecMatStreamGetSizeCBEPKvii
; Address            : 0x2CCE38 - 0x2CCE48
; =========================================================

2CCE38:  LDR             R0, =(_ZN24CCustomCarEnvMapPipeline26ms_specularMapPluginOffsetE_ptr - 0x2CCE3E)
2CCE3A:  ADD             R0, PC; _ZN24CCustomCarEnvMapPipeline26ms_specularMapPluginOffsetE_ptr
2CCE3C:  LDR             R0, [R0]; CCustomCarEnvMapPipeline::ms_specularMapPluginOffset ...
2CCE3E:  LDR             R0, [R0]; CCustomCarEnvMapPipeline::ms_specularMapPluginOffset
2CCE40:  ADDS            R1, R0, #1
2CCE42:  IT NE
2CCE44:  MOVNE           R0, #0x1C
2CCE46:  BX              LR
