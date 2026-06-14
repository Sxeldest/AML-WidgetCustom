; =========================================================
; Game Engine Function: sub_1F20B0
; Address            : 0x1F20B0 - 0x1F20CE
; =========================================================

1F20B0:  PUSH            {R4,R6,R7,LR}
1F20B2:  ADD             R7, SP, #8
1F20B4:  MOV             R4, R0
1F20B6:  LDRB            R0, [R4,#0x10]
1F20B8:  CMP             R0, #3
1F20BA:  BHI             loc_1F20C4
1F20BC:  MOV             R0, R4
1F20BE:  BL              sub_1F2F78
1F20C2:  B               loc_1F20B6
1F20C4:  SUBS            R0, #6
1F20C6:  CLZ.W           R0, R0
1F20CA:  LSRS            R0, R0, #5
1F20CC:  POP             {R4,R6,R7,PC}
