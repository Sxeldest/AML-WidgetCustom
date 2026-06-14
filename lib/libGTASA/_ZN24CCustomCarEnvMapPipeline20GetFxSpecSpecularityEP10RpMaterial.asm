; =========================================================
; Game Engine Function: _ZN24CCustomCarEnvMapPipeline20GetFxSpecSpecularityEP10RpMaterial
; Address            : 0x2CB7A4 - 0x2CB7C0
; =========================================================

2CB7A4:  LDR             R1, =(_ZN24CCustomCarEnvMapPipeline26ms_specularMapPluginOffsetE_ptr - 0x2CB7AA)
2CB7A6:  ADD             R1, PC; _ZN24CCustomCarEnvMapPipeline26ms_specularMapPluginOffsetE_ptr
2CB7A8:  LDR             R1, [R1]; CCustomCarEnvMapPipeline::ms_specularMapPluginOffset ...
2CB7AA:  LDR             R1, [R1]; CCustomCarEnvMapPipeline::ms_specularMapPluginOffset
2CB7AC:  LDR             R0, [R0,R1]
2CB7AE:  CMP             R0, #0
2CB7B0:  ITE NE
2CB7B2:  VLDRNE          S0, [R0]
2CB7B6:  VLDREQ          S0, =0.0
2CB7BA:  VMOV            R0, S0
2CB7BE:  BX              LR
