; =========================================================
; Game Engine Function: sub_F6BB2
; Address            : 0xF6BB2 - 0xF6BCC
; =========================================================

F6BB2:  PUSH            {R4,R5,R7,LR}
F6BB4:  ADD             R7, SP, #8
F6BB6:  MOV             R3, R2
F6BB8:  CMP             R0, R1
F6BBA:  BEQ             loc_F6BC8
F6BBC:  LDR             R4, [R0]
F6BBE:  ADDS            R2, #4
F6BC0:  LDR             R5, [R3]
F6BC2:  STM             R0!, {R5}
F6BC4:  STM             R3!, {R4}
F6BC6:  B               loc_F6BB8
F6BC8:  MOV             R0, R2
F6BCA:  POP             {R4,R5,R7,PC}
