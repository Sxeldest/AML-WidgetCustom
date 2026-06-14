; =========================================================
; Game Engine Function: sub_15527C
; Address            : 0x15527C - 0x1552A0
; =========================================================

15527C:  PUSH            {R4,R6,R7,LR}
15527E:  ADD             R7, SP, #8
155280:  SUB.W           SP, SP, #0x800
155284:  LDR             R3, [R1]
155286:  ADD.W           R4, SP, #0x808+var_807
15528A:  MOV             R2, R0
15528C:  MOV             R0, R4
15528E:  BL              sub_1561A8
155292:  MOVS            R0, #3; int
155294:  MOV             R1, R4; s
155296:  BL              sub_159B70
15529A:  ADD.W           SP, SP, #0x800
15529E:  POP             {R4,R6,R7,PC}
