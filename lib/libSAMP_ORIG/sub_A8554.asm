; =========================================================
; Game Engine Function: sub_A8554
; Address            : 0xA8554 - 0xA863A
; =========================================================

A8554:  PUSH            {R4,R6,R7,LR}
A8556:  ADD             R7, SP, #8
A8558:  SUB             SP, SP, #8
A855A:  LDRB            R1, [R0]
A855C:  MOV             R4, R0
A855E:  CMP             R1, #0
A8560:  BEQ             loc_A862E
A8562:  CMP             R1, #0x25 ; '%'
A8564:  BNE             loc_A8572
A8566:  LDRB            R0, [R4,#1]
A8568:  CMP             R0, #0x2E ; '.'
A856A:  ITT EQ
A856C:  LDRBEQ          R0, [R4,#2]
A856E:  CMPEQ           R0, #0x30 ; '0'
A8570:  BEQ             loc_A85E4
A8572:  MOV             R0, R4
A8574:  B               loc_A8584
A8576:  CMP             R1, #0x25 ; '%'
A8578:  IT EQ
A857A:  ADDEQ           R0, #1
A857C:  LDRB.W          R1, [R0,#1]!
A8580:  CMP             R1, #0
A8582:  BEQ             loc_A862E
A8584:  CMP             R1, #0x25 ; '%'
A8586:  BNE             loc_A8576
A8588:  LDRB            R2, [R0,#1]
A858A:  CMP             R2, #0x25 ; '%'
A858C:  BEQ             loc_A8576
A858E:  LDRB            R1, [R0]
A8590:  CMP             R1, #0x25 ; '%'
A8592:  BNE             loc_A862E
A8594:  MOVW            R12, #0xA80
A8598:  ADDS            R1, R0, #1
A859A:  MOVS            R3, #0x25 ; '%'
A859C:  MOV.W           LR, #1
A85A0:  MOVT            R12, #0x248
A85A4:  B               loc_A85BC
A85A6:  SUB.W           R1, R3, #0x41 ; 'A'
A85AA:  LSL.W           R1, LR, R1
A85AE:  TST.W           R1, #0x900
A85B2:  BEQ             loc_A85DC
A85B4:  MOV             R1, R2
A85B6:  LDRB.W          R3, [R1],#1
A85BA:  CBZ             R3, loc_A85F6
A85BC:  MOV             R2, R1
A85BE:  SUB.W           R1, R3, #0x41 ; 'A'
A85C2:  CMP             R1, #0x19
A85C4:  BLS             loc_A85A6
A85C6:  SUB.W           R1, R3, #0x61 ; 'a'
A85CA:  CMP             R1, #0x19
A85CC:  BHI             loc_A85B4
A85CE:  SUB.W           R1, R3, #0x61 ; 'a'
A85D2:  LSL.W           R1, LR, R1
A85D6:  TST.W           R1, R12
A85DA:  BNE             loc_A85B4
A85DC:  MOV             R3, R2
A85DE:  CMP             R3, R0
A85E0:  BHI             loc_A85FC
A85E2:  B               loc_A862E
A85E4:  LDRB            R0, [R4,#3]
A85E6:  CMP             R0, #0x66 ; 'f'
A85E8:  ITT EQ
A85EA:  LDRBEQ          R0, [R4,#4]
A85EC:  CMPEQ           R0, #0
A85EE:  BNE             loc_A8572
A85F0:  LDR             R4, =(aD - 0xA85F6); "%d" ...
A85F2:  ADD             R4, PC; "%d"
A85F4:  B               loc_A862E
A85F6:  SUBS            R3, R1, #1
A85F8:  CMP             R3, R0
A85FA:  BLS             loc_A862E
A85FC:  LDRB.W          R1, [R2,#-1]
A8600:  CMP             R1, #0x66 ; 'f'
A8602:  BNE             loc_A862E
A8604:  CMP             R0, R4
A8606:  ITT EQ
A8608:  LDRBEQ          R1, [R3]
A860A:  CMPEQ           R1, #0
A860C:  BEQ             loc_A8634
A860E:  LDR             R1, =(off_114D5C - 0xA8614)
A8610:  ADD             R1, PC; off_114D5C
A8612:  LDR             R1, [R1]; dword_1ACF68
A8614:  LDR             R1, [R1]
A8616:  LDR             R2, =(aSDS - 0xA8626); "%.*s%%d%s" ...
A8618:  STRD.W          R4, R3, [SP,#0x10+var_10]
A861C:  SUBS            R3, R0, R4
A861E:  ADD.W           R4, R1, #0x2F40
A8622:  ADD             R2, PC; "%.*s%%d%s"
A8624:  MOVW            R1, #0xC01
A8628:  MOV             R0, R4; s
A862A:  BL              sub_886C0
A862E:  MOV             R0, R4
A8630:  ADD             SP, SP, #8
A8632:  POP             {R4,R6,R7,PC}
A8634:  LDR             R4, =(aD - 0xA863A); "%d" ...
A8636:  ADD             R4, PC; "%d"
A8638:  B               loc_A862E
