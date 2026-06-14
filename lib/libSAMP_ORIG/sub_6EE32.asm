; =========================================================
; Game Engine Function: sub_6EE32
; Address            : 0x6EE32 - 0x6EF6E
; =========================================================

6EE32:  PUSH            {R4-R7,LR}
6EE34:  ADD             R7, SP, #0xC
6EE36:  PUSH.W          {R8-R11}
6EE3A:  SUB             SP, SP, #4
6EE3C:  MOVW            R8, #0x13
6EE40:  MOV.W           R11, #0
6EE44:  MOV             R9, R3
6EE46:  MOV             R6, R2
6EE48:  MOV             R10, R1
6EE4A:  MOVS            R4, #1
6EE4C:  MOVT            R8, #0x80
6EE50:  STR             R0, [SP,#0x20+var_20]
6EE52:  STRD.W          R11, R11, [R1,#0x18]
6EE56:  B               loc_6EE5C
6EE58:  ADDS            R0, #1
6EE5A:  STR             R0, [R6,#0x10]
6EE5C:  LDR             R0, [R6,#0x10]
6EE5E:  LDRB            R1, [R0]
6EE60:  SUB.W           R2, R1, #9
6EE64:  CMP             R2, #0x17
6EE66:  BHI             loc_6EEB6
6EE68:  LSL.W           R2, R4, R2
6EE6C:  TST.W           R2, R8
6EE70:  BEQ             loc_6EEB6
6EE72:  LDR             R1, [R6,#0xC]
6EE74:  CMP             R0, R1
6EE76:  BCC             loc_6EE58
6EE78:  LDRB            R0, [R6,#0x1C]
6EE7A:  CMP             R0, #0
6EE7C:  BNE             loc_6EE5C
6EE7E:  LDRD.W          R1, R5, [R6,#0x14]
6EE82:  LDRD.W          R3, R0, [R6]; stream
6EE86:  LDR             R2, [R6,#8]; n
6EE88:  ADD             R1, R5
6EE8A:  STR             R1, [R6,#0x18]
6EE8C:  MOVS            R1, #1; size
6EE8E:  BLX             fread
6EE92:  LDRD.W          R2, R3, [R6,#4]
6EE96:  CMP             R0, R3
6EE98:  STR             R0, [R6,#0x14]
6EE9A:  ADD.W           R1, R2, R0
6EE9E:  SUB.W           R5, R1, #1
6EEA2:  STRD.W          R5, R2, [R6,#0xC]
6EEA6:  BCS             loc_6EE5C
6EEA8:  STRB.W          R11, [R1]
6EEAC:  LDR             R0, [R6,#0xC]
6EEAE:  STRB            R4, [R6,#0x1C]
6EEB0:  ADDS            R0, #1
6EEB2:  STR             R0, [R6,#0xC]
6EEB4:  B               loc_6EE5C
6EEB6:  LDR.W           R2, [R10,#0x18]
6EEBA:  CMP             R2, #0
6EEBC:  BNE             loc_6EF40
6EEBE:  CMP             R1, #0
6EEC0:  BEQ             loc_6EF5A
6EEC2:  MOV             R0, R10
6EEC4:  MOV             R1, R6
6EEC6:  MOV             R2, R9
6EEC8:  BL              sub_6EF94
6EECC:  LDR.W           R0, [R10,#0x18]
6EED0:  CBNZ            R0, loc_6EF40
6EED2:  MOVS            R4, #1
6EED4:  MOV.W           R9, #0
6EED8:  B               loc_6EEDE
6EEDA:  ADDS            R0, #1
6EEDC:  STR             R0, [R6,#0x10]
6EEDE:  LDR             R0, [R6,#0x10]
6EEE0:  LDRB            R1, [R0]
6EEE2:  SUB.W           R2, R1, #9
6EEE6:  CMP             R2, #0x17
6EEE8:  BHI             loc_6EF38
6EEEA:  LSL.W           R2, R4, R2
6EEEE:  TST.W           R2, R8
6EEF2:  BEQ             loc_6EF38
6EEF4:  LDR             R1, [R6,#0xC]
6EEF6:  CMP             R0, R1
6EEF8:  BCC             loc_6EEDA
6EEFA:  LDRB            R0, [R6,#0x1C]
6EEFC:  CMP             R0, #0
6EEFE:  BNE             loc_6EEDE
6EF00:  LDRD.W          R1, R5, [R6,#0x14]
6EF04:  LDRD.W          R3, R0, [R6]; stream
6EF08:  LDR             R2, [R6,#8]; n
6EF0A:  ADD             R1, R5
6EF0C:  STR             R1, [R6,#0x18]
6EF0E:  MOVS            R1, #1; size
6EF10:  BLX             fread
6EF14:  LDRD.W          R2, R3, [R6,#4]
6EF18:  CMP             R0, R3
6EF1A:  STR             R0, [R6,#0x14]
6EF1C:  ADD.W           R1, R2, R0
6EF20:  SUB.W           R5, R1, #1
6EF24:  STRD.W          R5, R2, [R6,#0xC]
6EF28:  BCS             loc_6EEDE
6EF2A:  STRB.W          R9, [R1]
6EF2E:  LDR             R0, [R6,#0xC]
6EF30:  STRB            R4, [R6,#0x1C]
6EF32:  ADDS            R0, #1
6EF34:  STR             R0, [R6,#0xC]
6EF36:  B               loc_6EEDE
6EF38:  LDR.W           R2, [R10,#0x18]
6EF3C:  CBNZ            R2, loc_6EF40
6EF3E:  CBNZ            R1, loc_6EF5E
6EF40:  LDR             R3, [SP,#0x20+var_20]
6EF42:  LDRD.W          R1, R2, [R10,#0x18]
6EF46:  LDR.W           R0, [R10,#8]
6EF4A:  STRD.W          R1, R2, [R3]
6EF4E:  STR.W           R0, [R10,#0xC]
6EF52:  ADD             SP, SP, #4
6EF54:  POP.W           {R8-R11}
6EF58:  POP             {R4-R7,PC}
6EF5A:  MOVS            R1, #1
6EF5C:  B               loc_6EF60
6EF5E:  MOVS            R1, #2
6EF60:  LDR             R3, [R6,#0x18]
6EF62:  LDR             R2, [R6,#4]
6EF64:  ADD             R0, R3
6EF66:  SUBS            R0, R0, R2
6EF68:  STRD.W          R1, R0, [R10,#0x18]
6EF6C:  B               loc_6EF40
