; =========================================================
; Game Engine Function: _Z36RwTextureSetMipmapGenerationCallBackPFP8RwRasterS0_P7RwImageE
; Address            : 0x1DBBE0 - 0x1DBBF6
; =========================================================

1DBBE0:  LDR             R1, =(RwEngineInstance_ptr - 0x1DBBE8)
1DBBE2:  LDR             R2, =(dword_6BCF84 - 0x1DBBEA)
1DBBE4:  ADD             R1, PC; RwEngineInstance_ptr
1DBBE6:  ADD             R2, PC; dword_6BCF84
1DBBE8:  LDR             R1, [R1]; RwEngineInstance
1DBBEA:  LDR             R2, [R2]
1DBBEC:  LDR             R1, [R1]
1DBBEE:  ADD             R1, R2
1DBBF0:  STR             R0, [R1,#0x2C]
1DBBF2:  MOVS            R0, #1
1DBBF4:  BX              LR
