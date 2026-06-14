; =========================================================
; Game Engine Function: mpg123_set_string
; Address            : 0x23370C - 0x23372E
; =========================================================

23370C:  PUSH            {R4,R5,R7,LR}
23370E:  ADD             R7, SP, #8
233710:  MOV             R5, R0
233712:  MOVS            R0, #0
233714:  MOV             R4, R1
233716:  STR             R0, [R5,#8]
233718:  MOV             R0, R4; char *
23371A:  BLX             strlen
23371E:  MOV             R3, R0; size_t
233720:  MOV             R0, R5; int
233722:  MOV             R1, R4; int
233724:  MOVS            R2, #0; int
233726:  POP.W           {R4,R5,R7,LR}
23372A:  B.W             mpg123_add_substring
