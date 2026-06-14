; =========================================================
; Game Engine Function: sub_15545E
; Address            : 0x15545E - 0x1554D8
; =========================================================

15545E:  PUSH            {R4,R5,R7,LR}
155460:  ADD             R7, SP, #8
155462:  SUB             SP, SP, #0x118
155464:  CBZ             R2, loc_15549A
155466:  LDR             R1, [R2,#0x14]
155468:  MOV             R4, R0
15546A:  LDRB            R0, [R1]
15546C:  CMP             R0, #0x28 ; '('
15546E:  ITTE EQ
155470:  LDRBEQ          R0, [R1,#5]
155472:  MOVEQ           R3, #5
155474:  MOVNE           R3, #0
155476:  CMP             R0, #0x22 ; '"'
155478:  BEQ             loc_155490
15547A:  CMP             R0, #0xFC
15547C:  BNE             loc_15549A
15547E:  LDR             R2, [R2,#0xC]
155480:  ADDS            R0, R3, #1
155482:  CMP             R2, R0
155484:  BLS             loc_15549A
155486:  LDRB.W          R0, [R4,#0x7E]
15548A:  CBZ             R0, loc_1554A0
15548C:  MOVS            R0, #0
15548E:  B               loc_15549C
155490:  LDR             R0, [R4,#0x58]
155492:  CBNZ            R0, loc_15549A
155494:  MOV             R0, R4
155496:  BL              sub_1552AC
15549A:  MOVS            R0, #1
15549C:  ADD             SP, SP, #0x118
15549E:  POP             {R4,R5,R7,PC}
1554A0:  LDR             R5, [R4,#0x58]
1554A2:  MOVS            R0, #0
1554A4:  CMP             R5, #0
1554A6:  BEQ             loc_15549C
1554A8:  LDR.W           R5, [R4,#0x80]
1554AC:  CMP             R5, #0x32 ; '2'
1554AE:  BLT             loc_15549C
1554B0:  MVNS            R0, R3
1554B2:  ADD             R2, R0; size
1554B4:  ADDS            R0, R1, R3
1554B6:  ADD             R5, SP, #0x120+var_11C
1554B8:  ADDS            R1, R0, #1; src
1554BA:  MOVS            R3, #0
1554BC:  MOV             R0, R5; int
1554BE:  BL              sub_17D4F2
1554C2:  MOV             R0, R4; int
1554C4:  MOV             R1, R5; int
1554C6:  BL              sub_1554E2
1554CA:  MOV             R4, R0
1554CC:  ADD             R0, SP, #0x120+var_11C
1554CE:  BL              sub_17D542
1554D2:  CMP             R4, #0
1554D4:  BNE             loc_15548C
1554D6:  B               loc_15549A
