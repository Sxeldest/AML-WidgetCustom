; =========================================================
; Game Engine Function: _Z24RwTextureGetFindCallBackv
; Address            : 0x1DB444 - 0x1DB458
; =========================================================

1DB444:  LDR             R0, =(RwEngineInstance_ptr - 0x1DB44C)
1DB446:  LDR             R1, =(dword_6BCF84 - 0x1DB44E)
1DB448:  ADD             R0, PC; RwEngineInstance_ptr
1DB44A:  ADD             R1, PC; dword_6BCF84
1DB44C:  LDR             R0, [R0]; RwEngineInstance
1DB44E:  LDR             R1, [R1]
1DB450:  LDR             R0, [R0]
1DB452:  ADD             R0, R1
1DB454:  LDR             R0, [R0,#0x18]
1DB456:  BX              LR
