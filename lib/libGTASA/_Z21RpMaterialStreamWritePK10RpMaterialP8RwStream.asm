; =========================================================
; Game Engine Function: _Z21RpMaterialStreamWritePK10RpMaterialP8RwStream
; Address            : 0x2176A0 - 0x217762
; =========================================================

2176A0:  PUSH            {R4-R7,LR}
2176A2:  ADD             R7, SP, #0xC
2176A4:  PUSH.W          {R8,R9,R11}
2176A8:  SUB             SP, SP, #0x28
2176AA:  MOV             R4, R0
2176AC:  MOVW            R8, #:lower16:(stru_35FF8.st_size+3)
2176B0:  LDR             R0, [R4]
2176B2:  MOV             R9, R1
2176B4:  MOVT            R8, #:upper16:(stru_35FF8.st_size+3)
2176B8:  CBZ             R0, loc_2176C4
2176BA:  BLX             j__Z22RwTextureStreamGetSizePK9RwTexture; RwTextureStreamGetSize(RwTexture const*)
2176BE:  ADD.W           R6, R0, #0x40 ; '@'
2176C2:  B               loc_2176C6
2176C4:  MOVS            R6, #0x34 ; '4'
2176C6:  LDR             R0, =(dword_683BC4 - 0x2176CE)
2176C8:  MOV             R1, R4
2176CA:  ADD             R0, PC; dword_683BC4
2176CC:  BLX             j__Z24_rwPluginRegistryGetSizePK16RwPluginRegistryPKv; _rwPluginRegistryGetSize(RwPluginRegistry const*,void const*)
2176D0:  ADDS            R2, R0, R6
2176D2:  MOVW            R5, #0xFFFF
2176D6:  MOV             R0, R9
2176D8:  MOVS            R1, #7
2176DA:  MOV             R3, R8
2176DC:  STR             R5, [SP,#0x40+var_40]
2176DE:  BLX             j__Z34_rwStreamWriteVersionedChunkHeaderP8RwStreamiijj; _rwStreamWriteVersionedChunkHeader(RwStream *,int,int,uint,uint)
2176E2:  CBZ             R0, loc_217756
2176E4:  MOV             R0, R9
2176E6:  MOVS            R1, #1
2176E8:  MOVS            R2, #0x1C
2176EA:  MOV             R3, R8
2176EC:  STR             R5, [SP,#0x40+var_40]
2176EE:  BLX             j__Z34_rwStreamWriteVersionedChunkHeaderP8RwStreamiijj; _rwStreamWriteVersionedChunkHeader(RwStream *,int,int,uint,uint)
2176F2:  MOVS            R6, #0
2176F4:  CBZ             R0, loc_217758
2176F6:  STR             R6, [SP,#0x40+var_38]
2176F8:  ADD.W           R8, SP, #0x40+var_38
2176FC:  LDR             R0, [R4]
2176FE:  MOVS            R1, #0xC; unsigned int
217700:  CMP             R0, #0
217702:  IT NE
217704:  MOVNE           R0, #1
217706:  STR             R0, [SP,#0x40+var_2C]
217708:  LDR             R0, [R4,#0x14]
21770A:  VLDR            D16, [R4,#0xC]
21770E:  STR             R0, [SP,#0x40+var_20]
217710:  ADD.W           R0, R8, #0x10; void *
217714:  VSTR            D16, [SP,#0x40+var_28]
217718:  BLX             j__Z18RwMemRealToFloat32Pvj; RwMemRealToFloat32(void *,uint)
21771C:  MOV             R0, R8; void *
21771E:  MOVS            R1, #0x1C; unsigned int
217720:  BLX             j__Z19RwMemLittleEndian32Pvj; RwMemLittleEndian32(void *,uint)
217724:  LDR             R0, [R4,#4]
217726:  MOV             R1, R8; void *
217728:  STR             R0, [SP,#0x40+var_34]
21772A:  MOV             R0, R9; int
21772C:  MOVS            R2, #0x1C; size_t
21772E:  BLX             j__Z13RwStreamWriteP8RwStreamPKvj; RwStreamWrite(RwStream *,void const*,uint)
217732:  CBZ             R0, loc_217758
217734:  LDR             R0, [R4]
217736:  CBZ             R0, loc_217740
217738:  MOV             R1, R9
21773A:  BLX             j__Z20RwTextureStreamWritePK9RwTextureP8RwStream; RwTextureStreamWrite(RwTexture const*,RwStream *)
21773E:  CBZ             R0, loc_217756
217740:  LDR             R0, =(dword_683BC4 - 0x21774A)
217742:  MOV             R1, R9
217744:  MOV             R2, R4
217746:  ADD             R0, PC; dword_683BC4
217748:  BLX             j__Z32_rwPluginRegistryWriteDataChunksPK16RwPluginRegistryP8RwStreamPKv; _rwPluginRegistryWriteDataChunks(RwPluginRegistry const*,RwStream *,void const*)
21774C:  MOV             R6, R0
21774E:  CMP             R6, #0
217750:  IT NE
217752:  MOVNE           R6, R4
217754:  B               loc_217758
217756:  MOVS            R6, #0
217758:  MOV             R0, R6
21775A:  ADD             SP, SP, #0x28 ; '('
21775C:  POP.W           {R8,R9,R11}
217760:  POP             {R4-R7,PC}
