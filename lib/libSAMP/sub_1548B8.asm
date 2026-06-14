; =========================================================
; Game Engine Function: sub_1548B8
; Address            : 0x1548B8 - 0x1548D0
; =========================================================

1548B8:  PUSH            {R4,R6,R7,LR}
1548BA:  ADD             R7, SP, #8
1548BC:  LDR             R1, [R0]
1548BE:  MOV             R4, R0
1548C0:  MOVS            R0, #0
1548C2:  STR             R0, [R4]
1548C4:  CBZ             R1, loc_1548CC
1548C6:  MOV             R0, R4
1548C8:  BL              sub_1561D2
1548CC:  MOV             R0, R4
1548CE:  POP             {R4,R6,R7,PC}
