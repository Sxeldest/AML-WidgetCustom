; =========================================================
; Game Engine Function: _Z24RwTextureSetFindCallBackPFP9RwTexturePKcE
; Address            : 0x1DB424 - 0x1DB43A
; =========================================================

1DB424:  LDR             R1, =(RwEngineInstance_ptr - 0x1DB42C)
1DB426:  LDR             R2, =(dword_6BCF84 - 0x1DB42E)
1DB428:  ADD             R1, PC; RwEngineInstance_ptr
1DB42A:  ADD             R2, PC; dword_6BCF84
1DB42C:  LDR             R1, [R1]; RwEngineInstance
1DB42E:  LDR             R2, [R2]
1DB430:  LDR             R1, [R1]
1DB432:  ADD             R1, R2
1DB434:  STR             R0, [R1,#0x18]
1DB436:  MOVS            R0, #1
1DB438:  BX              LR
