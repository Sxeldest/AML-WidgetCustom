; =========================================================
; Game Engine Function: sub_8865A
; Address            : 0x8865A - 0x886C0
; =========================================================

8865A:  PUSH            {R4-R7,LR}
8865C:  ADD             R7, SP, #0xC
8865E:  PUSH.W          {R11}
88662:  NEGS            R5, R0
88664:  MOV             R4, R0
88666:  MOVS            R0, #0
88668:  B               loc_8866E
8866A:  SUBS            R5, #1
8866C:  ADDS            R0, #1
8866E:  LDRB            R2, [R4,R0]
88670:  CMP             R2, #9
88672:  IT NE
88674:  CMPNE           R2, #0x20 ; ' '
88676:  BEQ             loc_8866A
88678:  ADDS            R1, R4, R0; src
8867A:  MOV             R6, R1
8867C:  CBZ             R2, loc_886A8
8867E:  MOVS            R2, #0
88680:  ADDS            R3, R4, R2
88682:  ADDS            R2, #1
88684:  ADD             R3, R0
88686:  LDRB            R3, [R3,#1]
88688:  CMP             R3, #0
8868A:  BNE             loc_88680
8868C:  ADDS            R6, R1, R2
8868E:  CMP             R6, R1
88690:  BLS             loc_886A8
88692:  MOV             R2, R6
88694:  LDRB.W          R3, [R2,#-1]!
88698:  CMP             R3, #0x20 ; ' '
8869A:  IT NE
8869C:  CMPNE           R3, #9
8869E:  BNE             loc_886A8
886A0:  CMP             R2, R1
886A2:  MOV             R6, R2
886A4:  BHI             loc_88694
886A6:  MOV             R6, R1
886A8:  CMP             R0, #0
886AA:  ITTT NE
886AC:  ADDNE           R2, R6, R5; n
886AE:  MOVNE           R0, R4; dest
886B0:  BLXNE           j_memmove
886B4:  ADDS            R0, R4, R6
886B6:  MOVS            R1, #0
886B8:  STRB            R1, [R0,R5]
886BA:  POP.W           {R11}
886BE:  POP             {R4-R7,PC}
