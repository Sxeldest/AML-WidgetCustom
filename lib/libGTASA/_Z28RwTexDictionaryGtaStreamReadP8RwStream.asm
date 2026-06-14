; =========================================================
; Game Engine Function: _Z28RwTexDictionaryGtaStreamReadP8RwStream
; Address            : 0x5D34C4 - 0x5D3536
; =========================================================

5D34C4:  PUSH            {R4,R5,R7,LR}
5D34C6:  ADD             R7, SP, #8
5D34C8:  SUB             SP, SP, #0x10
5D34CA:  ADD             R2, SP, #0x18+var_C
5D34CC:  ADD             R3, SP, #0x18+var_10
5D34CE:  MOVS            R1, #1
5D34D0:  MOV             R4, R0
5D34D2:  BLX.W           j__Z17RwStreamFindChunkP8RwStreamjPjS1_; RwStreamFindChunk(RwStream *,uint,uint *,uint *)
5D34D6:  CBZ             R0, loc_5D34F0
5D34D8:  LDR             R2, [SP,#0x18+var_C]; size_t
5D34DA:  ADD             R1, SP, #0x18+var_14; void *
5D34DC:  MOV             R0, R4; int
5D34DE:  BLX.W           j__Z12RwStreamReadP8RwStreamPvj; RwStreamRead(RwStream *,void *,uint)
5D34E2:  LDR             R1, [SP,#0x18+var_C]
5D34E4:  CMP             R0, R1
5D34E6:  BNE             loc_5D34F0
5D34E8:  BLX.W           j__Z21RwTexDictionaryCreatev; RwTexDictionaryCreate(void)
5D34EC:  MOV             R5, R0
5D34EE:  CBNZ            R5, loc_5D34FE
5D34F0:  MOVS            R4, #0
5D34F2:  MOV             R0, R4
5D34F4:  ADD             SP, SP, #0x10
5D34F6:  POP             {R4,R5,R7,PC}
5D34F8:  MOV             R0, R5
5D34FA:  BLX.W           j__Z25RwTexDictionaryAddTextureP15RwTexDictionaryP9RwTexture; RwTexDictionaryAddTexture(RwTexDictionary *,RwTexture *)
5D34FE:  LDRH.W          R0, [SP,#0x18+var_14]
5D3502:  CMP             R0, #0
5D3504:  SUB.W           R1, R0, #1
5D3508:  STRH.W          R1, [SP,#0x18+var_14]
5D350C:  BEQ             loc_5D3532
5D350E:  MOV             R0, R4
5D3510:  BLX.W           j__Z22RwTextureGtaStreamReadP8RwStream; RwTextureGtaStreamRead(RwStream *)
5D3514:  MOV             R1, R0
5D3516:  CMP             R1, #0
5D3518:  BNE             loc_5D34F8
5D351A:  LDR             R0, =(_Z14destroyTextureP9RwTexturePv_ptr - 0x5D3524)
5D351C:  MOVS            R2, #0
5D351E:  MOVS            R4, #0
5D3520:  ADD             R0, PC; _Z14destroyTextureP9RwTexturePv_ptr
5D3522:  LDR             R1, [R0]; destroyTexture(RwTexture *,void *)
5D3524:  MOV             R0, R5
5D3526:  BLX.W           j__Z29RwTexDictionaryForAllTexturesPK15RwTexDictionaryPFP9RwTextureS3_PvES4_; RwTexDictionaryForAllTextures(RwTexDictionary const*,RwTexture * (*)(RwTexture *,void *),void *)
5D352A:  MOV             R0, R5
5D352C:  BLX.W           j__Z22RwTexDictionaryDestroyP15RwTexDictionary; RwTexDictionaryDestroy(RwTexDictionary *)
5D3530:  B               loc_5D34F2
5D3532:  MOV             R4, R5
5D3534:  B               loc_5D34F2
