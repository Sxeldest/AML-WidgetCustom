; =========================================================
; Game Engine Function: sub_120E10
; Address            : 0x120E10 - 0x120EB0
; =========================================================

120E10:  PUSH            {R4-R7,LR}
120E12:  ADD             R7, SP, #0xC
120E14:  PUSH.W          {R11}
120E18:  SUB             SP, SP, #0x10
120E1A:  CMP             R1, R0
120E1C:  BEQ             loc_120EA8
120E1E:  MOV             R5, R0
120E20:  LDR             R0, [R0,#0x10]
120E22:  MOV             R4, R1
120E24:  CMP             R0, R5
120E26:  BEQ             loc_120E34
120E28:  LDR             R1, [R4,#0x10]
120E2A:  CMP             R4, R1
120E2C:  BEQ             loc_120E50
120E2E:  STR             R1, [R5,#0x10]
120E30:  STR             R0, [R4,#0x10]
120E32:  B               loc_120EA8
120E34:  LDR             R1, [R4,#0x10]
120E36:  CMP             R1, R4
120E38:  BEQ             loc_120E6A
120E3A:  LDR             R1, [R0]
120E3C:  LDR             R2, [R1,#0xC]
120E3E:  MOV             R1, R4
120E40:  BLX             R2
120E42:  LDR             R0, [R5,#0x10]
120E44:  LDR             R1, [R0]
120E46:  LDR             R1, [R1,#0x10]
120E48:  BLX             R1
120E4A:  LDR             R0, [R4,#0x10]
120E4C:  STR             R0, [R5,#0x10]
120E4E:  B               loc_120EA6
120E50:  LDR             R0, [R1]
120E52:  LDR             R2, [R0,#0xC]
120E54:  MOV             R0, R1
120E56:  MOV             R1, R5
120E58:  BLX             R2
120E5A:  LDR             R0, [R4,#0x10]
120E5C:  LDR             R1, [R0]
120E5E:  LDR             R1, [R1,#0x10]
120E60:  BLX             R1
120E62:  LDR             R0, [R5,#0x10]
120E64:  STR             R0, [R4,#0x10]
120E66:  STR             R5, [R5,#0x10]
120E68:  B               loc_120EA8
120E6A:  LDR             R1, [R0]
120E6C:  LDR             R2, [R1,#0xC]
120E6E:  MOV             R1, SP
120E70:  BLX             R2
120E72:  LDR             R0, [R5,#0x10]
120E74:  LDR             R1, [R0]
120E76:  LDR             R1, [R1,#0x10]
120E78:  BLX             R1
120E7A:  MOVS            R6, #0
120E7C:  STR             R6, [R5,#0x10]
120E7E:  LDR             R0, [R4,#0x10]
120E80:  LDR             R1, [R0]
120E82:  LDR             R2, [R1,#0xC]
120E84:  MOV             R1, R5
120E86:  BLX             R2
120E88:  LDR             R0, [R4,#0x10]
120E8A:  LDR             R1, [R0]
120E8C:  LDR             R1, [R1,#0x10]
120E8E:  BLX             R1
120E90:  LDR             R0, [SP,#0x20+var_20]
120E92:  STR             R6, [R4,#0x10]
120E94:  STR             R5, [R5,#0x10]
120E96:  LDR             R2, [R0,#0xC]
120E98:  MOV             R0, SP
120E9A:  MOV             R1, R4
120E9C:  BLX             R2
120E9E:  LDR             R0, [SP,#0x20+var_20]
120EA0:  LDR             R1, [R0,#0x10]
120EA2:  MOV             R0, SP
120EA4:  BLX             R1
120EA6:  STR             R4, [R4,#0x10]
120EA8:  ADD             SP, SP, #0x10
120EAA:  POP.W           {R11}
120EAE:  POP             {R4-R7,PC}
