; =========================================================
; Game Engine Function: _Z22RwTextureGetMipmappingv
; Address            : 0x1DB4BC - 0x1DB4D0
; =========================================================

1DB4BC:  LDR             R0, =(RwEngineInstance_ptr - 0x1DB4C4)
1DB4BE:  LDR             R1, =(dword_6BCF84 - 0x1DB4C6)
1DB4C0:  ADD             R0, PC; RwEngineInstance_ptr
1DB4C2:  ADD             R1, PC; dword_6BCF84
1DB4C4:  LDR             R0, [R0]; RwEngineInstance
1DB4C6:  LDR             R1, [R1]
1DB4C8:  LDR             R0, [R0]
1DB4CA:  ADD             R0, R1
1DB4CC:  LDR             R0, [R0,#0x1C]
1DB4CE:  BX              LR
