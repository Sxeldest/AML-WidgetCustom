; =========================================================
; Game Engine Function: sub_135A16
; Address            : 0x135A16 - 0x135AB6
; =========================================================

135A16:  PUSH            {R4-R7,LR}
135A18:  ADD             R7, SP, #0xC
135A1A:  PUSH.W          {R11}
135A1E:  SUB             SP, SP, #0x10
135A20:  CMP             R1, R0
135A22:  BEQ             loc_135AAE
135A24:  MOV             R5, R0
135A26:  LDR             R0, [R0,#0x10]
135A28:  MOV             R4, R1
135A2A:  CMP             R0, R5
135A2C:  BEQ             loc_135A3A
135A2E:  LDR             R1, [R4,#0x10]
135A30:  CMP             R4, R1
135A32:  BEQ             loc_135A56
135A34:  STR             R1, [R5,#0x10]
135A36:  STR             R0, [R4,#0x10]
135A38:  B               loc_135AAE
135A3A:  LDR             R1, [R4,#0x10]
135A3C:  CMP             R1, R4
135A3E:  BEQ             loc_135A70
135A40:  LDR             R1, [R0]
135A42:  LDR             R2, [R1,#0xC]
135A44:  MOV             R1, R4
135A46:  BLX             R2
135A48:  LDR             R0, [R5,#0x10]
135A4A:  LDR             R1, [R0]
135A4C:  LDR             R1, [R1,#0x10]
135A4E:  BLX             R1
135A50:  LDR             R0, [R4,#0x10]
135A52:  STR             R0, [R5,#0x10]
135A54:  B               loc_135AAC
135A56:  LDR             R0, [R1]
135A58:  LDR             R2, [R0,#0xC]
135A5A:  MOV             R0, R1
135A5C:  MOV             R1, R5
135A5E:  BLX             R2
135A60:  LDR             R0, [R4,#0x10]
135A62:  LDR             R1, [R0]
135A64:  LDR             R1, [R1,#0x10]
135A66:  BLX             R1
135A68:  LDR             R0, [R5,#0x10]
135A6A:  STR             R0, [R4,#0x10]
135A6C:  STR             R5, [R5,#0x10]
135A6E:  B               loc_135AAE
135A70:  LDR             R1, [R0]
135A72:  LDR             R2, [R1,#0xC]
135A74:  MOV             R1, SP
135A76:  BLX             R2
135A78:  LDR             R0, [R5,#0x10]
135A7A:  LDR             R1, [R0]
135A7C:  LDR             R1, [R1,#0x10]
135A7E:  BLX             R1
135A80:  MOVS            R6, #0
135A82:  STR             R6, [R5,#0x10]
135A84:  LDR             R0, [R4,#0x10]
135A86:  LDR             R1, [R0]
135A88:  LDR             R2, [R1,#0xC]
135A8A:  MOV             R1, R5
135A8C:  BLX             R2
135A8E:  LDR             R0, [R4,#0x10]
135A90:  LDR             R1, [R0]
135A92:  LDR             R1, [R1,#0x10]
135A94:  BLX             R1
135A96:  LDR             R0, [SP,#0x20+var_20]
135A98:  STR             R6, [R4,#0x10]
135A9A:  STR             R5, [R5,#0x10]
135A9C:  LDR             R2, [R0,#0xC]
135A9E:  MOV             R0, SP
135AA0:  MOV             R1, R4
135AA2:  BLX             R2
135AA4:  LDR             R0, [SP,#0x20+var_20]
135AA6:  LDR             R1, [R0,#0x10]
135AA8:  MOV             R0, SP
135AAA:  BLX             R1
135AAC:  STR             R4, [R4,#0x10]
135AAE:  ADD             SP, SP, #0x10
135AB0:  POP.W           {R11}
135AB4:  POP             {R4-R7,PC}
