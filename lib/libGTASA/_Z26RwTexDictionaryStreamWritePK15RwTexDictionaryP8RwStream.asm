; =========================================================
; Game Engine Function: _Z26RwTexDictionaryStreamWritePK15RwTexDictionaryP8RwStream
; Address            : 0x1D5628 - 0x1D56FA
; =========================================================

1D5628:  PUSH            {R4-R7,LR}
1D562A:  ADD             R7, SP, #0xC
1D562C:  PUSH.W          {R8}
1D5630:  SUB             SP, SP, #0x10
1D5632:  MOV             R5, R1
1D5634:  LDR             R1, =(sub_1D55CC+1 - 0x1D5642)
1D5636:  MOV             R4, R0
1D5638:  MOVS            R0, #1
1D563A:  STR             R0, [SP,#0x20+var_14]
1D563C:  MOVS            R0, #0x10
1D563E:  ADD             R1, PC; sub_1D55CC
1D5640:  ADD             R2, SP, #0x20+var_18
1D5642:  STR             R0, [SP,#0x20+var_18]
1D5644:  MOV             R0, R4
1D5646:  BLX             j__Z29RwTexDictionaryForAllTexturesPK15RwTexDictionaryPFP9RwTextureS3_PvES4_; RwTexDictionaryForAllTextures(RwTexDictionary const*,RwTexture * (*)(RwTexture *,void *),void *)
1D564A:  LDR             R0, [SP,#0x20+var_14]
1D564C:  CMP             R0, #0
1D564E:  BEQ             loc_1D56E8
1D5650:  LDR             R0, =(texDictTKList_ptr - 0x1D5658)
1D5652:  MOV             R1, R4
1D5654:  ADD             R0, PC; texDictTKList_ptr
1D5656:  LDR             R0, [R0]; texDictTKList
1D5658:  BLX             j__Z24_rwPluginRegistryGetSizePK16RwPluginRegistryPKv; _rwPluginRegistryGetSize(RwPluginRegistry const*,void const*)
1D565C:  LDR             R1, [SP,#0x20+var_18]
1D565E:  ADD             R0, R1
1D5660:  ADDS.W          R2, R0, #0xC
1D5664:  BEQ             loc_1D56E8
1D5666:  MOVW            R8, #:lower16:(stru_35FF8.st_size+3)
1D566A:  MOVW            R6, #0xFFFF
1D566E:  MOVT            R8, #:upper16:(stru_35FF8.st_size+3)
1D5672:  MOV             R0, R5
1D5674:  MOVS            R1, #0x16
1D5676:  MOV             R3, R8
1D5678:  STR             R6, [SP,#0x20+var_20]
1D567A:  BLX             j__Z34_rwStreamWriteVersionedChunkHeaderP8RwStreamiijj; _rwStreamWriteVersionedChunkHeader(RwStream *,int,int,uint,uint)
1D567E:  CBZ             R0, loc_1D56E8
1D5680:  MOV             R0, R5
1D5682:  MOVS            R1, #1
1D5684:  MOVS            R2, #4
1D5686:  MOV             R3, R8
1D5688:  STR             R6, [SP,#0x20+var_20]
1D568A:  BLX             j__Z34_rwStreamWriteVersionedChunkHeaderP8RwStreamiijj; _rwStreamWriteVersionedChunkHeader(RwStream *,int,int,uint,uint)
1D568E:  MOVS            R6, #0
1D5690:  CBZ             R0, loc_1D56EA
1D5692:  LDR             R1, =(sub_1D5710+1 - 0x1D56A2)
1D5694:  ADD.W           R8, SP, #0x20+var_1C
1D5698:  MOV             R0, R4
1D569A:  STRH.W          R6, [SP,#0x20+var_1C]
1D569E:  ADD             R1, PC; sub_1D5710
1D56A0:  MOV             R2, R8
1D56A2:  BLX             j__Z29RwTexDictionaryForAllTexturesPK15RwTexDictionaryPFP9RwTextureS3_PvES4_; RwTexDictionaryForAllTextures(RwTexDictionary const*,RwTexture * (*)(RwTexture *,void *),void *)
1D56A6:  MOV             R0, R8; void *
1D56A8:  MOVS            R1, #4; unsigned int
1D56AA:  BLX             j__Z19RwMemLittleEndian32Pvj; RwMemLittleEndian32(void *,uint)
1D56AE:  MOV             R0, R5; int
1D56B0:  MOV             R1, R8; void *
1D56B2:  MOVS            R2, #4; size_t
1D56B4:  BLX             j__Z13RwStreamWriteP8RwStreamPKvj; RwStreamWrite(RwStream *,void const*,uint)
1D56B8:  CBZ             R0, loc_1D56EA
1D56BA:  LDR             R1, =(sub_1D5718+1 - 0x1D56C8)
1D56BC:  MOVS            R0, #1
1D56BE:  ADD             R2, SP, #0x20+var_18
1D56C0:  STRD.W          R5, R0, [SP,#0x20+var_18]
1D56C4:  ADD             R1, PC; sub_1D5718
1D56C6:  MOV             R0, R4
1D56C8:  BLX             j__Z29RwTexDictionaryForAllTexturesPK15RwTexDictionaryPFP9RwTextureS3_PvES4_; RwTexDictionaryForAllTextures(RwTexDictionary const*,RwTexture * (*)(RwTexture *,void *),void *)
1D56CC:  LDR             R0, =(texDictTKList_ptr - 0x1D56D6)
1D56CE:  MOV             R1, R5
1D56D0:  MOV             R2, R4
1D56D2:  ADD             R0, PC; texDictTKList_ptr
1D56D4:  LDR             R0, [R0]; texDictTKList
1D56D6:  BLX             j__Z32_rwPluginRegistryWriteDataChunksPK16RwPluginRegistryP8RwStreamPKv; _rwPluginRegistryWriteDataChunks(RwPluginRegistry const*,RwStream *,void const*)
1D56DA:  CBZ             R0, loc_1D56F4
1D56DC:  LDR             R0, [SP,#0x20+var_14]
1D56DE:  CMP             R0, #0
1D56E0:  IT EQ
1D56E2:  MOVEQ           R4, R0
1D56E4:  MOV             R6, R4
1D56E6:  B               loc_1D56EA
1D56E8:  MOVS            R6, #0
1D56EA:  MOV             R0, R6
1D56EC:  ADD             SP, SP, #0x10
1D56EE:  POP.W           {R8}
1D56F2:  POP             {R4-R7,PC}
1D56F4:  MOVS            R6, #0
1D56F6:  STR             R6, [SP,#0x20+var_14]
1D56F8:  B               loc_1D56EA
