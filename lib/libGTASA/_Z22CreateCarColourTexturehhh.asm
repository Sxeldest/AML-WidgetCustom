; =========================================================
; Game Engine Function: _Z22CreateCarColourTexturehhh
; Address            : 0x46CA78 - 0x46CB0E
; =========================================================

46CA78:  PUSH            {R4-R7,LR}
46CA7A:  ADD             R7, SP, #0xC
46CA7C:  PUSH.W          {R8,R9,R11}
46CA80:  SUB             SP, SP, #0x18
46CA82:  MOV             R9, R2
46CA84:  MOV             R4, R1
46CA86:  MOV             R6, R0
46CA88:  MOVS            R0, #2; int
46CA8A:  MOVS            R1, #2; int
46CA8C:  MOVS            R2, #0x20 ; ' '; int
46CA8E:  BLX             j__Z13RwImageCreateiii; RwImageCreate(int,int,int)
46CA92:  MOV             R8, R0
46CA94:  MOVS            R0, #0x10; byte_count
46CA96:  BLX             j__ZN10CMemoryMgr6MallocEj; CMemoryMgr::Malloc(uint)
46CA9A:  MOV             R5, R0
46CA9C:  MOVS            R0, #0xFF
46CA9E:  STRB            R6, [R5]
46CAA0:  ADD             R1, SP, #0x30+var_24
46CAA2:  STRB            R4, [R5,#1]
46CAA4:  ADD             R2, SP, #0x30+var_1C
46CAA6:  STRB.W          R9, [R5,#2]
46CAAA:  ADD             R3, SP, #0x30+var_20
46CAAC:  STRB            R0, [R5,#3]
46CAAE:  STRB            R6, [R5,#4]
46CAB0:  STRB            R4, [R5,#5]
46CAB2:  STRB.W          R9, [R5,#6]
46CAB6:  STRB            R0, [R5,#7]
46CAB8:  STRB            R6, [R5,#8]
46CABA:  STRB            R4, [R5,#9]
46CABC:  STRB.W          R9, [R5,#0xA]
46CAC0:  STRB            R0, [R5,#0xB]
46CAC2:  STRB            R6, [R5,#0xC]
46CAC4:  STRB            R4, [R5,#0xD]
46CAC6:  STRB.W          R9, [R5,#0xE]
46CACA:  STRB            R0, [R5,#0xF]
46CACC:  MOVS            R0, #8
46CACE:  STRD.W          R0, R5, [R8,#0x10]
46CAD2:  ADD             R0, SP, #0x30+var_28
46CAD4:  STRD.W          R1, R0, [SP,#0x30+var_30]
46CAD8:  MOV             R0, R8
46CADA:  MOVS            R1, #4
46CADC:  BLX             j__Z23RwImageFindRasterFormatP7RwImageiPiS1_S1_S1_; RwImageFindRasterFormat(RwImage *,int,int *,int *,int *,int *)
46CAE0:  LDRD.W          R3, R2, [SP,#0x30+var_28]; int
46CAE4:  LDRD.W          R1, R0, [SP,#0x30+var_20]; int
46CAE8:  BLX             j__Z14RwRasterCreateiiii; RwRasterCreate(int,int,int,int)
46CAEC:  MOV             R1, R8
46CAEE:  MOV             R4, R0
46CAF0:  BLX             j__Z20RwRasterSetFromImageP8RwRasterP7RwImage; RwRasterSetFromImage(RwRaster *,RwImage *)
46CAF4:  MOV             R0, R8
46CAF6:  BLX             j__Z14RwImageDestroyP7RwImage; RwImageDestroy(RwImage *)
46CAFA:  MOV             R0, R5; this
46CAFC:  BLX             j__ZN10CMemoryMgr4FreeEPv; CMemoryMgr::Free(void *)
46CB00:  MOV             R0, R4
46CB02:  BLX             j__Z15RwTextureCreateP8RwRaster; RwTextureCreate(RwRaster *)
46CB06:  ADD             SP, SP, #0x18
46CB08:  POP.W           {R8,R9,R11}
46CB0C:  POP             {R4-R7,PC}
