; =========================================================
; Game Engine Function: _Z16RwRenderStateGet13RwRenderStatePv
; Address            : 0x1E2948 - 0x1E2954
; =========================================================

1E2948:  LDR             R2, =(RwEngineInstance_ptr - 0x1E294E)
1E294A:  ADD             R2, PC; RwEngineInstance_ptr
1E294C:  LDR             R2, [R2]; RwEngineInstance
1E294E:  LDR             R2, [R2]
1E2950:  LDR             R2, [R2,#0x24]
1E2952:  BX              R2
