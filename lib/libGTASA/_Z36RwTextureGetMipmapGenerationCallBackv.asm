; =========================================================
; Game Engine Function: _Z36RwTextureGetMipmapGenerationCallBackv
; Address            : 0x1DBC00 - 0x1DBC14
; =========================================================

1DBC00:  LDR             R0, =(RwEngineInstance_ptr - 0x1DBC08)
1DBC02:  LDR             R1, =(dword_6BCF84 - 0x1DBC0A)
1DBC04:  ADD             R0, PC; RwEngineInstance_ptr
1DBC06:  ADD             R1, PC; dword_6BCF84
1DBC08:  LDR             R0, [R0]; RwEngineInstance
1DBC0A:  LDR             R1, [R1]
1DBC0C:  LDR             R0, [R0]
1DBC0E:  ADD             R0, R1
1DBC10:  LDR             R0, [R0,#0x2C]
1DBC12:  BX              LR
