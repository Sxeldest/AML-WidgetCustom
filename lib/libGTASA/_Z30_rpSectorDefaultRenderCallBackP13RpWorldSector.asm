; =========================================================
; Game Engine Function: _Z30_rpSectorDefaultRenderCallBackP13RpWorldSector
; Address            : 0x21C884 - 0x21C8C4
; =========================================================

21C884:  PUSH            {R4,R6,R7,LR}
21C886:  ADD             R7, SP, #8
21C888:  MOV             R4, R0
21C88A:  LDRH.W          R0, [R4,#0x8C]
21C88E:  CBZ             R0, loc_21C8C0
21C890:  LDR.W           R0, [R4,#0x84]
21C894:  CBNZ            R0, loc_21C8B0
21C896:  LDR             R0, =(RwEngineInstance_ptr - 0x21C89C)
21C898:  ADD             R0, PC; RwEngineInstance_ptr
21C89A:  LDR             R0, [R0]; RwEngineInstance
21C89C:  LDR             R1, [R0]
21C89E:  LDR             R0, [R1,#4]
21C8A0:  LDR             R0, [R0,#0x6C]
21C8A2:  CBNZ            R0, loc_21C8B0
21C8A4:  LDR             R0, =(_rxPipelineGlobalsOffset_ptr - 0x21C8AA)
21C8A6:  ADD             R0, PC; _rxPipelineGlobalsOffset_ptr
21C8A8:  LDR             R0, [R0]; _rxPipelineGlobalsOffset
21C8AA:  LDR             R0, [R0]
21C8AC:  ADD             R0, R1
21C8AE:  LDR             R0, [R0,#0x40]
21C8B0:  MOV             R1, R4
21C8B2:  MOVS            R2, #1
21C8B4:  BLX             j__Z17RxPipelineExecuteP10RxPipelinePvi; RxPipelineExecute(RxPipeline *,void *,int)
21C8B8:  CMP             R0, #0
21C8BA:  IT NE
21C8BC:  MOVNE           R0, R4
21C8BE:  POP             {R4,R6,R7,PC}
21C8C0:  MOV             R0, R4
21C8C2:  POP             {R4,R6,R7,PC}
