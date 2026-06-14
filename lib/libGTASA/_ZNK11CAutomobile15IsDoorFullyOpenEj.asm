; =========================================================
; Game Engine Function: _ZNK11CAutomobile15IsDoorFullyOpenEj
; Address            : 0x5602CC - 0x560306
; =========================================================

5602CC:  SUBS            R1, #8; switch 4 cases
5602CE:  CMP             R1, #3
5602D0:  ITT HI
5602D2:  MOVHI           R0, #0
5602D4:  BXHI            LR
5602D6:  TBB.W           [PC,R1]; switch jump
5602DA:  DCB 2; jump table for switch statement
5602DB:  DCB 0x11
5602DC:  DCB 7
5602DD:  DCB 0xC
5602DE:  LDR             R1, [R0]; jumptable 005602D6 case 8
5602E0:  LDR.W           R2, [R1,#0x80]
5602E4:  MOVS            R1, #3
5602E6:  BX              R2
5602E8:  LDR             R1, [R0]; jumptable 005602D6 case 10
5602EA:  LDR.W           R2, [R1,#0x80]
5602EE:  MOVS            R1, #2
5602F0:  BX              R2
5602F2:  LDR             R1, [R0]; jumptable 005602D6 case 11
5602F4:  LDR.W           R2, [R1,#0x80]
5602F8:  MOVS            R1, #4
5602FA:  BX              R2
5602FC:  LDR             R1, [R0]; jumptable 005602D6 case 9
5602FE:  LDR.W           R2, [R1,#0x80]
560302:  MOVS            R1, #5
560304:  BX              R2
