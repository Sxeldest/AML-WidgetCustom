; =========================================================
; Game Engine Function: sub_F41F8
; Address            : 0xF41F8 - 0xF4216
; =========================================================

F41F8:  PUSH            {R4,R5,R7,LR}
F41FA:  ADD             R7, SP, #8
F41FC:  MOV             R5, R0
F41FE:  MOV             R0, R1
F4200:  MOV             R4, R1
F4202:  BL              sub_F41B8
F4206:  LDR             R0, =(off_240034 - 0xF420E)
F4208:  MOV             R1, R4
F420A:  ADD             R0, PC; off_240034
F420C:  LDR             R2, [R0]
F420E:  MOV             R0, R5
F4210:  POP.W           {R4,R5,R7,LR}
F4214:  BX              R2
