; =========================================================
; Game Engine Function: _ZN14CBaseModelInfo16SetTexDictionaryEPKcS1_
; Address            : 0x38502A - 0x38505C
; =========================================================

38502A:  PUSH            {R4-R7,LR}
38502C:  ADD             R7, SP, #0xC
38502E:  PUSH.W          {R11}
385032:  MOV             R6, R1
385034:  MOV             R4, R0
385036:  MOV             R0, R6; this
385038:  MOV             R5, R2
38503A:  BLX             j__ZN9CTxdStore11FindTxdSlotEPKc; CTxdStore::FindTxdSlot(char const*)
38503E:  STRH            R0, [R4,#0x20]
385040:  UXTH            R0, R0
385042:  MOVW            R1, #0xFFFF
385046:  CMP             R0, R1
385048:  BNE             loc_385056
38504A:  MOV             R0, R6; this
38504C:  MOV             R1, R5; char *
38504E:  MOVS            R2, #0; char *
385050:  BLX             j__ZN9CTxdStore10AddTxdSlotEPKcS1_b; CTxdStore::AddTxdSlot(char const*,char const*,bool)
385054:  STRH            R0, [R4,#0x20]
385056:  POP.W           {R11}
38505A:  POP             {R4-R7,PC}
