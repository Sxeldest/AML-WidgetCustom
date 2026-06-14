; =========================================================
; Game Engine Function: _Z29_rwOpenGLNativeTextureGetSizePvS_i
; Address            : 0x1AEAC0 - 0x1AEB1C
; =========================================================

1AEAC0:  PUSH            {R4-R7,LR}
1AEAC2:  ADD             R7, SP, #0xC
1AEAC4:  PUSH.W          {R8-R10}
1AEAC8:  LDR.W           R9, [R1]
1AEACC:  MOV             R8, R0
1AEACE:  CMP.W           R9, #0
1AEAD2:  BEQ             loc_1AEB0A
1AEAD4:  MOV             R0, R9
1AEAD6:  LDR.W           R6, [R9,#0x10]
1AEADA:  LDR.W           R4, [R9,#0x18]
1AEADE:  BLX             j__Z20RwRasterGetNumLevelsP8RwRaster; RwRasterGetNumLevels(RwRaster *)
1AEAE2:  CMP             R0, #1
1AEAE4:  BLT             loc_1AEB0E
1AEAE6:  MOV.W           R10, #0xC
1AEAEA:  MOVS            R5, #0
1AEAEC:  MLA.W           R0, R4, R6, R10
1AEAF0:  ADDS            R5, #1
1AEAF2:  ASRS            R6, R6, #1
1AEAF4:  ASRS            R4, R4, #1
1AEAF6:  ADD.W           R10, R0, #4
1AEAFA:  MOV             R0, R9
1AEAFC:  BLX             j__Z20RwRasterGetNumLevelsP8RwRaster; RwRasterGetNumLevels(RwRaster *)
1AEB00:  CMP             R5, R0
1AEB02:  BLT             loc_1AEAEC
1AEB04:  ADD.W           R0, R10, #0x6C ; 'l'
1AEB08:  B               loc_1AEB10
1AEB0A:  MOVS            R0, #0x6C ; 'l'
1AEB0C:  B               loc_1AEB10
1AEB0E:  MOVS            R0, #0x78 ; 'x'
1AEB10:  STR.W           R0, [R8]
1AEB14:  MOVS            R0, #1
1AEB16:  POP.W           {R8-R10}
1AEB1A:  POP             {R4-R7,PC}
