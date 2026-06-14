; =========================================================
; Game Engine Function: sub_DCF1C
; Address            : 0xDCF1C - 0xDCF30
; =========================================================

DCF1C:  PUSH            {R4,R6,R7,LR}
DCF1E:  ADD             R7, SP, #8
DCF20:  MOV             R4, R2
DCF22:  MOV             R2, R1
DCF24:  MOV             R1, R0
DCF26:  MOV             R0, R4
DCF28:  BL              sub_DCF30
DCF2C:  MOV             R0, R4
DCF2E:  POP             {R4,R6,R7,PC}
