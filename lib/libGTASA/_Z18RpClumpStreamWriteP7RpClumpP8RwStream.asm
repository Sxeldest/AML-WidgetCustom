; =========================================================
; Game Engine Function: _Z18RpClumpStreamWriteP7RpClumpP8RwStream
; Address            : 0x214BA8 - 0x214EC0
; =========================================================

214BA8:  PUSH            {R4-R7,LR}
214BAA:  ADD             R7, SP, #0xC
214BAC:  PUSH.W          {R8-R11}
214BB0:  SUB             SP, SP, #0x34
214BB2:  MOV             R11, R1
214BB4:  MOV             R4, R0
214BB6:  BLX             j__Z20RpClumpStreamGetSizeP7RpClump; RpClumpStreamGetSize(RpClump *)
214BBA:  MOVW            R6, #:lower16:(stru_35FF8.st_size+3)
214BBE:  MOV             R2, R0
214BC0:  MOVT            R6, #:upper16:(stru_35FF8.st_size+3)
214BC4:  MOVW            R5, #0xFFFF
214BC8:  MOV             R0, R11
214BCA:  MOVS            R1, #0x10
214BCC:  MOV             R3, R6
214BCE:  STR             R5, [SP,#0x50+var_50]
214BD0:  BLX             j__Z34_rwStreamWriteVersionedChunkHeaderP8RwStreamiijj; _rwStreamWriteVersionedChunkHeader(RwStream *,int,int,uint,uint)
214BD4:  CMP             R0, #0
214BD6:  BEQ.W           loc_214DFA
214BDA:  MOV             R0, R11
214BDC:  MOVS            R1, #1
214BDE:  MOVS            R2, #0xC
214BE0:  MOV             R3, R6
214BE2:  STR             R5, [SP,#0x50+var_50]
214BE4:  BLX             j__Z34_rwStreamWriteVersionedChunkHeaderP8RwStreamiijj; _rwStreamWriteVersionedChunkHeader(RwStream *,int,int,uint,uint)
214BE8:  CMP             R0, #0
214BEA:  BEQ.W           loc_214DFA
214BEE:  ADD.W           R8, R4, #8
214BF2:  MOV.W           R0, #0xFFFFFFFF
214BF6:  MOV             R1, R8
214BF8:  LDR             R1, [R1]
214BFA:  ADDS            R0, #1
214BFC:  CMP             R1, R8
214BFE:  BNE             loc_214BF8
214C00:  LDR             R1, =(dword_6BD594 - 0x214C0C)
214C02:  ADD.W           R9, R4, #0x10
214C06:  STR             R0, [SP,#0x50+var_2C]
214C08:  ADD             R1, PC; dword_6BD594
214C0A:  MOV             R2, R9
214C0C:  LDR             R0, [R1]
214C0E:  NEGS            R1, R0
214C10:  MOVS            R0, #0
214C12:  LDR             R2, [R2]
214C14:  CMP             R2, R9
214C16:  ITTT NE
214C18:  ADDNE           R3, R2, R1
214C1A:  ADDNE           R0, #1
214C1C:  CMPNE           R3, #4
214C1E:  BNE             loc_214C12
214C20:  LDR             R1, =(dword_6BD590 - 0x214C2C)
214C22:  ADD.W           R5, R4, #0x18
214C26:  STR             R0, [SP,#0x50+var_28]
214C28:  ADD             R1, PC; dword_6BD590
214C2A:  MOV             R2, R5
214C2C:  LDR             R0, [R1]
214C2E:  NEGS            R1, R0
214C30:  MOVS            R0, #0
214C32:  LDR             R2, [R2]
214C34:  CMP             R2, R5
214C36:  ITTT NE
214C38:  ADDNE           R3, R2, R1
214C3A:  ADDNE           R0, #1
214C3C:  CMPNE           R3, #4
214C3E:  BNE             loc_214C32
214C40:  ADD             R6, SP, #0x50+var_2C
214C42:  STR             R0, [SP,#0x50+var_24]
214C44:  MOVS            R1, #0xC; unsigned int
214C46:  MOV             R0, R6; void *
214C48:  BLX             j__Z19RwMemLittleEndian32Pvj; RwMemLittleEndian32(void *,uint)
214C4C:  MOV             R0, R11; int
214C4E:  MOV             R1, R6; void *
214C50:  MOVS            R2, #0xC; size_t
214C52:  BLX             j__Z13RwStreamWriteP8RwStreamPKvj; RwStreamWrite(RwStream *,void const*,uint)
214C56:  CMP             R0, #0
214C58:  BEQ.W           loc_214DFA
214C5C:  ADD.W           R10, SP, #0x50+var_44
214C60:  LDR             R1, [R4,#4]
214C62:  ADD.W           R6, R10, #4
214C66:  MOV             R0, R6
214C68:  BLX             j__Z22_rwFrameListInitializeP11rwFrameListP7RwFrame; _rwFrameListInitialize(rwFrameList *,RwFrame *)
214C6C:  CMP             R0, #0
214C6E:  BEQ.W           loc_214DFA
214C72:  MOV             R0, R6
214C74:  MOV             R1, R11
214C76:  BLX             j__Z23_rwFrameListStreamWritePK11rwFrameListP8RwStream; _rwFrameListStreamWrite(rwFrameList const*,RwStream *)
214C7A:  CBZ             R0, loc_214CBA
214C7C:  ADD.W           R0, R10, #0xC
214C80:  STR             R6, [SP,#0x50+var_48]
214C82:  MOVS            R6, #0
214C84:  MOV             R1, R4
214C86:  STR             R6, [SP,#0x50+var_34]
214C88:  BL              sub_2149C4
214C8C:  CMP             R0, #0
214C8E:  BEQ.W           loc_214DFC
214C92:  LDR             R0, [SP,#0x50+var_34]
214C94:  CMP             R0, #1
214C96:  BLT             loc_214CC2
214C98:  MOV.W           R10, #0
214C9C:  MOVS            R6, #0x10
214C9E:  LDR             R0, [SP,#0x50+var_38]
214CA0:  LDR.W           R0, [R0,R10,LSL#2]
214CA4:  BLX             j__Z23RpGeometryStreamGetSizePK10RpGeometry; RpGeometryStreamGetSize(RpGeometry const*)
214CA8:  ADD             R0, R6
214CAA:  LDR             R1, [SP,#0x50+var_34]
214CAC:  ADD.W           R10, R10, #1
214CB0:  ADD.W           R6, R0, #0xC
214CB4:  CMP             R10, R1
214CB6:  BLT             loc_214C9E
214CB8:  B               loc_214CC4
214CBA:  MOV             R0, R6
214CBC:  BLX             j__Z24_rwFrameListDeinitializeP11rwFrameList; _rwFrameListDeinitialize(rwFrameList *)
214CC0:  B               loc_214DFA
214CC2:  MOVS            R6, #0x10
214CC4:  MOVW            R3, #:lower16:(stru_35FF8.st_size+3)
214CC8:  MOVW            R10, #0xFFFF
214CCC:  MOV             R0, R11
214CCE:  MOVS            R1, #0x1A
214CD0:  MOV             R2, R6
214CD2:  MOVT            R3, #:upper16:(stru_35FF8.st_size+3)
214CD6:  STR.W           R10, [SP,#0x50+var_50]
214CDA:  BLX             j__Z34_rwStreamWriteVersionedChunkHeaderP8RwStreamiijj; _rwStreamWriteVersionedChunkHeader(RwStream *,int,int,uint,uint)
214CDE:  CMP             R0, #0
214CE0:  BEQ             loc_214DCE
214CE2:  MOVW            R3, #:lower16:(stru_35FF8.st_size+3)
214CE6:  MOV             R0, R11
214CE8:  MOVS            R1, #1
214CEA:  MOVS            R2, #4
214CEC:  MOVT            R3, #:upper16:(stru_35FF8.st_size+3)
214CF0:  STR.W           R10, [SP,#0x50+var_50]
214CF4:  BLX             j__Z34_rwStreamWriteVersionedChunkHeaderP8RwStreamiijj; _rwStreamWriteVersionedChunkHeader(RwStream *,int,int,uint,uint)
214CF8:  CMP             R0, #0
214CFA:  BEQ             loc_214DCE
214CFC:  ADD             R6, SP, #0x50+var_20
214CFE:  LDR             R0, [SP,#0x50+var_34]
214D00:  STR             R0, [SP,#0x50+var_20]
214D02:  MOVS            R1, #4; unsigned int
214D04:  MOV             R0, R6; void *
214D06:  BLX             j__Z19RwMemLittleEndian32Pvj; RwMemLittleEndian32(void *,uint)
214D0A:  MOV             R0, R11; int
214D0C:  MOV             R1, R6; void *
214D0E:  MOVS            R2, #4; size_t
214D10:  BLX             j__Z13RwStreamWriteP8RwStreamPKvj; RwStreamWrite(RwStream *,void const*,uint)
214D14:  CMP             R0, #0
214D16:  BEQ             loc_214DCE
214D18:  LDR             R0, [SP,#0x50+var_34]
214D1A:  CMP             R0, #1
214D1C:  BLT             loc_214D38
214D1E:  MOVS            R6, #0
214D20:  LDR             R0, [SP,#0x50+var_38]
214D22:  MOV             R1, R11
214D24:  LDR.W           R0, [R0,R6,LSL#2]
214D28:  BLX             j__Z21RpGeometryStreamWritePK10RpGeometryP8RwStream; RpGeometryStreamWrite(RpGeometry const*,RwStream *)
214D2C:  CMP             R0, #0
214D2E:  BEQ             loc_214DCE
214D30:  LDR             R0, [SP,#0x50+var_34]
214D32:  ADDS            R6, #1
214D34:  CMP             R6, R0
214D36:  BLT             loc_214D20
214D38:  MOVS            R0, #1
214D3A:  STR.W           R11, [SP,#0x50+var_44]
214D3E:  STR             R0, [SP,#0x50+var_30]
214D40:  ADD.W           R10, SP, #0x50+var_44
214D44:  LDR.W           R0, [R8]
214D48:  CMP             R0, R8
214D4A:  BEQ             loc_214D5C
214D4C:  LDR.W           R6, [R0],#-0x40
214D50:  MOV             R1, R10
214D52:  BL              sub_214AAC
214D56:  CMP             R0, #0
214D58:  MOV             R0, R6
214D5A:  BNE             loc_214D48
214D5C:  LDR             R1, [SP,#0x50+var_28]
214D5E:  LDR             R0, [SP,#0x50+var_30]
214D60:  CMP             R1, #1
214D62:  BLT             loc_214E06
214D64:  MOVW            R10, #:lower16:(stru_35FF8.st_size+3)
214D68:  CMP             R0, #0
214D6A:  MOVT            R10, #:upper16:(stru_35FF8.st_size+3)
214D6E:  BEQ             loc_214E0E
214D70:  LDR.W           R0, [R9]
214D74:  CMP             R0, R9
214D76:  BEQ             loc_214DCA
214D78:  LDR             R1, =(dword_6BD594 - 0x214D84)
214D7A:  ADD             R2, SP, #0x50+var_20
214D7C:  LDR.W           R8, [R0]
214D80:  ADD             R1, PC; dword_6BD594
214D82:  LDR             R1, [R1]
214D84:  SUBS            R6, R0, R1
214D86:  LDR             R0, [SP,#0x50+var_48]
214D88:  LDR.W           R1, [R6],#-4
214D8C:  BLX             j__Z21_rwFrameListFindFramePK11rwFrameListPK7RwFramePi; _rwFrameListFindFrame(rwFrameList const*,RwFrame const*,int *)
214D90:  CMP             R0, #0
214D92:  BEQ             loc_214E6C
214D94:  LDR             R0, [SP,#0x50+var_44]
214D96:  MOVW            R1, #0xFFFF
214D9A:  STR             R1, [SP,#0x50+var_50]
214D9C:  MOVS            R1, #1
214D9E:  MOVS            R2, #4
214DA0:  MOV             R3, R10
214DA2:  BLX             j__Z34_rwStreamWriteVersionedChunkHeaderP8RwStreamiijj; _rwStreamWriteVersionedChunkHeader(RwStream *,int,int,uint,uint)
214DA6:  CMP             R0, #0
214DA8:  BEQ             loc_214E6C
214DAA:  LDR             R0, [SP,#0x50+var_44]
214DAC:  ADD             R1, SP, #0x50+var_20
214DAE:  MOVS            R2, #4
214DB0:  BLX             j__Z18RwStreamWriteInt32P8RwStreamPKij; RwStreamWriteInt32(RwStream *,int const*,uint)
214DB4:  CMP             R0, #0
214DB6:  BEQ             loc_214E6C
214DB8:  LDR             R1, [SP,#0x50+var_44]
214DBA:  MOV             R0, R6
214DBC:  BLX             j__Z18RpLightStreamWritePK7RpLightP8RwStream; RpLightStreamWrite(RpLight const*,RwStream *)
214DC0:  CMP             R0, #0
214DC2:  BEQ             loc_214E6C
214DC4:  CMP             R6, #0
214DC6:  MOV             R0, R8
214DC8:  BNE             loc_214D74
214DCA:  LDR             R0, [SP,#0x50+var_30]
214DCC:  B               loc_214E0E
214DCE:  LDR             R0, [SP,#0x50+var_34]
214DD0:  CBZ             R0, loc_214DFA
214DD2:  CMP             R0, #1
214DD4:  BLT             loc_214DEA
214DD6:  MOVS            R4, #0
214DD8:  LDR             R0, [SP,#0x50+var_38]
214DDA:  LDR.W           R0, [R0,R4,LSL#2]
214DDE:  BLX             j__Z17RpGeometryDestroyP10RpGeometry; RpGeometryDestroy(RpGeometry *)
214DE2:  LDR             R0, [SP,#0x50+var_34]
214DE4:  ADDS            R4, #1
214DE6:  CMP             R4, R0
214DE8:  BLT             loc_214DD8
214DEA:  LDR             R0, =(RwEngineInstance_ptr - 0x214DF0)
214DEC:  ADD             R0, PC; RwEngineInstance_ptr
214DEE:  LDR             R0, [R0]; RwEngineInstance
214DF0:  LDR             R1, [R0]
214DF2:  LDR             R0, [SP,#0x50+var_38]
214DF4:  LDR.W           R1, [R1,#0x130]
214DF8:  BLX             R1
214DFA:  MOVS            R6, #0
214DFC:  MOV             R0, R6
214DFE:  ADD             SP, SP, #0x34 ; '4'
214E00:  POP.W           {R8-R11}
214E04:  POP             {R4-R7,PC}
214E06:  MOV             R10, #0x36003
214E0E:  LDR             R1, [SP,#0x50+var_24]
214E10:  CMP             R1, #1
214E12:  BLT             loc_214E70
214E14:  CBZ             R0, loc_214E70
214E16:  LDR             R0, [R5]
214E18:  ADD.W           R9, SP, #0x50+var_20
214E1C:  CMP             R0, R5
214E1E:  BEQ             loc_214E70
214E20:  LDR             R1, =(dword_6BD590 - 0x214E2C)
214E22:  MOV             R2, R9
214E24:  LDR.W           R8, [R0]
214E28:  ADD             R1, PC; dword_6BD590
214E2A:  LDR             R1, [R1]
214E2C:  SUBS            R6, R0, R1
214E2E:  LDR             R0, [SP,#0x50+var_48]
214E30:  LDR.W           R1, [R6],#-4
214E34:  BLX             j__Z21_rwFrameListFindFramePK11rwFrameListPK7RwFramePi; _rwFrameListFindFrame(rwFrameList const*,RwFrame const*,int *)
214E38:  CBZ             R0, loc_214E6C
214E3A:  LDR             R0, [SP,#0x50+var_44]
214E3C:  MOVW            R1, #0xFFFF
214E40:  STR             R1, [SP,#0x50+var_50]
214E42:  MOVS            R1, #1
214E44:  MOVS            R2, #4
214E46:  MOV             R3, R10
214E48:  BLX             j__Z34_rwStreamWriteVersionedChunkHeaderP8RwStreamiijj; _rwStreamWriteVersionedChunkHeader(RwStream *,int,int,uint,uint)
214E4C:  CBZ             R0, loc_214E6C
214E4E:  LDR             R0, [SP,#0x50+var_44]
214E50:  MOV             R1, R9
214E52:  MOVS            R2, #4
214E54:  BLX             j__Z18RwStreamWriteInt32P8RwStreamPKij; RwStreamWriteInt32(RwStream *,int const*,uint)
214E58:  CBZ             R0, loc_214E6C
214E5A:  LDR             R1, [SP,#0x50+var_44]
214E5C:  MOV             R0, R6
214E5E:  BLX             j__Z19RwCameraStreamWritePK8RwCameraP8RwStream; RwCameraStreamWrite(RwCamera const*,RwStream *)
214E62:  CBZ             R0, loc_214E6C
214E64:  CMP             R6, #0
214E66:  MOV             R0, R8
214E68:  BNE             loc_214E1C
214E6A:  B               loc_214E70
214E6C:  MOVS            R0, #0
214E6E:  STR             R0, [SP,#0x50+var_30]
214E70:  LDR             R0, [SP,#0x50+var_34]
214E72:  LDR             R6, [SP,#0x50+var_48]
214E74:  CBZ             R0, loc_214E9E
214E76:  CMP             R0, #1
214E78:  BLT             loc_214E8E
214E7A:  MOVS            R5, #0
214E7C:  LDR             R0, [SP,#0x50+var_38]
214E7E:  LDR.W           R0, [R0,R5,LSL#2]
214E82:  BLX             j__Z17RpGeometryDestroyP10RpGeometry; RpGeometryDestroy(RpGeometry *)
214E86:  LDR             R0, [SP,#0x50+var_34]
214E88:  ADDS            R5, #1
214E8A:  CMP             R5, R0
214E8C:  BLT             loc_214E7C
214E8E:  LDR             R0, =(RwEngineInstance_ptr - 0x214E94)
214E90:  ADD             R0, PC; RwEngineInstance_ptr
214E92:  LDR             R0, [R0]; RwEngineInstance
214E94:  LDR             R1, [R0]
214E96:  LDR             R0, [SP,#0x50+var_38]
214E98:  LDR.W           R1, [R1,#0x130]
214E9C:  BLX             R1
214E9E:  MOV             R0, R6
214EA0:  BLX             j__Z24_rwFrameListDeinitializeP11rwFrameList; _rwFrameListDeinitialize(rwFrameList *)
214EA4:  LDR             R0, [SP,#0x50+var_30]
214EA6:  CMP             R0, #0
214EA8:  BEQ             loc_214DFA
214EAA:  LDR             R0, =(dword_683B60 - 0x214EB4)
214EAC:  MOV             R1, R11
214EAE:  MOV             R2, R4
214EB0:  ADD             R0, PC; dword_683B60
214EB2:  BLX             j__Z32_rwPluginRegistryWriteDataChunksPK16RwPluginRegistryP8RwStreamPKv; _rwPluginRegistryWriteDataChunks(RwPluginRegistry const*,RwStream *,void const*)
214EB6:  MOV             R6, R0
214EB8:  CMP             R6, #0
214EBA:  IT NE
214EBC:  MOVNE           R6, R4
214EBE:  B               loc_214DFC
