; =========================================================
; Game Engine Function: _ZN9CTxdStore22RemoveRefWithoutDeleteEi
; Address            : 0x5D425C - 0x5D4276
; =========================================================

5D425C:  LDR             R1, =(_ZN9CTxdStore11ms_pTxdPoolE_ptr - 0x5D4266)
5D425E:  RSB.W           R0, R0, R0,LSL#3
5D4262:  ADD             R1, PC; _ZN9CTxdStore11ms_pTxdPoolE_ptr
5D4264:  LDR             R1, [R1]; CTxdStore::ms_pTxdPool ...
5D4266:  LDR             R1, [R1]; CTxdStore::ms_pTxdPool
5D4268:  LDR             R1, [R1]
5D426A:  ADD.W           R0, R1, R0,LSL#3
5D426E:  LDRH            R1, [R0,#4]
5D4270:  SUBS            R1, #1
5D4272:  STRH            R1, [R0,#4]
5D4274:  BX              LR
