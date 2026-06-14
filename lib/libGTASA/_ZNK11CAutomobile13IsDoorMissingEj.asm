; =========================================================
; Game Engine Function: _ZNK11CAutomobile13IsDoorMissingEj
; Address            : 0x560344 - 0x56038C
; =========================================================

560344:  SUB.W           R2, R1, #8; switch 11 cases
560348:  MOVS            R1, #0
56034A:  CMP             R2, #0xA
56034C:  BHI             def_56034E; jumptable 0056034E default case, cases 12-17
56034E:  TBB.W           [PC,R2]; switch jump
560352:  DCB 6; jump table for switch statement
560353:  DCB 0xB
560354:  DCB 0x10
560355:  DCB 0x15
560356:  DCB 0x1B
560357:  DCB 0x1B
560358:  DCB 0x1B
560359:  DCB 0x1B
56035A:  DCB 0x1B
56035B:  DCB 0x1B
56035C:  DCB 0x1A
56035D:  ALIGN 2
56035E:  LDR             R1, [R0]; jumptable 0056034E case 8
560360:  LDR.W           R2, [R1,#0x88]
560364:  MOVS            R1, #3
560366:  BX              R2
560368:  LDR             R1, [R0]; jumptable 0056034E case 9
56036A:  LDR.W           R2, [R1,#0x88]
56036E:  MOVS            R1, #5
560370:  BX              R2
560372:  LDR             R1, [R0]; jumptable 0056034E case 10
560374:  LDR.W           R2, [R1,#0x88]
560378:  MOVS            R1, #2
56037A:  BX              R2
56037C:  LDR             R1, [R0]; jumptable 0056034E case 11
56037E:  LDR.W           R2, [R1,#0x88]
560382:  MOVS            R1, #4
560384:  BX              R2
560386:  MOVS            R1, #1; jumptable 0056034E case 18
560388:  MOV             R0, R1; jumptable 0056034E default case, cases 12-17
56038A:  BX              LR
