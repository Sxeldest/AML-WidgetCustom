; =========================================================
; Game Engine Function: _ZN25CCustomBuildingDNPipeline13SetFxEnvScaleEP10RpMaterialff
; Address            : 0x2CAD7C - 0x2CADC2
; =========================================================

2CAD7C:  PUSH            {R4,R5,R7,LR}
2CAD7E:  ADD             R7, SP, #8
2CAD80:  MOV             R4, R1
2CAD82:  LDR             R1, =(_ZN24CCustomCarEnvMapPipeline21ms_envMapPluginOffsetE_ptr - 0x2CAD8A)
2CAD84:  MOV             R5, R2
2CAD86:  ADD             R1, PC; _ZN24CCustomCarEnvMapPipeline21ms_envMapPluginOffsetE_ptr
2CAD88:  LDR             R1, [R1]; CCustomCarEnvMapPipeline::ms_envMapPluginOffset ...
2CAD8A:  LDR             R1, [R1]; CCustomCarEnvMapPipeline::ms_envMapPluginOffset
2CAD8C:  ADD             R0, R1
2CAD8E:  BLX             j__ZN24CCustomCarEnvMapPipeline37DuplicateCustomEnvMapPipeMaterialDataEPP28CustomEnvMapPipeMaterialData; CCustomCarEnvMapPipeline::DuplicateCustomEnvMapPipeMaterialData(CustomEnvMapPipeMaterialData **)
2CAD92:  CMP             R0, #0
2CAD94:  IT EQ
2CAD96:  POPEQ           {R4,R5,R7,PC}
2CAD98:  VMOV.F32        S4, #8.0
2CAD9C:  VMOV            S0, R5
2CADA0:  VMOV            S2, R4
2CADA4:  VMUL.F32        S0, S0, S4
2CADA8:  VMUL.F32        S2, S2, S4
2CADAC:  VCVT.S32.F32    S0, S0
2CADB0:  VCVT.S32.F32    S2, S2
2CADB4:  VMOV            R1, S0
2CADB8:  STRB            R1, [R0,#1]
2CADBA:  VMOV            R1, S2
2CADBE:  STRB            R1, [R0]
2CADC0:  POP             {R4,R5,R7,PC}
