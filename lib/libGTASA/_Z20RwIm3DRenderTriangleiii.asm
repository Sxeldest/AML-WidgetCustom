; =========================================================
; Game Engine Function: _Z20RwIm3DRenderTriangleiii
; Address            : 0x1DD388 - 0x1DD424
; =========================================================

1DD388:  PUSH            {R4-R7,LR}
1DD38A:  ADD             R7, SP, #0xC
1DD38C:  PUSH.W          {R8,R9,R11}
1DD390:  SUB             SP, SP, #8
1DD392:  MOV             R9, R1
1DD394:  LDR             R1, =(RwEngineInstance_ptr - 0x1DD39E)
1DD396:  MOV             R4, R0
1DD398:  LDR             R0, =(_rwIm3DModule_ptr - 0x1DD3A2)
1DD39A:  ADD             R1, PC; RwEngineInstance_ptr
1DD39C:  MOV             R8, R2
1DD39E:  ADD             R0, PC; _rwIm3DModule_ptr
1DD3A0:  LDR             R1, [R1]; RwEngineInstance
1DD3A2:  LDR             R0, [R0]; _rwIm3DModule
1DD3A4:  LDR             R1, [R1]
1DD3A6:  LDR             R0, [R0]
1DD3A8:  ADD             R0, R1
1DD3AA:  LDR             R6, [R0,#0x3C]
1DD3AC:  BLX             j__Z19RxHeapGetGlobalHeapv; RxHeapGetGlobalHeap(void)
1DD3B0:  MOV             R5, R0
1DD3B2:  CBZ             R6, loc_1DD408
1DD3B4:  LDR             R0, =(_rwIm3DModule_ptr - 0x1DD3BE)
1DD3B6:  MOVS            R2, #0
1DD3B8:  LDR             R1, =(RwEngineInstance_ptr - 0x1DD3C0)
1DD3BA:  ADD             R0, PC; _rwIm3DModule_ptr
1DD3BC:  ADD             R1, PC; RwEngineInstance_ptr
1DD3BE:  LDR             R0, [R0]; _rwIm3DModule
1DD3C0:  LDR             R1, [R1]; RwEngineInstance
1DD3C2:  LDR             R0, [R0]
1DD3C4:  LDR             R1, [R1]
1DD3C6:  ADDS            R6, R1, R0
1DD3C8:  MOVS            R0, #3
1DD3CA:  LDR             R1, [R6,#4]
1DD3CC:  STRD.W          R1, R0, [R6,#0x64]
1DD3D0:  MOVS            R1, #6
1DD3D2:  STRD.W          R2, R0, [R6,#0x6C]
1DD3D6:  MOV             R0, R5
1DD3D8:  BLX             j__Z11RxHeapAllocP6RxHeapj; RxHeapAlloc(RxHeap *,uint)
1DD3DC:  STR             R0, [R6,#0x6C]
1DD3DE:  ADD.W           R1, R6, #0x44 ; 'D'
1DD3E2:  STRH            R4, [R0]
1DD3E4:  MOVS            R2, #0
1DD3E6:  LDR             R0, [R6,#0x6C]
1DD3E8:  STRH.W          R9, [R0,#2]
1DD3EC:  LDR             R0, [R6,#0x6C]
1DD3EE:  STRH.W          R8, [R0,#4]
1DD3F2:  LDR             R0, [R6,#0x64]
1DD3F4:  BLX             j__Z17RxPipelineExecuteP10RxPipelinePvi; RxPipelineExecute(RxPipeline *,void *,int)
1DD3F8:  LDR             R1, [R6,#0x6C]
1DD3FA:  MOV             R4, R0
1DD3FC:  MOV             R0, R5
1DD3FE:  BLX             j__Z10RxHeapFreeP6RxHeapPv; RxHeapFree(RxHeap *,void *)
1DD402:  CBZ             R4, loc_1DD41A
1DD404:  MOVS            R0, #1
1DD406:  B               loc_1DD41C
1DD408:  MOVS            R0, #0
1DD40A:  STR             R0, [SP,#0x20+var_20]
1DD40C:  MOVS            R0, #0x23 ; '#'; int
1DD40E:  BLX             j__Z8_rwerroriz; _rwerror(int,...)
1DD412:  STR             R0, [SP,#0x20+var_1C]
1DD414:  MOV             R0, SP
1DD416:  BLX             j__Z10RwErrorSetP7RwError; RwErrorSet(RwError *)
1DD41A:  MOVS            R0, #0
1DD41C:  ADD             SP, SP, #8
1DD41E:  POP.W           {R8,R9,R11}
1DD422:  POP             {R4-R7,PC}
