; =========================================================
; Game Engine Function: _Z16PreInstanceClumpP7RpClump
; Address            : 0x4581EC - 0x4582A2
; =========================================================

4581EC:  PUSH            {R4-R7,LR}
4581EE:  ADD             R7, SP, #0xC
4581F0:  PUSH.W          {R11}
4581F4:  SUB             SP, SP, #0x18
4581F6:  MOV             R4, R0
4581F8:  LDR             R5, [R4,#4]
4581FA:  BLX             j__ZN10CStreaming13FlushChannelsEv; CStreaming::FlushChannels(void)
4581FE:  ADD             R1, SP, #0x28+var_20
458200:  MOVS            R6, #0
458202:  MOV             R0, R5
458204:  MOVS            R2, #0
458206:  STRD.W          R6, R6, [SP,#0x28+var_20]
45820A:  STR             R6, [SP,#0x28+var_18]
45820C:  BLX             j__Z12RwFrameScaleP7RwFramePK5RwV3d15RwOpCombineType; RwFrameScale(RwFrame *,RwV3d const*,RwOpCombineType)
458210:  LDR             R0, =(Scene_ptr - 0x458216)
458212:  ADD             R0, PC; Scene_ptr
458214:  LDR             R5, [R0]; Scene
458216:  LDR             R0, [R5,#(dword_9FC93C - 0x9FC938)]
458218:  BLX             j__Z19RwCameraBeginUpdateP8RwCamera; RwCameraBeginUpdate(RwCamera *)
45821C:  LDR             R1, =(sub_4582B4+1 - 0x458226)
45821E:  MOV             R0, R4
458220:  MOVS            R2, #0
458222:  ADD             R1, PC; sub_4582B4
458224:  BLX             j__Z20RpClumpForAllAtomicsP7RpClumpPFP8RpAtomicS2_PvES3_; RpClumpForAllAtomics(RpClump *,RpAtomic * (*)(RpAtomic *,void *),void *)
458228:  LDR             R0, [R5,#(dword_9FC93C - 0x9FC938)]
45822A:  BLX             j__Z17RwCameraEndUpdateP8RwCamera; RwCameraEndUpdate(RwCamera *)
45822E:  LDR             R0, =(_ZN10CStreaming22ms_streamingBufferSizeE_ptr - 0x458238)
458230:  MOV             R2, SP
458232:  LDR             R1, =(_ZN10CStreaming19ms_pStreamingBufferE_ptr - 0x45823A)
458234:  ADD             R0, PC; _ZN10CStreaming22ms_streamingBufferSizeE_ptr
458236:  ADD             R1, PC; _ZN10CStreaming19ms_pStreamingBufferE_ptr
458238:  LDR             R0, [R0]; CStreaming::ms_streamingBufferSize ...
45823A:  LDR             R1, [R1]; CStreaming::ms_pStreamingBuffer ...
45823C:  LDR             R0, [R0]; CStreaming::ms_streamingBufferSize
45823E:  LDR             R1, [R1]; CStreaming::ms_pStreamingBuffer
458240:  STR             R1, [SP,#0x28+var_28]
458242:  MOVS            R1, #3
458244:  LSLS            R0, R0, #0xC
458246:  STR             R0, [SP,#0x28+var_24]
458248:  MOVS            R0, #3
45824A:  BLX             j__Z12RwStreamOpen12RwStreamType18RwStreamAccessTypePKv; RwStreamOpen(RwStreamType,RwStreamAccessType,void const*)
45824E:  MOV             R5, R0
458250:  CBZ             R5, loc_458264
458252:  MOV             R0, R4
458254:  MOV             R1, R5
458256:  STR             R6, [R5,#0xC]
458258:  BLX             j__Z18RpClumpStreamWriteP7RpClumpP8RwStream; RpClumpStreamWrite(RpClump *,RwStream *)
45825C:  MOV             R1, SP
45825E:  MOV             R0, R5
458260:  BLX             j__Z13RwStreamCloseP8RwStreamPv; RwStreamClose(RwStream *,void *)
458264:  MOV             R0, R4
458266:  BLX             j__Z14RpClumpDestroyP7RpClump; RpClumpDestroy(RpClump *)
45826A:  MOV             R2, SP
45826C:  MOVS            R0, #3
45826E:  MOVS            R1, #1
458270:  BLX             j__Z12RwStreamOpen12RwStreamType18RwStreamAccessTypePKv; RwStreamOpen(RwStreamType,RwStreamAccessType,void const*)
458274:  MOV             R4, R0
458276:  MOVS            R5, #0
458278:  CBZ             R4, loc_458298
45827A:  MOV             R0, R4; int
45827C:  MOVS            R1, #0x10
45827E:  MOVS            R2, #0
458280:  MOVS            R3, #0
458282:  BLX             j__Z17RwStreamFindChunkP8RwStreamjPjS1_; RwStreamFindChunk(RwStream *,uint,uint *,uint *)
458286:  CBZ             R0, loc_458290
458288:  MOV             R0, R4
45828A:  BLX             j__Z17RpClumpStreamReadP8RwStream; RpClumpStreamRead(RwStream *)
45828E:  MOV             R5, R0
458290:  MOV             R0, R4
458292:  MOVS            R1, #0
458294:  BLX             j__Z13RwStreamCloseP8RwStreamPv; RwStreamClose(RwStream *,void *)
458298:  MOV             R0, R5
45829A:  ADD             SP, SP, #0x18
45829C:  POP.W           {R11}
4582A0:  POP             {R4-R7,PC}
