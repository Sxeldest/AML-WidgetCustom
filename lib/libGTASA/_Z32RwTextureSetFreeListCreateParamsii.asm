; =========================================================
; Game Engine Function: _Z32RwTextureSetFreeListCreateParamsii
; Address            : 0x1DBD80 - 0x1DBD8E
; =========================================================

1DBD80:  LDR             R2, =(dword_6825EC - 0x1DBD88)
1DBD82:  LDR             R3, =(dword_6825E8 - 0x1DBD8A)
1DBD84:  ADD             R2, PC; dword_6825EC
1DBD86:  ADD             R3, PC; dword_6825E8
1DBD88:  STR             R1, [R2]
1DBD8A:  STR             R0, [R3]
1DBD8C:  BX              LR
