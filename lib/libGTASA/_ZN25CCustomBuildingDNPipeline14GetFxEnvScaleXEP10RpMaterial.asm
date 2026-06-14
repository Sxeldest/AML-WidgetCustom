; =========================================================
; Game Engine Function: _ZN25CCustomBuildingDNPipeline14GetFxEnvScaleXEP10RpMaterial
; Address            : 0x2CADC8 - 0x2CADFA
; =========================================================

2CADC8:  LDR             R1, =(_ZN24CCustomCarEnvMapPipeline21ms_envMapPluginOffsetE_ptr - 0x2CADCE)
2CADCA:  ADD             R1, PC; _ZN24CCustomCarEnvMapPipeline21ms_envMapPluginOffsetE_ptr
2CADCC:  LDR             R1, [R1]; CCustomCarEnvMapPipeline::ms_envMapPluginOffset ...
2CADCE:  LDR             R1, [R1]; CCustomCarEnvMapPipeline::ms_envMapPluginOffset
2CADD0:  LDR             R0, [R0,R1]
2CADD2:  CMP             R0, #0
2CADD4:  ITTT EQ
2CADD6:  VLDREQ          S0, =0.0
2CADDA:  VMOVEQ          R0, S0
2CADDE:  BXEQ            LR
2CADE0:  LDRSB.W         R0, [R0]
2CADE4:  VMOV.F32        S0, #0.125
2CADE8:  VMOV            S2, R0
2CADEC:  VCVT.F32.S32    S2, S2
2CADF0:  VMUL.F32        S0, S2, S0
2CADF4:  VMOV            R0, S0
2CADF8:  BX              LR
