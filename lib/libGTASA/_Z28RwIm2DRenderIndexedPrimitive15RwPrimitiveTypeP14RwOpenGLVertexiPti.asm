; =========================================================
; Game Engine Function: _Z28RwIm2DRenderIndexedPrimitive15RwPrimitiveTypeP14RwOpenGLVertexiPti
; Address            : 0x1E2998 - 0x1E29AC
; =========================================================

1E2998:  LDR.W           R12, =(RwEngineInstance_ptr - 0x1E29A0)
1E299C:  ADD             R12, PC; RwEngineInstance_ptr
1E299E:  LDR.W           R12, [R12]; RwEngineInstance
1E29A2:  LDR.W           R12, [R12]
1E29A6:  LDR.W           R12, [R12,#0x34]
1E29AA:  BX              R12
