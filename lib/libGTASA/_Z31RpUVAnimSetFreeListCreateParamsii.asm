; =========================================================
; Game Engine Function: _Z31RpUVAnimSetFreeListCreateParamsii
; Address            : 0x1CA8E8 - 0x1CA8F6
; =========================================================

1CA8E8:  LDR             R2, =(dword_67A254 - 0x1CA8F0)
1CA8EA:  LDR             R3, =(dword_67A250 - 0x1CA8F2)
1CA8EC:  ADD             R2, PC; dword_67A254
1CA8EE:  ADD             R3, PC; dword_67A250
1CA8F0:  STR             R1, [R2]
1CA8F2:  STR             R0, [R3]
1CA8F4:  BX              LR
