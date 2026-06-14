; =========================================================
; Game Engine Function: _Z28_rwTextureGetAutoMipMapStatev
; Address            : 0x1DB538 - 0x1DB54C
; =========================================================

1DB538:  LDR             R0, =(RwEngineInstance_ptr - 0x1DB540)
1DB53A:  LDR             R1, =(dword_6BCF84 - 0x1DB542)
1DB53C:  ADD             R0, PC; RwEngineInstance_ptr
1DB53E:  ADD             R1, PC; dword_6BCF84
1DB540:  LDR             R0, [R0]; RwEngineInstance
1DB542:  LDR             R1, [R1]
1DB544:  LDR             R0, [R0]
1DB546:  ADD             R0, R1
1DB548:  LDR             R0, [R0,#0x20]
1DB54A:  BX              LR
