; =========================================================
; Game Engine Function: sub_10C6D8
; Address            : 0x10C6D8 - 0x10C6F4
; =========================================================

10C6D8:  PUSH            {R4,R6,R7,LR}
10C6DA:  ADD             R7, SP, #8
10C6DC:  MOV             R4, R0
10C6DE:  BL              sub_10C464
10C6E2:  CBZ             R0, loc_10C6F0
10C6E4:  MOV             R1, R0
10C6E6:  MOV             R0, R4
10C6E8:  BL              sub_10C6F4
10C6EC:  MOVS            R0, #1
10C6EE:  POP             {R4,R6,R7,PC}
10C6F0:  MOVS            R0, #0
10C6F2:  POP             {R4,R6,R7,PC}
