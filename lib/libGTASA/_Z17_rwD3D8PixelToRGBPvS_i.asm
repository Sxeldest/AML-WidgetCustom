; =========================================================
; Game Engine Function: _Z17_rwD3D8PixelToRGBPvS_i
; Address            : 0x1B1460 - 0x1B1546
; =========================================================

1B1460:  PUSH            {R4,R6,R7,LR}
1B1462:  ADD             R7, SP, #8
1B1464:  SUB             SP, SP, #8
1B1466:  LSLS            R3, R2, #0x12
1B1468:  BMI             loc_1B1496
1B146A:  UBFX.W          R2, R2, #8, #4
1B146E:  CMP             R2, #0xA; switch 11 cases
1B1470:  BHI             def_1B1472; jumptable 001B1472 default case, cases 7-9
1B1472:  TBB.W           [PC,R2]; switch jump
1B1476:  DCB 6; jump table for switch statement
1B1477:  DCB 0x14
1B1478:  DCB 0x1D
1B1479:  DCB 0x28
1B147A:  DCB 0x3C
1B147B:  DCB 6
1B147C:  DCB 0x42
1B147D:  DCB 0x4C
1B147E:  DCB 0x4C
1B147F:  DCB 0x4C
1B1480:  DCB 0x58
1B1481:  ALIGN 2
1B1482:  LDR             R1, [R1]; jumptable 001B1472 cases 0,5
1B1484:  MOVS            R4, #1
1B1486:  STRB            R1, [R0,#2]
1B1488:  LSRS            R2, R1, #0x10
1B148A:  STRB            R2, [R0]
1B148C:  LSRS            R2, R1, #0x18
1B148E:  LSRS            R1, R1, #8
1B1490:  STRB            R2, [R0,#3]
1B1492:  STRB            R1, [R0,#1]
1B1494:  B               loc_1B1540
1B1496:  LDR             R1, [R1]
1B1498:  MOVS            R4, #1
1B149A:  STR             R1, [R0]
1B149C:  B               loc_1B1540
1B149E:  LDR             R1, [R1]; jumptable 001B1472 case 1
1B14A0:  MOVS            R2, #0xF8
1B14A2:  AND.W           R3, R2, R1,LSR#7
1B14A6:  STRB            R3, [R0]
1B14A8:  SBFX.W          R3, R1, #0xF, #1
1B14AC:  STRB            R3, [R0,#3]
1B14AE:  B               loc_1B1534
1B14B0:  LDR             R1, [R1]; jumptable 001B1472 case 2
1B14B2:  MOVS            R2, #0xFF
1B14B4:  STRB            R2, [R0,#3]
1B14B6:  MOVS            R2, #0xF8
1B14B8:  AND.W           R2, R2, R1,LSR#8
1B14BC:  STRB            R2, [R0]
1B14BE:  MOVS            R2, #0xFC
1B14C0:  AND.W           R2, R2, R1,LSR#3
1B14C4:  B               loc_1B1538
1B14C6:  LDR             R1, [R1]; jumptable 001B1472 case 3
1B14C8:  MOVS            R3, #0xF0
1B14CA:  AND.W           R2, R1, #0xF000
1B14CE:  CMP.W           R2, #0xF000
1B14D2:  AND.W           R3, R3, R1,LSR#4
1B14D6:  ITTE NE
1B14D8:  MOVNE           R2, #0xF0
1B14DA:  ANDNE.W         R2, R2, R1,LSR#8
1B14DE:  MOVEQ           R2, #0xFF
1B14E0:  STRB            R3, [R0]
1B14E2:  STRB            R2, [R0,#3]
1B14E4:  AND.W           R2, R1, #0xF0
1B14E8:  STRB            R2, [R0,#1]
1B14EA:  LSLS            R1, R1, #4
1B14EC:  B               loc_1B153C
1B14EE:  LDRB            R1, [R1]; jumptable 001B1472 case 4
1B14F0:  MOVS            R2, #0xFF
1B14F2:  STRB            R1, [R0]
1B14F4:  STRB            R2, [R0,#3]
1B14F6:  STRB            R1, [R0,#1]
1B14F8:  B               loc_1B153C
1B14FA:  LDR             R1, [R1]; jumptable 001B1472 case 6
1B14FC:  MOVS            R2, #0xFF
1B14FE:  STRB            R1, [R0,#2]
1B1500:  MOVS            R4, #1
1B1502:  STRB            R2, [R0,#3]
1B1504:  LSRS            R2, R1, #8
1B1506:  LSRS            R1, R1, #0x10
1B1508:  STRB            R2, [R0,#1]
1B150A:  STRB            R1, [R0]
1B150C:  B               loc_1B1540
1B150E:  MOVS            R0, #0xD; jumptable 001B1472 default case, cases 7-9
1B1510:  MOVS            R4, #0
1B1512:  MOVT            R0, #0x8000; int
1B1516:  STR             R4, [SP,#0x10+var_10]
1B1518:  BLX             j__Z8_rwerroriz; _rwerror(int,...)
1B151C:  STR             R0, [SP,#0x10+var_C]
1B151E:  MOV             R0, SP
1B1520:  BLX             j__Z10RwErrorSetP7RwError; RwErrorSet(RwError *)
1B1524:  B               loc_1B1540
1B1526:  LDR             R1, [R1]; jumptable 001B1472 case 10
1B1528:  MOVS            R2, #0xFF
1B152A:  STRB            R2, [R0,#3]
1B152C:  MOVS            R2, #0xF8
1B152E:  AND.W           R3, R2, R1,LSR#7
1B1532:  STRB            R3, [R0]
1B1534:  AND.W           R2, R2, R1,LSR#2
1B1538:  LSLS            R1, R1, #3
1B153A:  STRB            R2, [R0,#1]
1B153C:  STRB            R1, [R0,#2]
1B153E:  MOVS            R4, #1
1B1540:  MOV             R0, R4
1B1542:  ADD             SP, SP, #8
1B1544:  POP             {R4,R6,R7,PC}
