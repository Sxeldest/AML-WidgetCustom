; =========================================================
; Game Engine Function: _Z27_rpWorldSectorChunkInfoReadP8RwStreamP22RpWorldChunkInfoSectorPi
; Address            : 0x2136BC - 0x21373E
; =========================================================

2136BC:  PUSH            {R4-R7,LR}
2136BE:  ADD             R7, SP, #0xC
2136C0:  PUSH.W          {R8}
2136C4:  SUB             SP, SP, #8
2136C6:  MOV             R8, R2
2136C8:  ADD             R2, SP, #0x18+var_14
2136CA:  MOV             R4, R1
2136CC:  MOVS            R1, #1
2136CE:  MOVS            R3, #0
2136D0:  MOV             R5, R0
2136D2:  MOVS            R6, #0
2136D4:  BLX             j__Z17RwStreamFindChunkP8RwStreamjPjS1_; RwStreamFindChunk(RwStream *,uint,uint *,uint *)
2136D8:  CBZ             R0, loc_213734
2136DA:  VMOV.I32        Q8, #0
2136DE:  ADD.W           R0, R4, #0x1C
2136E2:  MOV             R1, R4; void *
2136E4:  MOVS            R2, #0x2C ; ','; size_t
2136E6:  VST1.32         {D16-D17}, [R0]
2136EA:  MOV             R0, R4
2136EC:  VST1.32         {D16-D17}, [R0]!
2136F0:  VST1.32         {D16-D17}, [R0]
2136F4:  MOV             R0, R5; int
2136F6:  BLX             j__Z12RwStreamReadP8RwStreamPvj; RwStreamRead(RwStream *,void *,uint)
2136FA:  CMP             R0, #0x2C ; ','
2136FC:  BNE             loc_213732
2136FE:  LDR             R0, [SP,#0x18+var_14]
213700:  ADD.W           R1, R0, #0xC
213704:  STR.W           R1, [R8]
213708:  SUB.W           R1, R0, #0x2C ; ','
21370C:  MOV             R0, R5
21370E:  BLX             j__Z12RwStreamSkipP8RwStreamj; RwStreamSkip(RwStream *,uint)
213712:  MOV             R0, R4; void *
213714:  MOVS            R1, #0x2C ; ','; unsigned int
213716:  BLX             j__Z13RwMemNative32Pvj; RwMemNative32(void *,uint)
21371A:  ADD.W           R0, R4, #0xC; void *
21371E:  MOVS            R1, #0xC; unsigned int
213720:  BLX             j__Z18RwMemFloat32ToRealPvj; RwMemFloat32ToReal(void *,uint)
213724:  ADD.W           R0, R4, #0x18; void *
213728:  MOVS            R1, #0xC; unsigned int
21372A:  BLX             j__Z18RwMemFloat32ToRealPvj; RwMemFloat32ToReal(void *,uint)
21372E:  MOV             R6, R4
213730:  B               loc_213734
213732:  MOVS            R6, #0
213734:  MOV             R0, R6
213736:  ADD             SP, SP, #8
213738:  POP.W           {R8}
21373C:  POP             {R4-R7,PC}
