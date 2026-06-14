; =========================================================
; Game Engine Function: _ZN11CFileLoader17LoadTexDictionaryEPKc
; Address            : 0x466E9C - 0x466EEC
; =========================================================

466E9C:  PUSH            {R4,R5,R7,LR}
466E9E:  ADD             R7, SP, #8
466EA0:  MOV             R2, R0
466EA2:  MOVS            R0, #2
466EA4:  MOVS            R1, #1
466EA6:  BLX             j__Z12RwStreamOpen12RwStreamType18RwStreamAccessTypePKv; RwStreamOpen(RwStreamType,RwStreamAccessType,void const*)
466EAA:  MOV             R4, R0
466EAC:  CBZ             R4, loc_466ED4
466EAE:  MOV             R0, R4; int
466EB0:  MOVS            R1, #0x16
466EB2:  MOVS            R2, #0
466EB4:  MOVS            R3, #0
466EB6:  BLX             j__Z17RwStreamFindChunkP8RwStreamjPjS1_; RwStreamFindChunk(RwStream *,uint,uint *,uint *)
466EBA:  CBZ             R0, loc_466EDC
466EBC:  MOV             R0, R4
466EBE:  BLX             j__Z28RwTexDictionaryGtaStreamReadP8RwStream; RwTexDictionaryGtaStreamRead(RwStream *)
466EC2:  MOV             R5, R0
466EC4:  MOV             R0, R4
466EC6:  MOVS            R1, #0
466EC8:  BLX             j__Z13RwStreamCloseP8RwStreamPv; RwStreamClose(RwStream *,void *)
466ECC:  CMP             R5, #0
466ECE:  ITT NE
466ED0:  MOVNE           R0, R5
466ED2:  POPNE           {R4,R5,R7,PC}
466ED4:  POP.W           {R4,R5,R7,LR}
466ED8:  B.W             sub_18B0C8
466EDC:  MOV             R0, R4
466EDE:  MOVS            R1, #0
466EE0:  BLX             j__Z13RwStreamCloseP8RwStreamPv; RwStreamClose(RwStream *,void *)
466EE4:  POP.W           {R4,R5,R7,LR}
466EE8:  B.W             sub_18B0C8
