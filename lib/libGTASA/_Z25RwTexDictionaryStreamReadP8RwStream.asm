; =========================================================
; Game Engine Function: _Z25RwTexDictionaryStreamReadP8RwStream
; Address            : 0x1D57B0 - 0x1D590A
; =========================================================

1D57B0:  PUSH            {R4-R7,LR}
1D57B2:  ADD             R7, SP, #0xC
1D57B4:  PUSH.W          {R8-R11}
1D57B8:  SUB             SP, SP, #0x1C
1D57BA:  ADD             R2, SP, #0x38+var_20
1D57BC:  ADD             R3, SP, #0x38+var_24
1D57BE:  MOVS            R1, #1
1D57C0:  MOV             R5, R0
1D57C2:  BLX             j__Z17RwStreamFindChunkP8RwStreamjPjS1_; RwStreamFindChunk(RwStream *,uint,uint *,uint *)
1D57C6:  CMP             R0, #0
1D57C8:  BEQ             loc_1D589A
1D57CA:  LDR             R0, [SP,#0x38+var_24]
1D57CC:  MOV             R8, #0x80000004
1D57D4:  MOVW            R1, #0x2003
1D57D8:  SUB.W           R0, R0, #0x34000
1D57DC:  MOVS            R6, #0
1D57DE:  CMP             R0, R1
1D57E0:  BHI             loc_1D58CE
1D57E2:  LDR             R2, [SP,#0x38+var_20]; size_t
1D57E4:  ADD             R1, SP, #0x38+var_28; void *
1D57E6:  MOV             R0, R5; int
1D57E8:  STR             R6, [SP,#0x38+var_28]
1D57EA:  BLX             j__Z12RwStreamReadP8RwStreamPvj; RwStreamRead(RwStream *,void *,uint)
1D57EE:  LDR             R1, [SP,#0x38+var_20]
1D57F0:  CMP             R0, R1
1D57F2:  BNE             loc_1D58DE
1D57F4:  ADD             R0, SP, #0x38+var_28; void *
1D57F6:  MOVS            R1, #4; unsigned int
1D57F8:  BLX             j__Z13RwMemNative32Pvj; RwMemNative32(void *,uint)
1D57FC:  BLX             j__Z21RwTexDictionaryCreatev; RwTexDictionaryCreate(void)
1D5800:  MOV             R4, R0
1D5802:  CMP             R4, #0
1D5804:  BEQ             loc_1D589A
1D5806:  LDRH.W          R0, [SP,#0x38+var_28]
1D580A:  CMP             R0, #0
1D580C:  SUB.W           R1, R0, #1
1D5810:  STRH.W          R1, [SP,#0x38+var_28]
1D5814:  BEQ             loc_1D5886
1D5816:  LDR             R0, =(RwEngineInstance_ptr - 0x1D5824)
1D5818:  ADD.W           R11, SP, #0x38+var_24
1D581C:  ADD.W           R10, SP, #0x38+var_2C
1D5820:  ADD             R0, PC; RwEngineInstance_ptr
1D5822:  LDR.W           R9, [R0]; RwEngineInstance
1D5826:  LDR             R0, =(textureTKList_ptr - 0x1D582C)
1D5828:  ADD             R0, PC; textureTKList_ptr
1D582A:  LDR             R6, [R0]; textureTKList
1D582C:  ADD             R2, SP, #0x38+var_20
1D582E:  MOV             R0, R5; int
1D5830:  MOVS            R1, #0x15
1D5832:  MOV             R3, R11
1D5834:  BLX             j__Z17RwStreamFindChunkP8RwStreamjPjS1_; RwStreamFindChunk(RwStream *,uint,uint *,uint *)
1D5838:  CBZ             R0, loc_1D58B4
1D583A:  LDR             R0, [SP,#0x38+var_24]
1D583C:  MOVW            R1, #0x2004
1D5840:  SUB.W           R0, R0, #0x34000
1D5844:  CMP             R0, R1
1D5846:  BCS             loc_1D58BA
1D5848:  LDR.W           R0, [R9]
1D584C:  MOV             R1, R10
1D584E:  LDR             R2, [SP,#0x38+var_20]
1D5850:  LDR.W           R3, [R0,#0xB0]
1D5854:  MOV             R0, R5
1D5856:  BLX             R3
1D5858:  CMP             R0, #0
1D585A:  BEQ             loc_1D58E8
1D585C:  LDR             R2, [SP,#0x38+var_2C]
1D585E:  CMP             R2, #0
1D5860:  BEQ             loc_1D58EE
1D5862:  MOV             R0, R6; int
1D5864:  MOV             R1, R5; int
1D5866:  BLX             j__Z31_rwPluginRegistryReadDataChunksPK16RwPluginRegistryP8RwStreamPv; _rwPluginRegistryReadDataChunks(RwPluginRegistry const*,RwStream *,void *)
1D586A:  CMP             R0, #0
1D586C:  BEQ             loc_1D58F4
1D586E:  LDR             R1, [SP,#0x38+var_2C]
1D5870:  MOV             R0, R4
1D5872:  BLX             j__Z25RwTexDictionaryAddTextureP15RwTexDictionaryP9RwTexture; RwTexDictionaryAddTexture(RwTexDictionary *,RwTexture *)
1D5876:  LDRH.W          R0, [SP,#0x38+var_28]
1D587A:  CMP             R0, #0
1D587C:  SUB.W           R1, R0, #1
1D5880:  STRH.W          R1, [SP,#0x38+var_28]
1D5884:  BNE             loc_1D582C
1D5886:  LDR             R0, =(texDictTKList_ptr - 0x1D5890)
1D5888:  MOV             R1, R5; int
1D588A:  MOV             R2, R4
1D588C:  ADD             R0, PC; texDictTKList_ptr
1D588E:  LDR             R0, [R0]; texDictTKList ; int
1D5890:  BLX             j__Z31_rwPluginRegistryReadDataChunksPK16RwPluginRegistryP8RwStreamPv; _rwPluginRegistryReadDataChunks(RwPluginRegistry const*,RwStream *,void *)
1D5894:  CBZ             R0, loc_1D589E
1D5896:  MOV             R6, R4
1D5898:  B               loc_1D58DE
1D589A:  MOVS            R6, #0
1D589C:  B               loc_1D58DE
1D589E:  LDR             R1, =(sub_1D5930+1 - 0x1D58AA)
1D58A0:  MOV             R0, R4
1D58A2:  MOVS            R2, #0
1D58A4:  MOVS            R6, #0
1D58A6:  ADD             R1, PC; sub_1D5930
1D58A8:  BLX             j__Z29RwTexDictionaryForAllTexturesPK15RwTexDictionaryPFP9RwTextureS3_PvES4_; RwTexDictionaryForAllTextures(RwTexDictionary const*,RwTexture * (*)(RwTexture *,void *),void *)
1D58AC:  MOV             R0, R4
1D58AE:  BLX             j__Z22RwTexDictionaryDestroyP15RwTexDictionary; RwTexDictionaryDestroy(RwTexDictionary *)
1D58B2:  B               loc_1D58DE
1D58B4:  LDR             R1, =(sub_1D5930+1 - 0x1D58BA)
1D58B6:  ADD             R1, PC; sub_1D5930
1D58B8:  B               loc_1D58F8
1D58BA:  LDR             R1, =(sub_1D5930+1 - 0x1D58C6)
1D58BC:  MOV             R0, R4
1D58BE:  MOVS            R2, #0
1D58C0:  MOVS            R6, #0
1D58C2:  ADD             R1, PC; sub_1D5930
1D58C4:  BLX             j__Z29RwTexDictionaryForAllTexturesPK15RwTexDictionaryPFP9RwTextureS3_PvES4_; RwTexDictionaryForAllTextures(RwTexDictionary const*,RwTexture * (*)(RwTexture *,void *),void *)
1D58C8:  MOV             R0, R4
1D58CA:  BLX             j__Z22RwTexDictionaryDestroyP15RwTexDictionary; RwTexDictionaryDestroy(RwTexDictionary *)
1D58CE:  MOV             R0, R8; int
1D58D0:  STR             R6, [SP,#0x38+var_34]
1D58D2:  BLX             j__Z8_rwerroriz; _rwerror(int,...)
1D58D6:  STR             R0, [SP,#0x38+var_30]
1D58D8:  ADD             R0, SP, #0x38+var_34
1D58DA:  BLX             j__Z10RwErrorSetP7RwError; RwErrorSet(RwError *)
1D58DE:  MOV             R0, R6
1D58E0:  ADD             SP, SP, #0x1C
1D58E2:  POP.W           {R8-R11}
1D58E6:  POP             {R4-R7,PC}
1D58E8:  LDR             R1, =(sub_1D5930+1 - 0x1D58EE)
1D58EA:  ADD             R1, PC; sub_1D5930
1D58EC:  B               loc_1D58F8
1D58EE:  LDR             R1, =(sub_1D5930+1 - 0x1D58F4)
1D58F0:  ADD             R1, PC; sub_1D5930
1D58F2:  B               loc_1D58F8
1D58F4:  LDR             R1, =(sub_1D5930+1 - 0x1D58FA)
1D58F6:  ADD             R1, PC; sub_1D5930
1D58F8:  MOV             R0, R4
1D58FA:  MOVS            R2, #0
1D58FC:  BLX             j__Z29RwTexDictionaryForAllTexturesPK15RwTexDictionaryPFP9RwTextureS3_PvES4_; RwTexDictionaryForAllTextures(RwTexDictionary const*,RwTexture * (*)(RwTexture *,void *),void *)
1D5900:  MOV             R0, R4
1D5902:  BLX             j__Z22RwTexDictionaryDestroyP15RwTexDictionary; RwTexDictionaryDestroy(RwTexDictionary *)
1D5906:  MOVS            R6, #0
1D5908:  B               loc_1D58DE
