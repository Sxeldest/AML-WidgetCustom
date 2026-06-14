; =========================================================
; Game Engine Function: _ZN25CCustomBuildingDNPipeline17GetFxEnvShininessEP10RpMaterial
; Address            : 0x2CA5B4 - 0x2CA5E4
; =========================================================

2CA5B4:  LDR             R1, =(_ZN24CCustomCarEnvMapPipeline21ms_envMapPluginOffsetE_ptr - 0x2CA5BA)
2CA5B6:  ADD             R1, PC; _ZN24CCustomCarEnvMapPipeline21ms_envMapPluginOffsetE_ptr
2CA5B8:  LDR             R1, [R1]; CCustomCarEnvMapPipeline::ms_envMapPluginOffset ...
2CA5BA:  LDR             R1, [R1]; CCustomCarEnvMapPipeline::ms_envMapPluginOffset
2CA5BC:  LDR             R0, [R0,R1]
2CA5BE:  CMP             R0, #0
2CA5C0:  ITTT EQ
2CA5C2:  VLDREQ          S0, =0.0
2CA5C6:  VMOVEQ          R0, S0
2CA5CA:  BXEQ            LR
2CA5CC:  LDRB            R0, [R0,#4]
2CA5CE:  VLDR            S2, =0.0039216
2CA5D2:  VMOV            S0, R0
2CA5D6:  VCVT.F32.U32    S0, S0
2CA5DA:  VMUL.F32        S0, S0, S2
2CA5DE:  VMOV            R0, S0
2CA5E2:  BX              LR
