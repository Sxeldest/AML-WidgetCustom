; =========================================================
; Game Engine Function: INT123_fi_add
; Address            : 0x228650 - 0x2286D2
; =========================================================

228650:  PUSH            {R4-R7,LR}
228652:  ADD             R7, SP, #0xC
228654:  PUSH.W          {R11}
228658:  MOV             R4, R0
22865A:  MOV             R5, R1
22865C:  LDRD.W          R1, R0, [R4,#0xC]
228660:  CMP             R0, R1
228662:  BNE             loc_2286B6
228664:  LDR             R2, [R4,#4]
228666:  LDR             R1, [R4,#0x14]
228668:  MUL.W           R6, R2, R0
22866C:  CBZ             R1, loc_22867A
22866E:  ADD             R1, R0; byte_count
228670:  MOV             R0, R4; int
228672:  BLX             j_INT123_fi_resize
228676:  CBZ             R0, loc_2286AC
228678:  LDR             R0, [R4,#0x10]
22867A:  CMP             R0, #2
22867C:  BCC             loc_2286AC
22867E:  LDR             R1, [R4,#4]
228680:  LSRS            R2, R0, #1
228682:  STR             R2, [R4,#0x10]
228684:  LSLS            R2, R1, #1
228686:  MOVS            R1, #0
228688:  CMP.W           R1, R0,LSR#1
22868C:  STR             R2, [R4,#4]
22868E:  BEQ             loc_2286A6
228690:  MOVS            R0, #0
228692:  LDR             R1, [R4]
228694:  LDR.W           R2, [R1,R0,LSL#3]
228698:  STR.W           R2, [R1,R0,LSL#2]
22869C:  ADDS            R0, #1
22869E:  LDR             R1, [R4,#0x10]
2286A0:  CMP             R0, R1
2286A2:  BCC             loc_228692
2286A4:  LDR             R2, [R4,#4]
2286A6:  MUL.W           R0, R1, R2
2286AA:  STR             R0, [R4,#8]
2286AC:  LDR             R0, [R4,#8]
2286AE:  CMP             R0, R6
2286B0:  BNE             loc_2286CC
2286B2:  LDRD.W          R1, R0, [R4,#0xC]
2286B6:  CMP             R0, R1
2286B8:  BCS             loc_2286CC
2286BA:  LDR             R1, [R4]
2286BC:  STR.W           R5, [R1,R0,LSL#2]
2286C0:  LDR             R1, [R4,#0x10]
2286C2:  LDR             R0, [R4,#4]
2286C4:  ADDS            R1, #1
2286C6:  STR             R1, [R4,#0x10]
2286C8:  MULS            R0, R1
2286CA:  STR             R0, [R4,#8]
2286CC:  POP.W           {R11}
2286D0:  POP             {R4-R7,PC}
