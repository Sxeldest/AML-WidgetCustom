; =========================================================
; Game Engine Function: _Z19RwIm2DGetFarScreenZv
; Address            : 0x1E2904 - 0x1E2910
; =========================================================

1E2904:  LDR             R0, =(RwEngineInstance_ptr - 0x1E290A)
1E2906:  ADD             R0, PC; RwEngineInstance_ptr
1E2908:  LDR             R0, [R0]; RwEngineInstance
1E290A:  LDR             R0, [R0]
1E290C:  LDR             R0, [R0,#0x1C]
1E290E:  BX              LR
