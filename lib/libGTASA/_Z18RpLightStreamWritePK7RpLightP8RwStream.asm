; =========================================================
; Game Engine Function: _Z18RpLightStreamWritePK7RpLightP8RwStream
; Address            : 0x216B64 - 0x216C2C
; =========================================================

216B64:  PUSH            {R4-R7,LR}
216B66:  ADD             R7, SP, #0xC
216B68:  PUSH.W          {R8,R9,R11}
216B6C:  SUB             SP, SP, #0x20
216B6E:  MOV             R4, R0
216B70:  LDR             R0, =(dword_683B90 - 0x216B7A)
216B72:  MOV             R9, R1
216B74:  MOV             R1, R4
216B76:  ADD             R0, PC; dword_683B90
216B78:  BLX             j__Z24_rwPluginRegistryGetSizePK16RwPluginRegistryPKv; _rwPluginRegistryGetSize(RwPluginRegistry const*,void const*)
216B7C:  MOVW            R6, #:lower16:(stru_35FF8.st_size+3)
216B80:  ADD.W           R2, R0, #0x30 ; '0'
216B84:  MOVT            R6, #:upper16:(stru_35FF8.st_size+3)
216B88:  MOVW            R5, #0xFFFF
216B8C:  MOV             R0, R9
216B8E:  MOVS            R1, #0x12
216B90:  MOV             R3, R6
216B92:  STR             R5, [SP,#0x38+var_38]
216B94:  BLX             j__Z34_rwStreamWriteVersionedChunkHeaderP8RwStreamiijj; _rwStreamWriteVersionedChunkHeader(RwStream *,int,int,uint,uint)
216B98:  CMP             R0, #0
216B9A:  BEQ             loc_216C22
216B9C:  MOV             R0, R9
216B9E:  MOVS            R1, #1
216BA0:  MOVS            R2, #0x18
216BA2:  MOV             R3, R6
216BA4:  STR             R5, [SP,#0x38+var_38]
216BA6:  BLX             j__Z34_rwStreamWriteVersionedChunkHeaderP8RwStreamiijj; _rwStreamWriteVersionedChunkHeader(RwStream *,int,int,uint,uint)
216BAA:  CBZ             R0, loc_216C22
216BAC:  ADD.W           R0, R4, #0x14
216BB0:  ADD.W           R8, SP, #0x38+var_30
216BB4:  VLD1.32         {D16-D17}, [R0]
216BB8:  MOV             R6, R8
216BBA:  VST1.32         {D16-D17}, [R6]!
216BBE:  LDR             R0, [R4,#0x28]
216BC0:  STR             R0, [R6]
216BC2:  LDRB            R0, [R4,#1]
216BC4:  LDRB            R1, [R4,#2]
216BC6:  ORR.W           R0, R1, R0,LSL#16
216BCA:  STR             R0, [SP,#0x38+var_1C]
216BCC:  MOV             R0, R8; void *
216BCE:  MOVS            R1, #4; unsigned int
216BD0:  BLX             j__Z18RwMemRealToFloat32Pvj; RwMemRealToFloat32(void *,uint)
216BD4:  ADD.W           R0, R8, #4; void *
216BD8:  MOVS            R1, #4; unsigned int
216BDA:  BLX             j__Z18RwMemRealToFloat32Pvj; RwMemRealToFloat32(void *,uint)
216BDE:  ADD.W           R0, R8, #8; void *
216BE2:  MOVS            R1, #4; unsigned int
216BE4:  BLX             j__Z18RwMemRealToFloat32Pvj; RwMemRealToFloat32(void *,uint)
216BE8:  ADD.W           R0, R8, #0xC; void *
216BEC:  MOVS            R1, #4; unsigned int
216BEE:  BLX             j__Z18RwMemRealToFloat32Pvj; RwMemRealToFloat32(void *,uint)
216BF2:  MOV             R0, R6; void *
216BF4:  MOVS            R1, #4; unsigned int
216BF6:  BLX             j__Z18RwMemRealToFloat32Pvj; RwMemRealToFloat32(void *,uint)
216BFA:  MOV             R0, R8; void *
216BFC:  MOVS            R1, #0x18; unsigned int
216BFE:  BLX             j__Z19RwMemLittleEndian32Pvj; RwMemLittleEndian32(void *,uint)
216C02:  MOV             R0, R9; int
216C04:  MOV             R1, R8; void *
216C06:  MOVS            R2, #0x18; size_t
216C08:  BLX             j__Z13RwStreamWriteP8RwStreamPKvj; RwStreamWrite(RwStream *,void const*,uint)
216C0C:  CBZ             R0, loc_216C22
216C0E:  LDR             R0, =(dword_683B90 - 0x216C18)
216C10:  MOV             R1, R9
216C12:  MOV             R2, R4
216C14:  ADD             R0, PC; dword_683B90
216C16:  BLX             j__Z32_rwPluginRegistryWriteDataChunksPK16RwPluginRegistryP8RwStreamPKv; _rwPluginRegistryWriteDataChunks(RwPluginRegistry const*,RwStream *,void const*)
216C1A:  CMP             R0, #0
216C1C:  IT NE
216C1E:  MOVNE           R0, R4
216C20:  B               loc_216C24
216C22:  MOVS            R0, #0
216C24:  ADD             SP, SP, #0x20 ; ' '
216C26:  POP.W           {R8,R9,R11}
216C2A:  POP             {R4-R7,PC}
