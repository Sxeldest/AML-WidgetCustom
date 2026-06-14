; =========================================================
; Game Engine Function: sub_120A40
; Address            : 0x120A40 - 0x120A64
; =========================================================

120A40:  PUSH            {R4,R6,R7,LR}
120A42:  ADD             R7, SP, #8
120A44:  MOV             R4, R0
120A46:  LDR             R0, =(off_23494C - 0x120A52)
120A48:  MOVW            R2, #0x2348
120A4C:  LDR             R1, [R4]
120A4E:  ADD             R0, PC; off_23494C
120A50:  MOVT            R2, #0x67 ; 'g'
120A54:  LDR             R0, [R0]; dword_23DF24
120A56:  LDR             R0, [R0]
120A58:  ADD             R0, R2
120A5A:  MOVS            R2, #0
120A5C:  BL              sub_164196
120A60:  MOV             R0, R4
120A62:  POP             {R4,R6,R7,PC}
