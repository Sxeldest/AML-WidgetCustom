; =========================================================
; Game Engine Function: _Z24_rpMaterialChunkInfoReadP8RwStreamP19RpMaterialChunkInfoPi
; Address            : 0x2173FC - 0x21747A
; =========================================================

2173FC:  PUSH            {R4-R7,LR}
2173FE:  ADD             R7, SP, #0xC
217400:  PUSH.W          {R8}
217404:  SUB             SP, SP, #8
217406:  MOV             R8, R2
217408:  ADD             R2, SP, #0x18+var_14
21740A:  MOV             R4, R1
21740C:  MOVS            R1, #1
21740E:  MOVS            R3, #0
217410:  MOV             R5, R0
217412:  MOVS            R6, #0
217414:  BLX             j__Z17RwStreamFindChunkP8RwStreamjPjS1_; RwStreamFindChunk(RwStream *,uint,uint *,uint *)
217418:  CBZ             R0, loc_217470
21741A:  VMOV.I32        Q8, #0
21741E:  ADD.W           R0, R4, #0xC
217422:  MOV             R1, R4; void *
217424:  VST1.32         {D16-D17}, [R0]
217428:  MOV             R0, R5; int
21742A:  VST1.32         {D16-D17}, [R4]
21742E:  LDR             R2, [SP,#0x18+var_14]; size_t
217430:  BLX             j__Z12RwStreamReadP8RwStreamPvj; RwStreamRead(RwStream *,void *,uint)
217434:  MOV             R1, R0; unsigned int
217436:  LDR             R0, [SP,#0x18+var_14]
217438:  CMP             R1, R0
21743A:  BNE             loc_217460
21743C:  ADD.W           R0, R1, #0xC
217440:  STR.W           R0, [R8]
217444:  MOV             R0, R4; void *
217446:  LDR             R5, [R4,#4]
217448:  BLX             j__Z13RwMemNative32Pvj; RwMemNative32(void *,uint)
21744C:  STR             R5, [R4,#4]
21744E:  LDR             R0, [SP,#0x18+var_14]
217450:  CMP             R0, #0x10
217452:  BHI             loc_217464
217454:  MOV.W           R0, #0x3F800000
217458:  STRD.W          R0, R0, [R4,#0x10]
21745C:  STR             R0, [R4,#0x18]
21745E:  B               loc_21746E
217460:  MOVS            R6, #0
217462:  B               loc_217470
217464:  ADD.W           R0, R4, #0x10; void *
217468:  MOVS            R1, #0xC; unsigned int
21746A:  BLX             j__Z18RwMemFloat32ToRealPvj; RwMemFloat32ToReal(void *,uint)
21746E:  MOV             R6, R4
217470:  MOV             R0, R6
217472:  ADD             SP, SP, #8
217474:  POP.W           {R8}
217478:  POP             {R4-R7,PC}
