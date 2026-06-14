; =========================================================
; Game Engine Function: _Z39RwPluginRegistrySetFreeListCreateParamsii
; Address            : 0x1E5DDC - 0x1E5DEA
; =========================================================

1E5DDC:  LDR             R2, =(dword_682984 - 0x1E5DE4)
1E5DDE:  LDR             R3, =(dword_682980 - 0x1E5DE6)
1E5DE0:  ADD             R2, PC; dword_682984
1E5DE2:  ADD             R3, PC; dword_682980
1E5DE4:  STR             R1, [R2]
1E5DE6:  STR             R0, [R3]
1E5DE8:  BX              LR
