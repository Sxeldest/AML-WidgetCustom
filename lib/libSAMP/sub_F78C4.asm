; =========================================================
; Game Engine Function: sub_F78C4
; Address            : 0xF78C4 - 0xF78EE
; =========================================================

F78C4:  PUSH            {R4,R6,R7,LR}
F78C6:  ADD             R7, SP, #8
F78C8:  MOV             R4, R0
F78CA:  MOVS            R0, #0
F78CC:  STRD.W          R0, R0, [R3]
F78D0:  STR             R1, [R3,#8]
F78D2:  STR             R3, [R2]
F78D4:  LDR             R0, [R4]
F78D6:  LDR             R0, [R0]
F78D8:  CBZ             R0, loc_F78DE
F78DA:  STR             R0, [R4]
F78DC:  LDR             R3, [R2]
F78DE:  LDR             R0, [R4,#4]
F78E0:  MOV             R1, R3
F78E2:  BL              sub_EA2D2
F78E6:  LDR             R0, [R4,#8]
F78E8:  ADDS            R0, #1
F78EA:  STR             R0, [R4,#8]
F78EC:  POP             {R4,R6,R7,PC}
