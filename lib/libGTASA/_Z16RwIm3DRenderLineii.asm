; =========================================================
; Game Engine Function: _Z16RwIm3DRenderLineii
; Address            : 0x1DD434 - 0x1DD4C0
; =========================================================

1DD434:  PUSH            {R4-R7,LR}
1DD436:  ADD             R7, SP, #0xC
1DD438:  PUSH.W          {R8-R10}
1DD43C:  SUB             SP, SP, #8
1DD43E:  MOV             R8, R1
1DD440:  LDR             R1, =(RwEngineInstance_ptr - 0x1DD44A)
1DD442:  MOV             R6, R0
1DD444:  LDR             R0, =(_rwIm3DModule_ptr - 0x1DD44C)
1DD446:  ADD             R1, PC; RwEngineInstance_ptr
1DD448:  ADD             R0, PC; _rwIm3DModule_ptr
1DD44A:  LDR             R5, [R1]; RwEngineInstance
1DD44C:  LDR             R4, [R0]; _rwIm3DModule
1DD44E:  BLX             j__Z19RxHeapGetGlobalHeapv; RxHeapGetGlobalHeap(void)
1DD452:  MOV             R9, R0
1DD454:  LDR             R0, [R4]
1DD456:  LDR             R1, [R5]
1DD458:  ADDS            R5, R1, R0
1DD45A:  LDR             R0, [R5,#0x3C]
1DD45C:  CBZ             R0, loc_1DD4A2
1DD45E:  MOVS            R4, #1
1DD460:  LDR             R1, [R5,#0x10]
1DD462:  MOVS            R0, #0
1DD464:  MOVS            R2, #2
1DD466:  STRD.W          R1, R4, [R5,#0x64]
1DD46A:  MOVS            R1, #4
1DD46C:  STRD.W          R0, R2, [R5,#0x6C]
1DD470:  MOV             R0, R9
1DD472:  ADD.W           R10, R5, #0x38 ; '8'
1DD476:  BLX             j__Z11RxHeapAllocP6RxHeapj; RxHeapAlloc(RxHeap *,uint)
1DD47A:  STR             R0, [R5,#0x6C]
1DD47C:  ADD.W           R1, R10, #0xC
1DD480:  STRH            R6, [R0]
1DD482:  MOVS            R2, #0
1DD484:  LDR             R0, [R5,#0x6C]
1DD486:  STRH.W          R8, [R0,#2]
1DD48A:  LDR             R0, [R5,#0x64]
1DD48C:  BLX             j__Z17RxPipelineExecuteP10RxPipelinePvi; RxPipelineExecute(RxPipeline *,void *,int)
1DD490:  LDR             R1, [R5,#0x6C]
1DD492:  MOV             R6, R0
1DD494:  MOV             R0, R9
1DD496:  BLX             j__Z10RxHeapFreeP6RxHeapPv; RxHeapFree(RxHeap *,void *)
1DD49A:  CMP             R6, #0
1DD49C:  IT EQ
1DD49E:  MOVEQ           R4, #0
1DD4A0:  B               loc_1DD4B6
1DD4A2:  MOVS            R0, #0
1DD4A4:  STR             R0, [SP,#0x20+var_20]
1DD4A6:  MOVS            R0, #0x23 ; '#'; int
1DD4A8:  BLX             j__Z8_rwerroriz; _rwerror(int,...)
1DD4AC:  STR             R0, [SP,#0x20+var_1C]
1DD4AE:  MOV             R0, SP
1DD4B0:  BLX             j__Z10RwErrorSetP7RwError; RwErrorSet(RwError *)
1DD4B4:  MOVS            R4, #0
1DD4B6:  MOV             R0, R4
1DD4B8:  ADD             SP, SP, #8
1DD4BA:  POP.W           {R8-R10}
1DD4BE:  POP             {R4-R7,PC}
