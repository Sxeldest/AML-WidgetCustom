; =========================================================
; Game Engine Function: _Z26_rpMaterialListStreamWritePK14RpMaterialListP8RwStream
; Address            : 0x217A08 - 0x217B48
; =========================================================

217A08:  PUSH            {R4-R7,LR}
217A0A:  ADD             R7, SP, #0xC
217A0C:  PUSH.W          {R8-R11}
217A10:  SUB             SP, SP, #0xC
217A12:  MOV             R11, R0
217A14:  MOV             R9, R1
217A16:  MOV             R10, R11
217A18:  MOVS            R0, #0x10
217A1A:  LDR.W           R1, [R10,#4]!
217A1E:  CMP             R1, #1
217A20:  ADD.W           R8, R0, R1,LSL#2
217A24:  BLT             loc_217A62
217A26:  MOVS            R6, #0
217A28:  LDR.W           R2, [R11]
217A2C:  MOV             R4, R6
217A2E:  SUBS            R3, R2, #4
217A30:  CBZ             R4, loc_217A4A
217A32:  LDR.W           R0, [R3,R4,LSL#2]
217A36:  SUBS            R5, R4, #1
217A38:  LDR.W           R4, [R2,R6,LSL#2]
217A3C:  CMP             R0, R4
217A3E:  MOV             R4, R5
217A40:  BNE             loc_217A30
217A42:  ADDS            R2, R5, #1
217A44:  CMP             R2, #1
217A46:  BGE             loc_217A5C
217A48:  B               loc_217A4E
217A4A:  LDR.W           R0, [R2,R6,LSL#2]
217A4E:  BLX             j__Z23RpMaterialStreamGetSizePK10RpMaterial; RpMaterialStreamGetSize(RpMaterial const*)
217A52:  ADD             R0, R8
217A54:  LDR.W           R1, [R10]
217A58:  ADD.W           R8, R0, #0xC
217A5C:  ADDS            R6, #1
217A5E:  CMP             R6, R1
217A60:  BLT             loc_217A28
217A62:  MOVW            R4, #:lower16:(stru_35FF8.st_size+3)
217A66:  MOVW            R6, #0xFFFF
217A6A:  MOVT            R4, #:upper16:(stru_35FF8.st_size+3)
217A6E:  MOV             R0, R9
217A70:  MOVS            R1, #8
217A72:  MOV             R2, R8
217A74:  MOV             R3, R4
217A76:  STR             R6, [SP,#0x28+var_28]
217A78:  BLX             j__Z34_rwStreamWriteVersionedChunkHeaderP8RwStreamiijj; _rwStreamWriteVersionedChunkHeader(RwStream *,int,int,uint,uint)
217A7C:  CMP             R0, #0
217A7E:  BEQ             loc_217B3A
217A80:  LDR.W           R0, [R10]
217A84:  MOVS            R1, #4
217A86:  MOV             R3, R4
217A88:  STR             R6, [SP,#0x28+var_28]
217A8A:  ADD.W           R2, R1, R0,LSL#2
217A8E:  MOV             R0, R9
217A90:  MOVS            R1, #1
217A92:  BLX             j__Z34_rwStreamWriteVersionedChunkHeaderP8RwStreamiijj; _rwStreamWriteVersionedChunkHeader(RwStream *,int,int,uint,uint)
217A96:  CMP             R0, #0
217A98:  BEQ             loc_217B3A
217A9A:  MOV             R0, R9
217A9C:  MOV             R1, R10
217A9E:  MOVS            R2, #4
217AA0:  BLX             j__Z18RwStreamWriteInt32P8RwStreamPKij; RwStreamWriteInt32(RwStream *,int const*,uint)
217AA4:  CMP             R0, #0
217AA6:  BEQ             loc_217B3A
217AA8:  LDR.W           R0, [R10]
217AAC:  CMP             R0, #1
217AAE:  BLT             loc_217B3E
217AB0:  ADD             R5, SP, #0x28+var_20
217AB2:  MOVS            R6, #0
217AB4:  CMP             R6, #0
217AB6:  SUB.W           R0, R6, #1
217ABA:  STR             R0, [SP,#0x28+var_20]
217ABC:  BEQ             loc_217ADA
217ABE:  LDR.W           R0, [R11]
217AC2:  MOV             R2, R6
217AC4:  SUBS            R1, R0, #4
217AC6:  LDR.W           R3, [R0,R6,LSL#2]
217ACA:  LDR.W           R4, [R1,R2,LSL#2]
217ACE:  CMP             R4, R3
217AD0:  BEQ             loc_217ADA
217AD2:  SUBS            R3, R2, #2
217AD4:  SUBS            R2, #1
217AD6:  STR             R3, [SP,#0x28+var_20]
217AD8:  BNE             loc_217AC6
217ADA:  MOV             R0, R9
217ADC:  MOV             R1, R5
217ADE:  MOVS            R2, #4
217AE0:  BLX             j__Z18RwStreamWriteInt32P8RwStreamPKij; RwStreamWriteInt32(RwStream *,int const*,uint)
217AE4:  CBZ             R0, loc_217B3A
217AE6:  LDR.W           R0, [R10]
217AEA:  ADDS            R6, #1
217AEC:  CMP             R6, R0
217AEE:  BLT             loc_217AB4
217AF0:  CMP             R0, #1
217AF2:  BLT             loc_217B3E
217AF4:  MOVS            R5, #0
217AF6:  MOV.W           R6, #0xFFFFFFFF
217AFA:  MOV             R1, R6
217AFC:  STR             R5, [SP,#0x28+var_20]
217AFE:  ADDS            R2, R1, #1
217B00:  STR             R1, [SP,#0x28+var_20]
217B02:  BEQ             loc_217B1C
217B04:  LDR.W           R2, [R11]
217B08:  LDR.W           R3, [R2,R5,LSL#2]
217B0C:  LDR.W           R2, [R2,R1,LSL#2]
217B10:  SUBS            R1, #1
217B12:  CMP             R2, R3
217B14:  BNE             loc_217AFE
217B16:  ADDS            R1, #2
217B18:  CMP             R1, #0
217B1A:  BGT             loc_217B30
217B1C:  LDR.W           R0, [R11]
217B20:  MOV             R1, R9
217B22:  LDR.W           R0, [R0,R5,LSL#2]
217B26:  BLX             j__Z21RpMaterialStreamWritePK10RpMaterialP8RwStream; RpMaterialStreamWrite(RpMaterial const*,RwStream *)
217B2A:  CBZ             R0, loc_217B3A
217B2C:  LDR.W           R0, [R10]
217B30:  ADDS            R5, #1
217B32:  ADDS            R6, #1
217B34:  CMP             R5, R0
217B36:  BLT             loc_217AFA
217B38:  B               loc_217B3E
217B3A:  MOV.W           R11, #0
217B3E:  MOV             R0, R11
217B40:  ADD             SP, SP, #0xC
217B42:  POP.W           {R8-R11}
217B46:  POP             {R4-R7,PC}
