; =========================================================
; Game Engine Function: _Z30RwImageSetFreeListCreateParamsii
; Address            : 0x1D895C - 0x1D896A
; =========================================================

1D895C:  LDR             R2, =(dword_682578 - 0x1D8964)
1D895E:  LDR             R3, =(dword_682574 - 0x1D8966)
1D8960:  ADD             R2, PC; dword_682578
1D8962:  ADD             R3, PC; dword_682574
1D8964:  STR             R1, [R2]
1D8966:  STR             R0, [R3]
1D8968:  BX              LR
