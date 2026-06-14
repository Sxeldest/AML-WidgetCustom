; =========================================================
; Game Engine Function: sub_7DE14
; Address            : 0x7DE14 - 0x7DE24
; =========================================================

7DE14:  PUSH            {R4,R6,R7,LR}
7DE16:  ADD             R7, SP, #8
7DE18:  LDR             R1, [R0,#4]
7DE1A:  MOV             R4, R0
7DE1C:  BL              sub_7DFFC
7DE20:  MOV             R0, R4
7DE22:  POP             {R4,R6,R7,PC}
