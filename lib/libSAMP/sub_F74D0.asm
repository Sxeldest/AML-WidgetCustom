; =========================================================
; Game Engine Function: sub_F74D0
; Address            : 0xF74D0 - 0xF759E
; =========================================================

F74D0:  PUSH            {R4-R7,LR}
F74D2:  ADD             R7, SP, #0xC
F74D4:  PUSH.W          {R8}
F74D8:  LDRB            R4, [R0]
F74DA:  MOV             R8, R1
F74DC:  MOV             R6, R0
F74DE:  LDR             R2, [R0,#4]
F74E0:  LDR             R0, [R1,#4]
F74E2:  ANDS.W          R5, R4, #1
F74E6:  LDRB            R1, [R1]
F74E8:  IT EQ
F74EA:  LSREQ           R2, R4, #1; n
F74EC:  ANDS.W          R3, R1, #1
F74F0:  IT EQ
F74F2:  LSREQ           R0, R1, #1
F74F4:  CMP             R2, R0
F74F6:  BNE             loc_F7596
F74F8:  CMP             R3, #0
F74FA:  LDR.W           R1, [R8,#8]
F74FE:  ADD.W           R3, R6, #1
F7502:  LDR             R0, [R6,#8]
F7504:  IT EQ
F7506:  ADDEQ.W         R1, R8, #1; s2
F750A:  CMP             R5, #0
F750C:  IT EQ
F750E:  MOVEQ           R0, R3; s1
F7510:  BNE             loc_F7528
F7512:  CBZ             R2, loc_F7530
F7514:  LSRS            R0, R4, #1
F7516:  LDRB            R2, [R1]
F7518:  LDRB            R5, [R3]
F751A:  CMP             R5, R2
F751C:  BNE             loc_F7596
F751E:  ADDS            R1, #1
F7520:  ADDS            R3, #1
F7522:  SUBS            R0, #1
F7524:  BNE             loc_F7516
F7526:  B               loc_F7530
F7528:  CBZ             R2, loc_F7530
F752A:  BLX             memcmp
F752E:  CBNZ            R0, loc_F7596
F7530:  MOV             R3, R6
F7532:  MOV             R5, R8
F7534:  LDRB.W          R12, [R3,#0xC]!
F7538:  LDRB.W          R0, [R5,#0xC]!
F753C:  LDR             R2, [R3,#4]
F753E:  ANDS.W          LR, R12, #1
F7542:  LDR             R1, [R5,#4]
F7544:  IT EQ
F7546:  MOVEQ.W         R2, R12,LSR#1; n
F754A:  ANDS.W          R4, R0, #1
F754E:  IT EQ
F7550:  LSREQ           R1, R0, #1
F7552:  CMP             R2, R1
F7554:  BNE             loc_F7596
F7556:  LDR.W           R1, [R8,#0x14]
F755A:  CMP             R4, #0
F755C:  ADD.W           R3, R3, #1
F7560:  LDR             R0, [R6,#0x14]
F7562:  IT EQ
F7564:  ADDEQ           R1, R5, #1; s2
F7566:  CMP.W           LR, #0
F756A:  IT EQ
F756C:  MOVEQ           R0, R3; s1
F756E:  BNE             loc_F7588
F7570:  CBZ             R2, loc_F7590
F7572:  MOV.W           R0, R12,LSR#1
F7576:  LDRB            R2, [R1]
F7578:  LDRB            R5, [R3]
F757A:  CMP             R5, R2
F757C:  BNE             loc_F7596
F757E:  ADDS            R1, #1
F7580:  ADDS            R3, #1
F7582:  SUBS            R0, #1
F7584:  BNE             loc_F7576
F7586:  B               loc_F7590
F7588:  CBZ             R2, loc_F7590
F758A:  BLX             memcmp
F758E:  CBNZ            R0, loc_F7596
F7590:  LDR.W           R0, [R8,#0x18]
F7594:  STR             R0, [R6,#0x18]
F7596:  MOVS            R0, #0
F7598:  POP.W           {R8}
F759C:  POP             {R4-R7,PC}
