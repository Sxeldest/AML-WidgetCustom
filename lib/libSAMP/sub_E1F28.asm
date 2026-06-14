; =========================================================
; Game Engine Function: sub_E1F28
; Address            : 0xE1F28 - 0xE1FB6
; =========================================================

E1F28:  PUSH            {R4-R7,LR}
E1F2A:  ADD             R7, SP, #0xC
E1F2C:  PUSH.W          {R11}
E1F30:  SUB             SP, SP, #8
E1F32:  MOV             R4, R0
E1F34:  LDR             R0, [R0]
E1F36:  MOV             R5, R1
E1F38:  LDR             R1, [R0]
E1F3A:  CBZ             R1, loc_E1F5E
E1F3C:  LDR             R2, =(unk_91D45 - 0xE1F46)
E1F3E:  LDRD.W          R0, R3, [R5,#8]
E1F42:  ADD             R2, PC; unk_91D45
E1F44:  LDRB            R6, [R2,R1]
E1F46:  ADDS            R1, R0, #1
E1F48:  CMP             R3, R1
E1F4A:  BCS             loc_E1F58
E1F4C:  LDR             R0, [R5]
E1F4E:  LDR             R2, [R0]
E1F50:  MOV             R0, R5
E1F52:  BLX             R2
E1F54:  LDR             R0, [R5,#8]
E1F56:  ADDS            R1, R0, #1
E1F58:  LDR             R2, [R5,#4]
E1F5A:  STR             R1, [R5,#8]
E1F5C:  STRB            R6, [R2,R0]
E1F5E:  ADDS            R6, R4, #4
E1F60:  LDM             R6, {R0-R2,R6}
E1F62:  LDR             R3, [R2,#8]
E1F64:  LDR             R2, [R1]
E1F66:  LDR             R1, [R0]
E1F68:  MOV             R0, R5
E1F6A:  STR             R6, [SP,#0x18+var_18]
E1F6C:  BL              sub_E1FBC
E1F70:  MOV             R5, R0
E1F72:  LDR             R0, [R4,#0x14]
E1F74:  LDRB            R0, [R0,#6]
E1F76:  LSLS            R0, R0, #0x1C
E1F78:  BPL             loc_E1FAC
E1F7A:  LDRD.W          R0, R2, [R5,#8]
E1F7E:  LDR             R6, [R4,#0x18]
E1F80:  ADDS            R1, R0, #1
E1F82:  CMP             R2, R1
E1F84:  BCS             loc_E1F92
E1F86:  LDR             R0, [R5]
E1F88:  LDR             R2, [R0]
E1F8A:  MOV             R0, R5
E1F8C:  BLX             R2
E1F8E:  LDR             R0, [R5,#8]
E1F90:  ADDS            R1, R0, #1
E1F92:  LDR             R2, [R5,#4]
E1F94:  LDRB            R3, [R6]
E1F96:  STR             R1, [R5,#8]
E1F98:  STRB            R3, [R2,R0]
E1F9A:  LDR             R0, [R4,#0x1C]
E1F9C:  LDR             R1, [R0]
E1F9E:  CMP             R1, #1
E1FA0:  BLT             loc_E1FAC
E1FA2:  LDR             R2, [R4,#0x20]
E1FA4:  MOV             R0, R5
E1FA6:  BL              sub_DE834
E1FAA:  MOV             R5, R0
E1FAC:  MOV             R0, R5
E1FAE:  ADD             SP, SP, #8
E1FB0:  POP.W           {R11}
E1FB4:  POP             {R4-R7,PC}
