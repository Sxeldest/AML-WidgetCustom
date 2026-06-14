; =========================================================
; Game Engine Function: sub_10370C
; Address            : 0x10370C - 0x103724
; =========================================================

10370C:  SUBS            R3, R1, R0
10370E:  IT EQ
103710:  BXEQ            LR
103712:  PUSH            {R4,R6,R7,LR}
103714:  ADD             R7, SP, #0x10+var_8
103716:  MOV             R4, R0
103718:  MOV             R0, R2; dest
10371A:  MOV             R1, R4; src
10371C:  MOV             R2, R3; n
10371E:  BLX             j_memmove
103722:  POP             {R4,R6,R7,PC}
