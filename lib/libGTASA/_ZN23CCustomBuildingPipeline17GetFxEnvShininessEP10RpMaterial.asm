; =========================================================
; Game Engine Function: _ZN23CCustomBuildingPipeline17GetFxEnvShininessEP10RpMaterial
; Address            : 0x2CB1EC - 0x2CB21C
; =========================================================

2CB1EC:  LDR             R1, =(_ZN24CCustomCarEnvMapPipeline21ms_envMapPluginOffsetE_ptr - 0x2CB1F2)
2CB1EE:  ADD             R1, PC; _ZN24CCustomCarEnvMapPipeline21ms_envMapPluginOffsetE_ptr
2CB1F0:  LDR             R1, [R1]; CCustomCarEnvMapPipeline::ms_envMapPluginOffset ...
2CB1F2:  LDR             R1, [R1]; CCustomCarEnvMapPipeline::ms_envMapPluginOffset
2CB1F4:  LDR             R0, [R0,R1]
2CB1F6:  CMP             R0, #0
2CB1F8:  ITTT EQ
2CB1FA:  VLDREQ          S0, =0.0
2CB1FE:  VMOVEQ          R0, S0
2CB202:  BXEQ            LR
2CB204:  LDRB            R0, [R0,#4]
2CB206:  VLDR            S2, =0.0039216
2CB20A:  VMOV            S0, R0
2CB20E:  VCVT.F32.U32    S0, S0
2CB212:  VMUL.F32        S0, S0, S2
2CB216:  VMOV            R0, S0
2CB21A:  BX              LR
