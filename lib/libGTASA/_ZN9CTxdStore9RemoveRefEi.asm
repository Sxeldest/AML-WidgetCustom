; =========================================================
; Game Engine Function: _ZN9CTxdStore9RemoveRefEi
; Address            : 0x5D40D4 - 0x5D40EE
; =========================================================

5D40D4:  LDR             R1, =(_ZN9CTxdStore11ms_pTxdPoolE_ptr - 0x5D40DE)
5D40D6:  RSB.W           R0, R0, R0,LSL#3
5D40DA:  ADD             R1, PC; _ZN9CTxdStore11ms_pTxdPoolE_ptr
5D40DC:  LDR             R1, [R1]; CTxdStore::ms_pTxdPool ...
5D40DE:  LDR             R1, [R1]; CTxdStore::ms_pTxdPool
5D40E0:  LDR             R1, [R1]
5D40E2:  ADD.W           R0, R1, R0,LSL#3
5D40E6:  LDRH            R1, [R0,#4]
5D40E8:  SUBS            R1, #1
5D40EA:  STRH            R1, [R0,#4]
5D40EC:  BX              LR
