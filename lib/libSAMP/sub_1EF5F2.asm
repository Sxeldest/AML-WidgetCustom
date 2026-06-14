; =========================================================
; Game Engine Function: sub_1EF5F2
; Address            : 0x1EF5F2 - 0x1EF60C
; =========================================================

1EF5F2:  PUSH            {R4,R5,R7,LR}
1EF5F4:  ADD             R7, SP, #8
1EF5F6:  SUBS            R5, R1, R0
1EF5F8:  MOV             R4, R2
1EF5FA:  BEQ             loc_1EF608
1EF5FC:  MOV             R2, R0
1EF5FE:  MOV             R0, R4; dest
1EF600:  MOV             R1, R2; src
1EF602:  MOV             R2, R5; n
1EF604:  BLX             j_memmove
1EF608:  ADDS            R0, R4, R5
1EF60A:  POP             {R4,R5,R7,PC}
