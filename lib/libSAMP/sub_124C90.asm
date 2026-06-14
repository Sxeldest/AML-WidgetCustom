; =========================================================
; Game Engine Function: sub_124C90
; Address            : 0x124C90 - 0x124CB4
; =========================================================

124C90:  PUSH            {R4,R5,R7,LR}
124C92:  ADD             R7, SP, #8
124C94:  SUB             SP, SP, #8
124C96:  MOV             R4, R1
124C98:  MOV             R5, R0
124C9A:  BL              sub_125A8C
124C9E:  LDR             R1, =(dword_238E90 - 0x124CA4)
124CA0:  ADD             R1, PC; dword_238E90
124CA2:  LDR             R1, [R1]
124CA4:  CMP             R0, R1
124CA6:  BNE             loc_124CB0
124CA8:  MOV             R0, R5; int
124CAA:  MOV             R1, R4; s
124CAC:  BL              sub_124B0C
124CB0:  ADD             SP, SP, #8
124CB2:  POP             {R4,R5,R7,PC}
