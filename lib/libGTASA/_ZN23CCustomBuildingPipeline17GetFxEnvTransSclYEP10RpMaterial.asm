; =========================================================
; Game Engine Function: _ZN23CCustomBuildingPipeline17GetFxEnvTransSclYEP10RpMaterial
; Address            : 0x2CB4F8 - 0x2CB52A
; =========================================================

2CB4F8:  LDR             R1, =(_ZN24CCustomCarEnvMapPipeline21ms_envMapPluginOffsetE_ptr - 0x2CB4FE)
2CB4FA:  ADD             R1, PC; _ZN24CCustomCarEnvMapPipeline21ms_envMapPluginOffsetE_ptr
2CB4FC:  LDR             R1, [R1]; CCustomCarEnvMapPipeline::ms_envMapPluginOffset ...
2CB4FE:  LDR             R1, [R1]; CCustomCarEnvMapPipeline::ms_envMapPluginOffset
2CB500:  LDR             R0, [R0,R1]
2CB502:  CMP             R0, #0
2CB504:  ITTT EQ
2CB506:  VLDREQ          S0, =0.0
2CB50A:  VMOVEQ          R0, S0
2CB50E:  BXEQ            LR
2CB510:  LDRSB.W         R0, [R0,#3]
2CB514:  VMOV.F32        S0, #0.125
2CB518:  VMOV            S2, R0
2CB51C:  VCVT.F32.S32    S2, S2
2CB520:  VMUL.F32        S0, S2, S0
2CB524:  VMOV            R0, S0
2CB528:  BX              LR
