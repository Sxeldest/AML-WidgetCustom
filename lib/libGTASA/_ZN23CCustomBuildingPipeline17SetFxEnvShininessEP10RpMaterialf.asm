; =========================================================
; Game Engine Function: _ZN23CCustomBuildingPipeline17SetFxEnvShininessEP10RpMaterialf
; Address            : 0x2CB534 - 0x2CB566
; =========================================================

2CB534:  PUSH            {R4,R6,R7,LR}
2CB536:  ADD             R7, SP, #8
2CB538:  MOV             R4, R1
2CB53A:  LDR             R1, =(_ZN24CCustomCarEnvMapPipeline21ms_envMapPluginOffsetE_ptr - 0x2CB540)
2CB53C:  ADD             R1, PC; _ZN24CCustomCarEnvMapPipeline21ms_envMapPluginOffsetE_ptr
2CB53E:  LDR             R1, [R1]; CCustomCarEnvMapPipeline::ms_envMapPluginOffset ...
2CB540:  LDR             R1, [R1]; CCustomCarEnvMapPipeline::ms_envMapPluginOffset
2CB542:  ADD             R0, R1
2CB544:  BLX             j__ZN24CCustomCarEnvMapPipeline37DuplicateCustomEnvMapPipeMaterialDataEPP28CustomEnvMapPipeMaterialData; CCustomCarEnvMapPipeline::DuplicateCustomEnvMapPipeMaterialData(CustomEnvMapPipeMaterialData **)
2CB548:  CMP             R0, #0
2CB54A:  ITTTT NE
2CB54C:  VMOVNE          S0, R4
2CB550:  VLDRNE          S2, =255.0
2CB554:  VMULNE.F32      S0, S0, S2
2CB558:  VCVTNE.U32.F32  S0, S0
2CB55C:  ITT NE
2CB55E:  VMOVNE          R1, S0
2CB562:  STRBNE          R1, [R0,#4]
2CB564:  POP             {R4,R6,R7,PC}
