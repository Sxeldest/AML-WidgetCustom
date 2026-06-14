; =========================================================
; Game Engine Function: sub_1C4FA0
; Address            : 0x1C4FA0 - 0x1C5040
; =========================================================

1C4FA0:  PUSH            {R4-R7,LR}
1C4FA2:  ADD             R7, SP, #0xC
1C4FA4:  PUSH.W          {R8}
1C4FA8:  SUB             SP, SP, #8
1C4FAA:  LDR             R5, [R2,R3]
1C4FAC:  MOV             R8, R0
1C4FAE:  CMP             R5, #0
1C4FB0:  BEQ             loc_1C5036
1C4FB2:  BLX             j__Z18RwEngineGetVersionv; RwEngineGetVersion(void)
1C4FB6:  ADD             R1, SP, #0x18+var_14
1C4FB8:  STR             R0, [SP,#0x18+var_14]
1C4FBA:  MOV             R0, R8
1C4FBC:  MOVS            R2, #4
1C4FBE:  BLX             j__Z18RwStreamWriteInt32P8RwStreamPKij; RwStreamWriteInt32(RwStream *,int const*,uint)
1C4FC2:  CBZ             R0, loc_1C5032
1C4FC4:  LDR             R0, [R5]
1C4FC6:  MOVS            R1, #0
1C4FC8:  MOVS            R2, #4; size_t
1C4FCA:  LDR             R0, [R0]
1C4FCC:  STRB.W          R0, [SP,#0x18+var_18]
1C4FD0:  LDR             R0, [R5,#4]
1C4FD2:  STRB.W          R0, [SP,#0x18+var_17]
1C4FD6:  LDR             R0, [R5,#0x30]
1C4FD8:  STRB.W          R1, [SP,#0x18+var_15]
1C4FDC:  MOV             R1, SP; void *
1C4FDE:  CMP             R0, #0
1C4FE0:  IT NE
1C4FE2:  MOVNE           R0, #1
1C4FE4:  STRB.W          R0, [SP,#0x18+var_16]
1C4FE8:  MOV             R0, R8; int
1C4FEA:  BLX             j__Z13RwStreamWriteP8RwStreamPKvj; RwStreamWrite(RwStream *,void const*,uint)
1C4FEE:  CBZ             R0, loc_1C5032
1C4FF0:  LDR             R2, [R5,#4]; size_t
1C4FF2:  CBZ             R2, loc_1C501C
1C4FF4:  ADD.W           R1, R5, #0x28 ; '('; void *
1C4FF8:  MOV             R0, R8; int
1C4FFA:  BLX             j__Z13RwStreamWriteP8RwStreamPKvj; RwStreamWrite(RwStream *,void const*,uint)
1C4FFE:  CBZ             R0, loc_1C5032
1C5000:  LDR             R0, [R5,#4]
1C5002:  CBZ             R0, loc_1C501C
1C5004:  ADD.W           R6, R5, #8
1C5008:  MOVS            R4, #0
1C500A:  LDR.W           R1, [R6,R4,LSL#2]
1C500E:  MOV             R0, R8
1C5010:  BLX             j__Z26_rpMatFXStreamWriteTextureP8RwStreamPK9RwTexture; _rpMatFXStreamWriteTexture(RwStream *,RwTexture const*)
1C5014:  LDR             R0, [R5,#4]
1C5016:  ADDS            R4, #1
1C5018:  CMP             R4, R0
1C501A:  BCC             loc_1C500A
1C501C:  LDR             R0, [R5,#0x30]
1C501E:  CBZ             R0, loc_1C5036
1C5020:  ADDS            R0, #8
1C5022:  MOV             R1, R8
1C5024:  BLX             j__Z20_rwStringStreamWritePKcP8RwStream; _rwStringStreamWrite(char const*,RwStream *)
1C5028:  CMP             R0, #0
1C502A:  IT EQ
1C502C:  MOVEQ.W         R8, #0
1C5030:  B               loc_1C5036
1C5032:  MOV.W           R8, #0
1C5036:  MOV             R0, R8
1C5038:  ADD             SP, SP, #8
1C503A:  POP.W           {R8}
1C503E:  POP             {R4-R7,PC}
