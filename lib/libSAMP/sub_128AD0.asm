; =========================================================
; Game Engine Function: sub_128AD0
; Address            : 0x128AD0 - 0x128B70
; =========================================================

128AD0:  PUSH            {R4-R7,LR}
128AD2:  ADD             R7, SP, #0xC
128AD4:  PUSH.W          {R11}
128AD8:  SUB             SP, SP, #0x10
128ADA:  CMP             R1, R0
128ADC:  BEQ             loc_128B68
128ADE:  MOV             R5, R0
128AE0:  LDR             R0, [R0,#0x10]
128AE2:  MOV             R4, R1
128AE4:  CMP             R0, R5
128AE6:  BEQ             loc_128AF4
128AE8:  LDR             R1, [R4,#0x10]
128AEA:  CMP             R4, R1
128AEC:  BEQ             loc_128B10
128AEE:  STR             R1, [R5,#0x10]
128AF0:  STR             R0, [R4,#0x10]
128AF2:  B               loc_128B68
128AF4:  LDR             R1, [R4,#0x10]
128AF6:  CMP             R1, R4
128AF8:  BEQ             loc_128B2A
128AFA:  LDR             R1, [R0]
128AFC:  LDR             R2, [R1,#0xC]
128AFE:  MOV             R1, R4
128B00:  BLX             R2
128B02:  LDR             R0, [R5,#0x10]
128B04:  LDR             R1, [R0]
128B06:  LDR             R1, [R1,#0x10]
128B08:  BLX             R1
128B0A:  LDR             R0, [R4,#0x10]
128B0C:  STR             R0, [R5,#0x10]
128B0E:  B               loc_128B66
128B10:  LDR             R0, [R1]
128B12:  LDR             R2, [R0,#0xC]
128B14:  MOV             R0, R1
128B16:  MOV             R1, R5
128B18:  BLX             R2
128B1A:  LDR             R0, [R4,#0x10]
128B1C:  LDR             R1, [R0]
128B1E:  LDR             R1, [R1,#0x10]
128B20:  BLX             R1
128B22:  LDR             R0, [R5,#0x10]
128B24:  STR             R0, [R4,#0x10]
128B26:  STR             R5, [R5,#0x10]
128B28:  B               loc_128B68
128B2A:  LDR             R1, [R0]
128B2C:  LDR             R2, [R1,#0xC]
128B2E:  MOV             R1, SP
128B30:  BLX             R2
128B32:  LDR             R0, [R5,#0x10]
128B34:  LDR             R1, [R0]
128B36:  LDR             R1, [R1,#0x10]
128B38:  BLX             R1
128B3A:  MOVS            R6, #0
128B3C:  STR             R6, [R5,#0x10]
128B3E:  LDR             R0, [R4,#0x10]
128B40:  LDR             R1, [R0]
128B42:  LDR             R2, [R1,#0xC]
128B44:  MOV             R1, R5
128B46:  BLX             R2
128B48:  LDR             R0, [R4,#0x10]
128B4A:  LDR             R1, [R0]
128B4C:  LDR             R1, [R1,#0x10]
128B4E:  BLX             R1
128B50:  LDR             R0, [SP,#0x20+var_20]
128B52:  STR             R6, [R4,#0x10]
128B54:  STR             R5, [R5,#0x10]
128B56:  LDR             R2, [R0,#0xC]
128B58:  MOV             R0, SP
128B5A:  MOV             R1, R4
128B5C:  BLX             R2
128B5E:  LDR             R0, [SP,#0x20+var_20]
128B60:  LDR             R1, [R0,#0x10]
128B62:  MOV             R0, SP
128B64:  BLX             R1
128B66:  STR             R4, [R4,#0x10]
128B68:  ADD             SP, SP, #0x10
128B6A:  POP.W           {R11}
128B6E:  POP             {R4-R7,PC}
