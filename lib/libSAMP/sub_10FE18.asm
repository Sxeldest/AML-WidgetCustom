; =========================================================
; Game Engine Function: sub_10FE18
; Address            : 0x10FE18 - 0x10FF1E
; =========================================================

10FE18:  PUSH            {R4-R7,LR}
10FE1A:  ADD             R7, SP, #0xC
10FE1C:  PUSH.W          {R8,R9,R11}
10FE20:  MOV             R4, R0
10FE22:  LDR             R0, =(byte_263370 - 0x10FE2A)
10FE24:  MOV             R5, R1
10FE26:  ADD             R0, PC; byte_263370
10FE28:  LDRB            R0, [R0]
10FE2A:  DMB.W           ISH
10FE2E:  LSLS            R0, R0, #0x1F
10FE30:  LDR             R0, =(off_23494C - 0x10FE38)
10FE32:  LDR             R3, =(dword_26336C - 0x10FE3A)
10FE34:  ADD             R0, PC; off_23494C
10FE36:  ADD             R3, PC; dword_26336C
10FE38:  MOV             R8, R0
10FE3A:  BEQ             loc_10FEC2
10FE3C:  LDR             R0, =(byte_263378 - 0x10FE42)
10FE3E:  ADD             R0, PC; byte_263378
10FE40:  LDRB            R0, [R0]
10FE42:  DMB.W           ISH
10FE46:  LDR             R6, =(dword_263374 - 0x10FE4C)
10FE48:  ADD             R6, PC; dword_263374
10FE4A:  LSLS            R0, R0, #0x1F
10FE4C:  BEQ             loc_10FEF0
10FE4E:  LDR             R0, [R3]
10FE50:  LDR             R1, [R6]
10FE52:  LDR             R0, [R0]
10FE54:  LDR             R2, [R1]
10FE56:  SUB.W           R1, R0, #0x1000
10FE5A:  SUBS            R2, R1, R2
10FE5C:  CMP             R2, R5
10FE5E:  BHI             loc_10FE74
10FE60:  LDR             R2, [R4,#4]
10FE62:  SUBS.W          R3, R2, #0xA
10FE66:  IT NE
10FE68:  ADDNE           R3, R2, #1
10FE6A:  STR             R3, [R4,#4]
10FE6C:  CMP             R2, #0
10FE6E:  IT NE
10FE70:  LSRNE           R1, R0, #1
10FE72:  MOV             R5, R1
10FE74:  LDR             R1, [R4]
10FE76:  MOV             R0, R5
10FE78:  BLX             R1
10FE7A:  LDR.W           R4, [R8]; dword_23DF24
10FE7E:  MOV             R1, #0x2CFDBD
10FE86:  LDR             R0, [R4]
10FE88:  ADD             R0, R1
10FE8A:  BLX             R0
10FE8C:  LDR             R0, [R4]
10FE8E:  MOV             R1, #0x455BB1
10FE96:  ADD             R0, R1
10FE98:  BLX             R0
10FE9A:  LDR             R0, [R4]
10FE9C:  MOV             R1, #0x5BDE71
10FEA4:  ADD             R0, R1
10FEA6:  BLX             R0
10FEA8:  MOVW            R1, #0x3D55
10FEAC:  LDR             R0, [R4]
10FEAE:  MOVT            R1, #0x3F ; '?'
10FEB2:  ADDS            R2, R0, R1
10FEB4:  MOVS            R0, #0
10FEB6:  MOVS            R1, #0
10FEB8:  POP.W           {R8,R9,R11}
10FEBC:  POP.W           {R4-R7,LR}
10FEC0:  BX              R2
10FEC2:  LDR             R0, =(byte_263370 - 0x10FECA)
10FEC4:  MOV             R6, R3
10FEC6:  ADD             R0, PC; byte_263370 ; __guard *
10FEC8:  BLX             j___cxa_guard_acquire
10FECC:  MOV             R3, R6
10FECE:  CMP             R0, #0
10FED0:  BEQ             loc_10FE3C
10FED2:  LDR.W           R1, [R8]; dword_23DF24
10FED6:  MOVW            R2, #0x5FA0
10FEDA:  LDR             R0, =(byte_263370 - 0x10FEE6)
10FEDC:  MOVT            R2, #0x68 ; 'h'
10FEE0:  LDR             R1, [R1]
10FEE2:  ADD             R0, PC; byte_263370 ; __guard *
10FEE4:  ADD             R1, R2
10FEE6:  STR             R1, [R3]
10FEE8:  BLX             j___cxa_guard_release
10FEEC:  MOV             R3, R6
10FEEE:  B               loc_10FE3C
10FEF0:  LDR             R0, =(byte_263378 - 0x10FEF8)
10FEF2:  MOV             R9, R3
10FEF4:  ADD             R0, PC; byte_263378 ; __guard *
10FEF6:  BLX             j___cxa_guard_acquire
10FEFA:  MOV             R3, R9
10FEFC:  CMP             R0, #0
10FEFE:  BEQ             loc_10FE4E
10FF00:  LDR.W           R1, [R8]; dword_23DF24
10FF04:  MOVW            R2, #0x2B74
10FF08:  LDR             R0, =(byte_263378 - 0x10FF14)
10FF0A:  MOVT            R2, #0x79 ; 'y'
10FF0E:  LDR             R1, [R1]
10FF10:  ADD             R0, PC; byte_263378 ; __guard *
10FF12:  ADD             R1, R2
10FF14:  STR             R1, [R6]
10FF16:  BLX             j___cxa_guard_release
10FF1A:  MOV             R3, R9
10FF1C:  B               loc_10FE4E
