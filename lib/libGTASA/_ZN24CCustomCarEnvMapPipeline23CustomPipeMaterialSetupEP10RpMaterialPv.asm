; =========================================================
; Game Engine Function: _ZN24CCustomCarEnvMapPipeline23CustomPipeMaterialSetupEP10RpMaterialPv
; Address            : 0x2CB574 - 0x2CB5FE
; =========================================================

2CB574:  PUSH            {R4,R6,R7,LR}
2CB576:  ADD             R7, SP, #8
2CB578:  MOV             R4, R0
2CB57A:  MOVS            R0, #0
2CB57C:  STR             R0, [R4,#0x10]
2CB57E:  MOV             R0, R4
2CB580:  BLX             j__Z25RpMatFXMaterialGetEffectsPK10RpMaterial; RpMatFXMaterialGetEffects(RpMaterial const*)
2CB584:  CMP             R0, #2
2CB586:  BNE             loc_2CB590
2CB588:  MOV             R0, R4
2CB58A:  MOVS            R1, #0
2CB58C:  BLX             j__ZN24CCustomCarEnvMapPipeline15SetFxEnvTextureEP10RpMaterialP9RwTexture; CCustomCarEnvMapPipeline::SetFxEnvTexture(RpMaterial *,RwTexture *)
2CB590:  LDR             R0, =(_ZN24CCustomCarEnvMapPipeline21ms_envMapPluginOffsetE_ptr - 0x2CB596)
2CB592:  ADD             R0, PC; _ZN24CCustomCarEnvMapPipeline21ms_envMapPluginOffsetE_ptr
2CB594:  LDR             R0, [R0]; CCustomCarEnvMapPipeline::ms_envMapPluginOffset ...
2CB596:  LDR             R0, [R0]; CCustomCarEnvMapPipeline::ms_envMapPluginOffset
2CB598:  LDR             R0, [R4,R0]
2CB59A:  CBZ             R0, loc_2CB5C8
2CB59C:  LDRB            R1, [R0,#4]
2CB59E:  VLDR            S2, =0.0039216
2CB5A2:  VMOV            S0, R1
2CB5A6:  VCVT.F32.U32    S0, S0
2CB5AA:  VMUL.F32        S0, S0, S2
2CB5AE:  VCMP.F32        S0, #0.0
2CB5B2:  VMRS            APSR_nzcv, FPSCR
2CB5B6:  BEQ             loc_2CB5C8
2CB5B8:  LDR             R0, [R0,#8]
2CB5BA:  CBZ             R0, loc_2CB5C8
2CB5BC:  LDRB            R1, [R0,#0x10]
2CB5BE:  MOVS            R0, #1
2CB5C0:  CMP             R1, #0x78 ; 'x'
2CB5C2:  IT EQ
2CB5C4:  MOVEQ           R0, #2
2CB5C6:  B               loc_2CB5CA
2CB5C8:  MOVS            R0, #0
2CB5CA:  LDR             R1, =(_ZN24CCustomCarEnvMapPipeline26ms_specularMapPluginOffsetE_ptr - 0x2CB5D0)
2CB5CC:  ADD             R1, PC; _ZN24CCustomCarEnvMapPipeline26ms_specularMapPluginOffsetE_ptr
2CB5CE:  LDR             R1, [R1]; CCustomCarEnvMapPipeline::ms_specularMapPluginOffset ...
2CB5D0:  LDR             R1, [R1]; CCustomCarEnvMapPipeline::ms_specularMapPluginOffset
2CB5D2:  LDR             R1, [R4,R1]
2CB5D4:  CMP             R1, #0
2CB5D6:  ITTT NE
2CB5D8:  VLDRNE          S0, [R1]
2CB5DC:  VCMPNE.F32      S0, #0.0
2CB5E0:  VMRSNE          APSR_nzcv, FPSCR
2CB5E4:  BEQ             loc_2CB5F0
2CB5E6:  LDR             R1, [R1,#4]
2CB5E8:  CMP             R1, #0
2CB5EA:  IT NE
2CB5EC:  ORRNE.W         R0, R0, #4
2CB5F0:  LDR             R1, [R4,#0x10]
2CB5F2:  BIC.W           R1, R1, #7
2CB5F6:  ORRS            R0, R1
2CB5F8:  STR             R0, [R4,#0x10]
2CB5FA:  MOV             R0, R4
2CB5FC:  POP             {R4,R6,R7,PC}
