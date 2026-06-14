; =========================================================
; Game Engine Function: _ZN11CMemoryHeap12RegisterFreeEP17HeapFreeBlockDesc
; Address            : 0x5D25FC - 0x5D260C
; =========================================================

5D25FC:  LDR             R1, [R1]
5D25FE:  MOV             R3, #0xFFFFFFF0
5D2602:  LDR             R2, [R0,#0x40]
5D2604:  SUBS            R1, R3, R1
5D2606:  ADD             R1, R2
5D2608:  STR             R1, [R0,#0x40]
5D260A:  BX              LR
