; =========================================================
; Game Engine Function: sub_119C48
; Address            : 0x119C48 - 0x119C70
; =========================================================

119C48:  PUSH            {R4-R7,LR}
119C4A:  ADD             R7, SP, #0xC
119C4C:  PUSH.W          {R11}
119C50:  MOV             R4, R2
119C52:  MOV             R5, R1
119C54:  MOV             R6, R0
119C56:  BL              sub_11AA44
119C5A:  LDR             R0, =(unk_263550 - 0x119C66)
119C5C:  MOV             R1, R6
119C5E:  MOV             R2, R5
119C60:  MOV             R3, R4
119C62:  ADD             R0, PC; unk_263550
119C64:  POP.W           {R11}
119C68:  POP.W           {R4-R7,LR}
119C6C:  B.W             sub_11AB84
