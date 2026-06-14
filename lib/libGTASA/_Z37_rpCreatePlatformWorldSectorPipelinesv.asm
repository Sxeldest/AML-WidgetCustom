; =========================================================
; Game Engine Function: _Z37_rpCreatePlatformWorldSectorPipelinesv
; Address            : 0x223050 - 0x2230A8
; =========================================================

223050:  PUSH            {R4,R5,R7,LR}
223052:  ADD             R7, SP, #8
223054:  BLX             j__Z16RxPipelineCreatev; RxPipelineCreate(void)
223058:  MOV             R4, R0
22305A:  CBZ             R4, loc_2230A4
22305C:  MOVS            R0, #2
22305E:  STR             R0, [R4,#0x2C]
223060:  MOV             R0, R4
223062:  BLX             j__Z14RxPipelineLockP10RxPipeline; RxPipelineLock(RxPipeline *)
223066:  MOV             R5, R0
223068:  CBZ             R5, loc_22309E
22306A:  BLX             j__Z44RxNodeDefinitionGetOpenGLWorldSectorAllInOnev; RxNodeDefinitionGetOpenGLWorldSectorAllInOne(void)
22306E:  MOV             R2, R0
223070:  MOV             R0, R5
223072:  MOVS            R1, #0
223074:  MOVS            R3, #0
223076:  BLX             j__Z23RxLockedPipeAddFragmentP10RxPipelinePjP16RxNodeDefinitionz; RxLockedPipeAddFragment(RxPipeline *,uint *,RxNodeDefinition *,...)
22307A:  BLX             j__Z18RxLockedPipeUnlockP10RxPipeline; RxLockedPipeUnlock(RxPipeline *)
22307E:  CBZ             R0, loc_22309E
223080:  LDR             R0, =(_rxPipelineGlobalsOffset_ptr - 0x223088)
223082:  LDR             R1, =(RwEngineInstance_ptr - 0x22308A)
223084:  ADD             R0, PC; _rxPipelineGlobalsOffset_ptr
223086:  ADD             R1, PC; RwEngineInstance_ptr
223088:  LDR             R0, [R0]; _rxPipelineGlobalsOffset
22308A:  LDR             R1, [R1]; RwEngineInstance
22308C:  LDR             R0, [R0]
22308E:  LDR             R1, [R1]
223090:  ADD             R0, R1
223092:  STR             R4, [R0,#0x58]
223094:  MOV             R0, R4
223096:  BLX             j__Z31RpWorldSetDefaultSectorPipelineP10RxPipeline; RpWorldSetDefaultSectorPipeline(RxPipeline *)
22309A:  MOVS            R0, #1
22309C:  POP             {R4,R5,R7,PC}
22309E:  MOV             R0, R4
2230A0:  BLX             j__Z18_rxPipelineDestroyP10RxPipeline; _rxPipelineDestroy(RxPipeline *)
2230A4:  MOVS            R0, #0
2230A6:  POP             {R4,R5,R7,PC}
