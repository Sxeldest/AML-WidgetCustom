; =========================================================
; Game Engine Function: sub_1548A0
; Address            : 0x1548A0 - 0x1548B8
; =========================================================

1548A0:  PUSH            {R4,R6,R7,LR}
1548A2:  ADD             R7, SP, #8
1548A4:  LDR             R1, [R0]; void *
1548A6:  MOV             R4, R0
1548A8:  MOVS            R0, #0
1548AA:  STR             R0, [R4]
1548AC:  CBZ             R1, loc_1548B4
1548AE:  MOV             R0, R4; int
1548B0:  BL              sub_15611C
1548B4:  MOV             R0, R4
1548B6:  POP             {R4,R6,R7,PC}
