; =========================================================
; Game Engine Function: _Z28RpTieSetFreeListCreateParamsii
; Address            : 0x21D7C8 - 0x21D7D6
; =========================================================

21D7C8:  LDR             R2, =(dword_683C30 - 0x21D7D0)
21D7CA:  LDR             R3, =(dword_683C2C - 0x21D7D2)
21D7CC:  ADD             R2, PC; dword_683C30
21D7CE:  ADD             R3, PC; dword_683C2C
21D7D0:  STR             R1, [R2]
21D7D2:  STR             R0, [R3]
21D7D4:  BX              LR
