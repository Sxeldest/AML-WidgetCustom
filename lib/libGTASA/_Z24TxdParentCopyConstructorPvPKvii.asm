; =========================================================
; Game Engine Function: _Z24TxdParentCopyConstructorPvPKvii
; Address            : 0x5D3A30 - 0x5D3A3C
; =========================================================

5D3A30:  LDR             R2, =(dword_A83F5C - 0x5D3A36)
5D3A32:  ADD             R2, PC; dword_A83F5C
5D3A34:  LDR             R2, [R2]
5D3A36:  LDR             R1, [R1,R2]
5D3A38:  STR             R1, [R0,R2]
5D3A3A:  BX              LR
