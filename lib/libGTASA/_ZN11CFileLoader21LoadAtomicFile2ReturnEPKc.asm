; =========================================================
; Game Engine Function: _ZN11CFileLoader21LoadAtomicFile2ReturnEPKc
; Address            : 0x3EF014 - 0x3EF046
; =========================================================

3EF014:  PUSH            {R4,R5,R7,LR}
3EF016:  ADD             R7, SP, #8
3EF018:  MOV             R2, R0
3EF01A:  MOVS            R0, #2
3EF01C:  MOVS            R1, #1
3EF01E:  BLX             j__Z12RwStreamOpen12RwStreamType18RwStreamAccessTypePKv; RwStreamOpen(RwStreamType,RwStreamAccessType,void const*)
3EF022:  MOVS            R1, #0x10
3EF024:  MOVS            R2, #0
3EF026:  MOVS            R3, #0
3EF028:  MOV             R4, R0
3EF02A:  MOVS            R5, #0
3EF02C:  BLX             j__Z17RwStreamFindChunkP8RwStreamjPjS1_; RwStreamFindChunk(RwStream *,uint,uint *,uint *)
3EF030:  CBZ             R0, loc_3EF03A
3EF032:  MOV             R0, R4
3EF034:  BLX             j__Z17RpClumpStreamReadP8RwStream; RpClumpStreamRead(RwStream *)
3EF038:  MOV             R5, R0
3EF03A:  MOV             R0, R4
3EF03C:  MOVS            R1, #0
3EF03E:  BLX             j__Z13RwStreamCloseP8RwStreamPv; RwStreamClose(RwStream *,void *)
3EF042:  MOV             R0, R5
3EF044:  POP             {R4,R5,R7,PC}
