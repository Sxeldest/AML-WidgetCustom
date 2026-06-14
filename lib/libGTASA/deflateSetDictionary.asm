; =========================================================
; Game Engine Function: deflateSetDictionary
; Address            : 0x20ADC0 - 0x20AE84
; =========================================================

20ADC0:  PUSH            {R4-R7,LR}
20ADC2:  ADD             R7, SP, #0xC
20ADC4:  PUSH.W          {R8,R9,R11}
20ADC8:  MOV             R6, R0
20ADCA:  MOV             R8, R2
20ADCC:  MOV             R5, R1
20ADCE:  MOV             R0, #0xFFFFFFFE
20ADD2:  CMP             R6, #0
20ADD4:  BEQ             loc_20AE74
20ADD6:  CMP             R5, #0
20ADD8:  ITT NE
20ADDA:  LDRNE           R4, [R6,#0x1C]
20ADDC:  CMPNE           R4, #0
20ADDE:  BEQ             loc_20AE74
20ADE0:  LDR             R0, [R4,#4]
20ADE2:  CMP             R0, #0x2A ; '*'
20ADE4:  BNE             loc_20AE7A
20ADE6:  LDR             R0, [R6,#0x30]
20ADE8:  MOV             R1, R5
20ADEA:  MOV             R2, R8
20ADEC:  BLX             j_adler32
20ADF0:  CMP.W           R8, #3
20ADF4:  STR             R0, [R6,#0x30]
20ADF6:  BCC             loc_20AE72
20ADF8:  LDR             R1, [R4,#0x24]
20ADFA:  LDR             R0, [R4,#0x30]; void *
20ADFC:  SUB.W           R1, R1, #0x106
20AE00:  SUBS.W          R2, R8, R1
20AE04:  ITT HI
20AE06:  ADDHI           R5, R2
20AE08:  MOVHI           R8, R1
20AE0A:  MOV             R1, R5; void *
20AE0C:  MOV             R2, R8; size_t
20AE0E:  BLX             memcpy_1
20AE12:  LDR             R3, [R4,#0x30]
20AE14:  SUB.W           R12, R8, #3
20AE18:  LDRD.W          LR, R9, [R4,#0x4C]
20AE1C:  STR.W           R8, [R4,#0x64]
20AE20:  STR.W           R8, [R4,#0x54]
20AE24:  LDRB            R0, [R3]
20AE26:  STR             R0, [R4,#0x40]
20AE28:  LDRB            R1, [R3,#1]
20AE2A:  LSL.W           R0, R0, R9
20AE2E:  EORS            R0, R1
20AE30:  MOVS            R1, #2
20AE32:  AND.W           R5, R0, LR
20AE36:  STR             R5, [R4,#0x40]
20AE38:  B               loc_20AE44
20AE3A:  LDR             R3, [R4,#0x30]
20AE3C:  ADDS            R1, #1
20AE3E:  LDR             R5, [R4,#0x40]
20AE40:  LDRD.W          LR, R9, [R4,#0x4C]
20AE44:  LDRB            R3, [R3,R1]
20AE46:  LSL.W           R5, R5, R9
20AE4A:  LDR             R0, [R4,#0x2C]
20AE4C:  EORS            R3, R5
20AE4E:  SUBS            R5, R1, #2
20AE50:  AND.W           R3, R3, LR
20AE54:  LDRD.W          R2, R6, [R4,#0x38]
20AE58:  STR             R3, [R4,#0x40]
20AE5A:  ANDS            R0, R5
20AE5C:  LDRH.W          R3, [R6,R3,LSL#1]
20AE60:  STRH.W          R3, [R2,R0,LSL#1]
20AE64:  LDRD.W          R0, R2, [R4,#0x3C]
20AE68:  STRH.W          R5, [R0,R2,LSL#1]
20AE6C:  SUBS            R0, R1, #1
20AE6E:  CMP             R0, R12
20AE70:  BLS             loc_20AE3A
20AE72:  MOVS            R0, #0
20AE74:  POP.W           {R8,R9,R11}
20AE78:  POP             {R4-R7,PC}
20AE7A:  MOV             R0, #0xFFFFFFFE
20AE7E:  POP.W           {R8,R9,R11}
20AE82:  POP             {R4-R7,PC}
