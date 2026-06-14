; =========================================================
; Game Engine Function: _ZN25CCustomBuildingDNPipeline15GetFxEnvTextureEP10RpMaterial
; Address            : 0x2CA5F0 - 0x2CA604
; =========================================================

2CA5F0:  LDR             R1, =(_ZN24CCustomCarEnvMapPipeline21ms_envMapPluginOffsetE_ptr - 0x2CA5F6)
2CA5F2:  ADD             R1, PC; _ZN24CCustomCarEnvMapPipeline21ms_envMapPluginOffsetE_ptr
2CA5F4:  LDR             R1, [R1]; CCustomCarEnvMapPipeline::ms_envMapPluginOffset ...
2CA5F6:  LDR             R1, [R1]; CCustomCarEnvMapPipeline::ms_envMapPluginOffset
2CA5F8:  LDR             R0, [R0,R1]
2CA5FA:  CMP             R0, #0
2CA5FC:  ITE NE
2CA5FE:  LDRNE           R0, [R0,#8]
2CA600:  MOVEQ           R0, #0
2CA602:  BX              LR
