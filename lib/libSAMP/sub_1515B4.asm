; =========================================================
; Game Engine Function: sub_1515B4
; Address            : 0x1515B4 - 0x1515D0
; =========================================================

1515B4:  PUSH            {R4,R6,R7,LR}
1515B6:  ADD             R7, SP, #8
1515B8:  MOV             R4, R0
1515BA:  BL              sub_150F9C
1515BE:  CBZ             R0, loc_1515CC
1515C0:  MOV             R1, R0
1515C2:  MOV             R0, R4
1515C4:  BL              sub_1515D0
1515C8:  MOVS            R0, #1
1515CA:  POP             {R4,R6,R7,PC}
1515CC:  MOVS            R0, #0
1515CE:  POP             {R4,R6,R7,PC}
