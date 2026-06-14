; =========================================================
; Game Engine Function: sub_F6A3E
; Address            : 0xF6A3E - 0xF6A5C
; =========================================================

F6A3E:  PUSH            {R4,R5,R7,LR}
F6A40:  ADD             R7, SP, #8
F6A42:  MOV             R3, R2
F6A44:  CMP             R0, R1
F6A46:  BEQ             loc_F6A58
F6A48:  LDRB            R4, [R0]
F6A4A:  ADDS            R2, #1
F6A4C:  LDRB            R5, [R3]
F6A4E:  STRB.W          R5, [R0],#1
F6A52:  STRB.W          R4, [R3],#1
F6A56:  B               loc_F6A44
F6A58:  MOV             R0, R2
F6A5A:  POP             {R4,R5,R7,PC}
