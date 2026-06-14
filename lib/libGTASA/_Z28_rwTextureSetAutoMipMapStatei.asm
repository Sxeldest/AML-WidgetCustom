; =========================================================
; Game Engine Function: _Z28_rwTextureSetAutoMipMapStatei
; Address            : 0x1DB514 - 0x1DB530
; =========================================================

1DB514:  LDR             R1, =(RwEngineInstance_ptr - 0x1DB51C)
1DB516:  LDR             R2, =(dword_6BCF84 - 0x1DB51E)
1DB518:  ADD             R1, PC; RwEngineInstance_ptr
1DB51A:  ADD             R2, PC; dword_6BCF84
1DB51C:  LDR             R1, [R1]; RwEngineInstance
1DB51E:  LDR             R2, [R2]
1DB520:  LDR             R3, [R1]
1DB522:  ADD             R3, R2
1DB524:  STR             R0, [R3,#0x1C]
1DB526:  LDR             R1, [R1]
1DB528:  ADD             R1, R2
1DB52A:  STR             R0, [R1,#0x20]
1DB52C:  MOVS            R0, #1
1DB52E:  BX              LR
