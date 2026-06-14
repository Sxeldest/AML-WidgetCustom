; =========================================================
; Game Engine Function: _Z24RpMTEffectDictSetCurrentP14RpMTEffectDict
; Address            : 0x1C5DC4 - 0x1C5DDA
; =========================================================

1C5DC4:  LDR             R1, =(_rpMultiTextureModule_ptr - 0x1C5DCC)
1C5DC6:  LDR             R2, =(RwEngineInstance_ptr - 0x1C5DCE)
1C5DC8:  ADD             R1, PC; _rpMultiTextureModule_ptr
1C5DCA:  ADD             R2, PC; RwEngineInstance_ptr
1C5DCC:  LDR             R1, [R1]; _rpMultiTextureModule
1C5DCE:  LDR             R2, [R2]; RwEngineInstance
1C5DD0:  LDR             R1, [R1]
1C5DD2:  LDR             R2, [R2]
1C5DD4:  ADD             R1, R2
1C5DD6:  STR             R0, [R1,#8]
1C5DD8:  BX              LR
