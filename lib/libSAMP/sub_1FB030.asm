; =========================================================
; Game Engine Function: sub_1FB030
; Address            : 0x1FB030 - 0x1FB04A
; =========================================================

1FB030:  PUSH            {R4,R5,R7,LR}
1FB032:  ADD             R7, SP, #8
1FB034:  MOV             R4, R1
1FB036:  BL              sub_1FB04A
1FB03A:  MOV             R5, R0
1FB03C:  MOV             R0, R4
1FB03E:  BL              sub_1FB04A
1FB042:  EORS            R0, R5
1FB044:  EOR.W           R0, R0, #1
1FB048:  POP             {R4,R5,R7,PC}
