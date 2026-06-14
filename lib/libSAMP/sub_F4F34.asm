; =========================================================
; Game Engine Function: sub_F4F34
; Address            : 0xF4F34 - 0xF4F7C
; =========================================================

F4F34:  PUSH            {R4,R5,R7,LR}
F4F36:  ADD             R7, SP, #8
F4F38:  MOV             R4, R0
F4F3A:  LDR             R0, [R0,#0x10]
F4F3C:  MOV             R5, R1
F4F3E:  MOVS            R1, #0
F4F40:  CMP             R4, R0
F4F42:  STR             R1, [R4,#0x10]
F4F44:  BEQ             loc_F4F4C
F4F46:  CBZ             R0, loc_F4F56
F4F48:  MOVS            R1, #5
F4F4A:  B               loc_F4F4E
F4F4C:  MOVS            R1, #4
F4F4E:  LDR             R2, [R0]
F4F50:  LDR.W           R1, [R2,R1,LSL#2]
F4F54:  BLX             R1
F4F56:  LDR             R0, [R5,#0x10]
F4F58:  CBZ             R0, loc_F4F66
F4F5A:  CMP             R5, R0
F4F5C:  BEQ             loc_F4F6C
F4F5E:  STR             R0, [R4,#0x10]
F4F60:  MOVS            R0, #0
F4F62:  STR             R0, [R5,#0x10]
F4F64:  B               loc_F4F78
F4F66:  MOVS            R0, #0
F4F68:  STR             R0, [R4,#0x10]
F4F6A:  B               loc_F4F78
F4F6C:  STR             R4, [R4,#0x10]
F4F6E:  LDR             R0, [R5,#0x10]
F4F70:  LDR             R1, [R0]
F4F72:  LDR             R2, [R1,#0xC]
F4F74:  MOV             R1, R4
F4F76:  BLX             R2
F4F78:  MOV             R0, R4
F4F7A:  POP             {R4,R5,R7,PC}
