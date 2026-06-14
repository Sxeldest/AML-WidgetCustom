; =========================================================
; Game Engine Function: _Z16RwIm2DRenderLineP14RwOpenGLVertexiii
; Address            : 0x1E2958 - 0x1E296C
; =========================================================

1E2958:  LDR.W           R12, =(RwEngineInstance_ptr - 0x1E2960)
1E295C:  ADD             R12, PC; RwEngineInstance_ptr
1E295E:  LDR.W           R12, [R12]; RwEngineInstance
1E2962:  LDR.W           R12, [R12]
1E2966:  LDR.W           R12, [R12,#0x28]
1E296A:  BX              R12
