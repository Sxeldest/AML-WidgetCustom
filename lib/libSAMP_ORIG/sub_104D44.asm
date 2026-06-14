; =========================================================
; Game Engine Function: sub_104D44
; Address            : 0x104D44 - 0x104D66
; =========================================================

104D44:  PUSH            {R4,R5,R7,LR}
104D46:  ADD             R7, SP, #8
104D48:  MOV             R4, R1
104D4A:  LDR             R1, =(aOperator_41 - 0x104D54); "operator " ...
104D4C:  MOV             R5, R0
104D4E:  MOV             R0, R4
104D50:  ADD             R1, PC; "operator "
104D52:  ADD.W           R2, R1, #9
104D56:  BL              sub_FFB40
104D5A:  LDR             R0, [R5,#8]
104D5C:  MOV             R1, R4
104D5E:  POP.W           {R4,R5,R7,LR}
104D62:  B.W             sub_FE074
