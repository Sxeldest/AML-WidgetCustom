; =========================================================
; Game Engine Function: _Z21RpMTEffectStreamWritePK10RpMTEffectP8RwStream
; Address            : 0x1C5920 - 0x1C59CC
; =========================================================

1C5920:  PUSH            {R4-R7,LR}
1C5922:  ADD             R7, SP, #0xC
1C5924:  PUSH.W          {R8-R11}
1C5928:  SUB             SP, SP, #0xC
1C592A:  MOV             R10, R0
1C592C:  MOV             R9, R1
1C592E:  MOV             R6, R10
1C5930:  LDR             R1, =(unk_6B7180 - 0x1C593A)
1C5932:  LDR.W           R0, [R6],#8
1C5936:  ADD             R1, PC; unk_6B7180
1C5938:  ADD.W           R0, R0, R0,LSL#2
1C593C:  ADD.W           R5, R1, R0,LSL#2
1C5940:  MOV             R0, R6; char *
1C5942:  BLX             j__Z22_rwStringStreamGetSizePKc; _rwStringStreamGetSize(char const*)
1C5946:  LDR             R1, [R5,#0x10]
1C5948:  MOV             R4, R0
1C594A:  MOV             R0, R10
1C594C:  BLX             R1
1C594E:  MOV             R5, R0
1C5950:  LDR.W           R0, [R10]
1C5954:  STR             R0, [SP,#0x28+var_20]
1C5956:  ADD             R0, SP, #0x28+var_20; void *
1C5958:  MOVS            R1, #4; unsigned int
1C595A:  BLX             j__Z19RwMemLittleEndian32Pvj; RwMemLittleEndian32(void *,uint)
1C595E:  MOVW            R8, #:lower16:(stru_35FF8.st_size+3)
1C5962:  ADDS            R0, R4, R5
1C5964:  ADD.W           R2, R0, #0x28 ; '('
1C5968:  MOVT            R8, #:upper16:(stru_35FF8.st_size+3)
1C596C:  MOVW            R11, #0xFFFF
1C5970:  MOV             R0, R9
1C5972:  MOVS            R1, #0x20 ; ' '
1C5974:  MOV             R3, R8
1C5976:  STR.W           R11, [SP,#0x28+var_28]
1C597A:  BLX             j__Z34_rwStreamWriteVersionedChunkHeaderP8RwStreamiijj; _rwStreamWriteVersionedChunkHeader(RwStream *,int,int,uint,uint)
1C597E:  CBZ             R0, loc_1C59C2
1C5980:  MOV             R0, R9
1C5982:  MOVS            R1, #1
1C5984:  MOVS            R2, #4
1C5986:  MOV             R3, R8
1C5988:  STR.W           R11, [SP,#0x28+var_28]
1C598C:  BLX             j__Z34_rwStreamWriteVersionedChunkHeaderP8RwStreamiijj; _rwStreamWriteVersionedChunkHeader(RwStream *,int,int,uint,uint)
1C5990:  CBZ             R0, loc_1C59C2
1C5992:  ADD             R1, SP, #0x28+var_20; void *
1C5994:  MOV             R0, R9; int
1C5996:  MOVS            R2, #4; size_t
1C5998:  BLX             j__Z13RwStreamWriteP8RwStreamPKvj; RwStreamWrite(RwStream *,void const*,uint)
1C599C:  CBZ             R0, loc_1C59C2
1C599E:  MOV             R0, R6
1C59A0:  MOV             R1, R9
1C59A2:  BLX             j__Z20_rwStringStreamWritePKcP8RwStream; _rwStringStreamWrite(char const*,RwStream *)
1C59A6:  CBZ             R0, loc_1C59C2
1C59A8:  LDR.W           R0, [R10]
1C59AC:  LDR             R1, =(unk_6B7180 - 0x1C59B6)
1C59AE:  ADD.W           R0, R0, R0,LSL#2
1C59B2:  ADD             R1, PC; unk_6B7180
1C59B4:  ADD.W           R0, R1, R0,LSL#2
1C59B8:  MOV             R1, R9
1C59BA:  LDR             R2, [R0,#0xC]
1C59BC:  MOV             R0, R10
1C59BE:  BLX             R2
1C59C0:  B               loc_1C59C4
1C59C2:  MOVS            R0, #0
1C59C4:  ADD             SP, SP, #0xC
1C59C6:  POP.W           {R8-R11}
1C59CA:  POP             {R4-R7,PC}
