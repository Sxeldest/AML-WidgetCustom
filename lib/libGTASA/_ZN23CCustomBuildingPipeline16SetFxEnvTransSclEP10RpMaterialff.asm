; =========================================================
; Game Engine Function: _ZN23CCustomBuildingPipeline16SetFxEnvTransSclEP10RpMaterialff
; Address            : 0x2CB470 - 0x2CB4B6
; =========================================================

2CB470:  PUSH            {R4,R5,R7,LR}
2CB472:  ADD             R7, SP, #8
2CB474:  MOV             R4, R1
2CB476:  LDR             R1, =(_ZN24CCustomCarEnvMapPipeline21ms_envMapPluginOffsetE_ptr - 0x2CB47E)
2CB478:  MOV             R5, R2
2CB47A:  ADD             R1, PC; _ZN24CCustomCarEnvMapPipeline21ms_envMapPluginOffsetE_ptr
2CB47C:  LDR             R1, [R1]; CCustomCarEnvMapPipeline::ms_envMapPluginOffset ...
2CB47E:  LDR             R1, [R1]; CCustomCarEnvMapPipeline::ms_envMapPluginOffset
2CB480:  ADD             R0, R1
2CB482:  BLX             j__ZN24CCustomCarEnvMapPipeline37DuplicateCustomEnvMapPipeMaterialDataEPP28CustomEnvMapPipeMaterialData; CCustomCarEnvMapPipeline::DuplicateCustomEnvMapPipeMaterialData(CustomEnvMapPipeMaterialData **)
2CB486:  CMP             R0, #0
2CB488:  IT EQ
2CB48A:  POPEQ           {R4,R5,R7,PC}
2CB48C:  VMOV.F32        S4, #8.0
2CB490:  VMOV            S0, R5
2CB494:  VMOV            S2, R4
2CB498:  VMUL.F32        S0, S0, S4
2CB49C:  VMUL.F32        S2, S2, S4
2CB4A0:  VCVT.S32.F32    S0, S0
2CB4A4:  VCVT.S32.F32    S2, S2
2CB4A8:  VMOV            R1, S0
2CB4AC:  STRB            R1, [R0,#3]
2CB4AE:  VMOV            R1, S2
2CB4B2:  STRB            R1, [R0,#2]
2CB4B4:  POP             {R4,R5,R7,PC}
