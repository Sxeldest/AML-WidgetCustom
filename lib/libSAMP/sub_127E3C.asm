; =========================================================
; Game Engine Function: sub_127E3C
; Address            : 0x127E3C - 0x127E68
; =========================================================

127E3C:  PUSH            {R4,R6,R7,LR}
127E3E:  ADD             R7, SP, #8
127E40:  MOV             R4, R0
127E42:  LDR             R0, [R1,#0x10]
127E44:  CBZ             R0, loc_127E52
127E46:  CMP             R1, R0
127E48:  BEQ             loc_127E58
127E4A:  LDR             R1, [R0]
127E4C:  LDR             R1, [R1,#8]
127E4E:  BLX             R1
127E50:  B               loc_127E54
127E52:  MOVS            R0, #0
127E54:  STR             R0, [R4,#0x10]
127E56:  B               loc_127E64
127E58:  STR             R4, [R4,#0x10]
127E5A:  LDR             R0, [R1,#0x10]
127E5C:  LDR             R1, [R0]
127E5E:  LDR             R2, [R1,#0xC]
127E60:  MOV             R1, R4
127E62:  BLX             R2
127E64:  MOV             R0, R4
127E66:  POP             {R4,R6,R7,PC}
