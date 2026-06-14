; =========================================================
; Game Engine Function: _Z19RtAnimAnimationReadPKc
; Address            : 0x1EB058 - 0x1EB090
; =========================================================

1EB058:  PUSH            {R4,R5,R7,LR}
1EB05A:  ADD             R7, SP, #8
1EB05C:  MOV             R2, R0
1EB05E:  MOVS            R0, #2
1EB060:  MOVS            R1, #1
1EB062:  BLX             j__Z12RwStreamOpen12RwStreamType18RwStreamAccessTypePKv; RwStreamOpen(RwStreamType,RwStreamAccessType,void const*)
1EB066:  MOV             R4, R0
1EB068:  CBZ             R4, loc_1EB08C
1EB06A:  MOV             R0, R4; int
1EB06C:  MOVS            R1, #0x1B
1EB06E:  MOVS            R2, #0
1EB070:  MOVS            R3, #0
1EB072:  BLX             j__Z17RwStreamFindChunkP8RwStreamjPjS1_; RwStreamFindChunk(RwStream *,uint,uint *,uint *)
1EB076:  CBZ             R0, loc_1EB08C
1EB078:  MOV             R0, R4
1EB07A:  BLX             j__Z25RtAnimAnimationStreamReadP8RwStream; RtAnimAnimationStreamRead(RwStream *)
1EB07E:  MOV             R5, R0
1EB080:  MOV             R0, R4
1EB082:  MOVS            R1, #0
1EB084:  BLX             j__Z13RwStreamCloseP8RwStreamPv; RwStreamClose(RwStream *,void *)
1EB088:  MOV             R0, R5
1EB08A:  POP             {R4,R5,R7,PC}
1EB08C:  MOVS            R0, #0
1EB08E:  POP             {R4,R5,R7,PC}
