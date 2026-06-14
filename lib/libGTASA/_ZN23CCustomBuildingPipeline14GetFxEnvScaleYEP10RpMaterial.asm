; =========================================================
; Game Engine Function: _ZN23CCustomBuildingPipeline14GetFxEnvScaleYEP10RpMaterial
; Address            : 0x2CB434 - 0x2CB466
; =========================================================

2CB434:  LDR             R1, =(_ZN24CCustomCarEnvMapPipeline21ms_envMapPluginOffsetE_ptr - 0x2CB43A)
2CB436:  ADD             R1, PC; _ZN24CCustomCarEnvMapPipeline21ms_envMapPluginOffsetE_ptr
2CB438:  LDR             R1, [R1]; CCustomCarEnvMapPipeline::ms_envMapPluginOffset ...
2CB43A:  LDR             R1, [R1]; CCustomCarEnvMapPipeline::ms_envMapPluginOffset
2CB43C:  LDR             R0, [R0,R1]
2CB43E:  CMP             R0, #0
2CB440:  ITTT EQ
2CB442:  VLDREQ          S0, =0.0
2CB446:  VMOVEQ          R0, S0
2CB44A:  BXEQ            LR
2CB44C:  LDRSB.W         R0, [R0,#1]
2CB450:  VMOV.F32        S0, #0.125
2CB454:  VMOV            S2, R0
2CB458:  VCVT.F32.S32    S2, S2
2CB45C:  VMUL.F32        S0, S2, S0
2CB460:  VMOV            R0, S0
2CB464:  BX              LR
