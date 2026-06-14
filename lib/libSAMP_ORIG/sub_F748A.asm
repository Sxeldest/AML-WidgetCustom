; =========================================================
; Game Engine Function: sub_F748A
; Address            : 0xF748A - 0xF74AA
; =========================================================

F748A:  PUSH            {R4,R6,R7,LR}
F748C:  ADD             R7, SP, #8
F748E:  CMP             R0, R1
F7490:  BEQ             loc_F74A0
F7492:  LDRB            R3, [R2]
F7494:  LDRB            R4, [R0]
F7496:  CMP             R4, R3
F7498:  BNE             loc_F74A0
F749A:  ADDS            R2, #1
F749C:  ADDS            R0, #1
F749E:  B               loc_F748E
F74A0:  SUBS            R0, R0, R1
F74A2:  CLZ.W           R0, R0
F74A6:  LSRS            R0, R0, #5
F74A8:  POP             {R4,R6,R7,PC}
