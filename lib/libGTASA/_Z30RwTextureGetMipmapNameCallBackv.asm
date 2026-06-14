; =========================================================
; Game Engine Function: _Z30RwTextureGetMipmapNameCallBackv
; Address            : 0x1DBC3C - 0x1DBC50
; =========================================================

1DBC3C:  LDR             R0, =(RwEngineInstance_ptr - 0x1DBC44)
1DBC3E:  LDR             R1, =(dword_6BCF84 - 0x1DBC46)
1DBC40:  ADD             R0, PC; RwEngineInstance_ptr
1DBC42:  ADD             R1, PC; dword_6BCF84
1DBC44:  LDR             R0, [R0]; RwEngineInstance
1DBC46:  LDR             R1, [R1]
1DBC48:  LDR             R0, [R0]
1DBC4A:  ADD             R0, R1
1DBC4C:  LDR             R0, [R0,#0x30]
1DBC4E:  BX              LR
