; =========================================================
; Game Engine Function: sub_1D5718
; Address            : 0x1D5718 - 0x1D57A0
; =========================================================

1D5718:  PUSH            {R4-R7,LR}
1D571A:  ADD             R7, SP, #0xC
1D571C:  PUSH.W          {R11}
1D5720:  SUB             SP, SP, #8
1D5722:  MOV             R4, R0
1D5724:  LDR             R0, =(RwEngineInstance_ptr - 0x1D572E)
1D5726:  MOV             R5, R1
1D5728:  MOV             R1, R4
1D572A:  ADD             R0, PC; RwEngineInstance_ptr
1D572C:  MOVS            R2, #0
1D572E:  MOVS            R6, #0
1D5730:  LDR             R0, [R0]; RwEngineInstance
1D5732:  LDR             R0, [R0]
1D5734:  LDR.W           R3, [R0,#0xAC]
1D5738:  ADD             R0, SP, #0x18+var_14
1D573A:  BLX             R3
1D573C:  CBZ             R0, loc_1D5792
1D573E:  LDR             R0, =(textureTKList_ptr - 0x1D5746)
1D5740:  MOV             R1, R4
1D5742:  ADD             R0, PC; textureTKList_ptr
1D5744:  LDR             R0, [R0]; textureTKList
1D5746:  BLX             j__Z24_rwPluginRegistryGetSizePK16RwPluginRegistryPKv; _rwPluginRegistryGetSize(RwPluginRegistry const*,void const*)
1D574A:  LDR             R1, [SP,#0x18+var_14]
1D574C:  MOV             R3, #0x36003
1D5754:  ADD             R0, R1
1D5756:  MOVW            R1, #0xFFFF
1D575A:  ADD.W           R2, R0, #0xC
1D575E:  STR             R2, [SP,#0x18+var_14]
1D5760:  LDR             R0, [R5]
1D5762:  STR             R1, [SP,#0x18+var_18]
1D5764:  MOVS            R1, #0x15
1D5766:  BLX             j__Z34_rwStreamWriteVersionedChunkHeaderP8RwStreamiijj; _rwStreamWriteVersionedChunkHeader(RwStream *,int,int,uint,uint)
1D576A:  CBZ             R0, loc_1D5792
1D576C:  LDR             R0, =(RwEngineInstance_ptr - 0x1D5774)
1D576E:  LDR             R2, [SP,#0x18+var_14]
1D5770:  ADD             R0, PC; RwEngineInstance_ptr
1D5772:  LDR             R0, [R0]; RwEngineInstance
1D5774:  LDR             R1, [R0]
1D5776:  LDR             R0, [R5]
1D5778:  LDR.W           R3, [R1,#0xB4]
1D577C:  MOV             R1, R4
1D577E:  BLX             R3
1D5780:  CBZ             R0, loc_1D5792
1D5782:  LDR             R0, =(textureTKList_ptr - 0x1D578C)
1D5784:  MOV             R2, R4
1D5786:  LDR             R1, [R5]
1D5788:  ADD             R0, PC; textureTKList_ptr
1D578A:  LDR             R0, [R0]; textureTKList
1D578C:  BLX             j__Z32_rwPluginRegistryWriteDataChunksPK16RwPluginRegistryP8RwStreamPKv; _rwPluginRegistryWriteDataChunks(RwPluginRegistry const*,RwStream *,void const*)
1D5790:  CBNZ            R0, loc_1D5796
1D5792:  MOVS            R4, #0
1D5794:  STR             R6, [R5,#4]
1D5796:  MOV             R0, R4
1D5798:  ADD             SP, SP, #8
1D579A:  POP.W           {R11}
1D579E:  POP             {R4-R7,PC}
