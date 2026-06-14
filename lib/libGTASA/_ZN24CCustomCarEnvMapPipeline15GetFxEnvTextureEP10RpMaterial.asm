; =========================================================
; Game Engine Function: _ZN24CCustomCarEnvMapPipeline15GetFxEnvTextureEP10RpMaterial
; Address            : 0x2CB78C - 0x2CB7A0
; =========================================================

2CB78C:  LDR             R1, =(_ZN24CCustomCarEnvMapPipeline21ms_envMapPluginOffsetE_ptr - 0x2CB792)
2CB78E:  ADD             R1, PC; _ZN24CCustomCarEnvMapPipeline21ms_envMapPluginOffsetE_ptr
2CB790:  LDR             R1, [R1]; CCustomCarEnvMapPipeline::ms_envMapPluginOffset ...
2CB792:  LDR             R1, [R1]; CCustomCarEnvMapPipeline::ms_envMapPluginOffset
2CB794:  LDR             R0, [R0,R1]
2CB796:  CMP             R0, #0
2CB798:  ITE NE
2CB79A:  LDRNE           R0, [R0,#8]
2CB79C:  MOVEQ           R0, #0
2CB79E:  BX              LR
