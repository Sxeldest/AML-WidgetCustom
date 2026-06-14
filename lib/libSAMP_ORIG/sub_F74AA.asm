; =========================================================
; Game Engine Function: sub_F74AA
; Address            : 0xF74AA - 0xF74C6
; =========================================================

F74AA:  PUSH            {R4,R5,R7,LR}
F74AC:  ADD             R7, SP, #8
F74AE:  MOV             R4, R1
F74B0:  LDR             R1, [R1]
F74B2:  MOV             R5, R0
F74B4:  MOVS            R0, #0
F74B6:  STR             R0, [R4]
F74B8:  MOV             R0, R5
F74BA:  BL              sub_E6FB4
F74BE:  LDR             R0, [R4,#4]
F74C0:  STR             R0, [R5,#4]
F74C2:  MOV             R0, R5
F74C4:  POP             {R4,R5,R7,PC}
