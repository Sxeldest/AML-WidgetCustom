; =========================================================
; Game Engine Function: sub_12E574
; Address            : 0x12E574 - 0x12E5A0
; =========================================================

12E574:  PUSH            {R4,R6,R7,LR}
12E576:  ADD             R7, SP, #8
12E578:  MOV             R4, R0
12E57A:  LDR             R0, [R1,#0x10]
12E57C:  CBZ             R0, loc_12E58A
12E57E:  CMP             R1, R0
12E580:  BEQ             loc_12E590
12E582:  LDR             R1, [R0]
12E584:  LDR             R1, [R1,#8]
12E586:  BLX             R1
12E588:  B               loc_12E58C
12E58A:  MOVS            R0, #0
12E58C:  STR             R0, [R4,#0x10]
12E58E:  B               loc_12E59C
12E590:  STR             R4, [R4,#0x10]
12E592:  LDR             R0, [R1,#0x10]
12E594:  LDR             R1, [R0]
12E596:  LDR             R2, [R1,#0xC]
12E598:  MOV             R1, R4
12E59A:  BLX             R2
12E59C:  MOV             R0, R4
12E59E:  POP             {R4,R6,R7,PC}
