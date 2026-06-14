; =========================================================
; Game Engine Function: _Z15RwFrameAddChildP7RwFrameS0_
; Address            : 0x1D853C - 0x1D863E
; =========================================================

1D853C:  PUSH            {R4-R7,LR}
1D853E:  ADD             R7, SP, #0xC
1D8540:  PUSH.W          {R11}
1D8544:  MOV             R5, R1
1D8546:  MOV             R4, R0
1D8548:  LDR             R0, [R5,#4]
1D854A:  CBZ             R0, loc_1D85BE
1D854C:  LDR.W           R1, [R0,#0x98]!
1D8550:  CMP             R1, R5
1D8552:  BEQ             loc_1D855E
1D8554:  MOV             R0, R1
1D8556:  LDR.W           R1, [R0,#0x9C]!
1D855A:  CMP             R1, R5
1D855C:  BNE             loc_1D8554
1D855E:  LDR.W           R1, [R5,#0x9C]
1D8562:  STR             R1, [R0]
1D8564:  MOVS            R0, #0
1D8566:  STR.W           R0, [R5,#0x9C]
1D856A:  MOV             R1, R5
1D856C:  STR             R0, [R5,#4]
1D856E:  MOV             R0, R5
1D8570:  BL              sub_1D8116
1D8574:  LDR.W           R1, [R5,#0xA0]
1D8578:  LDRB            R0, [R1,#3]
1D857A:  TST.W           R0, #3
1D857E:  BNE             loc_1D85AA
1D8580:  LDR             R2, =(RwEngineInstance_ptr - 0x1D8586)
1D8582:  ADD             R2, PC; RwEngineInstance_ptr
1D8584:  LDR             R2, [R2]; RwEngineInstance
1D8586:  LDR             R2, [R2]
1D8588:  LDR.W           R3, [R2,#0xBC]!
1D858C:  STR             R3, [R1,#8]
1D858E:  LDR.W           R1, [R5,#0xA0]
1D8592:  STR             R2, [R1,#0xC]
1D8594:  LDR             R1, [R2]
1D8596:  LDR.W           R3, [R5,#0xA0]
1D859A:  ADDS            R3, #8
1D859C:  STR             R3, [R1,#4]
1D859E:  LDR.W           R1, [R5,#0xA0]
1D85A2:  ADDS            R1, #8
1D85A4:  STR             R1, [R2]
1D85A6:  LDR.W           R1, [R5,#0xA0]
1D85AA:  ORR.W           R0, R0, #3
1D85AE:  STRB            R0, [R1,#3]
1D85B0:  MOV             R6, R5
1D85B2:  LDRB.W          R0, [R6,#3]!
1D85B6:  ORR.W           R0, R0, #0xC
1D85BA:  STRB            R0, [R6]
1D85BC:  B               loc_1D85C0
1D85BE:  ADDS            R6, R5, #3
1D85C0:  LDR.W           R0, [R4,#0x98]
1D85C4:  STR.W           R0, [R5,#0x9C]
1D85C8:  MOV             R0, R5
1D85CA:  STR.W           R5, [R4,#0x98]
1D85CE:  STR             R4, [R5,#4]
1D85D0:  LDR.W           R1, [R4,#0xA0]
1D85D4:  BL              sub_1D8116
1D85D8:  LDRB            R0, [R5,#3]
1D85DA:  LSLS            R0, R0, #0x1E
1D85DC:  BEQ             loc_1D85F2
1D85DE:  LDRD.W          R0, R1, [R5,#8]
1D85E2:  STR             R0, [R1]
1D85E4:  LDRD.W          R0, R1, [R5,#8]
1D85E8:  STR             R1, [R0,#4]
1D85EA:  LDRB            R0, [R5,#3]
1D85EC:  AND.W           R0, R0, #0xFC
1D85F0:  STRB            R0, [R5,#3]
1D85F2:  LDR.W           R1, [R5,#0xA0]
1D85F6:  LDRB            R0, [R1,#3]
1D85F8:  TST.W           R0, #3
1D85FC:  BNE             loc_1D8628
1D85FE:  LDR             R2, =(RwEngineInstance_ptr - 0x1D8604)
1D8600:  ADD             R2, PC; RwEngineInstance_ptr
1D8602:  LDR             R2, [R2]; RwEngineInstance
1D8604:  LDR             R2, [R2]
1D8606:  LDR.W           R3, [R2,#0xBC]!
1D860A:  STR             R3, [R1,#8]
1D860C:  LDR.W           R1, [R5,#0xA0]
1D8610:  STR             R2, [R1,#0xC]
1D8612:  LDR             R1, [R2]
1D8614:  LDR.W           R3, [R5,#0xA0]
1D8618:  ADDS            R3, #8
1D861A:  STR             R3, [R1,#4]
1D861C:  LDR.W           R1, [R5,#0xA0]
1D8620:  ADDS            R1, #8
1D8622:  STR             R1, [R2]
1D8624:  LDR.W           R1, [R5,#0xA0]
1D8628:  ORR.W           R0, R0, #3
1D862C:  STRB            R0, [R1,#3]
1D862E:  LDRB            R0, [R6]
1D8630:  ORR.W           R0, R0, #0xC
1D8634:  STRB            R0, [R6]
1D8636:  MOV             R0, R4
1D8638:  POP.W           {R11}
1D863C:  POP             {R4-R7,PC}
