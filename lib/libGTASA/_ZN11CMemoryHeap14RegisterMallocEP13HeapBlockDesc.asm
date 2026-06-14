; =========================================================
; Game Engine Function: _ZN11CMemoryHeap14RegisterMallocEP13HeapBlockDesc
; Address            : 0x5D2520 - 0x5D2534
; =========================================================

5D2520:  MOVS            R2, #1
5D2522:  STRB            R2, [R1,#4]
5D2524:  LDR             R2, [R0,#0x44]
5D2526:  LDR             R3, [R1]
5D2528:  STRH            R2, [R1,#6]
5D252A:  LDR             R1, [R0,#0x40]
5D252C:  ADD             R1, R3
5D252E:  ADDS            R1, #0x10
5D2530:  STR             R1, [R0,#0x40]
5D2532:  BX              LR
