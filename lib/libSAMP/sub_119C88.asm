; =========================================================
; Game Engine Function: sub_119C88
; Address            : 0x119C88 - 0x119CA8
; =========================================================

119C88:  PUSH            {R4,R6,R7,LR}
119C8A:  ADD             R7, SP, #8
119C8C:  SUB             SP, SP, #0x10
119C8E:  MOV             R4, R0
119C90:  MOVS            R0, #0
119C92:  STR             R0, [R4,#0x10]
119C94:  STR             R2, [SP,#0x18+var_C]
119C96:  STRD.W          R3, R1, [SP,#0x18+var_14]
119C9A:  ADD             R1, SP, #0x18+var_14
119C9C:  MOV             R0, R4
119C9E:  BL              sub_11AC28
119CA2:  MOV             R0, R4
119CA4:  ADD             SP, SP, #0x10
119CA6:  POP             {R4,R6,R7,PC}
