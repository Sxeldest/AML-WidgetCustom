; =========================================================
; Game Engine Function: sub_F3E3C
; Address            : 0xF3E3C - 0xF3E84
; =========================================================

F3E3C:  PUSH            {R4,R5,R7,LR}
F3E3E:  ADD             R7, SP, #8
F3E40:  MOV             R4, R0
F3E42:  LDR             R0, [R0,#0x10]
F3E44:  MOV             R5, R1
F3E46:  MOVS            R1, #0
F3E48:  CMP             R4, R0
F3E4A:  STR             R1, [R4,#0x10]
F3E4C:  BEQ             loc_F3E54
F3E4E:  CBZ             R0, loc_F3E5E
F3E50:  MOVS            R1, #5
F3E52:  B               loc_F3E56
F3E54:  MOVS            R1, #4
F3E56:  LDR             R2, [R0]
F3E58:  LDR.W           R1, [R2,R1,LSL#2]
F3E5C:  BLX             R1
F3E5E:  LDR             R0, [R5,#0x10]
F3E60:  CBZ             R0, loc_F3E6E
F3E62:  CMP             R5, R0
F3E64:  BEQ             loc_F3E74
F3E66:  STR             R0, [R4,#0x10]
F3E68:  MOVS            R0, #0
F3E6A:  STR             R0, [R5,#0x10]
F3E6C:  B               loc_F3E80
F3E6E:  MOVS            R0, #0
F3E70:  STR             R0, [R4,#0x10]
F3E72:  B               loc_F3E80
F3E74:  STR             R4, [R4,#0x10]
F3E76:  LDR             R0, [R5,#0x10]
F3E78:  LDR             R1, [R0]
F3E7A:  LDR             R2, [R1,#0xC]
F3E7C:  MOV             R1, R4
F3E7E:  BLX             R2
F3E80:  MOV             R0, R4
F3E82:  POP             {R4,R5,R7,PC}
