; =========================================================
; Game Engine Function: _Z20RwOsGetFileInterfacev
; Address            : 0x1E26B4 - 0x1E26C0
; =========================================================

1E26B4:  LDR             R0, =(RwEngineInstance_ptr - 0x1E26BA)
1E26B6:  ADD             R0, PC; RwEngineInstance_ptr
1E26B8:  LDR             R0, [R0]; RwEngineInstance
1E26BA:  LDR             R0, [R0]
1E26BC:  ADDS            R0, #0xC4
1E26BE:  BX              LR
