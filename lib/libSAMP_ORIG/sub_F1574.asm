; =========================================================
; Game Engine Function: sub_F1574
; Address            : 0xF1574 - 0xF1640
; =========================================================

F1574:  PUSH            {R4-R7,LR}
F1576:  ADD             R7, SP, #0xC
F1578:  PUSH.W          {R8-R11}
F157C:  STR             R0, [R2]
F157E:  LDRB            R0, [R7,#arg_C]
F1580:  LDR             R4, [R7,#arg_4]
F1582:  LDR.W           R12, [R7,#arg_0]
F1586:  LSLS            R0, R0, #0x1E
F1588:  STR             R3, [R4]
F158A:  BPL             loc_F15AA
F158C:  SUB.W           R0, R12, R3
F1590:  CMP             R0, #2
F1592:  BGE             loc_F1598
F1594:  MOVS            R0, #1
F1596:  B               loc_F163A
F1598:  ADDS            R0, R3, #1
F159A:  STR             R0, [R4]
F159C:  MOVS            R0, #0xFF
F159E:  STRB            R0, [R3]
F15A0:  LDR             R0, [R4]
F15A2:  ADDS            R3, R0, #1
F15A4:  STR             R3, [R4]
F15A6:  MOVS            R3, #0xFE
F15A8:  STRB            R3, [R0]
F15AA:  LDR.W           R10, [R7,#arg_8]
F15AE:  MOVW            R8, #0x7FF
F15B2:  LDR             R0, [R2]
F15B4:  MOV.W           R11, #0
F15B8:  MOV.W           R9, #0x37 ; '7'
F15BC:  CMP             R0, R1
F15BE:  BCS             loc_F1638
F15C0:  LDR             R3, [R0]
F15C2:  MOVS            R0, #2
F15C4:  BIC.W           R5, R3, R8
F15C8:  CMP.W           R5, #0xD800
F15CC:  BEQ             loc_F163A
F15CE:  CMP             R3, R10
F15D0:  BHI             loc_F163A
F15D2:  LDR             R0, [R4]
F15D4:  CMP.W           R11, R3,LSR#16
F15D8:  SUB.W           R5, R12, R0
F15DC:  BNE             loc_F15EE
F15DE:  CMP             R5, #2
F15E0:  BLT             loc_F1594
F15E2:  ADDS            R5, R0, #1
F15E4:  STR             R5, [R4]
F15E6:  STRB            R3, [R0]
F15E8:  LSRS            R3, R3, #8
F15EA:  LDR             R0, [R4]
F15EC:  B               loc_F162A
F15EE:  CMP             R5, #4
F15F0:  BLT             loc_F1594
F15F2:  ADDS            R5, R0, #1
F15F4:  STR             R5, [R4]
F15F6:  MOV.W           R5, #0x7C0
F15FA:  UBFX.W          LR, R3, #0xA, #6
F15FE:  AND.W           R5, R5, R3,LSR#10
F1602:  ADD.W           R5, R5, #0x3FC0
F1606:  ADD.W           R6, R5, LR
F160A:  STRB            R6, [R0]
F160C:  LDR             R0, [R4]
F160E:  ADDS            R6, R0, #1
F1610:  STR             R6, [R4]
F1612:  MOVS            R6, #0xD8
F1614:  ORR.W           R5, R6, R5,LSR#8
F1618:  STRB            R5, [R0]
F161A:  LDR             R0, [R4]
F161C:  ADDS            R5, R0, #1
F161E:  STR             R5, [R4]
F1620:  STRB            R3, [R0]
F1622:  LSRS            R3, R3, #8
F1624:  LDR             R0, [R4]
F1626:  BFI.W           R3, R9, #2, #0x1E
F162A:  ADDS            R5, R0, #1
F162C:  STR             R5, [R4]
F162E:  STRB            R3, [R0]
F1630:  LDR             R0, [R2]
F1632:  ADDS            R0, #4
F1634:  STR             R0, [R2]
F1636:  B               loc_F15BC
F1638:  MOVS            R0, #0
F163A:  POP.W           {R8-R11}
F163E:  POP             {R4-R7,PC}
