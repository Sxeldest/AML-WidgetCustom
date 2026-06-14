; =========================================================
; Game Engine Function: sub_F7D44
; Address            : 0xF7D44 - 0xF7D5E
; =========================================================

F7D44:  PUSH            {R7,LR}
F7D46:  MOV             R7, SP
F7D48:  MOV             R2, R0
F7D4A:  ORRS            R0, R1
F7D4C:  CLZ.W           R0, R0
F7D50:  LSRS            R0, R0, #5
F7D52:  CBZ             R2, locret_F7D5C
F7D54:  CBZ             R1, locret_F7D5C
F7D56:  MOV             R0, R2
F7D58:  BL              sub_F7F20
F7D5C:  POP             {R7,PC}
