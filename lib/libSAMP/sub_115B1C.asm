; =========================================================
; Game Engine Function: sub_115B1C
; Address            : 0x115B1C - 0x115B48
; =========================================================

115B1C:  PUSH            {R4,R6,R7,LR}
115B1E:  ADD             R7, SP, #8
115B20:  MOV             R4, R0
115B22:  LDR             R0, [R1,#0x10]
115B24:  CBZ             R0, loc_115B32
115B26:  CMP             R1, R0
115B28:  BEQ             loc_115B38
115B2A:  LDR             R1, [R0]
115B2C:  LDR             R1, [R1,#8]
115B2E:  BLX             R1
115B30:  B               loc_115B34
115B32:  MOVS            R0, #0
115B34:  STR             R0, [R4,#0x10]
115B36:  B               loc_115B44
115B38:  STR             R4, [R4,#0x10]
115B3A:  LDR             R0, [R1,#0x10]
115B3C:  LDR             R1, [R0]
115B3E:  LDR             R2, [R1,#0xC]
115B40:  MOV             R1, R4
115B42:  BLX             R2
115B44:  MOV             R0, R4
115B46:  POP             {R4,R6,R7,PC}
