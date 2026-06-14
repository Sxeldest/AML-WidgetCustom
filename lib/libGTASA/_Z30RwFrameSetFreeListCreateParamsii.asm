; =========================================================
; Game Engine Function: _Z30RwFrameSetFreeListCreateParamsii
; Address            : 0x1D7E5C - 0x1D7E6A
; =========================================================

1D7E5C:  LDR             R2, =(dword_682570 - 0x1D7E64)
1D7E5E:  LDR             R3, =(dword_68256C - 0x1D7E66)
1D7E60:  ADD             R2, PC; dword_682570
1D7E62:  ADD             R3, PC; dword_68256C
1D7E64:  STR             R1, [R2]
1D7E66:  STR             R0, [R3]
1D7E68:  BX              LR
