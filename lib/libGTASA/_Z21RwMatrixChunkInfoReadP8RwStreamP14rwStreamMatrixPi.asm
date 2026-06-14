; =========================================================
; Game Engine Function: _Z21RwMatrixChunkInfoReadP8RwStreamP14rwStreamMatrixPi
; Address            : 0x1E23DE - 0x1E248E
; =========================================================

1E23DE:  PUSH            {R4-R7,LR}
1E23E0:  ADD             R7, SP, #0xC
1E23E2:  PUSH.W          {R8,R9,R11}
1E23E6:  SUB             SP, SP, #0x10
1E23E8:  MOV             R8, R2
1E23EA:  ADD             R2, SP, #0x28+var_1C
1E23EC:  MOV             R4, R1
1E23EE:  MOVS            R1, #1
1E23F0:  MOVS            R3, #0
1E23F2:  MOV             R6, R0
1E23F4:  MOVS            R5, #0
1E23F6:  BLX             j__Z17RwStreamFindChunkP8RwStreamjPjS1_; RwStreamFindChunk(RwStream *,uint,uint *,uint *)
1E23FA:  MOVW            R9, #0x1A
1E23FE:  CMP             R0, #0
1E2400:  MOVT            R9, #0x8000
1E2404:  BEQ             loc_1E2474
1E2406:  VMOV.I32        Q8, #0
1E240A:  ADD.W           R0, R4, #0x20 ; ' '
1E240E:  STR             R5, [R4,#0x30]
1E2410:  MOV             R1, R4; void *
1E2412:  MOVS            R2, #0x34 ; '4'; size_t
1E2414:  VST1.32         {D16-D17}, [R0]
1E2418:  MOV             R0, R4
1E241A:  VST1.32         {D16-D17}, [R0]!
1E241E:  VST1.32         {D16-D17}, [R0]
1E2422:  MOV             R0, R6; int
1E2424:  BLX             j__Z12RwStreamReadP8RwStreamPvj; RwStreamRead(RwStream *,void *,uint)
1E2428:  CMP             R0, #0x34 ; '4'
1E242A:  BNE             loc_1E2472
1E242C:  LDR             R0, [SP,#0x28+var_1C]
1E242E:  ADD.W           R1, R0, #0xC
1E2432:  STR.W           R1, [R8]
1E2436:  SUB.W           R1, R0, #0x34 ; '4'
1E243A:  MOV             R0, R6
1E243C:  BLX             j__Z12RwStreamSkipP8RwStreamj; RwStreamSkip(RwStream *,uint)
1E2440:  MOV             R0, R4; void *
1E2442:  MOVS            R1, #0x34 ; '4'; unsigned int
1E2444:  BLX             j__Z13RwMemNative32Pvj; RwMemNative32(void *,uint)
1E2448:  MOV             R0, R4; void *
1E244A:  MOVS            R1, #0xC; unsigned int
1E244C:  BLX             j__Z18RwMemFloat32ToRealPvj; RwMemFloat32ToReal(void *,uint)
1E2450:  ADD.W           R0, R4, #0xC; void *
1E2454:  MOVS            R1, #0xC; unsigned int
1E2456:  BLX             j__Z18RwMemFloat32ToRealPvj; RwMemFloat32ToReal(void *,uint)
1E245A:  ADD.W           R0, R4, #0x18; void *
1E245E:  MOVS            R1, #0xC; unsigned int
1E2460:  BLX             j__Z18RwMemFloat32ToRealPvj; RwMemFloat32ToReal(void *,uint)
1E2464:  ADD.W           R0, R4, #0x24 ; '$'; void *
1E2468:  MOVS            R1, #0xC; unsigned int
1E246A:  BLX             j__Z18RwMemFloat32ToRealPvj; RwMemFloat32ToReal(void *,uint)
1E246E:  MOV             R5, R4
1E2470:  B               loc_1E2484
1E2472:  MOVS            R5, #0
1E2474:  MOV             R0, R9; int
1E2476:  STR             R5, [SP,#0x28+var_24]
1E2478:  BLX             j__Z8_rwerroriz; _rwerror(int,...)
1E247C:  STR             R0, [SP,#0x28+var_20]
1E247E:  ADD             R0, SP, #0x28+var_24
1E2480:  BLX             j__Z10RwErrorSetP7RwError; RwErrorSet(RwError *)
1E2484:  MOV             R0, R5
1E2486:  ADD             SP, SP, #0x10
1E2488:  POP.W           {R8,R9,R11}
1E248C:  POP             {R4-R7,PC}
