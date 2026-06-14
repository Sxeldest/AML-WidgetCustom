; =========================================================
; Game Engine Function: sub_1640AC
; Address            : 0x1640AC - 0x1640DA
; =========================================================

1640AC:  PUSH            {R4,R6,R7,LR}
1640AE:  ADD             R7, SP, #8
1640B0:  MOV             R4, R1
1640B2:  BL              sub_163FF8
1640B6:  CBZ             R0, loc_1640D0
1640B8:  LDRH            R1, [R0,#0x2C]
1640BA:  CBZ             R1, loc_1640D0
1640BC:  LDR             R2, [R0,#0x1C]
1640BE:  ADD             R2, R0
1640C0:  ADDS            R2, #4
1640C2:  LDR.W           R3, [R2,#-4]
1640C6:  CMP             R3, R4
1640C8:  BEQ             loc_1640D4
1640CA:  ADDS            R2, #0x20 ; ' '
1640CC:  SUBS            R1, #1
1640CE:  BNE             loc_1640C2
1640D0:  MOVS            R0, #0
1640D2:  POP             {R4,R6,R7,PC}
1640D4:  LDR             R1, [R2]
1640D6:  ADD             R0, R1
1640D8:  POP             {R4,R6,R7,PC}
