; =========================================================
; Game Engine Function: sub_1530E6
; Address            : 0x1530E6 - 0x153102
; =========================================================

1530E6:  PUSH            {R4,R6,R7,LR}
1530E8:  ADD             R7, SP, #8
1530EA:  MOV             R4, R0
1530EC:  BL              sub_153102
1530F0:  CBZ             R0, loc_1530FE
1530F2:  MOV             R1, R0
1530F4:  MOV             R0, R4
1530F6:  BL              sub_1531A8
1530FA:  MOVS            R0, #1
1530FC:  POP             {R4,R6,R7,PC}
1530FE:  MOVS            R0, #0
153100:  POP             {R4,R6,R7,PC}
