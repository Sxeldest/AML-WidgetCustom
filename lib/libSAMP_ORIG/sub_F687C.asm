; =========================================================
; Game Engine Function: sub_F687C
; Address            : 0xF687C - 0xF688C
; =========================================================

F687C:  PUSH            {R4,R6,R7,LR}
F687E:  ADD             R7, SP, #8
F6880:  MOVS            R1, #0
F6882:  MOV             R4, R0
F6884:  BL              sub_F6866
F6888:  MOV             R0, R4
F688A:  POP             {R4,R6,R7,PC}
