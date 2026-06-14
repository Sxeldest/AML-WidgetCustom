; =========================================================
; Game Engine Function: _Z15RwIm3DTransformP18RxObjSpace3DVertexjP11RwMatrixTagj
; Address            : 0x1DD02C - 0x1DD0B2
; =========================================================

1DD02C:  PUSH            {R4-R7,LR}
1DD02E:  ADD             R7, SP, #0xC
1DD030:  PUSH.W          {R8}
1DD034:  SUB             SP, SP, #8
1DD036:  MOV             R8, R0
1DD038:  CMP.W           R1, #0x10001
1DD03C:  BCC             loc_1DD054
1DD03E:  MOVS            R0, #0
1DD040:  STR             R0, [SP,#0x18+var_18]
1DD042:  MOVS            R0, #0x32 ; '2'; int
1DD044:  BLX             j__Z8_rwerroriz; _rwerror(int,...)
1DD048:  STR             R0, [SP,#0x18+var_14]
1DD04A:  MOV             R0, SP
1DD04C:  BLX             j__Z10RwErrorSetP7RwError; RwErrorSet(RwError *)
1DD050:  MOVS            R0, #0
1DD052:  B               loc_1DD0AA
1DD054:  LDR             R0, =(_rwIm3DModule_ptr - 0x1DD05E)
1DD056:  LDR.W           R12, =(RwEngineInstance_ptr - 0x1DD060)
1DD05A:  ADD             R0, PC; _rwIm3DModule_ptr
1DD05C:  ADD             R12, PC; RwEngineInstance_ptr
1DD05E:  LDR             R0, [R0]; _rwIm3DModule
1DD060:  LDR.W           R4, [R12]; RwEngineInstance
1DD064:  LDR             R5, [R0]
1DD066:  LDR             R6, [R4]
1DD068:  ADD             R6, R5
1DD06A:  STRH            R1, [R6,#0x38]
1DD06C:  LDR             R1, [R0]
1DD06E:  LDR             R6, [R4]
1DD070:  ADD             R1, R6
1DD072:  STR.W           R8, [R1,#0x3C]
1DD076:  LDR             R1, [R0]
1DD078:  LDR             R6, [R4]
1DD07A:  ADD             R1, R6
1DD07C:  MOVS            R6, #0x24 ; '$'
1DD07E:  STR             R6, [R1,#0x40]
1DD080:  LDR             R1, [R0]
1DD082:  LDR             R6, [R4]
1DD084:  ADD             R1, R6
1DD086:  STR             R2, [R1,#0x48]
1DD088:  LDR             R1, [R0]
1DD08A:  LDR             R2, [R4]
1DD08C:  ADD             R1, R2
1DD08E:  ORR.W           R2, R3, #0x18
1DD092:  STR             R2, [R1,#0x44]
1DD094:  MOVS            R2, #1
1DD096:  LDR             R0, [R0]
1DD098:  LDR             R1, [R4]
1DD09A:  ADD             R1, R0
1DD09C:  LDR.W           R0, [R1],#0x38
1DD0A0:  BLX             j__Z17RxPipelineExecuteP10RxPipelinePvi; RxPipelineExecute(RxPipeline *,void *,int)
1DD0A4:  CMP             R0, #0
1DD0A6:  IT NE
1DD0A8:  MOVNE           R0, R8
1DD0AA:  ADD             SP, SP, #8
1DD0AC:  POP.W           {R8}
1DD0B0:  POP             {R4-R7,PC}
