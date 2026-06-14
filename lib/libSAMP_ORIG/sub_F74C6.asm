; =========================================================
; Game Engine Function: sub_F74C6
; Address            : 0xF74C6 - 0xF74E2
; =========================================================

F74C6:  PUSH            {R4,R5,R7,LR}
F74C8:  ADD             R7, SP, #8
F74CA:  MOV             R4, R1
F74CC:  LDR             R1, [R1]
F74CE:  MOV             R5, R0
F74D0:  MOVS            R0, #0
F74D2:  STR             R0, [R4]
F74D4:  MOV             R0, R5
F74D6:  BL              sub_F7474
F74DA:  LDR             R0, [R4,#4]
F74DC:  STR             R0, [R5,#4]
F74DE:  MOV             R0, R5
F74E0:  POP             {R4,R5,R7,PC}
