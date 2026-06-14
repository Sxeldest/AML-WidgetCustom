; =========================================================
; Game Engine Function: _ZN25CCustomBuildingDNPipeline14GetFxEnvScaleYEP10RpMaterial
; Address            : 0x2CAE04 - 0x2CAE36
; =========================================================

2CAE04:  LDR             R1, =(_ZN24CCustomCarEnvMapPipeline21ms_envMapPluginOffsetE_ptr - 0x2CAE0A)
2CAE06:  ADD             R1, PC; _ZN24CCustomCarEnvMapPipeline21ms_envMapPluginOffsetE_ptr
2CAE08:  LDR             R1, [R1]; CCustomCarEnvMapPipeline::ms_envMapPluginOffset ...
2CAE0A:  LDR             R1, [R1]; CCustomCarEnvMapPipeline::ms_envMapPluginOffset
2CAE0C:  LDR             R0, [R0,R1]
2CAE0E:  CMP             R0, #0
2CAE10:  ITTT EQ
2CAE12:  VLDREQ          S0, =0.0
2CAE16:  VMOVEQ          R0, S0
2CAE1A:  BXEQ            LR
2CAE1C:  LDRSB.W         R0, [R0,#1]
2CAE20:  VMOV.F32        S0, #0.125
2CAE24:  VMOV            S2, R0
2CAE28:  VCVT.F32.S32    S2, S2
2CAE2C:  VMUL.F32        S0, S2, S0
2CAE30:  VMOV            R0, S0
2CAE34:  BX              LR
