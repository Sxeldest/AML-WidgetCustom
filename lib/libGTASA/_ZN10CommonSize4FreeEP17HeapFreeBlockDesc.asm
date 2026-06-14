; =========================================================
; Game Engine Function: _ZN10CommonSize4FreeEP17HeapFreeBlockDesc
; Address            : 0x5D231E - 0x5D2332
; =========================================================

5D231E:  LDR             R2, [R0,#0x10]
5D2320:  STR             R2, [R1,#0x10]
5D2322:  LDR             R2, [R0,#0x10]
5D2324:  STR             R1, [R2,#0x14]
5D2326:  STR             R0, [R1,#0x14]
5D2328:  LDR             R2, [R0,#0x38]
5D232A:  STR             R1, [R0,#0x10]
5D232C:  ADDS            R1, R2, #1
5D232E:  STR             R1, [R0,#0x38]
5D2330:  BX              LR
