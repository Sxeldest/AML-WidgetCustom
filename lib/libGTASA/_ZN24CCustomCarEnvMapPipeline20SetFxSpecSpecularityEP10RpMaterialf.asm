; =========================================================
; Game Engine Function: _ZN24CCustomCarEnvMapPipeline20SetFxSpecSpecularityEP10RpMaterialf
; Address            : 0x2CC670 - 0x2CC688
; =========================================================

2CC670:  LDR             R2, =(_ZN24CCustomCarEnvMapPipeline26ms_specularMapPluginOffsetE_ptr - 0x2CC676)
2CC672:  ADD             R2, PC; _ZN24CCustomCarEnvMapPipeline26ms_specularMapPluginOffsetE_ptr
2CC674:  LDR             R2, [R2]; CCustomCarEnvMapPipeline::ms_specularMapPluginOffset ...
2CC676:  LDR             R2, [R2]; CCustomCarEnvMapPipeline::ms_specularMapPluginOffset
2CC678:  LDR             R0, [R0,R2]
2CC67A:  CMP             R0, #0
2CC67C:  ITT NE
2CC67E:  VMOVNE          S0, R1
2CC682:  VSTRNE          S0, [R0]
2CC686:  BX              LR
