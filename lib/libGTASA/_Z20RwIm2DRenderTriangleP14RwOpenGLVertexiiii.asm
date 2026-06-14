; =========================================================
; Game Engine Function: _Z20RwIm2DRenderTriangleP14RwOpenGLVertexiiii
; Address            : 0x1E2970 - 0x1E2984
; =========================================================

1E2970:  LDR.W           R12, =(RwEngineInstance_ptr - 0x1E2978)
1E2974:  ADD             R12, PC; RwEngineInstance_ptr
1E2976:  LDR.W           R12, [R12]; RwEngineInstance
1E297A:  LDR.W           R12, [R12]
1E297E:  LDR.W           R12, [R12,#0x2C]
1E2982:  BX              R12
