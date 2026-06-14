; =========================================================
; Game Engine Function: _Z20TxdParentConstructorPvii
; Address            : 0x5D3A1C - 0x5D3A28
; =========================================================

5D3A1C:  LDR             R1, =(dword_A83F5C - 0x5D3A24)
5D3A1E:  MOVS            R2, #0
5D3A20:  ADD             R1, PC; dword_A83F5C
5D3A22:  LDR             R1, [R1]
5D3A24:  STR             R2, [R0,R1]
5D3A26:  BX              LR
