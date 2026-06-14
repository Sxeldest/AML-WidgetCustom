; =========================================================
; Game Engine Function: sub_1045D8
; Address            : 0x1045D8 - 0x104646
; =========================================================

1045D8:  PUSH            {R4-R7,LR}
1045DA:  ADD             R7, SP, #0xC
1045DC:  PUSH.W          {R11}
1045E0:  LDR             R0, [R0,#0x5C]
1045E2:  LDR.W           R0, [R0,#0x440]
1045E6:  LDR             R4, [R0,#0x10]
1045E8:  CBZ             R4, loc_104618
1045EA:  MOVW            R5, #0x191
1045EE:  MOVW            R6, #0x3A6
1045F2:  LDR             R0, [R4]
1045F4:  LDR             R1, [R0,#0x14]
1045F6:  MOV             R0, R4
1045F8:  BLX             R1
1045FA:  CMP             R0, R5
1045FC:  BEQ             loc_10461C
1045FE:  LDR             R0, [R4]
104600:  LDR             R1, [R0,#0x14]
104602:  MOV             R0, R4
104604:  BLX             R1
104606:  CMP             R0, R6
104608:  BEQ             loc_10461C
10460A:  LDR             R0, [R4]
10460C:  LDR             R1, [R0,#0xC]
10460E:  MOV             R0, R4
104610:  BLX             R1
104612:  MOV             R4, R0
104614:  CMP             R0, #0
104616:  BNE             loc_1045F2
104618:  MOVS            R4, #0
10461A:  B               loc_10463E
10461C:  LDR             R0, [R4]
10461E:  LDR             R1, [R0,#0x14]
104620:  MOV             R0, R4
104622:  BLX             R1
104624:  MOVW            R1, #0x191
104628:  CMP             R0, R1
10462A:  BEQ             loc_10463E
10462C:  LDR             R0, [R4]
10462E:  LDR             R1, [R0,#0x14]
104630:  MOV             R0, R4
104632:  BLX             R1
104634:  MOVW            R1, #0x3A6
104638:  CMP             R0, R1
10463A:  IT NE
10463C:  MOVNE           R4, #0
10463E:  MOV             R0, R4
104640:  POP.W           {R11}
104644:  POP             {R4-R7,PC}
