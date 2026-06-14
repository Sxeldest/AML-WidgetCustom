; =========================================================
; Game Engine Function: sub_E08D8
; Address            : 0xE08D8 - 0xE08F2
; =========================================================

E08D8:  PUSH            {R4,R6,R7,LR}
E08DA:  ADD             R7, SP, #8
E08DC:  MOV             R4, R0
E08DE:  LDR             R0, [R0,#0x4C]
E08E0:  ADDS            R1, R0, #1
E08E2:  BNE             loc_E08EE
E08E4:  MOV             R0, R4
E08E6:  MOVS            R1, #0x20 ; ' '
E08E8:  BL              sub_DE0B4
E08EC:  STR             R0, [R4,#0x4C]
E08EE:  UXTB            R0, R0
E08F0:  POP             {R4,R6,R7,PC}
