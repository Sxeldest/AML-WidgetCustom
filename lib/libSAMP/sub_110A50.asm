; =========================================================
; Game Engine Function: sub_110A50
; Address            : 0x110A50 - 0x110A74
; =========================================================

110A50:  PUSH            {R4,R6,R7,LR}
110A52:  ADD             R7, SP, #8
110A54:  MOV             R4, R0
110A56:  LDR             R0, =(off_23494C - 0x110A62)
110A58:  MOVW            R2, #0x5A10
110A5C:  LDR             R1, [R4]
110A5E:  ADD             R0, PC; off_23494C
110A60:  MOVT            R2, #0x67 ; 'g'
110A64:  LDR             R0, [R0]; dword_23DF24
110A66:  LDR             R0, [R0]
110A68:  ADD             R0, R2
110A6A:  MOVS            R2, #0
110A6C:  BL              sub_164196
110A70:  MOV             R0, R4
110A72:  POP             {R4,R6,R7,PC}
