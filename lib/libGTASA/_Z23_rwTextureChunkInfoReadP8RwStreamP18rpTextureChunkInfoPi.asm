; =========================================================
; Game Engine Function: _Z23_rwTextureChunkInfoReadP8RwStreamP18rpTextureChunkInfoPi
; Address            : 0x1D593E - 0x1D59A4
; =========================================================

1D593E:  PUSH            {R4-R7,LR}
1D5940:  ADD             R7, SP, #0xC
1D5942:  PUSH.W          {R8}
1D5946:  SUB             SP, SP, #8
1D5948:  MOV             R8, R2
1D594A:  ADD             R2, SP, #0x18+var_14
1D594C:  MOV             R4, R1
1D594E:  MOVS            R1, #1
1D5950:  MOVS            R3, #0
1D5952:  MOV             R5, R0
1D5954:  MOVS            R6, #0
1D5956:  BLX             j__Z17RwStreamFindChunkP8RwStreamjPjS1_; RwStreamFindChunk(RwStream *,uint,uint *,uint *)
1D595A:  CBZ             R0, loc_1D599A
1D595C:  MOV             R1, SP; void *
1D595E:  MOV             R0, R5; int
1D5960:  MOVS            R2, #4; size_t
1D5962:  STR             R6, [SP,#0x18+var_18]
1D5964:  BLX             j__Z12RwStreamReadP8RwStreamPvj; RwStreamRead(RwStream *,void *,uint)
1D5968:  CMP             R0, #4
1D596A:  BNE             loc_1D599A
1D596C:  LDR             R0, [SP,#0x18+var_14]
1D596E:  ADD.W           R1, R0, #0xC
1D5972:  STR.W           R1, [R8]
1D5976:  SUBS            R1, R0, #4
1D5978:  MOV             R0, R5
1D597A:  BLX             j__Z12RwStreamSkipP8RwStreamj; RwStreamSkip(RwStream *,uint)
1D597E:  MOV             R0, SP; void *
1D5980:  MOVS            R1, #4; unsigned int
1D5982:  BLX             j__Z13RwMemNative32Pvj; RwMemNative32(void *,uint)
1D5986:  LDR             R0, [SP,#0x18+var_18]
1D5988:  MOV             R6, R4
1D598A:  UBFX.W          R1, R0, #8, #4
1D598E:  STR             R1, [R4,#4]
1D5990:  UBFX.W          R1, R0, #0xC, #4
1D5994:  UXTB            R0, R0
1D5996:  STR             R1, [R4,#8]
1D5998:  STR             R0, [R4]
1D599A:  MOV             R0, R6
1D599C:  ADD             SP, SP, #8
1D599E:  POP.W           {R8}
1D59A2:  POP             {R4-R7,PC}
