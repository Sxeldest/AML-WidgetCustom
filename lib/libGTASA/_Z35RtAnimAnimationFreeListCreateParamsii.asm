; =========================================================
; Game Engine Function: _Z35RtAnimAnimationFreeListCreateParamsii
; Address            : 0x1EAE24 - 0x1EAE32
; =========================================================

1EAE24:  LDR             R2, =(dword_68298C - 0x1EAE2C)
1EAE26:  LDR             R3, =(dword_682988 - 0x1EAE2E)
1EAE28:  ADD             R2, PC; dword_68298C
1EAE2A:  ADD             R3, PC; dword_682988
1EAE2C:  STR             R1, [R2]
1EAE2E:  STR             R0, [R3]
1EAE30:  BX              LR
