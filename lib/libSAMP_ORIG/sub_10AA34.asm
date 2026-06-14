; =========================================================
; Game Engine Function: sub_10AA34
; Address            : 0x10AA34 - 0x10AA60
; =========================================================

10AA34:  PUSH            {R11,LR}
10AA38:  MOV             R11, SP
10AA3C:  SUB             SP, SP, #0x28
10AA40:  MOV             R1, SP
10AA44:  BL              sub_10AD8C
10AA48:  LDR             R1, [SP,#0x28+var_28]
10AA4C:  CMP             R0, #0
10AA50:  MOVNE           R1, #0
10AA54:  MOV             R0, R1
10AA58:  MOV             SP, R11
10AA5C:  POP             {R11,PC}
