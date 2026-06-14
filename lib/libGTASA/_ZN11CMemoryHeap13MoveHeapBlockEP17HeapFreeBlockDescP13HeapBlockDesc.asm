; =========================================================
; Game Engine Function: _ZN11CMemoryHeap13MoveHeapBlockEP17HeapFreeBlockDescP13HeapBlockDesc
; Address            : 0x5D290C - 0x5D2972
; =========================================================

5D290C:  PUSH            {R4-R7,LR}
5D290E:  ADD             R7, SP, #0xC
5D2910:  PUSH.W          {R8}
5D2914:  MOV             R6, R2
5D2916:  MOV             R4, R0
5D2918:  LDRSH.W         R0, [R6,#6]
5D291C:  MOV             R5, R1
5D291E:  LDR.W           R8, [R4,#0x44]
5D2922:  STR             R0, [R4,#0x44]
5D2924:  LDR.W           R0, [R5,#0x10]!
5D2928:  LDR             R2, [R1,#0x14]
5D292A:  STR             R2, [R0,#0x14]
5D292C:  LDR             R0, [R1,#0x14]
5D292E:  LDR             R2, [R5]
5D2930:  STR             R2, [R0,#0x10]
5D2932:  LDR             R0, [R1]
5D2934:  LDR             R3, [R6]
5D2936:  ADD             R0, R1
5D2938:  ADD.W           R2, R0, #0x10
5D293C:  MOV             R0, R4
5D293E:  BLX.W           j__ZN11CMemoryHeap15FillInBlockDataEP13HeapBlockDescS1_j; CMemoryHeap::FillInBlockData(HeapBlockDesc *,HeapBlockDesc *,uint)
5D2942:  STR.W           R8, [R4,#0x44]
5D2946:  ADD.W           R8, R6, #0x10
5D294A:  LDR             R2, [R6]; size_t
5D294C:  MOV             R0, R5; void *
5D294E:  MOV             R1, R8; void *
5D2950:  BLX.W           memcpy_1
5D2954:  LDR             R0, =(memMoved_ptr - 0x5D295C)
5D2956:  LDR             R1, [R6]
5D2958:  ADD             R0, PC; memMoved_ptr
5D295A:  LDR             R0, [R0]; memMoved
5D295C:  LDR             R2, [R0]
5D295E:  ADD             R1, R2
5D2960:  STR             R1, [R0]
5D2962:  MOV             R0, R4; this
5D2964:  MOV             R1, R8; void *
5D2966:  BLX.W           j__ZN11CMemoryHeap4FreeEPv; CMemoryHeap::Free(void *)
5D296A:  MOV             R0, R5
5D296C:  POP.W           {R8}
5D2970:  POP             {R4-R7,PC}
