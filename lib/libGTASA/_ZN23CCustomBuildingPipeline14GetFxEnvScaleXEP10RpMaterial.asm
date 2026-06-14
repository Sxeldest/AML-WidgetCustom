; =========================================================
; Game Engine Function: _ZN23CCustomBuildingPipeline14GetFxEnvScaleXEP10RpMaterial
; Address            : 0x2CB3F8 - 0x2CB42A
; =========================================================

2CB3F8:  LDR             R1, =(_ZN24CCustomCarEnvMapPipeline21ms_envMapPluginOffsetE_ptr - 0x2CB3FE)
2CB3FA:  ADD             R1, PC; _ZN24CCustomCarEnvMapPipeline21ms_envMapPluginOffsetE_ptr
2CB3FC:  LDR             R1, [R1]; CCustomCarEnvMapPipeline::ms_envMapPluginOffset ...
2CB3FE:  LDR             R1, [R1]; CCustomCarEnvMapPipeline::ms_envMapPluginOffset
2CB400:  LDR             R0, [R0,R1]
2CB402:  CMP             R0, #0
2CB404:  ITTT EQ
2CB406:  VLDREQ          S0, =0.0
2CB40A:  VMOVEQ          R0, S0
2CB40E:  BXEQ            LR
2CB410:  LDRSB.W         R0, [R0]
2CB414:  VMOV.F32        S0, #0.125
2CB418:  VMOV            S2, R0
2CB41C:  VCVT.F32.S32    S2, S2
2CB420:  VMUL.F32        S0, S2, S0
2CB424:  VMOV            R0, S0
2CB428:  BX              LR
