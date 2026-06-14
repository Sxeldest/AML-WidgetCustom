; =========================================================
; Game Engine Function: inflateSync
; Address            : 0x20EDA8 - 0x20EE7E
; =========================================================

20EDA8:  PUSH            {R4-R7,LR}
20EDAA:  ADD             R7, SP, #0xC
20EDAC:  PUSH.W          {R11}
20EDB0:  MOV             R4, R0
20EDB2:  CMP             R4, #0
20EDB4:  ITT NE
20EDB6:  LDRNE           R0, [R4,#0x1C]
20EDB8:  CMPNE           R0, #0
20EDBA:  BEQ             loc_20EE0E
20EDBC:  LDR             R1, [R0]
20EDBE:  CMP             R1, #0xD
20EDC0:  BEQ             loc_20EDCC
20EDC2:  MOVS            R1, #0xD
20EDC4:  STR             R1, [R0]
20EDC6:  MOVS            R1, #0
20EDC8:  LDR             R0, [R4,#0x1C]
20EDCA:  STR             R1, [R0,#4]
20EDCC:  LDR             R3, [R4,#4]
20EDCE:  CBZ             R3, loc_20EE18
20EDD0:  LDR.W           R12, [R4,#0x1C]
20EDD4:  LDR.W           LR, [R4]
20EDD8:  LDR.W           R2, [R12,#4]
20EDDC:  CMP             R2, #3
20EDDE:  BHI             loc_20EE22
20EDE0:  ADR             R0, dword_20EE80
20EDE2:  MOV             R1, LR
20EDE4:  LDRB            R5, [R1]
20EDE6:  LDRB            R6, [R0,R2]
20EDE8:  CMP             R5, R6
20EDEA:  BNE             loc_20EDF0
20EDEC:  ADDS            R2, #1
20EDEE:  B               loc_20EDFE
20EDF0:  CMP             R5, #0
20EDF2:  MOV.W           R5, #0
20EDF6:  IT EQ
20EDF8:  RSBEQ.W         R5, R2, #4
20EDFC:  MOV             R2, R5
20EDFE:  SUBS            R5, R3, #1
20EE00:  ADDS            R1, #1
20EE02:  CMP             R2, #3
20EE04:  BHI             loc_20EE26
20EE06:  CMP             R3, #1
20EE08:  MOV             R3, R5
20EE0A:  BNE             loc_20EDE4
20EE0C:  B               loc_20EE26
20EE0E:  MOV             R0, #0xFFFFFFFE
20EE12:  POP.W           {R11}
20EE16:  POP             {R4-R7,PC}
20EE18:  MOV             R0, #0xFFFFFFFB
20EE1C:  POP.W           {R11}
20EE20:  POP             {R4-R7,PC}
20EE22:  MOV             R1, LR
20EE24:  MOV             R5, R3
20EE26:  STRD.W          R1, R5, [R4]
20EE2A:  CMP             R2, #4
20EE2C:  LDR             R0, [R4,#8]
20EE2E:  SUB.W           R1, R1, LR
20EE32:  ADD             R0, R1
20EE34:  STR             R0, [R4,#8]
20EE36:  STR.W           R2, [R12,#4]
20EE3A:  BNE             loc_20EE74
20EE3C:  LDR             R1, [R4,#0x1C]
20EE3E:  MOVS            R0, #0
20EE40:  LDR             R5, [R4,#8]
20EE42:  LDR             R6, [R4,#0x14]
20EE44:  CBZ             R1, loc_20EE64
20EE46:  STR             R0, [R4,#8]
20EE48:  MOVS            R2, #0
20EE4A:  STRD.W          R0, R0, [R4,#0x14]
20EE4E:  LDR             R0, [R1,#0xC]
20EE50:  CMP             R0, #0
20EE52:  IT NE
20EE54:  MOVNE           R0, #7
20EE56:  STR             R0, [R1]
20EE58:  MOV             R1, R4
20EE5A:  LDR             R0, [R4,#0x1C]
20EE5C:  LDR             R0, [R0,#0x14]
20EE5E:  BLX             j_inflate_blocks_reset
20EE62:  LDR             R0, [R4,#0x1C]
20EE64:  MOVS            R1, #7
20EE66:  STR             R6, [R4,#0x14]
20EE68:  STR             R5, [R4,#8]
20EE6A:  STR             R1, [R0]
20EE6C:  MOVS            R0, #0
20EE6E:  POP.W           {R11}
20EE72:  POP             {R4-R7,PC}
20EE74:  MOV             R0, #0xFFFFFFFD
20EE78:  POP.W           {R11}
20EE7C:  POP             {R4-R7,PC}
