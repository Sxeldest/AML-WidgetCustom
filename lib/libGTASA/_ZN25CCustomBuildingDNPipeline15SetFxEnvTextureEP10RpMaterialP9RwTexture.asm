; =========================================================
; Game Engine Function: _ZN25CCustomBuildingDNPipeline15SetFxEnvTextureEP10RpMaterialP9RwTexture
; Address            : 0x2CA568 - 0x2CA5AC
; =========================================================

2CA568:  PUSH            {R4,R5,R7,LR}
2CA56A:  ADD             R7, SP, #8
2CA56C:  MOV             R5, R0
2CA56E:  LDR             R0, =(_ZN24CCustomCarEnvMapPipeline21ms_envMapPluginOffsetE_ptr - 0x2CA576)
2CA570:  MOV             R4, R1
2CA572:  ADD             R0, PC; _ZN24CCustomCarEnvMapPipeline21ms_envMapPluginOffsetE_ptr
2CA574:  LDR             R0, [R0]; CCustomCarEnvMapPipeline::ms_envMapPluginOffset ...
2CA576:  LDR             R0, [R0]; CCustomCarEnvMapPipeline::ms_envMapPluginOffset
2CA578:  ADD             R0, R5
2CA57A:  BLX             j__ZN24CCustomCarEnvMapPipeline37DuplicateCustomEnvMapPipeMaterialDataEPP28CustomEnvMapPipeMaterialData; CCustomCarEnvMapPipeline::DuplicateCustomEnvMapPipeMaterialData(CustomEnvMapPipeMaterialData **)
2CA57E:  CBZ             R0, locret_2CA5A4
2CA580:  CBZ             R4, loc_2CA586
2CA582:  STR             R4, [R0,#8]
2CA584:  B               loc_2CA59C
2CA586:  CBZ             R5, loc_2CA5A6
2CA588:  LDR             R1, =(MatFXMaterialDataOffset_ptr - 0x2CA58E)
2CA58A:  ADD             R1, PC; MatFXMaterialDataOffset_ptr
2CA58C:  LDR             R1, [R1]; MatFXMaterialDataOffset
2CA58E:  LDR             R1, [R1]
2CA590:  LDR             R1, [R5,R1]
2CA592:  LDR             R4, [R1,#4]
2CA594:  STR             R4, [R0,#8]
2CA596:  CMP             R4, #0
2CA598:  IT EQ
2CA59A:  POPEQ           {R4,R5,R7,PC}
2CA59C:  MOVW            R0, #0x1102
2CA5A0:  STRH.W          R0, [R4,#0x50]
2CA5A4:  POP             {R4,R5,R7,PC}
2CA5A6:  MOVS            R1, #0
2CA5A8:  STR             R1, [R0,#8]
2CA5AA:  POP             {R4,R5,R7,PC}
