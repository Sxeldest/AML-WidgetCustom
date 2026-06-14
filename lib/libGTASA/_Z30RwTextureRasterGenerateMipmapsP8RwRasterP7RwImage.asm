; =========================================================
; Game Engine Function: _Z30RwTextureRasterGenerateMipmapsP8RwRasterP7RwImage
; Address            : 0x1DBC58 - 0x1DBC78
; =========================================================

1DBC58:  PUSH            {R7,LR}
1DBC5A:  MOV             R7, SP
1DBC5C:  LDR             R2, =(RwEngineInstance_ptr - 0x1DBC64)
1DBC5E:  LDR             R3, =(dword_6BCF84 - 0x1DBC66)
1DBC60:  ADD             R2, PC; RwEngineInstance_ptr
1DBC62:  ADD             R3, PC; dword_6BCF84
1DBC64:  LDR             R2, [R2]; RwEngineInstance
1DBC66:  LDR             R3, [R3]
1DBC68:  LDR             R2, [R2]
1DBC6A:  ADD             R2, R3
1DBC6C:  LDR             R2, [R2,#0x2C]
1DBC6E:  BLX             R2
1DBC70:  CMP             R0, #0
1DBC72:  IT NE
1DBC74:  MOVNE           R0, #1
1DBC76:  POP             {R7,PC}
