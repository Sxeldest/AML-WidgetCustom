; =========================================================
; Game Engine Function: _ZN24CCustomCarEnvMapPipeline17GetFxEnvTransSclXEP10RpMaterial
; Address            : 0x2CC4F0 - 0x2CC522
; =========================================================

2CC4F0:  LDR             R1, =(_ZN24CCustomCarEnvMapPipeline21ms_envMapPluginOffsetE_ptr - 0x2CC4F6)
2CC4F2:  ADD             R1, PC; _ZN24CCustomCarEnvMapPipeline21ms_envMapPluginOffsetE_ptr
2CC4F4:  LDR             R1, [R1]; CCustomCarEnvMapPipeline::ms_envMapPluginOffset ...
2CC4F6:  LDR             R1, [R1]; CCustomCarEnvMapPipeline::ms_envMapPluginOffset
2CC4F8:  LDR             R0, [R0,R1]
2CC4FA:  CMP             R0, #0
2CC4FC:  ITTT EQ
2CC4FE:  VLDREQ          S0, =0.0
2CC502:  VMOVEQ          R0, S0
2CC506:  BXEQ            LR
2CC508:  LDRSB.W         R0, [R0,#2]
2CC50C:  VMOV.F32        S0, #0.125
2CC510:  VMOV            S2, R0
2CC514:  VCVT.F32.S32    S2, S2
2CC518:  VMUL.F32        S0, S2, S0
2CC51C:  VMOV            R0, S0
2CC520:  BX              LR
