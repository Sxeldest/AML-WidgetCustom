; =========================================================
; Game Engine Function: _ZN10CommonSize6MallocEv
; Address            : 0x5D22E6 - 0x5D2310
; =========================================================

5D22E6:  MOV             R1, R0
5D22E8:  ADD.W           R2, R1, #0x18
5D22EC:  LDR             R0, [R1,#0x10]
5D22EE:  CMP             R0, R2
5D22F0:  BEQ             loc_5D2306
5D22F2:  LDR             R2, [R1,#0x38]
5D22F4:  SUBS            R2, #1
5D22F6:  STR             R2, [R1,#0x38]
5D22F8:  LDRD.W          R1, R2, [R0,#0x10]
5D22FC:  STR             R2, [R1,#0x14]
5D22FE:  LDRD.W          R1, R2, [R0,#0x10]
5D2302:  STR             R1, [R2,#0x10]
5D2304:  BX              LR
5D2306:  LDR             R0, [R1,#0x34]
5D2308:  ADDS            R0, #1
5D230A:  STR             R0, [R1,#0x34]
5D230C:  MOVS            R0, #0
5D230E:  BX              LR
