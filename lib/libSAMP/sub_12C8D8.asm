; =========================================================
; Game Engine Function: sub_12C8D8
; Address            : 0x12C8D8 - 0x12C8F4
; =========================================================

12C8D8:  PUSH            {R4,R5,R7,LR}
12C8DA:  ADD             R7, SP, #8
12C8DC:  LDR             R1, =(off_234AF4 - 0x12C8E4)
12C8DE:  LDR             R4, [R0,#4]
12C8E0:  ADD             R1, PC; off_234AF4
12C8E2:  LDR             R5, [R1]; word_25B210
12C8E4:  BL              sub_F0B30
12C8E8:  ADD.W           R0, R0, #0x1F4
12C8EC:  STR             R0, [R4,#0x7C]
12C8EE:  MOVS            R0, #1
12C8F0:  STRB            R0, [R5,#(dword_25B223 - 0x25B210)]
12C8F2:  POP             {R4,R5,R7,PC}
