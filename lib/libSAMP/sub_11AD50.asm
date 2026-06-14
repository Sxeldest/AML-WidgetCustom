; =========================================================
; Game Engine Function: sub_11AD50
; Address            : 0x11AD50 - 0x11AD7C
; =========================================================

11AD50:  PUSH            {R4,R6,R7,LR}
11AD52:  ADD             R7, SP, #8
11AD54:  MOV             R4, R0
11AD56:  LDR             R0, [R1,#0x10]
11AD58:  CBZ             R0, loc_11AD66
11AD5A:  CMP             R1, R0
11AD5C:  BEQ             loc_11AD6C
11AD5E:  LDR             R1, [R0]
11AD60:  LDR             R1, [R1,#8]
11AD62:  BLX             R1
11AD64:  B               loc_11AD68
11AD66:  MOVS            R0, #0
11AD68:  STR             R0, [R4,#0x10]
11AD6A:  B               loc_11AD78
11AD6C:  STR             R4, [R4,#0x10]
11AD6E:  LDR             R0, [R1,#0x10]
11AD70:  LDR             R1, [R0]
11AD72:  LDR             R2, [R1,#0xC]
11AD74:  MOV             R1, R4
11AD76:  BLX             R2
11AD78:  MOV             R0, R4
11AD7A:  POP             {R4,R6,R7,PC}
