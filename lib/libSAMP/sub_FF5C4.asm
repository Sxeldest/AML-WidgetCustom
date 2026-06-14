; =========================================================
; Game Engine Function: sub_FF5C4
; Address            : 0xFF5C4 - 0xFF5E2
; =========================================================

FF5C4:  PUSH            {R4,R6,R7,LR}
FF5C6:  ADD             R7, SP, #8
FF5C8:  MOV             R4, R0
FF5CA:  BL              sub_1082E4
FF5CE:  CMP             R0, R4
FF5D0:  IT NE
FF5D2:  POPNE           {R4,R6,R7,PC}
FF5D4:  LDR             R0, =(off_25B19C - 0xFF5DA)
FF5D6:  ADD             R0, PC; off_25B19C
FF5D8:  LDR             R1, [R0]
FF5DA:  MOV             R0, R4
FF5DC:  POP.W           {R4,R6,R7,LR}
FF5E0:  BX              R1
