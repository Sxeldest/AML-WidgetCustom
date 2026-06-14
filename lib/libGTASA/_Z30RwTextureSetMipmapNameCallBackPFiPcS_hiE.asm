; =========================================================
; Game Engine Function: _Z30RwTextureSetMipmapNameCallBackPFiPcS_hiE
; Address            : 0x1DBC1C - 0x1DBC32
; =========================================================

1DBC1C:  LDR             R1, =(RwEngineInstance_ptr - 0x1DBC24)
1DBC1E:  LDR             R2, =(dword_6BCF84 - 0x1DBC26)
1DBC20:  ADD             R1, PC; RwEngineInstance_ptr
1DBC22:  ADD             R2, PC; dword_6BCF84
1DBC24:  LDR             R1, [R1]; RwEngineInstance
1DBC26:  LDR             R2, [R2]
1DBC28:  LDR             R1, [R1]
1DBC2A:  ADD             R1, R2
1DBC2C:  STR             R0, [R1,#0x30]
1DBC2E:  MOVS            R0, #1
1DBC30:  BX              LR
