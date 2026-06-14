; =========================================================
; Game Engine Function: sub_F3D8C
; Address            : 0xF3D8C - 0xF3DB4
; =========================================================

F3D8C:  PUSH            {R4-R7,LR}
F3D8E:  ADD             R7, SP, #0xC
F3D90:  PUSH.W          {R11}
F3D94:  MOV             R4, R2
F3D96:  MOV             R5, R1
F3D98:  MOV             R6, R0
F3D9A:  BL              sub_F3DB8
F3D9E:  LDR             R0, =(unk_240018 - 0xF3DAA)
F3DA0:  MOV             R1, R6
F3DA2:  MOV             R2, R5
F3DA4:  MOV             R3, R4
F3DA6:  ADD             R0, PC; unk_240018
F3DA8:  POP.W           {R11}
F3DAC:  POP.W           {R4-R7,LR}
F3DB0:  B.W             sub_F3E84
