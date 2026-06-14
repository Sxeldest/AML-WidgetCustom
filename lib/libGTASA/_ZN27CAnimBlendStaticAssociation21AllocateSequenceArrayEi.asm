; =========================================================
; Game Engine Function: _ZN27CAnimBlendStaticAssociation21AllocateSequenceArrayEi
; Address            : 0x389A5C - 0x389A8A
; =========================================================

389A5C:  PUSH            {R4,R5,R7,LR}
389A5E:  ADD             R7, SP, #8
389A60:  MOV             R4, R1
389A62:  MOV             R5, R0
389A64:  LSLS            R0, R4, #2; byte_count
389A66:  BLX             j__ZN10CMemoryMgr6MallocEj; CMemoryMgr::Malloc(uint)
389A6A:  CMP             R4, #1
389A6C:  STR             R0, [R5,#0xC]
389A6E:  BLT             locret_389A88
389A70:  MOV.W           R1, #0
389A74:  STR             R1, [R0]
389A76:  IT EQ
389A78:  POPEQ           {R4,R5,R7,PC}
389A7A:  MOVS            R0, #1
389A7C:  LDR             R2, [R5,#0xC]
389A7E:  STR.W           R1, [R2,R0,LSL#2]
389A82:  ADDS            R0, #1
389A84:  CMP             R4, R0
389A86:  BNE             loc_389A7C
389A88:  POP             {R4,R5,R7,PC}
