; =========================================================
; Game Engine Function: sub_F3E10
; Address            : 0xF3E10 - 0xF3E3C
; =========================================================

F3E10:  PUSH            {R4,R6,R7,LR}
F3E12:  ADD             R7, SP, #8
F3E14:  MOV             R4, R0
F3E16:  LDR             R0, [R1,#0x10]
F3E18:  CBZ             R0, loc_F3E26
F3E1A:  CMP             R1, R0
F3E1C:  BEQ             loc_F3E2C
F3E1E:  LDR             R1, [R0]
F3E20:  LDR             R1, [R1,#8]
F3E22:  BLX             R1
F3E24:  B               loc_F3E28
F3E26:  MOVS            R0, #0
F3E28:  STR             R0, [R4,#0x10]
F3E2A:  B               loc_F3E38
F3E2C:  STR             R4, [R4,#0x10]
F3E2E:  LDR             R0, [R1,#0x10]
F3E30:  LDR             R1, [R0]
F3E32:  LDR             R2, [R1,#0xC]
F3E34:  MOV             R1, R4
F3E36:  BLX             R2
F3E38:  MOV             R0, R4
F3E3A:  POP             {R4,R6,R7,PC}
