; =========================================================
; Game Engine Function: sub_80AAA
; Address            : 0x80AAA - 0x80AC6
; =========================================================

80AAA:  PUSH            {R4,R6,R7,LR}
80AAC:  ADD             R7, SP, #8
80AAE:  MOV             R4, R0
80AB0:  MOVS            R0, #0xB
80AB2:  STRB            R0, [R4,#4]
80AB4:  MOV             R0, #0xDEADBEEF
80ABC:  STR             R0, [R4]
80ABE:  BL              sub_833E8
80AC2:  STRB            R0, [R4,#5]
80AC4:  POP             {R4,R6,R7,PC}
