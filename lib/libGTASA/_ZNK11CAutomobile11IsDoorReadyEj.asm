; =========================================================
; Game Engine Function: _ZNK11CAutomobile11IsDoorReadyEj
; Address            : 0x56028C - 0x5602CC
; =========================================================

56028C:  SUB.W           R2, R1, #8; switch 11 cases
560290:  MOVS            R1, #0
560292:  CMP             R2, #0xA
560294:  BHI             def_560296; jumptable 00560296 default case, cases 12-17
560296:  TBB.W           [PC,R2]; switch jump
56029A:  DCB 6; jump table for switch statement
56029B:  DCB 0xA
56029C:  DCB 0xE
56029D:  DCB 0x12
56029E:  DCB 0x17
56029F:  DCB 0x17
5602A0:  DCB 0x17
5602A1:  DCB 0x17
5602A2:  DCB 0x17
5602A3:  DCB 0x17
5602A4:  DCB 0x16
5602A5:  ALIGN 2
5602A6:  LDR             R1, [R0]; jumptable 00560296 case 8
5602A8:  LDR             R2, [R1,#0x7C]
5602AA:  MOVS            R1, #3
5602AC:  BX              R2
5602AE:  LDR             R1, [R0]; jumptable 00560296 case 9
5602B0:  LDR             R2, [R1,#0x7C]
5602B2:  MOVS            R1, #5
5602B4:  BX              R2
5602B6:  LDR             R1, [R0]; jumptable 00560296 case 10
5602B8:  LDR             R2, [R1,#0x7C]
5602BA:  MOVS            R1, #2
5602BC:  BX              R2
5602BE:  LDR             R1, [R0]; jumptable 00560296 case 11
5602C0:  LDR             R2, [R1,#0x7C]
5602C2:  MOVS            R1, #4
5602C4:  BX              R2
5602C6:  MOVS            R1, #1; jumptable 00560296 case 18
5602C8:  MOV             R0, R1; jumptable 00560296 default case, cases 12-17
5602CA:  BX              LR
