; =========================================================
; Game Engine Function: sub_10AA78
; Address            : 0x10AA78 - 0x10AAA0
; =========================================================

10AA78:  PUSH            {R11,LR}
10AA7C:  MOV             R11, SP
10AA80:  MOV             R0, R1
10AA84:  BL              sub_10AD74
10AA88:  MOV             R1, #9
10AA8C:  CMP             R0, #0
10AA90:  MOVWEQ          R1, #5
10AA94:  SUBS            R0, R0, #1
10AA98:  MOVNE           R0, R1
10AA9C:  POP             {R11,PC}
