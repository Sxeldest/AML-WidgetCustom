; =========================================================
; Game Engine Function: _Z20RpMTEffectStreamReadP8RwStream
; Address            : 0x1C5BB8 - 0x1C5C5C
; =========================================================

1C5BB8:  PUSH            {R4,R5,R7,LR}
1C5BBA:  ADD             R7, SP, #8
1C5BBC:  SUB             SP, SP, #0x30
1C5BBE:  MOV             R4, R0
1C5BC0:  LDR             R0, =(__stack_chk_guard_ptr - 0x1C5BCA)
1C5BC2:  MOVS            R1, #1
1C5BC4:  MOVS            R2, #0
1C5BC6:  ADD             R0, PC; __stack_chk_guard_ptr
1C5BC8:  MOVS            R3, #0
1C5BCA:  MOVS            R5, #0
1C5BCC:  LDR             R0, [R0]; __stack_chk_guard
1C5BCE:  LDR             R0, [R0]
1C5BD0:  STR             R0, [SP,#0x38+var_C]
1C5BD2:  MOV             R0, R4; int
1C5BD4:  BLX             j__Z17RwStreamFindChunkP8RwStreamjPjS1_; RwStreamFindChunk(RwStream *,uint,uint *,uint *)
1C5BD8:  CBZ             R0, loc_1C5C44
1C5BDA:  ADD             R1, SP, #0x38+var_30; void *
1C5BDC:  MOV             R0, R4; int
1C5BDE:  MOVS            R2, #4; size_t
1C5BE0:  BLX             j__Z12RwStreamReadP8RwStreamPvj; RwStreamRead(RwStream *,void *,uint)
1C5BE4:  CBZ             R0, loc_1C5C42
1C5BE6:  ADD             R0, SP, #0x38+var_30; void *
1C5BE8:  MOVS            R1, #4; unsigned int
1C5BEA:  BLX             j__Z13RwMemNative32Pvj; RwMemNative32(void *,uint)
1C5BEE:  LDR             R0, [SP,#0x38+var_30]
1C5BF0:  LDR             R1, =(unk_6B7180 - 0x1C5BFA)
1C5BF2:  ADD.W           R0, R0, R0,LSL#2
1C5BF6:  ADD             R1, PC; unk_6B7180
1C5BF8:  ADD.W           R5, R1, R0,LSL#2
1C5BFC:  LDR.W           R0, [R5,#8]!
1C5C00:  CBZ             R0, loc_1C5C42
1C5C02:  ADD             R0, SP, #0x38+var_2C
1C5C04:  MOV             R1, R4
1C5C06:  BLX             j__Z26_rwStringStreamFindAndReadPcP8RwStream; _rwStringStreamFindAndRead(char *,RwStream *)
1C5C0A:  CBZ             R0, loc_1C5C42
1C5C0C:  ADD             R3, SP, #0x38+var_34
1C5C0E:  MOV             R2, SP
1C5C10:  MOV             R0, R4; int
1C5C12:  MOVS            R1, #3
1C5C14:  BLX             j__Z17RwStreamFindChunkP8RwStreamjPjS1_; RwStreamFindChunk(RwStream *,uint,uint *,uint *)
1C5C18:  CBZ             R0, loc_1C5C42
1C5C1A:  LDRD.W          R3, R2, [SP,#0x38+var_38]
1C5C1E:  MOV             R0, R4
1C5C20:  LDR             R1, [SP,#0x38+var_30]
1C5C22:  LDR             R5, [R5]
1C5C24:  BLX             R5
1C5C26:  MOV             R5, R0
1C5C28:  CBZ             R5, loc_1C5C42
1C5C2A:  LDR             R0, =(RwEngineInstance_ptr - 0x1C5C34)
1C5C2C:  ADD             R1, SP, #0x38+var_2C
1C5C2E:  MOVS            R2, #0x1F
1C5C30:  ADD             R0, PC; RwEngineInstance_ptr
1C5C32:  LDR             R0, [R0]; RwEngineInstance
1C5C34:  LDR             R0, [R0]
1C5C36:  LDR.W           R3, [R0,#0xFC]
1C5C3A:  ADD.W           R0, R5, #8
1C5C3E:  BLX             R3
1C5C40:  B               loc_1C5C44
1C5C42:  MOVS            R5, #0
1C5C44:  LDR             R0, =(__stack_chk_guard_ptr - 0x1C5C4C)
1C5C46:  LDR             R1, [SP,#0x38+var_C]
1C5C48:  ADD             R0, PC; __stack_chk_guard_ptr
1C5C4A:  LDR             R0, [R0]; __stack_chk_guard
1C5C4C:  LDR             R0, [R0]
1C5C4E:  SUBS            R0, R0, R1
1C5C50:  ITTT EQ
1C5C52:  MOVEQ           R0, R5
1C5C54:  ADDEQ           SP, SP, #0x30 ; '0'
1C5C56:  POPEQ           {R4,R5,R7,PC}
1C5C58:  BLX             __stack_chk_fail
