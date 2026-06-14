; =========================================================
; Game Engine Function: sub_1084E8
; Address            : 0x1084E8 - 0x1085E4
; =========================================================

1084E8:  PUSH            {R4-R7,LR}
1084EA:  ADD             R7, SP, #0xC
1084EC:  PUSH.W          {R1-R11}
1084F0:  LDR.W           R10, [R7,#arg_4]
1084F4:  MOV             R4, R1
1084F6:  LDR             R1, [R1,#8]
1084F8:  MOV             R6, R2
1084FA:  MOV             R5, R3
1084FC:  MOV             R11, R0
1084FE:  MOV             R2, R10
108500:  BL              sub_107A64
108504:  LDR.W           R9, [R7,#arg_0]
108508:  CBZ             R0, loc_108522
10850A:  STR.W           R9, [R7,#arg_0]
10850E:  MOV             R1, R4
108510:  MOV             R2, R6
108512:  MOV             R3, R5
108514:  ADD             SP, SP, #0x1C
108516:  POP.W           {R8-R11}
10851A:  POP.W           {R4-R7,LR}
10851E:  B.W             sub_108138
108522:  LDRB.W          R0, [R4,#0x34]
108526:  MOV             R1, R4
108528:  STR             R0, [SP,#0x38+var_20]
10852A:  MOVS            R0, #0
10852C:  LDRB.W          R8, [R4,#0x35]
108530:  MOV             R2, R6
108532:  STRH            R0, [R4,#0x34]
108534:  MOV             R3, R5
108536:  LDR.W           R0, [R11,#0xC]
10853A:  STR             R0, [SP,#0x38+var_28]
10853C:  ADD.W           R0, R11, #0x10
108540:  STRD.W          R9, R10, [SP,#0x38+var_38]
108544:  STR             R0, [SP,#0x38+var_2C]
108546:  BL              sub_10833E
10854A:  LDRB.W          R0, [R4,#0x35]
10854E:  MOV             R3, R5
108550:  LDRB.W          R1, [R4,#0x34]
108554:  ORR.W           R2, R0, R8
108558:  UXTB.W          R8, R2
10855C:  LDR             R2, [SP,#0x38+var_20]
10855E:  ORRS            R2, R1
108560:  UXTB            R5, R2
108562:  LDR             R2, [SP,#0x38+var_28]
108564:  CMP             R2, #2
108566:  BLT             loc_1085C4
108568:  STRD.W          R6, R3, [SP,#0x38+var_24]
10856C:  ADD.W           R6, R11, #0x18
108570:  LDR             R3, [SP,#0x38+var_2C]
108572:  ADD.W           R2, R3, R2,LSL#3
108576:  STR             R2, [SP,#0x38+var_28]
108578:  LDRB.W          R2, [R4,#0x36]
10857C:  CBNZ            R2, loc_1085C4
10857E:  CBZ             R1, loc_108590
108580:  LDR             R0, [R4,#0x18]
108582:  CMP             R0, #1
108584:  BEQ             loc_1085C4
108586:  LDRB.W          R0, [R11,#8]
10858A:  LSLS            R0, R0, #0x1E
10858C:  BMI             loc_10859A
10858E:  B               loc_1085C4
108590:  CBZ             R0, loc_10859A
108592:  LDRB.W          R0, [R11,#8]
108596:  LSLS            R0, R0, #0x1F
108598:  BEQ             loc_1085C4
10859A:  MOVS            R0, #0
10859C:  MOV             R1, R4
10859E:  STRH            R0, [R4,#0x34]
1085A0:  MOV             R0, R6
1085A2:  STRD.W          R9, R10, [SP,#0x38+var_38]
1085A6:  LDRD.W          R2, R3, [SP,#0x38+var_24]
1085AA:  BL              sub_10833E
1085AE:  LDRB.W          R1, [R4,#0x34]
1085B2:  ADDS            R6, #8
1085B4:  LDRB.W          R0, [R4,#0x35]
1085B8:  LDR             R2, [SP,#0x38+var_28]
1085BA:  ORRS            R5, R1
1085BC:  ORR.W           R8, R8, R0
1085C0:  CMP             R6, R2
1085C2:  BCC             loc_108578
1085C4:  CMP.W           R8, #0
1085C8:  IT NE
1085CA:  MOVNE.W         R8, #1
1085CE:  STRB.W          R8, [R4,#0x35]
1085D2:  CMP             R5, #0
1085D4:  IT NE
1085D6:  MOVNE           R5, #1
1085D8:  STRB.W          R5, [R4,#0x34]
1085DC:  ADD             SP, SP, #0x1C
1085DE:  POP.W           {R8-R11}
1085E2:  POP             {R4-R7,PC}
