; =========================================================
; Game Engine Function: _ZN9CTxdStore6AddRefEi
; Address            : 0x5D3FF0 - 0x5D400A
; =========================================================

5D3FF0:  LDR             R1, =(_ZN9CTxdStore11ms_pTxdPoolE_ptr - 0x5D3FFA)
5D3FF2:  RSB.W           R0, R0, R0,LSL#3
5D3FF6:  ADD             R1, PC; _ZN9CTxdStore11ms_pTxdPoolE_ptr
5D3FF8:  LDR             R1, [R1]; CTxdStore::ms_pTxdPool ...
5D3FFA:  LDR             R1, [R1]; CTxdStore::ms_pTxdPool
5D3FFC:  LDR             R1, [R1]
5D3FFE:  ADD.W           R0, R1, R0,LSL#3
5D4002:  LDRH            R1, [R0,#4]
5D4004:  ADDS            R1, #1
5D4006:  STRH            R1, [R0,#4]
5D4008:  BX              LR
