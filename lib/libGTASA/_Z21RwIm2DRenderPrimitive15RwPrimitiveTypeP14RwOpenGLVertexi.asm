; =========================================================
; Game Engine Function: _Z21RwIm2DRenderPrimitive15RwPrimitiveTypeP14RwOpenGLVertexi
; Address            : 0x1E2988 - 0x1E2994
; =========================================================

1E2988:  LDR             R3, =(RwEngineInstance_ptr - 0x1E298E)
1E298A:  ADD             R3, PC; RwEngineInstance_ptr
1E298C:  LDR             R3, [R3]; RwEngineInstance
1E298E:  LDR             R3, [R3]
1E2990:  LDR             R3, [R3,#0x30]
1E2992:  BX              R3
