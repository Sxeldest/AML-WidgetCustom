; =========================================================
; Game Engine Function: sub_12C84C
; Address            : 0x12C84C - 0x12C86E
; =========================================================

12C84C:  PUSH            {R4,R5,R7,LR}
12C84E:  ADD             R7, SP, #8
12C850:  MOV             R4, R0
12C852:  LDR             R5, [R0,#4]
12C854:  BL              sub_F0B30
12C858:  LDR             R1, =(off_234AF4 - 0x12C862)
12C85A:  LDRD.W          R2, R3, [R4,#8]
12C85E:  ADD             R1, PC; off_234AF4
12C860:  STR             R0, [R5,#0x7C]
12C862:  SUBS            R0, R2, R3
12C864:  LDR             R1, [R1]; word_25B210
12C866:  ADD             R0, R1
12C868:  MOVS            R1, #1
12C86A:  STRB            R1, [R0,#0x16]
12C86C:  POP             {R4,R5,R7,PC}
