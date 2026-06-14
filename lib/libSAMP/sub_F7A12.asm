; =========================================================
; Game Engine Function: sub_F7A12
; Address            : 0xF7A12 - 0xF7A3C
; =========================================================

F7A12:  PUSH            {R4,R6,R7,LR}
F7A14:  ADD             R7, SP, #8
F7A16:  MOV             R4, R0
F7A18:  MOVS            R0, #0
F7A1A:  STRD.W          R0, R0, [R3]
F7A1E:  STR             R1, [R3,#8]
F7A20:  STR             R3, [R2]
F7A22:  LDR             R0, [R4]
F7A24:  LDR             R0, [R0]
F7A26:  CBZ             R0, loc_F7A2C
F7A28:  STR             R0, [R4]
F7A2A:  LDR             R3, [R2]
F7A2C:  LDR             R0, [R4,#4]
F7A2E:  MOV             R1, R3
F7A30:  BL              sub_EA2D2
F7A34:  LDR             R0, [R4,#8]
F7A36:  ADDS            R0, #1
F7A38:  STR             R0, [R4,#8]
F7A3A:  POP             {R4,R6,R7,PC}
