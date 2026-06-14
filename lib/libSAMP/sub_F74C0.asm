; =========================================================
; Game Engine Function: sub_F74C0
; Address            : 0xF74C0 - 0xF74D0
; =========================================================

F74C0:  PUSH            {R4,R6,R7,LR}
F74C2:  ADD             R7, SP, #8
F74C4:  LDR             R1, [R0,#4]
F74C6:  MOV             R4, R0
F74C8:  BL              sub_F7CC6
F74CC:  MOV             R0, R4
F74CE:  POP             {R4,R6,R7,PC}
