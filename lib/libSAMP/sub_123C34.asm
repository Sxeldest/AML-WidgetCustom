; =========================================================
; Game Engine Function: sub_123C34
; Address            : 0x123C34 - 0x123C60
; =========================================================

123C34:  PUSH            {R4,R6,R7,LR}
123C36:  ADD             R7, SP, #8
123C38:  MOV             R4, R0
123C3A:  LDR             R0, [R1,#0x10]
123C3C:  CBZ             R0, loc_123C4A
123C3E:  CMP             R1, R0
123C40:  BEQ             loc_123C50
123C42:  LDR             R1, [R0]
123C44:  LDR             R1, [R1,#8]
123C46:  BLX             R1
123C48:  B               loc_123C4C
123C4A:  MOVS            R0, #0
123C4C:  STR             R0, [R4,#0x10]
123C4E:  B               loc_123C5C
123C50:  STR             R4, [R4,#0x10]
123C52:  LDR             R0, [R1,#0x10]
123C54:  LDR             R1, [R0]
123C56:  LDR             R2, [R1,#0xC]
123C58:  MOV             R1, R4
123C5A:  BLX             R2
123C5C:  MOV             R0, R4
123C5E:  POP             {R4,R6,R7,PC}
