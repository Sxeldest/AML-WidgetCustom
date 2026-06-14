; =========================================================
; Game Engine Function: _ZN17HeapFreeBlockDesc19RemoveHeapFreeBlockEv
; Address            : 0x5D2310 - 0x5D231E
; =========================================================

5D2310:  LDRD.W          R1, R2, [R0,#0x10]
5D2314:  STR             R2, [R1,#0x14]
5D2316:  LDRD.W          R1, R0, [R0,#0x10]
5D231A:  STR             R1, [R0,#0x10]
5D231C:  BX              LR
