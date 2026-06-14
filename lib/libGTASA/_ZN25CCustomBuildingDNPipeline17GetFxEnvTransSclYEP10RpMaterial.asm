; =========================================================
; Game Engine Function: _ZN25CCustomBuildingDNPipeline17GetFxEnvTransSclYEP10RpMaterial
; Address            : 0x2CAEC8 - 0x2CAEFA
; =========================================================

2CAEC8:  LDR             R1, =(_ZN24CCustomCarEnvMapPipeline21ms_envMapPluginOffsetE_ptr - 0x2CAECE)
2CAECA:  ADD             R1, PC; _ZN24CCustomCarEnvMapPipeline21ms_envMapPluginOffsetE_ptr
2CAECC:  LDR             R1, [R1]; CCustomCarEnvMapPipeline::ms_envMapPluginOffset ...
2CAECE:  LDR             R1, [R1]; CCustomCarEnvMapPipeline::ms_envMapPluginOffset
2CAED0:  LDR             R0, [R0,R1]
2CAED2:  CMP             R0, #0
2CAED4:  ITTT EQ
2CAED6:  VLDREQ          S0, =0.0
2CAEDA:  VMOVEQ          R0, S0
2CAEDE:  BXEQ            LR
2CAEE0:  LDRSB.W         R0, [R0,#3]
2CAEE4:  VMOV.F32        S0, #0.125
2CAEE8:  VMOV            S2, R0
2CAEEC:  VCVT.F32.S32    S2, S2
2CAEF0:  VMUL.F32        S0, S2, S0
2CAEF4:  VMOV            R0, S0
2CAEF8:  BX              LR
