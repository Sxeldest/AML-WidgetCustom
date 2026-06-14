; =========================================================
; Game Engine Function: sub_F5784
; Address            : 0xF5784 - 0xF57AC
; =========================================================

F5784:  PUSH            {R4,R6,R7,LR}
F5786:  ADD             R7, SP, #8
F5788:  MOV             R4, R0
F578A:  LDR             R0, =(off_23494C - 0xF5794)
F578C:  MOVW            R1, #0x1FA8
F5790:  ADD             R0, PC; off_23494C
F5792:  MOVT            R1, #0x95
F5796:  LDR             R0, [R0]; dword_23DF24
F5798:  LDR             R0, [R0]
F579A:  ADD             R0, R1
F579C:  BL              sub_F5894
F57A0:  LDR             R1, [R4,#0x14]
F57A2:  CMP             R0, #0
F57A4:  IT NE
F57A6:  MOVNE           R1, #0x3C ; '<'
F57A8:  MOV             R0, R1
F57AA:  POP             {R4,R6,R7,PC}
