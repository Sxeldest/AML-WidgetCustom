; =========================================================
; Game Engine Function: _ZN9CTxdStore12SetTxdParentEP15RwTexDictionaryS1_
; Address            : 0x5D3FE0 - 0x5D3FEA
; =========================================================

5D3FE0:  LDR             R2, =(dword_A83F5C - 0x5D3FE6)
5D3FE2:  ADD             R2, PC; dword_A83F5C
5D3FE4:  LDR             R2, [R2]
5D3FE6:  STR             R1, [R0,R2]
5D3FE8:  BX              LR
