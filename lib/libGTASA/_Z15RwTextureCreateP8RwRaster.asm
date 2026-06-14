; =========================================================
; Game Engine Function: _Z15RwTextureCreateP8RwRaster
; Address            : 0x1DB83C - 0x1DB892
; =========================================================

1DB83C:  PUSH            {R4,R5,R7,LR}
1DB83E:  ADD             R7, SP, #8
1DB840:  MOV             R5, R0
1DB842:  LDR             R0, =(RwEngineInstance_ptr - 0x1DB84A)
1DB844:  LDR             R1, =(dword_6BCF84 - 0x1DB84C)
1DB846:  ADD             R0, PC; RwEngineInstance_ptr
1DB848:  ADD             R1, PC; dword_6BCF84
1DB84A:  LDR             R0, [R0]; RwEngineInstance
1DB84C:  LDR             R1, [R1]
1DB84E:  LDR             R0, [R0]
1DB850:  LDR.W           R2, [R0,#0x13C]
1DB854:  ADD             R0, R1
1DB856:  LDR             R0, [R0,#8]
1DB858:  BLX             R2
1DB85A:  MOV             R4, R0
1DB85C:  CBZ             R4, loc_1DB88E
1DB85E:  LDR             R0, =(textureTKList_ptr - 0x1DB86A)
1DB860:  MOVS            R1, #0
1DB862:  MOVS            R2, #1
1DB864:  STRB            R1, [R4,#0x10]
1DB866:  ADD             R0, PC; textureTKList_ptr
1DB868:  STRB.W          R1, [R4,#0x30]
1DB86C:  STRD.W          R5, R1, [R4]
1DB870:  STRD.W          R1, R2, [R4,#0x50]
1DB874:  MOVW            R2, #0x1102
1DB878:  LDRB.W          R1, [R5,#0x20]
1DB87C:  LDR             R0, [R0]; textureTKList
1DB87E:  CMP             R1, #5
1DB880:  MOV             R1, R4
1DB882:  IT EQ
1DB884:  MOVWEQ          R2, #0x3302
1DB888:  STR             R2, [R4,#0x50]
1DB88A:  BLX             j__Z27_rwPluginRegistryInitObjectPK16RwPluginRegistryPv; _rwPluginRegistryInitObject(RwPluginRegistry const*,void *)
1DB88E:  MOV             R0, R4
1DB890:  POP             {R4,R5,R7,PC}
