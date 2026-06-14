; =========================================================
; Game Engine Function: _ZN25CCustomBuildingDNPipeline16SetFxEnvTransSclEP10RpMaterialff
; Address            : 0x2CAE40 - 0x2CAE86
; =========================================================

2CAE40:  PUSH            {R4,R5,R7,LR}
2CAE42:  ADD             R7, SP, #8
2CAE44:  MOV             R4, R1
2CAE46:  LDR             R1, =(_ZN24CCustomCarEnvMapPipeline21ms_envMapPluginOffsetE_ptr - 0x2CAE4E)
2CAE48:  MOV             R5, R2
2CAE4A:  ADD             R1, PC; _ZN24CCustomCarEnvMapPipeline21ms_envMapPluginOffsetE_ptr
2CAE4C:  LDR             R1, [R1]; CCustomCarEnvMapPipeline::ms_envMapPluginOffset ...
2CAE4E:  LDR             R1, [R1]; CCustomCarEnvMapPipeline::ms_envMapPluginOffset
2CAE50:  ADD             R0, R1
2CAE52:  BLX             j__ZN24CCustomCarEnvMapPipeline37DuplicateCustomEnvMapPipeMaterialDataEPP28CustomEnvMapPipeMaterialData; CCustomCarEnvMapPipeline::DuplicateCustomEnvMapPipeMaterialData(CustomEnvMapPipeMaterialData **)
2CAE56:  CMP             R0, #0
2CAE58:  IT EQ
2CAE5A:  POPEQ           {R4,R5,R7,PC}
2CAE5C:  VMOV.F32        S4, #8.0
2CAE60:  VMOV            S0, R5
2CAE64:  VMOV            S2, R4
2CAE68:  VMUL.F32        S0, S0, S4
2CAE6C:  VMUL.F32        S2, S2, S4
2CAE70:  VCVT.S32.F32    S0, S0
2CAE74:  VCVT.S32.F32    S2, S2
2CAE78:  VMOV            R1, S0
2CAE7C:  STRB            R1, [R0,#3]
2CAE7E:  VMOV            R1, S2
2CAE82:  STRB            R1, [R0,#2]
2CAE84:  POP             {R4,R5,R7,PC}
