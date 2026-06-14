; =========================================================
; Game Engine Function: _Z18RwEngineGetMetricsv
; Address            : 0x1D7778 - 0x1D7786
; =========================================================

1D7778:  LDR             R0, =(RwEngineInstance_ptr - 0x1D777E)
1D777A:  ADD             R0, PC; RwEngineInstance_ptr
1D777C:  LDR             R0, [R0]; RwEngineInstance
1D777E:  LDR             R0, [R0]
1D7780:  LDR.W           R0, [R0,#0x144]
1D7784:  BX              LR
