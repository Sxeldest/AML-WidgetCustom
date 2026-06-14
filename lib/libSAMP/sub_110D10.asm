; =========================================================
; Game Engine Function: sub_110D10
; Address            : 0x110D10 - 0x110DB0
; =========================================================

110D10:  PUSH            {R4-R7,LR}
110D12:  ADD             R7, SP, #0xC
110D14:  PUSH.W          {R11}
110D18:  SUB             SP, SP, #0x10
110D1A:  CMP             R1, R0
110D1C:  BEQ             loc_110DA8
110D1E:  MOV             R5, R0
110D20:  LDR             R0, [R0,#0x10]
110D22:  MOV             R4, R1
110D24:  CMP             R0, R5
110D26:  BEQ             loc_110D34
110D28:  LDR             R1, [R4,#0x10]
110D2A:  CMP             R4, R1
110D2C:  BEQ             loc_110D50
110D2E:  STR             R1, [R5,#0x10]
110D30:  STR             R0, [R4,#0x10]
110D32:  B               loc_110DA8
110D34:  LDR             R1, [R4,#0x10]
110D36:  CMP             R1, R4
110D38:  BEQ             loc_110D6A
110D3A:  LDR             R1, [R0]
110D3C:  LDR             R2, [R1,#0xC]
110D3E:  MOV             R1, R4
110D40:  BLX             R2
110D42:  LDR             R0, [R5,#0x10]
110D44:  LDR             R1, [R0]
110D46:  LDR             R1, [R1,#0x10]
110D48:  BLX             R1
110D4A:  LDR             R0, [R4,#0x10]
110D4C:  STR             R0, [R5,#0x10]
110D4E:  B               loc_110DA6
110D50:  LDR             R0, [R1]
110D52:  LDR             R2, [R0,#0xC]
110D54:  MOV             R0, R1
110D56:  MOV             R1, R5
110D58:  BLX             R2
110D5A:  LDR             R0, [R4,#0x10]
110D5C:  LDR             R1, [R0]
110D5E:  LDR             R1, [R1,#0x10]
110D60:  BLX             R1
110D62:  LDR             R0, [R5,#0x10]
110D64:  STR             R0, [R4,#0x10]
110D66:  STR             R5, [R5,#0x10]
110D68:  B               loc_110DA8
110D6A:  LDR             R1, [R0]
110D6C:  LDR             R2, [R1,#0xC]
110D6E:  MOV             R1, SP
110D70:  BLX             R2
110D72:  LDR             R0, [R5,#0x10]
110D74:  LDR             R1, [R0]
110D76:  LDR             R1, [R1,#0x10]
110D78:  BLX             R1
110D7A:  MOVS            R6, #0
110D7C:  STR             R6, [R5,#0x10]
110D7E:  LDR             R0, [R4,#0x10]
110D80:  LDR             R1, [R0]
110D82:  LDR             R2, [R1,#0xC]
110D84:  MOV             R1, R5
110D86:  BLX             R2
110D88:  LDR             R0, [R4,#0x10]
110D8A:  LDR             R1, [R0]
110D8C:  LDR             R1, [R1,#0x10]
110D8E:  BLX             R1
110D90:  LDR             R0, [SP,#0x20+var_20]
110D92:  STR             R6, [R4,#0x10]
110D94:  STR             R5, [R5,#0x10]
110D96:  LDR             R2, [R0,#0xC]
110D98:  MOV             R0, SP
110D9A:  MOV             R1, R4
110D9C:  BLX             R2
110D9E:  LDR             R0, [SP,#0x20+var_20]
110DA0:  LDR             R1, [R0,#0x10]
110DA2:  MOV             R0, SP
110DA4:  BLX             R1
110DA6:  STR             R4, [R4,#0x10]
110DA8:  ADD             SP, SP, #0x10
110DAA:  POP.W           {R11}
110DAE:  POP             {R4-R7,PC}
