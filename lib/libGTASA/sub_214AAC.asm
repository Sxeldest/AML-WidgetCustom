; =========================================================
; Game Engine Function: sub_214AAC
; Address            : 0x214AAC - 0x214B9A
; =========================================================

214AAC:  PUSH            {R4-R7,LR}
214AAE:  ADD             R7, SP, #0xC
214AB0:  PUSH.W          {R8,R9,R11}
214AB4:  SUB             SP, SP, #0x18
214AB6:  MOV             R5, R1
214AB8:  MOV             R4, R0
214ABA:  LDR             R0, [R5,#0x10]
214ABC:  MOVW            R8, #:lower16:(stru_35FF8.st_size+3)
214AC0:  LDR             R6, [R5]
214AC2:  MOVT            R8, #:upper16:(stru_35FF8.st_size+3)
214AC6:  CBZ             R0, loc_214ADE
214AC8:  LDR             R0, =(dword_683B48 - 0x214AD0)
214ACA:  MOV             R1, R4
214ACC:  ADD             R0, PC; dword_683B48
214ACE:  BLX             j__Z24_rwPluginRegistryGetSizePK16RwPluginRegistryPKv; _rwPluginRegistryGetSize(RwPluginRegistry const*,void const*)
214AD2:  ADD.W           R2, R0, #0x28 ; '('
214AD6:  MOVW            R1, #0xFFFF
214ADA:  STR             R1, [SP,#0x30+var_30]
214ADC:  B               loc_214AFC
214ADE:  LDR             R0, [R4,#0x18]
214AE0:  BLX             j__Z23RpGeometryStreamGetSizePK10RpGeometry; RpGeometryStreamGetSize(RpGeometry const*)
214AE4:  MOV             R9, R0
214AE6:  LDR             R0, =(dword_683B48 - 0x214AEE)
214AE8:  MOV             R1, R4
214AEA:  ADD             R0, PC; dword_683B48
214AEC:  BLX             j__Z24_rwPluginRegistryGetSizePK16RwPluginRegistryPKv; _rwPluginRegistryGetSize(RwPluginRegistry const*,void const*)
214AF0:  MOVW            R1, #0xFFFF
214AF4:  ADD             R0, R9
214AF6:  STR             R1, [SP,#0x30+var_30]
214AF8:  ADD.W           R2, R0, #0x34 ; '4'
214AFC:  MOV             R0, R6
214AFE:  MOVS            R1, #0x14
214B00:  MOV             R3, R8
214B02:  BLX             j__Z34_rwStreamWriteVersionedChunkHeaderP8RwStreamiijj; _rwStreamWriteVersionedChunkHeader(RwStream *,int,int,uint,uint)
214B06:  CMP             R0, #0
214B08:  BEQ             loc_214B8C
214B0A:  LDR             R0, [R5]
214B0C:  MOVW            R1, #0xFFFF
214B10:  STR             R1, [SP,#0x30+var_30]
214B12:  MOVS            R1, #1
214B14:  MOVS            R2, #0x10
214B16:  MOV             R3, R8
214B18:  BLX             j__Z34_rwStreamWriteVersionedChunkHeaderP8RwStreamiijj; _rwStreamWriteVersionedChunkHeader(RwStream *,int,int,uint,uint)
214B1C:  MOVS            R1, #0
214B1E:  CBZ             R0, loc_214B54
214B20:  LDRB            R0, [R4,#2]
214B22:  STRD.W          R0, R1, [SP,#0x30+var_20]
214B26:  LDR             R0, [R5,#8]
214B28:  CBZ             R0, loc_214B36
214B2A:  LDR             R1, [R4,#4]
214B2C:  ADDS            R0, R5, #4
214B2E:  ADD             R2, SP, #0x30+var_28
214B30:  BLX             j__Z21_rwFrameListFindFramePK11rwFrameListPK7RwFramePi; _rwFrameListFindFrame(rwFrameList const*,RwFrame const*,int *)
214B34:  CBZ             R0, loc_214B8C
214B36:  LDR             R0, [R5,#0x10]
214B38:  CBZ             R0, loc_214B5A
214B3A:  CMP             R0, #1
214B3C:  BLT             loc_214B8C
214B3E:  LDR             R1, [R4,#0x18]
214B40:  MOVS            R2, #0
214B42:  LDR             R3, [R5,#0xC]
214B44:  LDR.W           R6, [R3,R2,LSL#2]
214B48:  CMP             R6, R1
214B4A:  BEQ             loc_214B58
214B4C:  ADDS            R2, #1
214B4E:  CMP             R2, R0
214B50:  BLT             loc_214B44
214B52:  B               loc_214B8C
214B54:  MOVS            R4, #0
214B56:  B               loc_214B90
214B58:  STR             R2, [SP,#0x30+var_24]
214B5A:  ADD             R6, SP, #0x30+var_28
214B5C:  MOVS            R1, #0x10; unsigned int
214B5E:  MOV             R0, R6; void *
214B60:  BLX             j__Z19RwMemLittleEndian32Pvj; RwMemLittleEndian32(void *,uint)
214B64:  LDR             R0, [R5]; int
214B66:  MOV             R1, R6; void *
214B68:  MOVS            R2, #0x10; size_t
214B6A:  BLX             j__Z13RwStreamWriteP8RwStreamPKvj; RwStreamWrite(RwStream *,void const*,uint)
214B6E:  CBZ             R0, loc_214B8C
214B70:  LDR             R0, [R5,#0x10]
214B72:  CBNZ            R0, loc_214B7E
214B74:  LDR             R1, [R5]
214B76:  LDR             R0, [R4,#0x18]
214B78:  BLX             j__Z21RpGeometryStreamWritePK10RpGeometryP8RwStream; RpGeometryStreamWrite(RpGeometry const*,RwStream *)
214B7C:  CBZ             R0, loc_214B8C
214B7E:  LDR             R0, =(dword_683B48 - 0x214B88)
214B80:  MOV             R2, R4
214B82:  LDR             R1, [R5]
214B84:  ADD             R0, PC; dword_683B48
214B86:  BLX             j__Z32_rwPluginRegistryWriteDataChunksPK16RwPluginRegistryP8RwStreamPKv; _rwPluginRegistryWriteDataChunks(RwPluginRegistry const*,RwStream *,void const*)
214B8A:  CBNZ            R0, loc_214B90
214B8C:  MOVS            R4, #0
214B8E:  STR             R4, [R5,#0x14]
214B90:  MOV             R0, R4
214B92:  ADD             SP, SP, #0x18
214B94:  POP.W           {R8,R9,R11}
214B98:  POP             {R4-R7,PC}
