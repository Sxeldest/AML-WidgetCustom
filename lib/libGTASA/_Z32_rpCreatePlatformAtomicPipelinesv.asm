; =========================================================
; Game Engine Function: _Z32_rpCreatePlatformAtomicPipelinesv
; Address            : 0x223100 - 0x223160
; =========================================================

223100:  PUSH            {R4,R5,R7,LR}
223102:  ADD             R7, SP, #8
223104:  BLX             j__Z16RxPipelineCreatev; RxPipelineCreate(void)
223108:  MOV             R4, R0
22310A:  CBZ             R4, loc_22315C
22310C:  MOVS            R0, #2
22310E:  STR             R0, [R4,#0x2C]
223110:  MOV             R0, R4
223112:  BLX             j__Z14RxPipelineLockP10RxPipeline; RxPipelineLock(RxPipeline *)
223116:  MOV             R5, R0
223118:  CBZ             R5, loc_223156
22311A:  BLX             j__Z39RxNodeDefinitionGetOpenGLAtomicAllInOnev; RxNodeDefinitionGetOpenGLAtomicAllInOne(void)
22311E:  MOV             R2, R0
223120:  MOV             R0, R5
223122:  MOVS            R1, #0
223124:  MOVS            R3, #0
223126:  BLX             j__Z23RxLockedPipeAddFragmentP10RxPipelinePjP16RxNodeDefinitionz; RxLockedPipeAddFragment(RxPipeline *,uint *,RxNodeDefinition *,...)
22312A:  BLX             j__Z18RxLockedPipeUnlockP10RxPipeline; RxLockedPipeUnlock(RxPipeline *)
22312E:  CBZ             R0, loc_223156
223130:  LDR             R0, =(_rxPipelineGlobalsOffset_ptr - 0x223138)
223132:  LDR             R1, =(RwEngineInstance_ptr - 0x22313A)
223134:  ADD             R0, PC; _rxPipelineGlobalsOffset_ptr
223136:  ADD             R1, PC; RwEngineInstance_ptr
223138:  LDR             R0, [R0]; _rxPipelineGlobalsOffset
22313A:  LDR             R1, [R1]; RwEngineInstance
22313C:  LDR             R0, [R0]
22313E:  LDR             R1, [R1]
223140:  ADD             R0, R1
223142:  STR             R4, [R0,#0x54]
223144:  MOV             R0, R4
223146:  BLX             j__Z26RpAtomicSetDefaultPipelineP10RxPipeline; RpAtomicSetDefaultPipeline(RxPipeline *)
22314A:  BLX             j__Z19_rwOpenGLLightsOpenv; _rwOpenGLLightsOpen(void)
22314E:  CMP             R0, #0
223150:  ITT NE
223152:  MOVNE           R0, #1
223154:  POPNE           {R4,R5,R7,PC}
223156:  MOV             R0, R4
223158:  BLX             j__Z18_rxPipelineDestroyP10RxPipeline; _rxPipelineDestroy(RxPipeline *)
22315C:  MOVS            R0, #0
22315E:  POP             {R4,R5,R7,PC}
