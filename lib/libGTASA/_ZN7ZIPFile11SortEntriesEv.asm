; =========================================================
; Game Engine Function: _ZN7ZIPFile11SortEntriesEv
; Address            : 0x26F5B4 - 0x26F608
; =========================================================

26F5B4:  PUSH            {R4-R7,LR}
26F5B6:  ADD             R7, SP, #0xC
26F5B8:  PUSH.W          {R8,R9,R11}
26F5BC:  LDR.W           R9, [R0,#8]
26F5C0:  CMP.W           R9, #2
26F5C4:  BCC             loc_26F5EA
26F5C6:  LDR.W           R8, [R0,#0xC]
26F5CA:  MOVS            R4, #1
26F5CC:  ADD.W           R5, R8, #0x14
26F5D0:  LDR.W           R0, [R8,#8]; char *
26F5D4:  LDR             R6, [R5]
26F5D6:  MOV             R1, R6; char *
26F5D8:  BLX             strcasecmp
26F5DC:  CMP             R0, #1
26F5DE:  BGE             loc_26F5F0
26F5E0:  ADDS            R4, #1
26F5E2:  ADDS            R5, #0xC
26F5E4:  CMP             R4, R9
26F5E6:  MOV             R0, R6
26F5E8:  BCC             loc_26F5D4
26F5EA:  POP.W           {R8,R9,R11}
26F5EE:  POP             {R4-R7,PC}
26F5F0:  LDR             R0, =(_ZN7ZIPFile12EntryCompareEPKvS1__ptr - 0x26F5FA)
26F5F2:  MOV             R1, R9; size_t
26F5F4:  MOVS            R2, #0xC; size_t
26F5F6:  ADD             R0, PC; _ZN7ZIPFile12EntryCompareEPKvS1__ptr
26F5F8:  LDR             R3, [R0]; ZIPFile::EntryCompare(void const*,void const*) ; int (*)(const void *, const void *)
26F5FA:  MOV             R0, R8; void *
26F5FC:  POP.W           {R8,R9,R11}
26F600:  POP.W           {R4-R7,LR}
26F604:  B.W             j_qsort
