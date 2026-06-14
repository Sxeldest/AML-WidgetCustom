; =========================================================
; Game Engine Function: sub_12C95C
; Address            : 0x12C95C - 0x12C978
; =========================================================

12C95C:  PUSH            {R4,R5,R7,LR}
12C95E:  ADD             R7, SP, #8
12C960:  LDR             R1, =(off_234AF4 - 0x12C968)
12C962:  LDR             R4, [R0,#4]
12C964:  ADD             R1, PC; off_234AF4
12C966:  LDR             R5, [R1]; word_25B210
12C968:  BL              sub_F0B30
12C96C:  ADD.W           R0, R0, #0x1F4
12C970:  STR             R0, [R4,#0x7C]
12C972:  MOVS            R0, #1
12C974:  STRB            R0, [R5,#(dword_25B223+1 - 0x25B210)]
12C976:  POP             {R4,R5,R7,PC}
