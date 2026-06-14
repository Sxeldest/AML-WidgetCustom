; =========================================================
; Game Engine Function: _ZN24CCustomCarEnvMapPipeline17GetFxEnvShininessEP10RpMaterial
; Address            : 0x2CB750 - 0x2CB780
; =========================================================

2CB750:  LDR             R1, =(_ZN24CCustomCarEnvMapPipeline21ms_envMapPluginOffsetE_ptr - 0x2CB756)
2CB752:  ADD             R1, PC; _ZN24CCustomCarEnvMapPipeline21ms_envMapPluginOffsetE_ptr
2CB754:  LDR             R1, [R1]; CCustomCarEnvMapPipeline::ms_envMapPluginOffset ...
2CB756:  LDR             R1, [R1]; CCustomCarEnvMapPipeline::ms_envMapPluginOffset
2CB758:  LDR             R0, [R0,R1]
2CB75A:  CMP             R0, #0
2CB75C:  ITTT EQ
2CB75E:  VLDREQ          S0, =0.0
2CB762:  VMOVEQ          R0, S0
2CB766:  BXEQ            LR
2CB768:  LDRB            R0, [R0,#4]
2CB76A:  VLDR            S2, =0.0039216
2CB76E:  VMOV            S0, R0
2CB772:  VCVT.F32.U32    S0, S0
2CB776:  VMUL.F32        S0, S0, S2
2CB77A:  VMOV            R0, S0
2CB77E:  BX              LR
