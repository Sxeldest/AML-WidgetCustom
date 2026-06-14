; =========================================================
; Game Engine Function: RpSkinGetOpenGLPipeline
; Address            : 0x1C8758 - 0x1C8766
; =========================================================

1C8758:  LDR             R1, =(_rpSkinGlobals_ptr - 0x1C875E)
1C875A:  ADD             R1, PC; _rpSkinGlobals_ptr
1C875C:  LDR             R1, [R1]; _rpSkinGlobals
1C875E:  ADD.W           R0, R1, R0,LSL#2
1C8762:  LDR             R0, [R0,#0x20]
1C8764:  BX              LR
