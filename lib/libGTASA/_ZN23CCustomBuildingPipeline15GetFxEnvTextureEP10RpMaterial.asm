; =========================================================
; Game Engine Function: _ZN23CCustomBuildingPipeline15GetFxEnvTextureEP10RpMaterial
; Address            : 0x2CB228 - 0x2CB23C
; =========================================================

2CB228:  LDR             R1, =(_ZN24CCustomCarEnvMapPipeline21ms_envMapPluginOffsetE_ptr - 0x2CB22E)
2CB22A:  ADD             R1, PC; _ZN24CCustomCarEnvMapPipeline21ms_envMapPluginOffsetE_ptr
2CB22C:  LDR             R1, [R1]; CCustomCarEnvMapPipeline::ms_envMapPluginOffset ...
2CB22E:  LDR             R1, [R1]; CCustomCarEnvMapPipeline::ms_envMapPluginOffset
2CB230:  LDR             R0, [R0,R1]
2CB232:  CMP             R0, #0
2CB234:  ITE NE
2CB236:  LDRNE           R0, [R0,#8]
2CB238:  MOVEQ           R0, #0
2CB23A:  BX              LR
