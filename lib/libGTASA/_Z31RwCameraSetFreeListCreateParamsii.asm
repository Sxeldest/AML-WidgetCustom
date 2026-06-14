; =========================================================
; Game Engine Function: _Z31RwCameraSetFreeListCreateParamsii
; Address            : 0x1D5A00 - 0x1D5A0E
; =========================================================

1D5A00:  LDR             R2, =(dword_67A438 - 0x1D5A08)
1D5A02:  LDR             R3, =(dword_67A434 - 0x1D5A0A)
1D5A04:  ADD             R2, PC; dword_67A438
1D5A06:  ADD             R3, PC; dword_67A434
1D5A08:  STR             R1, [R2]
1D5A0A:  STR             R0, [R3]
1D5A0C:  BX              LR
