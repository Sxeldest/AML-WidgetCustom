; =========================================================
; Game Engine Function: _ZN17HeapFreeBlockDesc26InsertOrderedHeapFreeBlockEPS_
; Address            : 0x5D234C - 0x5D2366
; =========================================================

5D234C:  LDR             R2, [R1]
5D234E:  LDR             R0, [R0,#0x10]
5D2350:  LDR             R3, [R0]
5D2352:  CMP             R3, R2
5D2354:  BCC             loc_5D234E
5D2356:  LDR             R0, [R0,#0x14]
5D2358:  LDR             R2, [R0,#0x10]
5D235A:  STR             R2, [R1,#0x10]
5D235C:  LDR             R2, [R0,#0x10]
5D235E:  STR             R1, [R2,#0x14]
5D2360:  STR             R0, [R1,#0x14]
5D2362:  STR             R1, [R0,#0x10]
5D2364:  BX              LR
