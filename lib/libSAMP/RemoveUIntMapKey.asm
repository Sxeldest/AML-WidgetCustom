; =========================================================
; Game Engine Function: RemoveUIntMapKey
; Address            : 0x1C1538 - 0x1C1710
; =========================================================

1C1538:  PUSH            {R4-R11,LR}
1C153C:  ADD             R11, SP, #0x1C
1C1540:  SUB             SP, SP, #4
1C1544:  MOV             R8, R0
1C1548:  ADD             R7, R8, #0x14
1C154C:  MOV             R10, R1
1C1550:  DMB             ISH
1C1554:  LDREX           R0, [R7]
1C1558:  ADD             R1, R0, #1
1C155C:  STREX           R2, R1, [R7]
1C1560:  CMP             R2, #0
1C1564:  BNE             loc_1C1554
1C1568:  CMP             R0, #0
1C156C:  DMB             ISH
1C1570:  BNE             loc_1C15C4
1C1574:  ADD             R4, R8, #0x18
1C1578:  MOV             R1, #1
1C157C:  DMB             ISH
1C1580:  LDREX           R0, [R4]
1C1584:  STREX           R2, R1, [R4]
1C1588:  CMP             R2, #0
1C158C:  BNE             loc_1C1580
1C1590:  CMP             R0, #1
1C1594:  DMB             ISH
1C1598:  BNE             loc_1C15C4
1C159C:  MOV             R6, #1
1C15A0:  BL              sched_yield
1C15A4:  DMB             ISH
1C15A8:  LDREX           R0, [R4]
1C15AC:  STREX           R1, R6, [R4]
1C15B0:  CMP             R1, #0
1C15B4:  BNE             loc_1C15A8
1C15B8:  CMP             R0, #1
1C15BC:  DMB             ISH
1C15C0:  BEQ             loc_1C15A0
1C15C4:  ADD             R4, R8, #0x20 ; ' '
1C15C8:  MOV             R1, #1
1C15CC:  DMB             ISH
1C15D0:  LDREX           R0, [R4]
1C15D4:  STREX           R2, R1, [R4]
1C15D8:  CMP             R2, #0
1C15DC:  BNE             loc_1C15D0
1C15E0:  CMP             R0, #1
1C15E4:  DMB             ISH
1C15E8:  BNE             loc_1C1614
1C15EC:  MOV             R6, #1
1C15F0:  BL              sched_yield
1C15F4:  DMB             ISH
1C15F8:  LDREX           R0, [R4]
1C15FC:  STREX           R1, R6, [R4]
1C1600:  CMP             R1, #0
1C1604:  BNE             loc_1C15F8
1C1608:  CMP             R0, #1
1C160C:  DMB             ISH
1C1610:  BEQ             loc_1C15F0
1C1614:  LDR             R12, [R8,#4]
1C1618:  MOV             R6, #0
1C161C:  MOV             R9, #0
1C1620:  CMP             R12, #1
1C1624:  BLT             loc_1C16AC
1C1628:  BNE             loc_1C1638
1C162C:  LDR             R3, [R8]
1C1630:  MOV             R2, #0
1C1634:  B               loc_1C1668
1C1638:  LDR             R3, [R8]
1C163C:  SUB             R0, R12, #1
1C1640:  MOV             R2, #0
1C1644:  SUB             R1, R0, R2
1C1648:  ADD             R1, R1, R1,LSR#31
1C164C:  ADD             R1, R2, R1,ASR#1
1C1650:  LDR             R5, [R3,R1,LSL#3]
1C1654:  CMP             R5, R10
1C1658:  ADDCC           R2, R1, #1
1C165C:  MOVCS           R0, R1
1C1660:  CMP             R0, R2
1C1664:  BGT             loc_1C1644
1C1668:  MOV             R0, R3
1C166C:  MOV             R9, #0
1C1670:  LDR             R1, [R0,R2,LSL#3]!; dest
1C1674:  CMP             R1, R10
1C1678:  BNE             loc_1C16AC
1C167C:  ADD             R3, R3, R2,LSL#3
1C1680:  SUB             R5, R12, #1
1C1684:  CMP             R5, R2
1C1688:  LDR             R9, [R3,#4]
1C168C:  BLE             loc_1C16A4
1C1690:  SUB             R2, R5, R2
1C1694:  ADD             R1, R3, #8; src
1C1698:  MOV             R2, R2,LSL#3; n
1C169C:  BL              j_memmove
1C16A0:  LDR             R12, [R8,#4]
1C16A4:  SUB             R0, R12, #1
1C16A8:  STR             R0, [R8,#4]
1C16AC:  DMB             ISH
1C16B0:  LDREX           R0, [R4]
1C16B4:  STREX           R0, R6, [R4]
1C16B8:  CMP             R0, #0
1C16BC:  BNE             loc_1C16B0
1C16C0:  DMB             ISH
1C16C4:  LDREX           R0, [R7]
1C16C8:  SUB             R1, R0, #1
1C16CC:  STREX           R2, R1, [R7]
1C16D0:  CMP             R2, #0
1C16D4:  BNE             loc_1C16C4
1C16D8:  CMP             R0, #1
1C16DC:  DMB             ISH
1C16E0:  BNE             loc_1C1704
1C16E4:  ADD             R0, R8, #0x18
1C16E8:  MOV             R1, #0
1C16EC:  DMB             ISH
1C16F0:  LDREX           R2, [R0]
1C16F4:  STREX           R2, R1, [R0]
1C16F8:  CMP             R2, #0
1C16FC:  BNE             loc_1C16F0
1C1700:  DMB             ISH
1C1704:  MOV             R0, R9
1C1708:  SUB             SP, R11, #0x1C
1C170C:  POP             {R4-R11,PC}
