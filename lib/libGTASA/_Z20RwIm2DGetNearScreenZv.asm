; =========================================================
; Game Engine Function: _Z20RwIm2DGetNearScreenZv
; Address            : 0x1E28F4 - 0x1E2900
; =========================================================

1E28F4:  LDR             R0, =(RwEngineInstance_ptr - 0x1E28FA)
1E28F6:  ADD             R0, PC; RwEngineInstance_ptr
1E28F8:  LDR             R0, [R0]; RwEngineInstance
1E28FA:  LDR             R0, [R0]
1E28FC:  LDR             R0, [R0,#0x18]
1E28FE:  BX              LR
