; =========================================================
; Game Engine Function: sub_1F9B20
; Address            : 0x1F9B20 - 0x1F9B3A
; =========================================================

1F9B20:  PUSH            {R4,R6,R7,LR}
1F9B22:  ADD             R7, SP, #8
1F9B24:  MOV             R4, R0
1F9B26:  LDR             R0, [R0,#0x4C]
1F9B28:  ADDS            R1, R0, #1
1F9B2A:  BEQ             loc_1F9B2E
1F9B2C:  POP             {R4,R6,R7,PC}
1F9B2E:  MOV             R0, R4
1F9B30:  MOVS            R1, #0x20 ; ' '
1F9B32:  BL              sub_1F7D10
1F9B36:  STR             R0, [R4,#0x4C]
1F9B38:  POP             {R4,R6,R7,PC}
