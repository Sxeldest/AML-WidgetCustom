; =========================================================
; Game Engine Function: _Z25RtAnimInterpolatorDestroyP18RtAnimInterpolator
; Address            : 0x1EB2F0 - 0x1EB2FE
; =========================================================

1EB2F0:  LDR             R1, =(RwEngineInstance_ptr - 0x1EB2F6)
1EB2F2:  ADD             R1, PC; RwEngineInstance_ptr
1EB2F4:  LDR             R1, [R1]; RwEngineInstance
1EB2F6:  LDR             R1, [R1]
1EB2F8:  LDR.W           R1, [R1,#0x130]
1EB2FC:  BX              R1
