; =========================================================
; Game Engine Function: _ZN9CTxdStore14SetupTxdParentEi
; Address            : 0x5D3F68 - 0x5D3FD2
; =========================================================

5D3F68:  LDR             R1, =(_ZN9CTxdStore11ms_pTxdPoolE_ptr - 0x5D3F6E)
5D3F6A:  ADD             R1, PC; _ZN9CTxdStore11ms_pTxdPoolE_ptr
5D3F6C:  LDR             R1, [R1]; CTxdStore::ms_pTxdPool ...
5D3F6E:  LDR             R1, [R1]; CTxdStore::ms_pTxdPool
5D3F70:  LDR             R2, [R1,#4]
5D3F72:  LDRSB           R2, [R2,R0]
5D3F74:  CMP             R2, #0
5D3F76:  BLT             loc_5D3F84
5D3F78:  LDR             R2, [R1]
5D3F7A:  RSB.W           R0, R0, R0,LSL#3
5D3F7E:  ADD.W           R0, R2, R0,LSL#3
5D3F82:  B               loc_5D3F86
5D3F84:  MOVS            R0, #0
5D3F86:  LDRSH.W         R2, [R0,#6]
5D3F8A:  ADDS            R3, R2, #1
5D3F8C:  IT EQ
5D3F8E:  BXEQ            LR
5D3F90:  PUSH            {R4,R6,R7,LR}
5D3F92:  ADD             R7, SP, #0x10+var_8
5D3F94:  LDR.W           LR, =(dword_A83F5C - 0x5D3FA6)
5D3F98:  RSB.W           R2, R2, R2,LSL#3
5D3F9C:  LDR.W           R12, =(_ZN9CTxdStore11ms_pTxdPoolE_ptr - 0x5D3FA8)
5D3FA0:  LDR             R1, [R1]
5D3FA2:  ADD             LR, PC; dword_A83F5C
5D3FA4:  ADD             R12, PC; _ZN9CTxdStore11ms_pTxdPoolE_ptr
5D3FA6:  LDR             R4, [R0]
5D3FA8:  LDR.W           R3, [LR]
5D3FAC:  LDR.W           R1, [R1,R2,LSL#3]
5D3FB0:  LDR.W           R2, [R12]; CTxdStore::ms_pTxdPool ...
5D3FB4:  STR             R1, [R4,R3]
5D3FB6:  LDR             R1, [R2]; CTxdStore::ms_pTxdPool
5D3FB8:  LDRSH.W         R0, [R0,#6]
5D3FBC:  LDR             R1, [R1]
5D3FBE:  RSB.W           R0, R0, R0,LSL#3
5D3FC2:  ADD.W           R0, R1, R0,LSL#3
5D3FC6:  LDRH            R1, [R0,#4]
5D3FC8:  ADDS            R1, #1
5D3FCA:  STRH            R1, [R0,#4]
5D3FCC:  POP.W           {R4,R6,R7,LR}
5D3FD0:  BX              LR
