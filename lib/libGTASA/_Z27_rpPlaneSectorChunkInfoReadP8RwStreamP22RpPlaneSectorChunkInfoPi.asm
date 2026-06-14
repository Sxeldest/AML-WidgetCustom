; =========================================================
; Game Engine Function: _Z27_rpPlaneSectorChunkInfoReadP8RwStreamP22RpPlaneSectorChunkInfoPi
; Address            : 0x21373E - 0x2137BC
; =========================================================

21373E:  PUSH            {R4-R7,LR}
213740:  ADD             R7, SP, #0xC
213742:  PUSH.W          {R8}
213746:  SUB             SP, SP, #8
213748:  MOV             R8, R2
21374A:  ADD             R2, SP, #0x18+var_14
21374C:  MOV             R4, R1
21374E:  MOVS            R1, #1
213750:  MOVS            R3, #0
213752:  MOV             R5, R0
213754:  MOVS            R6, #0
213756:  BLX             j__Z17RwStreamFindChunkP8RwStreamjPjS1_; RwStreamFindChunk(RwStream *,uint,uint *,uint *)
21375A:  CBZ             R0, loc_2137B2
21375C:  VMOV.I32        Q8, #0
213760:  MOV             R0, R4
213762:  STR             R6, [R4,#0x14]
213764:  MOV             R1, R4; void *
213766:  MOVS            R2, #0x18; size_t
213768:  VST1.32         {D16-D17}, [R0]!
21376C:  STR             R6, [R0]
21376E:  MOV             R0, R5; int
213770:  BLX             j__Z12RwStreamReadP8RwStreamPvj; RwStreamRead(RwStream *,void *,uint)
213774:  CMP             R0, #0x18
213776:  BNE             loc_2137B2
213778:  LDR             R0, [SP,#0x18+var_14]
21377A:  ADD.W           R1, R0, #0xC
21377E:  STR.W           R1, [R8]
213782:  SUB.W           R1, R0, #0x18
213786:  MOV             R0, R5
213788:  BLX             j__Z12RwStreamSkipP8RwStreamj; RwStreamSkip(RwStream *,uint)
21378C:  MOV             R0, R4; void *
21378E:  MOVS            R1, #0x18; unsigned int
213790:  BLX             j__Z13RwMemNative32Pvj; RwMemNative32(void *,uint)
213794:  ADDS            R0, R4, #4; void *
213796:  MOVS            R1, #4; unsigned int
213798:  BLX             j__Z18RwMemFloat32ToRealPvj; RwMemFloat32ToReal(void *,uint)
21379C:  ADD.W           R0, R4, #0x10; void *
2137A0:  MOVS            R1, #4; unsigned int
2137A2:  BLX             j__Z18RwMemFloat32ToRealPvj; RwMemFloat32ToReal(void *,uint)
2137A6:  ADD.W           R0, R4, #0x14; void *
2137AA:  MOVS            R1, #4; unsigned int
2137AC:  BLX             j__Z18RwMemFloat32ToRealPvj; RwMemFloat32ToReal(void *,uint)
2137B0:  MOV             R6, R4
2137B2:  MOV             R0, R6
2137B4:  ADD             SP, SP, #8
2137B6:  POP.W           {R8}
2137BA:  POP             {R4-R7,PC}
