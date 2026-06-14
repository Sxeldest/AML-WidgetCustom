; =========================================================
; Game Engine Function: sub_182454
; Address            : 0x182454 - 0x1824B6
; =========================================================

182454:  PUSH            {R4-R7,LR}
182456:  ADD             R7, SP, #0xC
182458:  PUSH.W          {R8-R10}
18245C:  MOV             R10, R0
18245E:  LDR             R0, [R0,#4]
182460:  MOV             R8, R2
182462:  CBZ             R0, loc_1824A2
182464:  SUBS            R4, R0, #1
182466:  ADD.W           R0, R0, R0,LSR#31
18246A:  MOV             R9, R1
18246C:  MOVS            R5, #0
18246E:  ASRS            R6, R0, #1
182470:  LDR.W           R0, [R10]
182474:  ADD.W           R1, R6, R6,LSL#1
182478:  ADD.W           R1, R0, R1,LSL#2
18247C:  MOV             R0, R9
18247E:  BL              sub_17F694
182482:  CMP             R0, #0
182484:  BEQ             loc_1824A8
182486:  IT MI
182488:  SUBMI           R4, R6, #1
18248A:  CMP             R0, #0
18248C:  IT PL
18248E:  ADDPL           R5, R6, #1
182490:  SUBS            R0, R4, R5
182492:  ADD.W           R0, R0, R0,LSR#31
182496:  ADD.W           R6, R5, R0,ASR#1
18249A:  BGE             loc_182470
18249C:  MOVS            R0, #0
18249E:  MOV             R6, R5
1824A0:  B               loc_1824AA
1824A2:  MOVS            R0, #0
1824A4:  MOVS            R6, #0
1824A6:  B               loc_1824AA
1824A8:  MOVS            R0, #1
1824AA:  STRB.W          R0, [R8]
1824AE:  MOV             R0, R6
1824B0:  POP.W           {R8-R10}
1824B4:  POP             {R4-R7,PC}
