; =========================================================
; Game Engine Function: _Z39RpHAnimHierarchySetFreeListCreateParamsii
; Address            : 0x1C209C - 0x1C20AA
; =========================================================

1C209C:  LDR             R2, =(dword_67A1A4 - 0x1C20A4)
1C209E:  LDR             R3, =(dword_67A1A0 - 0x1C20A6)
1C20A0:  ADD             R2, PC; dword_67A1A4
1C20A2:  ADD             R3, PC; dword_67A1A0
1C20A4:  STR             R1, [R2]
1C20A6:  STR             R0, [R3]
1C20A8:  BX              LR
