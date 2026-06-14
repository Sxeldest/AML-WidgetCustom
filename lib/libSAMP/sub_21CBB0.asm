; =========================================================
; Game Engine Function: sub_21CBB0
; Address            : 0x21CBB0 - 0x21CBD0
; =========================================================

21CBB0:  PUSH            {R4,R5,R7,LR}
21CBB2:  ADD             R7, SP, #8
21CBB4:  MOV             R4, R1
21CBB6:  LDR             R1, =(aStd_0 - 0x21CBC0); "std::" ...
21CBB8:  MOV             R5, R0
21CBBA:  MOV             R0, R4
21CBBC:  ADD             R1, PC; "std::"
21CBBE:  ADDS            R2, R1, #5
21CBC0:  BL              sub_216F98
21CBC4:  LDR             R0, [R5,#8]
21CBC6:  MOV             R1, R4
21CBC8:  POP.W           {R4,R5,R7,LR}
21CBCC:  B.W             sub_2154CC
