; =========================================================
; Game Engine Function: _Z17RpMTEffectGetPathv
; Address            : 0x1C5788 - 0x1C579E
; =========================================================

1C5788:  LDR             R0, =(_rpMultiTextureModule_ptr - 0x1C5790)
1C578A:  LDR             R1, =(RwEngineInstance_ptr - 0x1C5792)
1C578C:  ADD             R0, PC; _rpMultiTextureModule_ptr
1C578E:  ADD             R1, PC; RwEngineInstance_ptr
1C5790:  LDR             R0, [R0]; _rpMultiTextureModule
1C5792:  LDR             R1, [R1]; RwEngineInstance
1C5794:  LDR             R0, [R0]
1C5796:  LDR             R1, [R1]
1C5798:  ADD             R0, R1
1C579A:  LDR             R0, [R0,#0x10]
1C579C:  BX              LR
