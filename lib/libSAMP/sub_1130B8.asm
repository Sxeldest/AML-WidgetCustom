; =========================================================
; Game Engine Function: sub_1130B8
; Address            : 0x1130B8 - 0x1130D8
; =========================================================

1130B8:  PUSH            {R4,R5,R7,LR}
1130BA:  ADD             R7, SP, #8
1130BC:  MOV             R4, R1
1130BE:  MOV             R5, R0
1130C0:  BL              sub_11318C
1130C4:  CBZ             R0, locret_1130D6
1130C6:  LDR.W           R0, [R5,#0x858]
1130CA:  LDR             R1, [R0]
1130CC:  LDR             R2, [R1,#0x3C]
1130CE:  MOV             R1, R4
1130D0:  POP.W           {R4,R5,R7,LR}
1130D4:  BX              R2
1130D6:  POP             {R4,R5,R7,PC}
