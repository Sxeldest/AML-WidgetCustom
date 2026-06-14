; =========================================================
; Game Engine Function: _ZNK11CAutomobile12IsDoorClosedEj
; Address            : 0x560308 - 0x560342
; =========================================================

560308:  SUBS            R1, #8; switch 4 cases
56030A:  CMP             R1, #3
56030C:  ITT HI
56030E:  MOVHI           R0, #0
560310:  BXHI            LR
560312:  TBB.W           [PC,R1]; switch jump
560316:  DCB 2; jump table for switch statement
560317:  DCB 0x11
560318:  DCB 7
560319:  DCB 0xC
56031A:  LDR             R1, [R0]; jumptable 00560312 case 8
56031C:  LDR.W           R2, [R1,#0x84]
560320:  MOVS            R1, #3
560322:  BX              R2
560324:  LDR             R1, [R0]; jumptable 00560312 case 10
560326:  LDR.W           R2, [R1,#0x84]
56032A:  MOVS            R1, #2
56032C:  BX              R2
56032E:  LDR             R1, [R0]; jumptable 00560312 case 11
560330:  LDR.W           R2, [R1,#0x84]
560334:  MOVS            R1, #4
560336:  BX              R2
560338:  LDR             R1, [R0]; jumptable 00560312 case 9
56033A:  LDR.W           R2, [R1,#0x84]
56033E:  MOVS            R1, #5
560340:  BX              R2
