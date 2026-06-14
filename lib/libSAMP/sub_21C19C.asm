; =========================================================
; Game Engine Function: sub_21C19C
; Address            : 0x21C19C - 0x21C1BE
; =========================================================

21C19C:  PUSH            {R4,R5,R7,LR}
21C19E:  ADD             R7, SP, #8
21C1A0:  MOV             R4, R1
21C1A2:  LDR             R1, =(aOperator_41 - 0x21C1AC); "operator " ...
21C1A4:  MOV             R5, R0
21C1A6:  MOV             R0, R4
21C1A8:  ADD             R1, PC; "operator "
21C1AA:  ADD.W           R2, R1, #9
21C1AE:  BL              sub_216F98
21C1B2:  LDR             R0, [R5,#8]
21C1B4:  MOV             R1, R4
21C1B6:  POP.W           {R4,R5,R7,LR}
21C1BA:  B.W             sub_2154CC
