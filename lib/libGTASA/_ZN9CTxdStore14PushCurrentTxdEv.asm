; =========================================================
; Game Engine Function: _ZN9CTxdStore14PushCurrentTxdEv
; Address            : 0x5D4184 - 0x5D41B4
; =========================================================

5D4184:  PUSH            {R7,LR}
5D4186:  MOV             R7, SP
5D4188:  LDR             R0, =(_ZN9CTxdStore8ms_curDBE_ptr - 0x5D4190)
5D418A:  LDR             R1, =(_ZN9CTxdStore11ms_storedDBE_ptr - 0x5D4196)
5D418C:  ADD             R0, PC; _ZN9CTxdStore8ms_curDBE_ptr
5D418E:  LDR.W           R12, =(_ZN9CTxdStore13ms_storedNameE_ptr - 0x5D419E)
5D4192:  ADD             R1, PC; _ZN9CTxdStore11ms_storedDBE_ptr
5D4194:  LDR.W           LR, =(_ZN9CTxdStore10ms_curNameE_ptr - 0x5D41A2)
5D4198:  LDR             R0, [R0]; CTxdStore::ms_curDB ...
5D419A:  ADD             R12, PC; _ZN9CTxdStore13ms_storedNameE_ptr
5D419C:  LDR             R2, [R1]; CTxdStore::ms_storedDB ...
5D419E:  ADD             LR, PC; _ZN9CTxdStore10ms_curNameE_ptr
5D41A0:  LDR             R3, [R0]; CTxdStore::ms_curDB
5D41A2:  LDR.W           R0, [R12]; char *
5D41A6:  LDR.W           R1, [LR]; char *
5D41AA:  STR             R3, [R2]; CTxdStore::ms_storedDB
5D41AC:  POP.W           {R7,LR}
5D41B0:  B.W             j_strcpy
