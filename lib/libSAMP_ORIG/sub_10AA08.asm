; =========================================================
; Game Engine Function: sub_10AA08
; Address            : 0x10AA08 - 0x10AA34
; =========================================================

10AA08:  PUSH            {R11,LR}
10AA0C:  MOV             R11, SP
10AA10:  SUB             SP, SP, #0x28
10AA14:  MOV             R1, SP
10AA18:  BL              sub_10AD8C
10AA1C:  LDR             R1, [SP,#0x28+var_20]
10AA20:  CMP             R0, #0
10AA24:  MOVNE           R1, #0
10AA28:  MOV             R0, R1
10AA2C:  MOV             SP, R11
10AA30:  POP             {R11,PC}
