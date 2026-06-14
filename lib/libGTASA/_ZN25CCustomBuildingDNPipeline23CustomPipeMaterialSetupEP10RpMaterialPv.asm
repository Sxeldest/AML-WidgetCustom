; =========================================================
; Game Engine Function: _ZN25CCustomBuildingDNPipeline23CustomPipeMaterialSetupEP10RpMaterialPv
; Address            : 0x2CA4D8 - 0x2CA558
; =========================================================

2CA4D8:  PUSH            {R4,R6,R7,LR}
2CA4DA:  ADD             R7, SP, #8
2CA4DC:  MOV             R4, R0
2CA4DE:  MOVS            R0, #0
2CA4E0:  STR             R0, [R4,#0x10]
2CA4E2:  MOV             R0, R4
2CA4E4:  BLX             j__Z25RpMatFXMaterialGetEffectsPK10RpMaterial; RpMatFXMaterialGetEffects(RpMaterial const*)
2CA4E8:  CMP             R0, #2
2CA4EA:  BNE             loc_2CA516
2CA4EC:  LDR             R0, =(_ZN24CCustomCarEnvMapPipeline21ms_envMapPluginOffsetE_ptr - 0x2CA4F2)
2CA4EE:  ADD             R0, PC; _ZN24CCustomCarEnvMapPipeline21ms_envMapPluginOffsetE_ptr
2CA4F0:  LDR             R0, [R0]; CCustomCarEnvMapPipeline::ms_envMapPluginOffset ...
2CA4F2:  LDR             R0, [R0]; CCustomCarEnvMapPipeline::ms_envMapPluginOffset
2CA4F4:  ADD             R0, R4
2CA4F6:  BLX             j__ZN24CCustomCarEnvMapPipeline37DuplicateCustomEnvMapPipeMaterialDataEPP28CustomEnvMapPipeMaterialData; CCustomCarEnvMapPipeline::DuplicateCustomEnvMapPipeMaterialData(CustomEnvMapPipeMaterialData **)
2CA4FA:  CBZ             R0, loc_2CA516
2CA4FC:  LDR             R1, =(MatFXMaterialDataOffset_ptr - 0x2CA502)
2CA4FE:  ADD             R1, PC; MatFXMaterialDataOffset_ptr
2CA500:  LDR             R1, [R1]; MatFXMaterialDataOffset
2CA502:  LDR             R1, [R1]
2CA504:  LDR             R1, [R4,R1]
2CA506:  LDR             R1, [R1,#4]
2CA508:  STR             R1, [R0,#8]
2CA50A:  CMP             R1, #0
2CA50C:  ITT NE
2CA50E:  MOVWNE          R0, #0x1102
2CA512:  STRHNE.W        R0, [R1,#0x50]
2CA516:  LDR             R0, =(_ZN24CCustomCarEnvMapPipeline21ms_envMapPluginOffsetE_ptr - 0x2CA51C)
2CA518:  ADD             R0, PC; _ZN24CCustomCarEnvMapPipeline21ms_envMapPluginOffsetE_ptr
2CA51A:  LDR             R0, [R0]; CCustomCarEnvMapPipeline::ms_envMapPluginOffset ...
2CA51C:  LDR             R0, [R0]; CCustomCarEnvMapPipeline::ms_envMapPluginOffset
2CA51E:  LDR             R0, [R4,R0]
2CA520:  CBZ             R0, loc_2CA548
2CA522:  LDRB            R1, [R0,#4]
2CA524:  VLDR            S2, =0.0039216
2CA528:  VMOV            S0, R1
2CA52C:  VCVT.F32.U32    S0, S0
2CA530:  VMUL.F32        S0, S0, S2
2CA534:  VCMP.F32        S0, #0.0
2CA538:  VMRS            APSR_nzcv, FPSCR
2CA53C:  BEQ             loc_2CA548
2CA53E:  LDR             R0, [R0,#8]
2CA540:  CMP             R0, #0
2CA542:  IT NE
2CA544:  MOVNE           R0, #1
2CA546:  B               loc_2CA54A
2CA548:  MOVS            R0, #0
2CA54A:  LDR             R1, [R4,#0x10]
2CA54C:  BIC.W           R1, R1, #7
2CA550:  ORRS            R0, R1
2CA552:  STR             R0, [R4,#0x10]
2CA554:  MOV             R0, R4
2CA556:  POP             {R4,R6,R7,PC}
