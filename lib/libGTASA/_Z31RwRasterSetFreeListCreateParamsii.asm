; =========================================================
; Game Engine Function: _Z31RwRasterSetFreeListCreateParamsii
; Address            : 0x1DAB78 - 0x1DAB86
; =========================================================

1DAB78:  LDR             R2, =(dword_6825B4 - 0x1DAB80)
1DAB7A:  LDR             R3, =(dword_6825B0 - 0x1DAB82)
1DAB7C:  ADD             R2, PC; dword_6825B4
1DAB7E:  ADD             R3, PC; dword_6825B0
1DAB80:  STR             R1, [R2]
1DAB82:  STR             R0, [R3]
1DAB84:  BX              LR
