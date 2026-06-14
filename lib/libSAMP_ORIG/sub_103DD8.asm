; =========================================================
; Game Engine Function: sub_103DD8
; Address            : 0x103DD8 - 0x103E0C
; =========================================================

103DD8:  PUSH            {R4,R5,R7,LR}
103DDA:  ADD             R7, SP, #8
103DDC:  MOV             R5, R0
103DDE:  LDR             R0, [R0,#8]
103DE0:  MOV             R4, R1
103DE2:  BL              sub_FE074
103DE6:  LDR             R1, =(asc_4F675 - 0x103DEE); "(" ...
103DE8:  MOV             R0, R4
103DEA:  ADD             R1, PC; "("
103DEC:  ADDS            R2, R1, #1
103DEE:  BL              sub_FFB40
103DF2:  ADD.W           R0, R5, #0xC
103DF6:  MOV             R1, R4
103DF8:  BL              sub_1037E0
103DFC:  LDR             R1, =(asc_50037 - 0x103E04); ")" ...
103DFE:  MOV             R0, R4
103E00:  ADD             R1, PC; ")"
103E02:  ADDS            R2, R1, #1
103E04:  POP.W           {R4,R5,R7,LR}
103E08:  B.W             sub_FFB40
