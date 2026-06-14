; =========================================================
; Game Engine Function: sub_12B5B4
; Address            : 0x12B5B4 - 0x12B5CE
; =========================================================

12B5B4:  PUSH            {R4,R6,R7,LR}
12B5B6:  ADD             R7, SP, #8
12B5B8:  MOV             R4, R0
12B5BA:  BL              sub_16E5BC
12B5BE:  BL              sub_167F70
12B5C2:  MOV             R1, R0
12B5C4:  MOV             R0, R4
12B5C6:  POP.W           {R4,R6,R7,LR}
12B5CA:  B.W             sub_12B5D0
