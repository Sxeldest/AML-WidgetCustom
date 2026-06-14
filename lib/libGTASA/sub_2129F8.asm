; =========================================================
; Game Engine Function: sub_2129F8
; Address            : 0x2129F8 - 0x212BD6
; =========================================================

2129F8:  PUSH            {R4-R7,LR}
2129FA:  ADD             R7, SP, #0xC
2129FC:  PUSH.W          {R8-R11}
212A00:  SUB             SP, SP, #0x34
212A02:  MOV             R11, R2
212A04:  MOV             R4, R0
212A06:  LDRB.W          R0, [R11,#0xB]
212A0A:  MOVW            R9, #:lower16:(stru_35FF8.st_size+3)
212A0E:  MOV             R8, R3
212A10:  MOV             R10, R1
212A12:  MOVT            R9, #:upper16:(stru_35FF8.st_size+3)
212A16:  LSLS            R0, R0, #0x1F
212A18:  BNE             loc_212A52
212A1A:  LDRH.W          R0, [R4,#0x8A]
212A1E:  TST.W           R8, #0x10
212A22:  LDR.W           R1, [R11,#0x20]
212A26:  LDRH.W          R2, [R4,#0x8C]
212A2A:  MLA.W           R1, R1, R0, R2
212A2E:  ADD.W           R2, R0, R0,LSL#1
212A32:  MOV.W           R3, R2,LSL#2
212A36:  ADD.W           R3, R3, R0,LSL#2
212A3A:  IT EQ
212A3C:  LSLEQ           R3, R2, #2
212A3E:  TST.W           R8, #8
212A42:  ADD.W           R2, R3, #0x44 ; 'D'
212A46:  IT NE
212A48:  ADDNE.W         R2, R2, R0,LSL#2
212A4C:  ADD.W           R5, R2, R1,LSL#3
212A50:  B               loc_212A54
212A52:  MOVS            R5, #0x44 ; 'D'
212A54:  LDR             R0, =(sectorTKList_ptr - 0x212A5C)
212A56:  MOV             R1, R4
212A58:  ADD             R0, PC; sectorTKList_ptr
212A5A:  LDR             R0, [R0]; sectorTKList
212A5C:  BLX             j__Z24_rwPluginRegistryGetSizePK16RwPluginRegistryPKv; _rwPluginRegistryGetSize(RwPluginRegistry const*,void const*)
212A60:  MOVW            R1, #0xFFFF
212A64:  ADDS            R2, R0, R5
212A66:  STR             R1, [SP,#0x50+var_50]
212A68:  MOV             R0, R10
212A6A:  MOVS            R1, #9
212A6C:  MOV             R3, R9
212A6E:  BLX             j__Z34_rwStreamWriteVersionedChunkHeaderP8RwStreamiijj; _rwStreamWriteVersionedChunkHeader(RwStream *,int,int,uint,uint)
212A72:  CMP             R0, #0
212A74:  BEQ.W           loc_212BCA
212A78:  LDRB.W          R0, [R11,#0xB]
212A7C:  LSLS            R0, R0, #0x1F
212A7E:  BNE             loc_212AB8
212A80:  LDRH.W          R0, [R4,#0x8A]
212A84:  TST.W           R8, #0x10
212A88:  LDR.W           R1, [R11,#0x20]
212A8C:  LDRH.W          R2, [R4,#0x8C]
212A90:  MLA.W           R1, R1, R0, R2
212A94:  ADD.W           R2, R0, R0,LSL#1
212A98:  MOV.W           R3, R2,LSL#2
212A9C:  ADD.W           R3, R3, R0,LSL#2
212AA0:  IT EQ
212AA2:  LSLEQ           R3, R2, #2
212AA4:  TST.W           R8, #8
212AA8:  ADD.W           R2, R3, #0x2C ; ','
212AAC:  IT NE
212AAE:  ADDNE.W         R2, R2, R0,LSL#2
212AB2:  ADD.W           R2, R2, R1,LSL#3
212AB6:  B               loc_212ABA
212AB8:  MOVS            R2, #0x2C ; ','
212ABA:  MOVW            R0, #0xFFFF
212ABE:  MOVS            R1, #1
212AC0:  STR             R0, [SP,#0x50+var_50]
212AC2:  MOV             R0, R10
212AC4:  MOV             R3, R9
212AC6:  BLX             j__Z34_rwStreamWriteVersionedChunkHeaderP8RwStreamiijj; _rwStreamWriteVersionedChunkHeader(RwStream *,int,int,uint,uint)
212ACA:  MOVS            R5, #0
212ACC:  CMP             R0, #0
212ACE:  BEQ             loc_212BCC
212AD0:  LDRH.W          R0, [R4,#0x88]
212AD4:  ADD             R6, SP, #0x50+var_48
212AD6:  STR             R0, [SP,#0x50+var_48]
212AD8:  MOVS            R1, #0xC; unsigned int
212ADA:  LDRH.W          R0, [R4,#0x8C]
212ADE:  STR             R0, [SP,#0x50+var_44]
212AE0:  LDRH.W          R0, [R4,#0x8A]
212AE4:  STR             R0, [SP,#0x50+var_40]
212AE6:  VLDR            D16, [R4,#0x74]
212AEA:  LDR             R0, [R4,#0x7C]
212AEC:  STR             R0, [SP,#0x50+var_34]
212AEE:  VSTR            D16, [SP,#0x50+var_3C]
212AF2:  LDR             R0, [R4,#0x70]
212AF4:  VLDR            D16, [R4,#0x68]
212AF8:  STR             R0, [SP,#0x50+var_28]
212AFA:  ADD.W           R0, R6, #0xC; void *
212AFE:  STR             R5, [SP,#0x50+var_20]
212B00:  VSTR            D16, [SP,#0x50+var_30]
212B04:  BLX             j__Z18RwMemRealToFloat32Pvj; RwMemRealToFloat32(void *,uint)
212B08:  ADD.W           R0, R6, #0x18; void *
212B0C:  MOVS            R1, #0xC; unsigned int
212B0E:  BLX             j__Z18RwMemRealToFloat32Pvj; RwMemRealToFloat32(void *,uint)
212B12:  MOV             R0, R6; void *
212B14:  MOVS            R1, #0x2C ; ','; unsigned int
212B16:  BLX             j__Z19RwMemLittleEndian32Pvj; RwMemLittleEndian32(void *,uint)
212B1A:  MOV             R0, R10; int
212B1C:  MOV             R1, R6; void *
212B1E:  MOVS            R2, #0x2C ; ','; size_t
212B20:  BLX             j__Z13RwStreamWriteP8RwStreamPKvj; RwStreamWrite(RwStream *,void const*,uint)
212B24:  CMP             R0, #0
212B26:  BEQ             loc_212BCC
212B28:  LDRB.W          R0, [R11,#0xB]
212B2C:  LSLS            R0, R0, #0x1F
212B2E:  BNE             loc_212BB2
212B30:  LDRH.W          R0, [R4,#0x8A]
212B34:  CBZ             R0, loc_212BA0
212B36:  ADD.W           R0, R0, R0,LSL#1
212B3A:  LDR             R1, [R4,#8]; void *
212B3C:  LSLS            R2, R0, #2
212B3E:  MOV             R0, R10; int
212B40:  BLX             j__Z17RwStreamWriteRealP8RwStreamPKfj; RwStreamWriteReal(RwStream *,float const*,uint)
212B44:  CMP             R0, #0
212B46:  BEQ             loc_212BCA
212B48:  MOVS.W          R0, R8,LSL#27
212B4C:  BPL             loc_212B5E
212B4E:  LDRH.W          R0, [R4,#0x8A]
212B52:  LDR             R1, [R4,#0xC]; void *
212B54:  LSLS            R2, R0, #2; size_t
212B56:  MOV             R0, R10; int
212B58:  BLX             j__Z13RwStreamWriteP8RwStreamPKvj; RwStreamWrite(RwStream *,void const*,uint)
212B5C:  CBZ             R0, loc_212BCA
212B5E:  MOVS.W          R0, R8,LSL#28
212B62:  BPL             loc_212B74
212B64:  LDRH.W          R0, [R4,#0x8A]
212B68:  LDR             R1, [R4,#0x30]; void *
212B6A:  LSLS            R2, R0, #2; size_t
212B6C:  MOV             R0, R10; int
212B6E:  BLX             j__Z13RwStreamWriteP8RwStreamPKvj; RwStreamWrite(RwStream *,void const*,uint)
212B72:  CBZ             R0, loc_212BCA
212B74:  LDR.W           R0, [R11,#0x20]
212B78:  CMP             R0, #1
212B7A:  BLT             loc_212BA0
212B7C:  LDRH.W          R0, [R4,#0x8A]
212B80:  ADD.W           R8, R4, #0x10
212B84:  MOVS            R6, #0
212B86:  LSLS            R5, R0, #3
212B88:  LDR.W           R1, [R8,R6,LSL#2]; void *
212B8C:  MOV             R0, R10; int
212B8E:  MOV             R2, R5
212B90:  BLX             j__Z17RwStreamWriteRealP8RwStreamPKfj; RwStreamWriteReal(RwStream *,float const*,uint)
212B94:  CBZ             R0, loc_212BCA
212B96:  LDR.W           R0, [R11,#0x20]
212B9A:  ADDS            R6, #1
212B9C:  CMP             R6, R0
212B9E:  BLT             loc_212B88
212BA0:  LDRH.W          R0, [R4,#0x8C]
212BA4:  CBZ             R0, loc_212BB2
212BA6:  LDR             R1, [R4,#4]
212BA8:  LSLS            R2, R0, #3
212BAA:  MOV             R0, R10
212BAC:  BLX             j__Z18RwStreamWriteInt16P8RwStreamPKsj; RwStreamWriteInt16(RwStream *,short const*,uint)
212BB0:  CBZ             R0, loc_212BCA
212BB2:  LDR             R0, =(sectorTKList_ptr - 0x212BBC)
212BB4:  MOV             R1, R10
212BB6:  MOV             R2, R4
212BB8:  ADD             R0, PC; sectorTKList_ptr
212BBA:  LDR             R0, [R0]; sectorTKList
212BBC:  BLX             j__Z32_rwPluginRegistryWriteDataChunksPK16RwPluginRegistryP8RwStreamPKv; _rwPluginRegistryWriteDataChunks(RwPluginRegistry const*,RwStream *,void const*)
212BC0:  MOV             R5, R0
212BC2:  CMP             R5, #0
212BC4:  IT NE
212BC6:  MOVNE           R5, R4
212BC8:  B               loc_212BCC
212BCA:  MOVS            R5, #0
212BCC:  MOV             R0, R5
212BCE:  ADD             SP, SP, #0x34 ; '4'
212BD0:  POP.W           {R8-R11}
212BD4:  POP             {R4-R7,PC}
