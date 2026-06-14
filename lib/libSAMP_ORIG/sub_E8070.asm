; =========================================================
; Game Engine Function: sub_E8070
; Address            : 0xE8070 - 0xE8080
; =========================================================

E8070:  PUSH            {R4,R6,R7,LR}
E8072:  ADD             R7, SP, #8
E8074:  MOVS            R1, #0
E8076:  MOV             R4, R0
E8078:  BL              sub_E7DF8
E807C:  MOV             R0, R4
E807E:  POP             {R4,R6,R7,PC}
