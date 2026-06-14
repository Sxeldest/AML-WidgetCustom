; =========================================================
; Game Engine Function: _Z26RwTextureGetAutoMipmappingv
; Address            : 0x1DB4F8 - 0x1DB50C
; =========================================================

1DB4F8:  LDR             R0, =(RwEngineInstance_ptr - 0x1DB500)
1DB4FA:  LDR             R1, =(dword_6BCF84 - 0x1DB502)
1DB4FC:  ADD             R0, PC; RwEngineInstance_ptr
1DB4FE:  ADD             R1, PC; dword_6BCF84
1DB500:  LDR             R0, [R0]; RwEngineInstance
1DB502:  LDR             R1, [R1]
1DB504:  LDR             R0, [R0]
1DB506:  ADD             R0, R1
1DB508:  LDR             R0, [R0,#0x20]
1DB50A:  BX              LR
