; =========================================================
; Game Engine Function: _Z28RwTexDictionaryStreamGetSizePK15RwTexDictionary
; Address            : 0x1D5584 - 0x1D55C2
; =========================================================

1D5584:  PUSH            {R4,R6,R7,LR}
1D5586:  ADD             R7, SP, #8
1D5588:  SUB             SP, SP, #8
1D558A:  LDR             R1, =(sub_1D55CC+1 - 0x1D559A)
1D558C:  MOV             R4, R0
1D558E:  MOVS            R0, #1
1D5590:  MOV             R2, SP
1D5592:  STR             R0, [SP,#0x10+var_C]
1D5594:  MOVS            R0, #0x10
1D5596:  ADD             R1, PC; sub_1D55CC
1D5598:  STR             R0, [SP,#0x10+var_10]
1D559A:  MOV             R0, R4
1D559C:  BLX             j__Z29RwTexDictionaryForAllTexturesPK15RwTexDictionaryPFP9RwTextureS3_PvES4_; RwTexDictionaryForAllTextures(RwTexDictionary const*,RwTexture * (*)(RwTexture *,void *),void *)
1D55A0:  LDR             R0, [SP,#0x10+var_C]
1D55A2:  CBZ             R0, loc_1D55BC
1D55A4:  LDR             R0, =(texDictTKList_ptr - 0x1D55AC)
1D55A6:  MOV             R1, R4
1D55A8:  ADD             R0, PC; texDictTKList_ptr
1D55AA:  LDR             R0, [R0]; texDictTKList
1D55AC:  BLX             j__Z24_rwPluginRegistryGetSizePK16RwPluginRegistryPKv; _rwPluginRegistryGetSize(RwPluginRegistry const*,void const*)
1D55B0:  LDR             R1, [SP,#0x10+var_10]
1D55B2:  ADD             R0, R1
1D55B4:  ADDS            R0, #0xC
1D55B6:  STR             R0, [SP,#0x10+var_10]
1D55B8:  ADD             SP, SP, #8
1D55BA:  POP             {R4,R6,R7,PC}
1D55BC:  MOVS            R0, #0
1D55BE:  ADD             SP, SP, #8
1D55C0:  POP             {R4,R6,R7,PC}
