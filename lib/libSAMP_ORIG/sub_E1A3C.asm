; =========================================================
; Game Engine Function: sub_E1A3C
; Address            : 0xE1A3C - 0xE1A56
; =========================================================

E1A3C:  PUSH            {R4,R6,R7,LR}
E1A3E:  ADD             R7, SP, #8
E1A40:  MOV             R4, R0
E1A42:  LDR             R0, [R0,#0x4C]
E1A44:  ADDS            R1, R0, #1
E1A46:  BEQ             loc_E1A4A
E1A48:  POP             {R4,R6,R7,PC}
E1A4A:  MOV             R0, R4
E1A4C:  MOVS            R1, #0x20 ; ' '
E1A4E:  BL              sub_DFC2C
E1A52:  STR             R0, [R4,#0x4C]
E1A54:  POP             {R4,R6,R7,PC}
