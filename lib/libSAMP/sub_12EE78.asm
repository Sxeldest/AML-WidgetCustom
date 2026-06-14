; =========================================================
; Game Engine Function: sub_12EE78
; Address            : 0x12EE78 - 0x12EEA8
; =========================================================

12EE78:  PUSH            {R4,R6,R7,LR}
12EE7A:  ADD             R7, SP, #8
12EE7C:  MOV             R4, R0
12EE7E:  LDR             R0, [R0,#0x6C]
12EE80:  LDR             R0, [R0,#0x54]
12EE82:  BL              sub_13D450
12EE86:  LDR             R0, [R4,#0x6C]
12EE88:  LDR             R1, [R0]
12EE8A:  LDR             R1, [R1,#8]
12EE8C:  BLX             R1
12EE8E:  LDRB.W          R0, [R4,#0x50]
12EE92:  CMP             R0, #1
12EE94:  BEQ             loc_12EEA0
12EE96:  LDR             R0, [R4]
12EE98:  MOVS            R1, #1
12EE9A:  LDR             R2, [R0,#0x24]
12EE9C:  MOV             R0, R4
12EE9E:  BLX             R2
12EEA0:  MOVS            R0, #1
12EEA2:  STRB.W          R0, [R4,#0x50]
12EEA6:  POP             {R4,R6,R7,PC}
