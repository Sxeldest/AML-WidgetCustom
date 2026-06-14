; =========================================================
; Game Engine Function: _Z33_rpDestroyPlatformAtomicPipelinesv
; Address            : 0x223168 - 0x2231AA
; =========================================================

223168:  PUSH            {R4,R6,R7,LR}
22316A:  ADD             R7, SP, #8
22316C:  MOVS            R0, #0
22316E:  MOVS            R4, #0
223170:  BLX             j__Z26RpAtomicSetDefaultPipelineP10RxPipeline; RpAtomicSetDefaultPipeline(RxPipeline *)
223174:  LDR             R0, =(_rxPipelineGlobalsOffset_ptr - 0x22317C)
223176:  LDR             R1, =(RwEngineInstance_ptr - 0x22317E)
223178:  ADD             R0, PC; _rxPipelineGlobalsOffset_ptr
22317A:  ADD             R1, PC; RwEngineInstance_ptr
22317C:  LDR             R0, [R0]; _rxPipelineGlobalsOffset
22317E:  LDR             R1, [R1]; RwEngineInstance
223180:  LDR             R0, [R0]
223182:  LDR             R1, [R1]
223184:  ADD             R0, R1
223186:  LDR             R0, [R0,#0x54]
223188:  CBZ             R0, loc_2231A2
22318A:  BLX             j__Z18_rxPipelineDestroyP10RxPipeline; _rxPipelineDestroy(RxPipeline *)
22318E:  LDR             R0, =(_rxPipelineGlobalsOffset_ptr - 0x223196)
223190:  LDR             R1, =(RwEngineInstance_ptr - 0x223198)
223192:  ADD             R0, PC; _rxPipelineGlobalsOffset_ptr
223194:  ADD             R1, PC; RwEngineInstance_ptr
223196:  LDR             R0, [R0]; _rxPipelineGlobalsOffset
223198:  LDR             R1, [R1]; RwEngineInstance
22319A:  LDR             R0, [R0]
22319C:  LDR             R1, [R1]
22319E:  ADD             R0, R1
2231A0:  STR             R4, [R0,#0x54]
2231A2:  POP.W           {R4,R6,R7,LR}
2231A6:  B.W             sub_19C5FC
