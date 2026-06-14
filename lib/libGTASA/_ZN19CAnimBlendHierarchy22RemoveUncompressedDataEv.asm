; =========================================================
; Game Engine Function: _ZN19CAnimBlendHierarchy22RemoveUncompressedDataEv
; Address            : 0x38A760 - 0x38A812
; =========================================================

38A760:  PUSH            {R4-R7,LR}
38A762:  ADD             R7, SP, #0xC
38A764:  PUSH.W          {R8,R9,R11}
38A768:  MOV             R9, R0
38A76A:  LDRSH.W         R0, [R9,#8]
38A76E:  CMP             R0, #1
38A770:  BLT             loc_38A794
38A772:  MOVS            R4, #0
38A774:  MOVS            R5, #0
38A776:  MOVS            R6, #0
38A778:  LDR.W           R0, [R9,#4]
38A77C:  MOVS            R1, #1; bool
38A77E:  ADD             R0, R4; this
38A780:  BLX             j__ZN18CAnimBlendSequence11GetDataSizeEb; CAnimBlendSequence::GetDataSize(bool)
38A784:  ADD             R5, R0
38A786:  LDRSH.W         R0, [R9,#8]
38A78A:  ADDS            R6, #1
38A78C:  ADDS            R4, #0xC
38A78E:  CMP             R6, R0
38A790:  BLT             loc_38A778
38A792:  B               loc_38A796
38A794:  MOVS            R5, #0
38A796:  MOV             R0, R5; byte_count
38A798:  BLX             j__ZN10CMemoryMgr6MallocEj; CMemoryMgr::Malloc(uint)
38A79C:  MOV             R5, R0
38A79E:  LDR.W           R0, [R9,#4]; this
38A7A2:  LDRB            R1, [R0,#4]
38A7A4:  LSLS            R1, R1, #0x1C
38A7A6:  ITE MI
38A7A8:  LDRMI.W         R8, [R0,#8]
38A7AC:  MOVPL.W         R8, #0
38A7B0:  LDRSH.W         R1, [R9,#8]
38A7B4:  CMP             R1, #1
38A7B6:  BLT             loc_38A7FA
38A7B8:  MOV             R1, R5; unsigned __int8 *
38A7BA:  BLX             j__ZN18CAnimBlendSequence22RemoveUncompressedDataEPh; CAnimBlendSequence::RemoveUncompressedData(uchar *)
38A7BE:  LDR.W           R0, [R9,#4]; this
38A7C2:  MOVS            R1, #1; bool
38A7C4:  BLX             j__ZN18CAnimBlendSequence11GetDataSizeEb; CAnimBlendSequence::GetDataSize(bool)
38A7C8:  LDRSH.W         R1, [R9,#8]
38A7CC:  CMP             R1, #2
38A7CE:  BLT             loc_38A7FA
38A7D0:  MOVS            R6, #1
38A7D2:  MOVS            R4, #0xC
38A7D4:  LDR.W           R1, [R9,#4]
38A7D8:  ADD             R5, R0
38A7DA:  ADDS            R0, R1, R4; this
38A7DC:  MOV             R1, R5; unsigned __int8 *
38A7DE:  BLX             j__ZN18CAnimBlendSequence22RemoveUncompressedDataEPh; CAnimBlendSequence::RemoveUncompressedData(uchar *)
38A7E2:  LDR.W           R0, [R9,#4]
38A7E6:  MOVS            R1, #1; bool
38A7E8:  ADD             R0, R4; this
38A7EA:  BLX             j__ZN18CAnimBlendSequence11GetDataSizeEb; CAnimBlendSequence::GetDataSize(bool)
38A7EE:  LDRSH.W         R1, [R9,#8]; void *
38A7F2:  ADDS            R6, #1
38A7F4:  ADDS            R4, #0xC
38A7F6:  CMP             R6, R1
38A7F8:  BLT             loc_38A7D4
38A7FA:  CMP.W           R8, #0
38A7FE:  ITT NE
38A800:  MOVNE           R0, R8; this
38A802:  BLXNE           j__ZN10CMemoryMgr4FreeEPv; CMemoryMgr::Free(void *)
38A806:  MOVS            R0, #1
38A808:  STRB.W          R0, [R9,#0xA]
38A80C:  POP.W           {R8,R9,R11}
38A810:  POP             {R4-R7,PC}
