; =========================================================
; Game Engine Function: sub_113FD4
; Address            : 0x113FD4 - 0x113FE4
; =========================================================

113FD4:  PUSH            {R7,LR}
113FD6:  MOV             R7, SP
113FD8:  MOV             R2, R1
113FDA:  LDR.W           R3, [R2],#4
113FDE:  LDR             R3, [R3,#8]
113FE0:  BLX             R3
113FE2:  POP             {R7,PC}
