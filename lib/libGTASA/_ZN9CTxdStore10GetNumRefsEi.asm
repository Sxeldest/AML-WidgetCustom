; =========================================================
; Game Engine Function: _ZN9CTxdStore10GetNumRefsEi
; Address            : 0x5D3DE4 - 0x5D3DFC
; =========================================================

5D3DE4:  LDR             R1, =(_ZN9CTxdStore11ms_pTxdPoolE_ptr - 0x5D3DEE)
5D3DE6:  RSB.W           R0, R0, R0,LSL#3
5D3DEA:  ADD             R1, PC; _ZN9CTxdStore11ms_pTxdPoolE_ptr
5D3DEC:  LDR             R1, [R1]; CTxdStore::ms_pTxdPool ...
5D3DEE:  LDR             R1, [R1]; CTxdStore::ms_pTxdPool
5D3DF0:  LDR             R1, [R1]
5D3DF2:  ADD.W           R0, R1, R0,LSL#3
5D3DF6:  LDRSH.W         R0, [R0,#4]
5D3DFA:  BX              LR
