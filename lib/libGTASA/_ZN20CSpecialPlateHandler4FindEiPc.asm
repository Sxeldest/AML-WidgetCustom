; =========================================================
; Game Engine Function: _ZN20CSpecialPlateHandler4FindEiPc
; Address            : 0x56D3BC - 0x56D486
; =========================================================

56D3BC:  PUSH            {R4,R6,R7,LR}
56D3BE:  ADD             R7, SP, #8
56D3C0:  MOVS            R3, #0
56D3C2:  STRB            R3, [R2]
56D3C4:  LDR.W           R3, [R0,#0xF0]
56D3C8:  CMP             R3, #0
56D3CA:  BEQ             loc_56D47E
56D3CC:  LDR             R3, [R0]
56D3CE:  CMP             R3, R1
56D3D0:  BNE             loc_56D3D6
56D3D2:  MOVS            R4, #0
56D3D4:  B               loc_56D46E
56D3D6:  LDR             R3, [R0,#0x10]
56D3D8:  CMP             R3, R1
56D3DA:  BNE             loc_56D3E0
56D3DC:  MOVS            R4, #1
56D3DE:  B               loc_56D46E
56D3E0:  LDR             R3, [R0,#0x20]
56D3E2:  CMP             R3, R1
56D3E4:  BNE             loc_56D3EA
56D3E6:  MOVS            R4, #2
56D3E8:  B               loc_56D46E
56D3EA:  LDR             R3, [R0,#0x30]
56D3EC:  CMP             R3, R1
56D3EE:  BNE             loc_56D3F4
56D3F0:  MOVS            R4, #3
56D3F2:  B               loc_56D46E
56D3F4:  LDR             R3, [R0,#0x40]
56D3F6:  CMP             R3, R1
56D3F8:  BNE             loc_56D3FE
56D3FA:  MOVS            R4, #4
56D3FC:  B               loc_56D46E
56D3FE:  LDR             R3, [R0,#0x50]
56D400:  CMP             R3, R1
56D402:  BNE             loc_56D408
56D404:  MOVS            R4, #5
56D406:  B               loc_56D46E
56D408:  LDR             R3, [R0,#0x60]
56D40A:  CMP             R3, R1
56D40C:  BNE             loc_56D412
56D40E:  MOVS            R4, #6
56D410:  B               loc_56D46E
56D412:  LDR             R3, [R0,#0x70]
56D414:  CMP             R3, R1
56D416:  BNE             loc_56D41C
56D418:  MOVS            R4, #7
56D41A:  B               loc_56D46E
56D41C:  LDR.W           R3, [R0,#0x80]
56D420:  CMP             R3, R1
56D422:  BNE             loc_56D428
56D424:  MOVS            R4, #8
56D426:  B               loc_56D46E
56D428:  LDR.W           R3, [R0,#0x90]
56D42C:  CMP             R3, R1
56D42E:  BNE             loc_56D434
56D430:  MOVS            R4, #9
56D432:  B               loc_56D46E
56D434:  LDR.W           R3, [R0,#0xA0]
56D438:  CMP             R3, R1
56D43A:  BNE             loc_56D440
56D43C:  MOVS            R4, #0xA
56D43E:  B               loc_56D46E
56D440:  LDR.W           R3, [R0,#0xB0]
56D444:  CMP             R3, R1
56D446:  BNE             loc_56D44C
56D448:  MOVS            R4, #0xB
56D44A:  B               loc_56D46E
56D44C:  LDR.W           R3, [R0,#0xC0]
56D450:  CMP             R3, R1
56D452:  BNE             loc_56D458
56D454:  MOVS            R4, #0xC
56D456:  B               loc_56D46E
56D458:  LDR.W           R3, [R0,#0xD0]
56D45C:  CMP             R3, R1
56D45E:  BNE             loc_56D464
56D460:  MOVS            R4, #0xD
56D462:  B               loc_56D46E
56D464:  LDR.W           R3, [R0,#0xE0]
56D468:  CMP             R3, R1
56D46A:  BNE             loc_56D47E
56D46C:  MOVS            R4, #0xE
56D46E:  ADD.W           R0, R0, R4,LSL#4
56D472:  ADDS            R1, R0, #4; char *
56D474:  MOV             R0, R2; char *
56D476:  BLX             strcpy
56D47A:  MOV             R0, R4
56D47C:  POP             {R4,R6,R7,PC}
56D47E:  MOV.W           R4, #0xFFFFFFFF
56D482:  MOV             R0, R4
56D484:  POP             {R4,R6,R7,PC}
