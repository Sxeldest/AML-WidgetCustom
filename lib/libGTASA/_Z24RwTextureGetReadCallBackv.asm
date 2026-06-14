; =========================================================
; Game Engine Function: _Z24RwTextureGetReadCallBackv
; Address            : 0x1DB480 - 0x1DB494
; =========================================================

1DB480:  LDR             R0, =(RwEngineInstance_ptr - 0x1DB488)
1DB482:  LDR             R1, =(dword_6BCF84 - 0x1DB48A)
1DB484:  ADD             R0, PC; RwEngineInstance_ptr
1DB486:  ADD             R1, PC; dword_6BCF84
1DB488:  LDR             R0, [R0]; RwEngineInstance
1DB48A:  LDR             R1, [R1]
1DB48C:  LDR             R0, [R0]
1DB48E:  ADD             R0, R1
1DB490:  LDR             R0, [R0,#0x14]
1DB492:  BX              LR
