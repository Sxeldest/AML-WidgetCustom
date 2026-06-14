; =========================================================
; Game Engine Function: sub_15A7CA
; Address            : 0x15A7CA - 0x15A7F8
; =========================================================

15A7CA:  PUSH            {R4,R6,R7,LR}
15A7CC:  ADD             R7, SP, #8
15A7CE:  SUB             SP, SP, #8
15A7D0:  MOV             R2, R1
15A7D2:  MOV             R4, R0
15A7D4:  MOVS            R0, #0
15A7D6:  SUB.W           R1, R7, #-var_9; int
15A7DA:  STRB.W          R0, [R7,#var_9]
15A7DE:  MOV             R0, R2; int
15A7E0:  MOVS            R2, #8
15A7E2:  MOVS            R3, #1
15A7E4:  BL              sub_17D786
15A7E8:  LDRB.W          R1, [R7,#var_9]
15A7EC:  CBZ             R1, loc_15A7F4
15A7EE:  MOV             R0, R4
15A7F0:  BL              sub_155BBA
15A7F4:  ADD             SP, SP, #8
15A7F6:  POP             {R4,R6,R7,PC}
