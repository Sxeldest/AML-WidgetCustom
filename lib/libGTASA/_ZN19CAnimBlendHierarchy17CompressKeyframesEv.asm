; =========================================================
; Game Engine Function: _ZN19CAnimBlendHierarchy17CompressKeyframesEv
; Address            : 0x38A6AC - 0x38A760
; =========================================================

38A6AC:  PUSH            {R4-R7,LR}
38A6AE:  ADD             R7, SP, #0xC
38A6B0:  PUSH.W          {R8,R9,R11}
38A6B4:  MOV             R9, R0
38A6B6:  LDRSH.W         R0, [R9,#8]
38A6BA:  CMP             R0, #1
38A6BC:  BLT             loc_38A6E0
38A6BE:  MOVS            R4, #0
38A6C0:  MOVS            R5, #0
38A6C2:  MOVS            R6, #0
38A6C4:  LDR.W           R0, [R9,#4]
38A6C8:  MOVS            R1, #1; bool
38A6CA:  ADD             R0, R4; this
38A6CC:  BLX             j__ZN18CAnimBlendSequence11GetDataSizeEb; CAnimBlendSequence::GetDataSize(bool)
38A6D0:  ADD             R5, R0
38A6D2:  LDRSH.W         R0, [R9,#8]
38A6D6:  ADDS            R6, #1
38A6D8:  ADDS            R4, #0xC
38A6DA:  CMP             R6, R0
38A6DC:  BLT             loc_38A6C4
38A6DE:  B               loc_38A6E2
38A6E0:  MOVS            R5, #0
38A6E2:  MOV             R0, R5; byte_count
38A6E4:  BLX             j__ZN10CMemoryMgr6MallocEj; CMemoryMgr::Malloc(uint)
38A6E8:  MOV             R5, R0
38A6EA:  LDR.W           R0, [R9,#4]; this
38A6EE:  LDRB            R1, [R0,#4]
38A6F0:  LSLS            R1, R1, #0x1C
38A6F2:  ITE MI
38A6F4:  LDRMI.W         R8, [R0,#8]
38A6F8:  MOVPL.W         R8, #0
38A6FC:  LDRSH.W         R1, [R9,#8]
38A700:  CMP             R1, #1
38A702:  BLT             loc_38A746
38A704:  MOV             R1, R5; unsigned __int8 *
38A706:  BLX             j__ZN18CAnimBlendSequence17CompressKeyframesEPh; CAnimBlendSequence::CompressKeyframes(uchar *)
38A70A:  LDR.W           R0, [R9,#4]; this
38A70E:  MOVS            R1, #1; bool
38A710:  BLX             j__ZN18CAnimBlendSequence11GetDataSizeEb; CAnimBlendSequence::GetDataSize(bool)
38A714:  LDRSH.W         R1, [R9,#8]
38A718:  CMP             R1, #2
38A71A:  BLT             loc_38A746
38A71C:  MOVS            R6, #1
38A71E:  MOVS            R4, #0xC
38A720:  LDR.W           R1, [R9,#4]
38A724:  ADD             R5, R0
38A726:  ADDS            R0, R1, R4; this
38A728:  MOV             R1, R5; unsigned __int8 *
38A72A:  BLX             j__ZN18CAnimBlendSequence17CompressKeyframesEPh; CAnimBlendSequence::CompressKeyframes(uchar *)
38A72E:  LDR.W           R0, [R9,#4]
38A732:  MOVS            R1, #1; bool
38A734:  ADD             R0, R4; this
38A736:  BLX             j__ZN18CAnimBlendSequence11GetDataSizeEb; CAnimBlendSequence::GetDataSize(bool)
38A73A:  LDRSH.W         R1, [R9,#8]; void *
38A73E:  ADDS            R6, #1
38A740:  ADDS            R4, #0xC
38A742:  CMP             R6, R1
38A744:  BLT             loc_38A720
38A746:  CMP.W           R8, #0
38A74A:  BEQ             loc_38A75A
38A74C:  MOV             R0, R8; this
38A74E:  POP.W           {R8,R9,R11}
38A752:  POP.W           {R4-R7,LR}
38A756:  B.W             j_j__ZN10CMemoryMgr4FreeEPv; j_CMemoryMgr::Free(void *)
38A75A:  POP.W           {R8,R9,R11}
38A75E:  POP             {R4-R7,PC}
