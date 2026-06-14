; =========================================================
; Game Engine Function: _ZN23CCustomBuildingPipeline13SetFxEnvScaleEP10RpMaterialff
; Address            : 0x2CB3AC - 0x2CB3F2
; =========================================================

2CB3AC:  PUSH            {R4,R5,R7,LR}
2CB3AE:  ADD             R7, SP, #8
2CB3B0:  MOV             R4, R1
2CB3B2:  LDR             R1, =(_ZN24CCustomCarEnvMapPipeline21ms_envMapPluginOffsetE_ptr - 0x2CB3BA)
2CB3B4:  MOV             R5, R2
2CB3B6:  ADD             R1, PC; _ZN24CCustomCarEnvMapPipeline21ms_envMapPluginOffsetE_ptr
2CB3B8:  LDR             R1, [R1]; CCustomCarEnvMapPipeline::ms_envMapPluginOffset ...
2CB3BA:  LDR             R1, [R1]; CCustomCarEnvMapPipeline::ms_envMapPluginOffset
2CB3BC:  ADD             R0, R1
2CB3BE:  BLX             j__ZN24CCustomCarEnvMapPipeline37DuplicateCustomEnvMapPipeMaterialDataEPP28CustomEnvMapPipeMaterialData; CCustomCarEnvMapPipeline::DuplicateCustomEnvMapPipeMaterialData(CustomEnvMapPipeMaterialData **)
2CB3C2:  CMP             R0, #0
2CB3C4:  IT EQ
2CB3C6:  POPEQ           {R4,R5,R7,PC}
2CB3C8:  VMOV.F32        S4, #8.0
2CB3CC:  VMOV            S0, R5
2CB3D0:  VMOV            S2, R4
2CB3D4:  VMUL.F32        S0, S0, S4
2CB3D8:  VMUL.F32        S2, S2, S4
2CB3DC:  VCVT.S32.F32    S0, S0
2CB3E0:  VCVT.S32.F32    S2, S2
2CB3E4:  VMOV            R1, S0
2CB3E8:  STRB            R1, [R0,#1]
2CB3EA:  VMOV            R1, S2
2CB3EE:  STRB            R1, [R0]
2CB3F0:  POP             {R4,R5,R7,PC}
