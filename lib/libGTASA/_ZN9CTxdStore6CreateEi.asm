; =========================================================
; Game Engine Function: _ZN9CTxdStore6CreateEi
; Address            : 0x5D401C - 0x5D4046
; =========================================================

5D401C:  PUSH            {R4,R6,R7,LR}
5D401E:  ADD             R7, SP, #8
5D4020:  LDR             R1, =(_ZN9CTxdStore11ms_pTxdPoolE_ptr - 0x5D4026)
5D4022:  ADD             R1, PC; _ZN9CTxdStore11ms_pTxdPoolE_ptr
5D4024:  LDR             R1, [R1]; CTxdStore::ms_pTxdPool ...
5D4026:  LDR             R1, [R1]; CTxdStore::ms_pTxdPool
5D4028:  LDR             R2, [R1,#4]
5D402A:  LDRSB           R2, [R2,R0]
5D402C:  CMP             R2, #0
5D402E:  BLT             loc_5D403C
5D4030:  LDR             R1, [R1]
5D4032:  RSB.W           R0, R0, R0,LSL#3
5D4036:  ADD.W           R4, R1, R0,LSL#3
5D403A:  B               loc_5D403E
5D403C:  MOVS            R4, #0
5D403E:  BLX.W           j__Z21RwTexDictionaryCreatev; RwTexDictionaryCreate(void)
5D4042:  STR             R0, [R4]
5D4044:  POP             {R4,R6,R7,PC}
