; =========================================================
; Game Engine Function: _ZN25CCustomBuildingDNPipeline17GetFxEnvTransSclXEP10RpMaterial
; Address            : 0x2CAE8C - 0x2CAEBE
; =========================================================

2CAE8C:  LDR             R1, =(_ZN24CCustomCarEnvMapPipeline21ms_envMapPluginOffsetE_ptr - 0x2CAE92)
2CAE8E:  ADD             R1, PC; _ZN24CCustomCarEnvMapPipeline21ms_envMapPluginOffsetE_ptr
2CAE90:  LDR             R1, [R1]; CCustomCarEnvMapPipeline::ms_envMapPluginOffset ...
2CAE92:  LDR             R1, [R1]; CCustomCarEnvMapPipeline::ms_envMapPluginOffset
2CAE94:  LDR             R0, [R0,R1]
2CAE96:  CMP             R0, #0
2CAE98:  ITTT EQ
2CAE9A:  VLDREQ          S0, =0.0
2CAE9E:  VMOVEQ          R0, S0
2CAEA2:  BXEQ            LR
2CAEA4:  LDRSB.W         R0, [R0,#2]
2CAEA8:  VMOV.F32        S0, #0.125
2CAEAC:  VMOV            S2, R0
2CAEB0:  VCVT.F32.S32    S2, S2
2CAEB4:  VMUL.F32        S0, S2, S0
2CAEB8:  VMOV            R0, S0
2CAEBC:  BX              LR
