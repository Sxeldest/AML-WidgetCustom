; =========================================================
; Game Engine Function: sub_119C28
; Address            : 0x119C28 - 0x119C44
; =========================================================

119C28:  PUSH            {R4,R5,R7,LR}
119C2A:  ADD             R7, SP, #8
119C2C:  MOV             R4, R1
119C2E:  MOV             R5, R0
119C30:  BL              sub_11A8E8
119C34:  LDR             R0, =(unk_263530 - 0x119C3E)
119C36:  MOV             R1, R5
119C38:  MOV             R2, R4
119C3A:  ADD             R0, PC; unk_263530
119C3C:  POP.W           {R4,R5,R7,LR}
119C40:  B.W             sub_11AA22
