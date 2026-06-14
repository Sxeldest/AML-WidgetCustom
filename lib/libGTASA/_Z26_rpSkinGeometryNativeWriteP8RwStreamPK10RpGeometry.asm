; =========================================================
; Game Engine Function: _Z26_rpSkinGeometryNativeWriteP8RwStreamPK10RpGeometry
; Address            : 0x1C7C98 - 0x1C7D12
; =========================================================

1C7C98:  PUSH            {R4,R5,R7,LR}
1C7C9A:  ADD             R7, SP, #8
1C7C9C:  SUB             SP, SP, #8
1C7C9E:  MOV             R4, R0
1C7CA0:  LDR             R0, =(_rpSkinGlobals_ptr - 0x1C7CAA)
1C7CA2:  MOV             R5, R1
1C7CA4:  MOVS            R1, #2
1C7CA6:  ADD             R0, PC; _rpSkinGlobals_ptr
1C7CA8:  STR             R1, [SP,#0x10+var_C]
1C7CAA:  MOVW            R1, #0xFFFF
1C7CAE:  MOVW            R3, #:lower16:(stru_35FF8.st_size+3)
1C7CB2:  LDR             R0, [R0]; _rpSkinGlobals
1C7CB4:  MOVT            R3, #:upper16:(stru_35FF8.st_size+3)
1C7CB8:  LDR             R0, [R0,#(dword_6B727C - 0x6B7274)]
1C7CBA:  LDR             R0, [R5,R0]
1C7CBC:  LDR             R0, [R0]
1C7CBE:  STR             R1, [SP,#0x10+var_10]
1C7CC0:  MOVS            R1, #0x14
1C7CC2:  ORR.W           R0, R1, R0,LSL#6
1C7CC6:  MOVS            R1, #1
1C7CC8:  SUB.W           R2, R0, #0xC
1C7CCC:  MOV             R0, R4
1C7CCE:  BLX             j__Z34_rwStreamWriteVersionedChunkHeaderP8RwStreamiijj; _rwStreamWriteVersionedChunkHeader(RwStream *,int,int,uint,uint)
1C7CD2:  CBZ             R0, loc_1C7D0C
1C7CD4:  ADD             R1, SP, #0x10+var_C
1C7CD6:  MOV             R0, R4
1C7CD8:  MOVS            R2, #4
1C7CDA:  BLX             j__Z18RwStreamWriteInt32P8RwStreamPKij; RwStreamWriteInt32(RwStream *,int const*,uint)
1C7CDE:  CBZ             R0, loc_1C7D0C
1C7CE0:  LDR             R0, =(_rpSkinGlobals_ptr - 0x1C7CE8)
1C7CE2:  MOVS            R2, #4
1C7CE4:  ADD             R0, PC; _rpSkinGlobals_ptr
1C7CE6:  LDR             R0, [R0]; _rpSkinGlobals
1C7CE8:  LDR             R0, [R0,#(dword_6B727C - 0x6B7274)]
1C7CEA:  LDR             R5, [R5,R0]
1C7CEC:  MOV             R0, R4
1C7CEE:  MOV             R1, R5
1C7CF0:  BLX             j__Z18RwStreamWriteInt32P8RwStreamPKij; RwStreamWriteInt32(RwStream *,int const*,uint)
1C7CF4:  CBZ             R0, loc_1C7D0C
1C7CF6:  LDR             R0, [R5]
1C7CF8:  LDR             R1, [R5,#0xC]; void *
1C7CFA:  LSLS            R2, R0, #6; size_t
1C7CFC:  MOV             R0, R4; int
1C7CFE:  BLX             j__Z13RwStreamWriteP8RwStreamPKvj; RwStreamWrite(RwStream *,void const*,uint)
1C7D02:  CMP             R0, #0
1C7D04:  IT NE
1C7D06:  MOVNE           R0, R4
1C7D08:  ADD             SP, SP, #8
1C7D0A:  POP             {R4,R5,R7,PC}
1C7D0C:  MOVS            R0, #0
1C7D0E:  ADD             SP, SP, #8
1C7D10:  POP             {R4,R5,R7,PC}
