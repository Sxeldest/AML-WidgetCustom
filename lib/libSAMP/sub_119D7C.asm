; =========================================================
; Game Engine Function: sub_119D7C
; Address            : 0x119D7C - 0x119D98
; =========================================================

119D7C:  PUSH            {R4,R5,R7,LR}
119D7E:  ADD             R7, SP, #8
119D80:  MOV             R4, R1
119D82:  MOV             R5, R0
119D84:  BL              sub_11B180
119D88:  LDR             R0, =(unk_263610 - 0x119D92)
119D8A:  MOV             R1, R5
119D8C:  MOV             R2, R4
119D8E:  ADD             R0, PC; unk_263610
119D90:  POP.W           {R4,R5,R7,LR}
119D94:  B.W             sub_11B2D8
