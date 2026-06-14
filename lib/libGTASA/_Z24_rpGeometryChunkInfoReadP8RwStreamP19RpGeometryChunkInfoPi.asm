; =========================================================
; Game Engine Function: _Z24_rpGeometryChunkInfoReadP8RwStreamP19RpGeometryChunkInfoPi
; Address            : 0x216750 - 0x2167AA
; =========================================================

216750:  PUSH            {R4-R7,LR}
216752:  ADD             R7, SP, #0xC
216754:  PUSH.W          {R11}
216758:  SUB             SP, SP, #8
21675A:  MOV             R5, R2
21675C:  ADD             R2, SP, #0x18+var_14
21675E:  MOV             R4, R1
216760:  MOV             R3, SP
216762:  MOVS            R1, #1
216764:  MOV             R6, R0
216766:  BLX             j__Z17RwStreamFindChunkP8RwStreamjPjS1_; RwStreamFindChunk(RwStream *,uint,uint *,uint *)
21676A:  CBZ             R0, loc_21679E
21676C:  VMOV.I32        Q8, #0
216770:  MOV             R0, R6; int
216772:  MOV             R1, R4; void *
216774:  MOVS            R2, #0x10; size_t
216776:  VST1.32         {D16-D17}, [R4]
21677A:  BLX             j__Z12RwStreamReadP8RwStreamPvj; RwStreamRead(RwStream *,void *,uint)
21677E:  CMP             R0, #0x10
216780:  BNE             loc_21679E
216782:  LDR             R0, [SP,#0x18+var_14]
216784:  SUB.W           R1, R0, #0x10
216788:  MOV             R0, R6
21678A:  BLX             j__Z12RwStreamSkipP8RwStreamj; RwStreamSkip(RwStream *,uint)
21678E:  LDR             R0, [SP,#0x18+var_14]
216790:  MOVS            R1, #0x10; unsigned int
216792:  ADDS            R0, #0xC
216794:  STR             R0, [R5]
216796:  MOV             R0, R4; void *
216798:  BLX             j__Z13RwMemNative32Pvj; RwMemNative32(void *,uint)
21679C:  B               loc_2167A0
21679E:  MOVS            R4, #0
2167A0:  MOV             R0, R4
2167A2:  ADD             SP, SP, #8
2167A4:  POP.W           {R11}
2167A8:  POP             {R4-R7,PC}
