; =========================================================
; Game Engine Function: _Z42RpMatFXMaterialDataSetFreeListCreateParamsii
; Address            : 0x1C5FE0 - 0x1C5FEE
; =========================================================

1C5FE0:  LDR             R2, =(dword_67A1AC - 0x1C5FE8)
1C5FE2:  LDR             R3, =(dword_67A1A8 - 0x1C5FEA)
1C5FE4:  ADD             R2, PC; dword_67A1AC
1C5FE6:  ADD             R3, PC; dword_67A1A8
1C5FE8:  STR             R1, [R2]
1C5FEA:  STR             R0, [R3]
1C5FEC:  BX              LR
