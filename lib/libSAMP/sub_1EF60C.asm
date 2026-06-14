; =========================================================
; Game Engine Function: sub_1EF60C
; Address            : 0x1EF60C - 0x1EF626
; =========================================================

1EF60C:  PUSH            {R4,R6,R7,LR}
1EF60E:  ADD             R7, SP, #8
1EF610:  MOV             R4, R2
1EF612:  SUBS            R2, R1, R0; n
1EF614:  BEQ             loc_1EF622
1EF616:  SUBS            R4, R4, R2
1EF618:  MOV             R3, R0
1EF61A:  MOV             R1, R3; src
1EF61C:  MOV             R0, R4; dest
1EF61E:  BLX             j_memmove
1EF622:  MOV             R0, R4
1EF624:  POP             {R4,R6,R7,PC}
