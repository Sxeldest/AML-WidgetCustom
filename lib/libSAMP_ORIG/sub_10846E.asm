; =========================================================
; Game Engine Function: sub_10846E
; Address            : 0x10846E - 0x1084E8
; =========================================================

10846E:  PUSH            {R4-R7,LR}
108470:  ADD             R7, SP, #0xC
108472:  PUSH.W          {R8,R9,R11}
108476:  LDR             R6, [R7,#arg_0]
108478:  MOV             R4, R1
10847A:  LDR             R1, [R1,#8]
10847C:  MOV             R9, R2
10847E:  MOV             R8, R3
108480:  MOV             R5, R0
108482:  MOV             R2, R6
108484:  BL              sub_107A64
108488:  CBZ             R0, loc_10849C
10848A:  LDR             R0, [R4,#4]
10848C:  CMP             R0, R9
10848E:  BNE             loc_1084E2
108490:  LDR             R0, [R4,#0x1C]
108492:  CMP             R0, #1
108494:  IT NE
108496:  STRNE.W         R8, [R4,#0x1C]
10849A:  B               loc_1084E2
10849C:  LDR             R1, [R4]
10849E:  MOV             R0, R5
1084A0:  MOV             R2, R6
1084A2:  BL              sub_107A64
1084A6:  CBZ             R0, loc_1084E2
1084A8:  LDR             R0, [R4,#0x10]
1084AA:  CMP             R0, R9
1084AC:  ITT NE
1084AE:  LDRNE           R0, [R4,#0x14]
1084B0:  CMPNE           R0, R9
1084B2:  BNE             loc_1084C0
1084B4:  CMP.W           R8, #1
1084B8:  ITT EQ
1084BA:  MOVEQ           R0, #1
1084BC:  STREQ           R0, [R4,#0x20]
1084BE:  B               loc_1084E2
1084C0:  LDRD.W          R0, R1, [R4,#0x24]
1084C4:  STR.W           R9, [R4,#0x14]
1084C8:  ADDS            R1, #1
1084CA:  STR.W           R8, [R4,#0x20]
1084CE:  STR             R1, [R4,#0x28]
1084D0:  CMP             R0, #1
1084D2:  ITTTT EQ
1084D4:  LDREQ           R0, [R4,#0x18]
1084D6:  CMPEQ           R0, #2
1084D8:  MOVEQ           R0, #1
1084DA:  STRBEQ.W        R0, [R4,#0x36]
1084DE:  MOVS            R0, #4
1084E0:  STR             R0, [R4,#0x2C]
1084E2:  POP.W           {R8,R9,R11}
1084E6:  POP             {R4-R7,PC}
