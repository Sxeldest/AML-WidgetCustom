; =========================================================
; Game Engine Function: sub_E1510
; Address            : 0xE1510 - 0xE1576
; =========================================================

E1510:  PUSH            {R4-R7,LR}
E1512:  ADD             R7, SP, #0xC
E1514:  PUSH.W          {R8}
E1518:  SUB             SP, SP, #0x10
E151A:  MOV             R6, R1
E151C:  ADD             R1, SP, #0x20+var_18; this
E151E:  MOV             R5, R0
E1520:  MOV             R0, R2; int
E1522:  MOV             R8, R3
E1524:  MOV             R4, R2
E1526:  BL              sub_E157C
E152A:  CBZ             R0, loc_E1550
E152C:  LDRB            R0, [R4,#8]
E152E:  MOV             R1, R4
E1530:  MOVS            R2, #1
E1532:  MOVS            R3, #1
E1534:  SUBS            R0, #0x12
E1536:  STRB.W          R6, [SP,#0x20+var_13]
E153A:  CLZ.W           R0, R0
E153E:  LSRS            R0, R0, #5
E1540:  STRB.W          R0, [SP,#0x20+var_14]
E1544:  ADD             R0, SP, #0x20+var_14
E1546:  STR             R0, [SP,#0x20+var_20]
E1548:  MOV             R0, R5
E154A:  BL              sub_DDF34
E154E:  B               loc_E156E
E1550:  LDRH.W          R0, [R4,#9]
E1554:  MOVS            R2, #0x1C
E1556:  LDR             R1, =(unk_91DB0 - 0xE1562)
E1558:  MOV             R3, R4
E155A:  STR.W           R8, [SP,#0x20+var_20]
E155E:  ADD             R1, PC; unk_91DB0
E1560:  AND.W           R0, R2, R0,LSR#2
E1564:  LDR             R2, [R1,R0]
E1566:  MOV             R0, R5
E1568:  MOV             R1, R6
E156A:  BL              sub_DD260
E156E:  ADD             SP, SP, #0x10
E1570:  POP.W           {R8}
E1574:  POP             {R4-R7,PC}
