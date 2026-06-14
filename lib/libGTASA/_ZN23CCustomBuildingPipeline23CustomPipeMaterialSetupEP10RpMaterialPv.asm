; =========================================================
; Game Engine Function: _ZN23CCustomBuildingPipeline23CustomPipeMaterialSetupEP10RpMaterialPv
; Address            : 0x2CB110 - 0x2CB190
; =========================================================

2CB110:  PUSH            {R4,R6,R7,LR}
2CB112:  ADD             R7, SP, #8
2CB114:  MOV             R4, R0
2CB116:  MOVS            R0, #0
2CB118:  STR             R0, [R4,#0x10]
2CB11A:  MOV             R0, R4
2CB11C:  BLX             j__Z25RpMatFXMaterialGetEffectsPK10RpMaterial; RpMatFXMaterialGetEffects(RpMaterial const*)
2CB120:  CMP             R0, #2
2CB122:  BNE             loc_2CB14E
2CB124:  LDR             R0, =(_ZN24CCustomCarEnvMapPipeline21ms_envMapPluginOffsetE_ptr - 0x2CB12A)
2CB126:  ADD             R0, PC; _ZN24CCustomCarEnvMapPipeline21ms_envMapPluginOffsetE_ptr
2CB128:  LDR             R0, [R0]; CCustomCarEnvMapPipeline::ms_envMapPluginOffset ...
2CB12A:  LDR             R0, [R0]; CCustomCarEnvMapPipeline::ms_envMapPluginOffset
2CB12C:  ADD             R0, R4
2CB12E:  BLX             j__ZN24CCustomCarEnvMapPipeline37DuplicateCustomEnvMapPipeMaterialDataEPP28CustomEnvMapPipeMaterialData; CCustomCarEnvMapPipeline::DuplicateCustomEnvMapPipeMaterialData(CustomEnvMapPipeMaterialData **)
2CB132:  CBZ             R0, loc_2CB14E
2CB134:  LDR             R1, =(MatFXMaterialDataOffset_ptr - 0x2CB13A)
2CB136:  ADD             R1, PC; MatFXMaterialDataOffset_ptr
2CB138:  LDR             R1, [R1]; MatFXMaterialDataOffset
2CB13A:  LDR             R1, [R1]
2CB13C:  LDR             R1, [R4,R1]
2CB13E:  LDR             R1, [R1,#4]
2CB140:  STR             R1, [R0,#8]
2CB142:  CMP             R1, #0
2CB144:  ITT NE
2CB146:  MOVWNE          R0, #0x1102
2CB14A:  STRHNE.W        R0, [R1,#0x50]
2CB14E:  LDR             R0, =(_ZN24CCustomCarEnvMapPipeline21ms_envMapPluginOffsetE_ptr - 0x2CB154)
2CB150:  ADD             R0, PC; _ZN24CCustomCarEnvMapPipeline21ms_envMapPluginOffsetE_ptr
2CB152:  LDR             R0, [R0]; CCustomCarEnvMapPipeline::ms_envMapPluginOffset ...
2CB154:  LDR             R0, [R0]; CCustomCarEnvMapPipeline::ms_envMapPluginOffset
2CB156:  LDR             R0, [R4,R0]
2CB158:  CBZ             R0, loc_2CB180
2CB15A:  LDRB            R1, [R0,#4]
2CB15C:  VLDR            S2, =0.0039216
2CB160:  VMOV            S0, R1
2CB164:  VCVT.F32.U32    S0, S0
2CB168:  VMUL.F32        S0, S0, S2
2CB16C:  VCMP.F32        S0, #0.0
2CB170:  VMRS            APSR_nzcv, FPSCR
2CB174:  BEQ             loc_2CB180
2CB176:  LDR             R0, [R0,#8]
2CB178:  CMP             R0, #0
2CB17A:  IT NE
2CB17C:  MOVNE           R0, #1
2CB17E:  B               loc_2CB182
2CB180:  MOVS            R0, #0
2CB182:  LDR             R1, [R4,#0x10]
2CB184:  BIC.W           R1, R1, #7
2CB188:  ORRS            R0, R1
2CB18A:  STR             R0, [R4,#0x10]
2CB18C:  MOV             R0, R4
2CB18E:  POP             {R4,R6,R7,PC}
