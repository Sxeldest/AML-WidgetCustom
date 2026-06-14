; =========================================================
; Game Engine Function: sub_21FF8C
; Address            : 0x21FF8C - 0x21FFA0
; =========================================================

21FF8C:  PUSH            {R2-R4,R6,R7,LR}
21FF8E:  ADD             R7, SP, #0x10
21FF90:  MOV             R4, R2
21FF92:  STR             R3, [SP,#0x10+var_10]
21FF94:  MOV.W           R2, #0xFFFFFFFF
21FF98:  MOV             R3, R4
21FF9A:  BL              sub_21FE70
21FF9E:  POP             {R2-R4,R6,R7,PC}
