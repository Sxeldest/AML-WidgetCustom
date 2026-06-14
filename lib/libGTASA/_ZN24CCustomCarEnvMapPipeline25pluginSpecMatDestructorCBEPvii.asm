; =========================================================
; Game Engine Function: _ZN24CCustomCarEnvMapPipeline25pluginSpecMatDestructorCBEPvii
; Address            : 0x2CCBE0 - 0x2CCC2E
; =========================================================

2CCBE0:  PUSH            {R4-R7,LR}
2CCBE2:  ADD             R7, SP, #0xC
2CCBE4:  PUSH.W          {R11}
2CCBE8:  MOV             R4, R0
2CCBEA:  LDR             R0, =(_ZN24CCustomCarEnvMapPipeline26ms_specularMapPluginOffsetE_ptr - 0x2CCBF0)
2CCBEC:  ADD             R0, PC; _ZN24CCustomCarEnvMapPipeline26ms_specularMapPluginOffsetE_ptr
2CCBEE:  LDR             R0, [R0]; CCustomCarEnvMapPipeline::ms_specularMapPluginOffset ...
2CCBF0:  LDR             R5, [R0]; CCustomCarEnvMapPipeline::ms_specularMapPluginOffset
2CCBF2:  LDR             R6, [R4,R5]
2CCBF4:  CBZ             R6, loc_2CCC26
2CCBF6:  LDR             R0, [R6,#4]
2CCBF8:  CBZ             R0, loc_2CCC02
2CCBFA:  BLX             j__Z16RwTextureDestroyP9RwTexture; RwTextureDestroy(RwTexture *)
2CCBFE:  MOVS            R0, #0
2CCC00:  STR             R0, [R6,#4]
2CCC02:  LDR             R0, =(_ZN24CCustomCarEnvMapPipeline25m_gSpecMapPipeMatDataPoolE_ptr - 0x2CCC08)
2CCC04:  ADD             R0, PC; _ZN24CCustomCarEnvMapPipeline25m_gSpecMapPipeMatDataPoolE_ptr
2CCC06:  LDR             R0, [R0]; CCustomCarEnvMapPipeline::m_gSpecMapPipeMatDataPool ...
2CCC08:  LDR             R0, [R0]; CCustomCarEnvMapPipeline::m_gSpecMapPipeMatDataPool
2CCC0A:  LDRD.W          R1, R2, [R0]
2CCC0E:  SUBS            R1, R6, R1
2CCC10:  ASRS            R1, R1, #3
2CCC12:  LDRB            R3, [R2,R1]
2CCC14:  ORR.W           R3, R3, #0x80
2CCC18:  STRB            R3, [R2,R1]
2CCC1A:  LDR             R2, [R0,#0xC]
2CCC1C:  CMP             R1, R2
2CCC1E:  IT LT
2CCC20:  STRLT           R1, [R0,#0xC]
2CCC22:  MOVS            R0, #0
2CCC24:  STR             R0, [R4,R5]
2CCC26:  MOV             R0, R4
2CCC28:  POP.W           {R11}
2CCC2C:  POP             {R4-R7,PC}
