; =========================================================
; Game Engine Function: _ZN7CCamera17IsTargetingActiveEP10CPlayerPed
; Address            : 0x3E152C - 0x3E1596
; =========================================================

3E152C:  CBZ             R1, loc_3E1544
3E152E:  LDR.W           R2, [R1,#0x444]
3E1532:  LDRB.W          R2, [R2,#0x34]
3E1536:  LSLS            R2, R2, #0x1C
3E1538:  BMI             loc_3E1540
3E153A:  LDR.W           R1, [R1,#0x720]
3E153E:  CBZ             R1, loc_3E1544
3E1540:  MOVS            R0, #1
3E1542:  BX              LR
3E1544:  LDRH.W          R0, [R0,#0x7B4]
3E1548:  SUBS            R1, R0, #7; switch 59 cases
3E154A:  CMP             R1, #0x3A ; ':'
3E154C:  BHI             def_3E1550; jumptable 003E1550 default case, cases 9-33,35-44,47-50,52-64
3E154E:  MOVS            R0, #1
3E1550:  TBB.W           [PC,R1]; switch jump
3E1554:  DCB 0x1E; jump table for switch statement
3E1555:  DCB 0x1E
3E1556:  DCB 0x1F
3E1557:  DCB 0x1F
3E1558:  DCB 0x1F
3E1559:  DCB 0x1F
3E155A:  DCB 0x1F
3E155B:  DCB 0x1F
3E155C:  DCB 0x1F
3E155D:  DCB 0x1F
3E155E:  DCB 0x1F
3E155F:  DCB 0x1F
3E1560:  DCB 0x1F
3E1561:  DCB 0x1F
3E1562:  DCB 0x1F
3E1563:  DCB 0x1F
3E1564:  DCB 0x1F
3E1565:  DCB 0x1F
3E1566:  DCB 0x1F
3E1567:  DCB 0x1F
3E1568:  DCB 0x1F
3E1569:  DCB 0x1F
3E156A:  DCB 0x1F
3E156B:  DCB 0x1F
3E156C:  DCB 0x1F
3E156D:  DCB 0x1F
3E156E:  DCB 0x1F
3E156F:  DCB 0x1E
3E1570:  DCB 0x1F
3E1571:  DCB 0x1F
3E1572:  DCB 0x1F
3E1573:  DCB 0x1F
3E1574:  DCB 0x1F
3E1575:  DCB 0x1F
3E1576:  DCB 0x1F
3E1577:  DCB 0x1F
3E1578:  DCB 0x1F
3E1579:  DCB 0x1F
3E157A:  DCB 0x1E
3E157B:  DCB 0x1E
3E157C:  DCB 0x1F
3E157D:  DCB 0x1F
3E157E:  DCB 0x1F
3E157F:  DCB 0x1F
3E1580:  DCB 0x1E
3E1581:  DCB 0x1F
3E1582:  DCB 0x1F
3E1583:  DCB 0x1F
3E1584:  DCB 0x1F
3E1585:  DCB 0x1F
3E1586:  DCB 0x1F
3E1587:  DCB 0x1F
3E1588:  DCB 0x1F
3E1589:  DCB 0x1F
3E158A:  DCB 0x1F
3E158B:  DCB 0x1F
3E158C:  DCB 0x1F
3E158D:  DCB 0x1F
3E158E:  DCB 0x1E
3E158F:  ALIGN 2
3E1590:  BX              LR; jumptable 003E1550 cases 7,8,34,45,46,51,65
3E1592:  MOVS            R0, #0; jumptable 003E1550 default case, cases 9-33,35-44,47-50,52-64
3E1594:  BX              LR
