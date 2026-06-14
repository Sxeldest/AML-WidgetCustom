; =========================================================
; Game Engine Function: _Z21_rpClumpChunkInfoReadP8RwStreamP16RpClumpChunkInfoPi
; Address            : 0x215618 - 0x215674
; =========================================================

215618:  PUSH            {R4-R7,LR}
21561A:  ADD             R7, SP, #0xC
21561C:  PUSH.W          {R8}
215620:  SUB             SP, SP, #8
215622:  MOV             R8, R2
215624:  ADD             R2, SP, #0x18+var_14
215626:  MOV             R4, R1
215628:  MOV             R3, SP
21562A:  MOVS            R1, #1
21562C:  MOV             R6, R0
21562E:  BLX             j__Z17RwStreamFindChunkP8RwStreamjPjS1_; RwStreamFindChunk(RwStream *,uint,uint *,uint *)
215632:  CBZ             R0, loc_215668
215634:  LDR             R0, [SP,#0x18+var_18]
215636:  CMP.W           R0, #0x33000
21563A:  BHI             loc_215646
21563C:  MOVS            R0, #0
21563E:  MOVS            R5, #4
215640:  STRD.W          R0, R0, [R4,#4]
215644:  B               loc_215648
215646:  MOVS            R5, #0xC
215648:  MOV             R0, R6; int
21564A:  MOV             R1, R4; void *
21564C:  MOV             R2, R5; size_t
21564E:  BLX             j__Z12RwStreamReadP8RwStreamPvj; RwStreamRead(RwStream *,void *,uint)
215652:  CMP             R0, R5
215654:  BNE             loc_215668
215656:  MOV             R0, R4; void *
215658:  MOV             R1, R5; unsigned int
21565A:  BLX             j__Z13RwMemNative32Pvj; RwMemNative32(void *,uint)
21565E:  LDR             R0, [SP,#0x18+var_14]
215660:  ADDS            R0, #0xC
215662:  STR.W           R0, [R8]
215666:  B               loc_21566A
215668:  MOVS            R4, #0
21566A:  MOV             R0, R4
21566C:  ADD             SP, SP, #8
21566E:  POP.W           {R8}
215672:  POP             {R4-R7,PC}
