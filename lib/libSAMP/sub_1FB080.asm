; =========================================================
; Game Engine Function: sub_1FB080
; Address            : 0x1FB080 - 0x1FB09A
; =========================================================

1FB080:  PUSH            {R4,R5,R7,LR}
1FB082:  ADD             R7, SP, #8
1FB084:  MOV             R4, R1
1FB086:  BL              sub_1FB09A
1FB08A:  MOV             R5, R0
1FB08C:  MOV             R0, R4
1FB08E:  BL              sub_1FB09A
1FB092:  EORS            R0, R5
1FB094:  EOR.W           R0, R0, #1
1FB098:  POP             {R4,R5,R7,PC}
