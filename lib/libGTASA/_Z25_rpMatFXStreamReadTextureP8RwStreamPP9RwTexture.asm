; =========================================================
; Game Engine Function: _Z25_rpMatFXStreamReadTextureP8RwStreamPP9RwTexture
; Address            : 0x1C6034 - 0x1C6092
; =========================================================

1C6034:  PUSH            {R4,R5,R7,LR}
1C6036:  ADD             R7, SP, #8
1C6038:  SUB             SP, SP, #0x10
1C603A:  MOV             R5, R1
1C603C:  ADD             R1, SP, #0x18+var_C
1C603E:  MOVS            R2, #4
1C6040:  MOV             R4, R0
1C6042:  BLX             j__Z17RwStreamReadInt32P8RwStreamPij; RwStreamReadInt32(RwStream *,int *,uint)
1C6046:  CBZ             R0, loc_1C6084
1C6048:  LDR             R0, [SP,#0x18+var_C]
1C604A:  CBZ             R0, loc_1C6088
1C604C:  MOV             R0, R4; int
1C604E:  MOVS            R1, #6
1C6050:  MOVS            R2, #0
1C6052:  MOVS            R3, #0
1C6054:  BLX             j__Z17RwStreamFindChunkP8RwStreamjPjS1_; RwStreamFindChunk(RwStream *,uint,uint *,uint *)
1C6058:  CBZ             R0, loc_1C6084
1C605A:  ADD             R0, SP, #0x18+var_14
1C605C:  BLX             j__Z10RwErrorGetP7RwError; RwErrorGet(RwError *)
1C6060:  MOV             R0, R4; int
1C6062:  BLX             j__Z19RwTextureStreamReadP8RwStream; RwTextureStreamRead(RwStream *)
1C6066:  CMP             R0, #0
1C6068:  STR             R0, [R5]
1C606A:  BNE             loc_1C608C
1C606C:  ADD             R0, SP, #0x18+var_14
1C606E:  BLX             j__Z10RwErrorGetP7RwError; RwErrorGet(RwError *)
1C6072:  LDR             R0, [SP,#0x18+var_10]
1C6074:  CMP.W           R0, #0x80000000
1C6078:  IT NE
1C607A:  CMPNE           R0, #0x16
1C607C:  BEQ             loc_1C608C
1C607E:  ADD             R0, SP, #0x18+var_14
1C6080:  BLX             j__Z10RwErrorSetP7RwError; RwErrorSet(RwError *)
1C6084:  MOVS            R4, #0
1C6086:  B               loc_1C608C
1C6088:  MOVS            R0, #0
1C608A:  STR             R0, [R5]
1C608C:  MOV             R0, R4
1C608E:  ADD             SP, SP, #0x10
1C6090:  POP             {R4,R5,R7,PC}
