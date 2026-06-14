; =========================================================
; Game Engine Function: _ZNK11CAutomobile22GetDooorAngleOpenRatioEj
; Address            : 0x560258 - 0x56028A
; =========================================================

560258:  SUBS            R1, #8; switch 4 cases
56025A:  CMP             R1, #3
56025C:  ITT HI
56025E:  MOVHI           R0, #0
560260:  BXHI            LR
560262:  TBB.W           [PC,R1]; switch jump
560266:  DCB 2; jump table for switch statement
560267:  DCB 0xE
560268:  DCB 6
560269:  DCB 0xA
56026A:  LDR             R1, [R0]; jumptable 00560262 case 8
56026C:  LDR             R2, [R1,#0x78]
56026E:  MOVS            R1, #3
560270:  BX              R2
560272:  LDR             R1, [R0]; jumptable 00560262 case 10
560274:  LDR             R2, [R1,#0x78]
560276:  MOVS            R1, #2
560278:  BX              R2
56027A:  LDR             R1, [R0]; jumptable 00560262 case 11
56027C:  LDR             R2, [R1,#0x78]
56027E:  MOVS            R1, #4
560280:  BX              R2
560282:  LDR             R1, [R0]; jumptable 00560262 case 9
560284:  LDR             R2, [R1,#0x78]
560286:  MOVS            R1, #5
560288:  BX              R2
