; =========================================================
; Game Engine Function: _Z23_rwFrameListStreamWritePK11rwFrameListP8RwStream
; Address            : 0x1D4B44 - 0x1D4CFE
; =========================================================

1D4B44:  PUSH            {R4-R7,LR}
1D4B46:  ADD             R7, SP, #0xC
1D4B48:  PUSH.W          {R8-R11}
1D4B4C:  SUB             SP, SP, #0x4C
1D4B4E:  MOV             R9, R0
1D4B50:  MOV             R10, R1
1D4B52:  LDR.W           R0, [R9,#4]
1D4B56:  MOVS            R2, #4
1D4B58:  MOV             R8, #0x36003
1D4B60:  CMP             R0, #1
1D4B62:  RSB.W           R1, R0, R0,LSL#3
1D4B66:  ORR.W           R1, R2, R1,LSL#3
1D4B6A:  ADD.W           R5, R1, #0xC
1D4B6E:  BLT             loc_1D4B96
1D4B70:  LDR             R0, =(frameTKList_ptr - 0x1D4B78)
1D4B72:  MOVS            R4, #0
1D4B74:  ADD             R0, PC; frameTKList_ptr
1D4B76:  LDR             R6, [R0]; frameTKList
1D4B78:  LDR.W           R0, [R9]
1D4B7C:  LDR.W           R1, [R0,R4,LSL#2]
1D4B80:  MOV             R0, R6
1D4B82:  BLX             j__Z24_rwPluginRegistryGetSizePK16RwPluginRegistryPKv; _rwPluginRegistryGetSize(RwPluginRegistry const*,void const*)
1D4B86:  ADD             R0, R5
1D4B88:  LDR.W           R1, [R9,#4]
1D4B8C:  ADDS            R4, #1
1D4B8E:  ADD.W           R5, R0, #0xC
1D4B92:  CMP             R4, R1
1D4B94:  BLT             loc_1D4B78
1D4B96:  MOVW            R4, #0xFFFF
1D4B9A:  MOV             R0, R10
1D4B9C:  MOVS            R1, #0xE
1D4B9E:  MOV             R2, R5
1D4BA0:  MOV             R3, R8
1D4BA2:  STR             R4, [SP,#0x68+var_68]
1D4BA4:  BLX             j__Z34_rwStreamWriteVersionedChunkHeaderP8RwStreamiijj; _rwStreamWriteVersionedChunkHeader(RwStream *,int,int,uint,uint)
1D4BA8:  CMP             R0, #0
1D4BAA:  BEQ.W           loc_1D4CF0
1D4BAE:  LDR.W           R0, [R9,#4]
1D4BB2:  MOVS            R1, #4
1D4BB4:  MOV             R3, R8
1D4BB6:  STR             R4, [SP,#0x68+var_68]
1D4BB8:  RSB.W           R0, R0, R0,LSL#3
1D4BBC:  ORR.W           R2, R1, R0,LSL#3
1D4BC0:  MOV             R0, R10
1D4BC2:  MOVS            R1, #1
1D4BC4:  BLX             j__Z34_rwStreamWriteVersionedChunkHeaderP8RwStreamiijj; _rwStreamWriteVersionedChunkHeader(RwStream *,int,int,uint,uint)
1D4BC8:  CMP             R0, #0
1D4BCA:  BEQ.W           loc_1D4CF0
1D4BCE:  ADD             R5, SP, #0x68+var_20
1D4BD0:  LDR.W           R0, [R9,#4]
1D4BD4:  STR             R0, [SP,#0x68+var_20]
1D4BD6:  MOVS            R1, #4; unsigned int
1D4BD8:  MOV             R0, R5; void *
1D4BDA:  BLX             j__Z19RwMemLittleEndian32Pvj; RwMemLittleEndian32(void *,uint)
1D4BDE:  MOV             R0, R10; int
1D4BE0:  MOV             R1, R5; void *
1D4BE2:  MOVS            R2, #4; size_t
1D4BE4:  BLX             j__Z13RwStreamWriteP8RwStreamPKvj; RwStreamWrite(RwStream *,void const*,uint)
1D4BE8:  CMP             R0, #0
1D4BEA:  BEQ.W           loc_1D4CF0
1D4BEE:  LDR.W           R0, [R9,#4]
1D4BF2:  CMP             R0, #1
1D4BF4:  BLT             loc_1D4CF4
1D4BF6:  ADD             R4, SP, #0x68+var_58
1D4BF8:  STR.W           R10, [SP,#0x68+var_60]
1D4BFC:  ADD.W           R5, R4, #0xC
1D4C00:  ADD.W           R6, R4, #0x24 ; '$'
1D4C04:  ADD.W           R11, R4, #0x18
1D4C08:  MOV.W           R10, #0
1D4C0C:  STR             R5, [SP,#0x68+var_5C]
1D4C0E:  LDR.W           R1, [R9]
1D4C12:  LDR.W           R8, [R1,R10,LSL#2]
1D4C16:  VLDR            D16, [R8,#0x10]
1D4C1A:  LDR.W           R2, [R8,#0x18]
1D4C1E:  STR             R2, [SP,#0x68+var_50]
1D4C20:  VSTR            D16, [SP,#0x68+var_58]
1D4C24:  VLDR            D16, [R8,#0x20]
1D4C28:  LDR.W           R2, [R8,#0x28]
1D4C2C:  STR             R2, [R5,#8]
1D4C2E:  VSTR            D16, [R5]
1D4C32:  VLDR            D16, [R8,#0x30]
1D4C36:  LDR.W           R2, [R8,#0x38]
1D4C3A:  STR.W           R2, [R11,#8]
1D4C3E:  VSTR            D16, [R11]
1D4C42:  VLDR            D16, [R8,#0x40]
1D4C46:  LDR.W           R2, [R8,#0x48]
1D4C4A:  STR             R2, [R6,#8]
1D4C4C:  VSTR            D16, [R6]
1D4C50:  LDR.W           R3, [R8,#4]
1D4C54:  CBZ             R3, loc_1D4C70
1D4C56:  MOV             LR, R6
1D4C58:  MOV             R6, R4
1D4C5A:  CMP             R0, #1
1D4C5C:  BLT             loc_1D4CF0
1D4C5E:  MOVS            R2, #0
1D4C60:  LDR.W           R4, [R1,R2,LSL#2]
1D4C64:  CMP             R4, R3
1D4C66:  BEQ             loc_1D4C76
1D4C68:  ADDS            R2, #1
1D4C6A:  CMP             R2, R0
1D4C6C:  BLT             loc_1D4C60
1D4C6E:  B               loc_1D4CF0
1D4C70:  MOV.W           R2, #0xFFFFFFFF
1D4C74:  B               loc_1D4C7A
1D4C76:  MOV             R4, R6
1D4C78:  MOV             R6, LR
1D4C7A:  MOV             R0, R4; void *
1D4C7C:  MOVS            R1, #0xC; unsigned int
1D4C7E:  STR             R2, [SP,#0x68+var_28]
1D4C80:  BLX             j__Z18RwMemRealToFloat32Pvj; RwMemRealToFloat32(void *,uint)
1D4C84:  LDR             R0, [SP,#0x68+var_5C]; void *
1D4C86:  MOVS            R1, #0xC; unsigned int
1D4C88:  BLX             j__Z18RwMemRealToFloat32Pvj; RwMemRealToFloat32(void *,uint)
1D4C8C:  MOV             R0, R11; void *
1D4C8E:  MOVS            R1, #0xC; unsigned int
1D4C90:  BLX             j__Z18RwMemRealToFloat32Pvj; RwMemRealToFloat32(void *,uint)
1D4C94:  MOV             R0, R6; void *
1D4C96:  MOVS            R1, #0xC; unsigned int
1D4C98:  BLX             j__Z18RwMemRealToFloat32Pvj; RwMemRealToFloat32(void *,uint)
1D4C9C:  LDR.W           R0, [R8,#0x1C]
1D4CA0:  MOVS            R1, #0x38 ; '8'; unsigned int
1D4CA2:  STR             R0, [SP,#0x68+var_24]
1D4CA4:  MOV             R0, R4; void *
1D4CA6:  BLX             j__Z19RwMemLittleEndian32Pvj; RwMemLittleEndian32(void *,uint)
1D4CAA:  LDR             R0, [SP,#0x68+var_60]; int
1D4CAC:  MOV             R1, R4; void *
1D4CAE:  MOVS            R2, #0x38 ; '8'; size_t
1D4CB0:  BLX             j__Z13RwStreamWriteP8RwStreamPKvj; RwStreamWrite(RwStream *,void const*,uint)
1D4CB4:  CBZ             R0, loc_1D4CF0
1D4CB6:  LDR.W           R0, [R9,#4]
1D4CBA:  ADD.W           R10, R10, #1
1D4CBE:  LDR             R5, [SP,#0x68+var_5C]
1D4CC0:  CMP             R10, R0
1D4CC2:  BLT             loc_1D4C0E
1D4CC4:  LDR             R6, [SP,#0x68+var_60]
1D4CC6:  CMP             R0, #1
1D4CC8:  BLT             loc_1D4CF4
1D4CCA:  LDR             R0, =(frameTKList_ptr - 0x1D4CD2)
1D4CCC:  MOVS            R4, #0
1D4CCE:  ADD             R0, PC; frameTKList_ptr
1D4CD0:  LDR             R5, [R0]; frameTKList
1D4CD2:  LDR.W           R0, [R9]
1D4CD6:  MOV             R1, R6
1D4CD8:  LDR.W           R2, [R0,R4,LSL#2]
1D4CDC:  MOV             R0, R5
1D4CDE:  BLX             j__Z32_rwPluginRegistryWriteDataChunksPK16RwPluginRegistryP8RwStreamPKv; _rwPluginRegistryWriteDataChunks(RwPluginRegistry const*,RwStream *,void const*)
1D4CE2:  CBZ             R0, loc_1D4CF0
1D4CE4:  LDR.W           R0, [R9,#4]
1D4CE8:  ADDS            R4, #1
1D4CEA:  CMP             R4, R0
1D4CEC:  BLT             loc_1D4CD2
1D4CEE:  B               loc_1D4CF4
1D4CF0:  MOV.W           R9, #0
1D4CF4:  MOV             R0, R9
1D4CF6:  ADD             SP, SP, #0x4C ; 'L'
1D4CF8:  POP.W           {R8-R11}
1D4CFC:  POP             {R4-R7,PC}
