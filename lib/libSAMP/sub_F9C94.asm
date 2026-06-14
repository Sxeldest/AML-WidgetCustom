; =========================================================
; Game Engine Function: sub_F9C94
; Address            : 0xF9C94 - 0xF9CB6
; =========================================================

F9C94:  MOV             R1, R0
F9C96:  MOVW            R0, #0x4E20
F9C9A:  CMP             R1, R0
F9C9C:  ITT HI
F9C9E:  MOVHI           R0, #1
F9CA0:  BXHI            LR
F9CA2:  PUSH            {R7,LR}
F9CA4:  MOV             R7, SP
F9CA6:  LDR             R0, =(unk_B2CDC - 0xF9CAC)
F9CA8:  ADD             R0, PC; unk_B2CDC
F9CAA:  BL              sub_107188
F9CAE:  CMP             R0, #0
F9CB0:  IT NE
F9CB2:  MOVNE           R0, #1
F9CB4:  POP             {R7,PC}
