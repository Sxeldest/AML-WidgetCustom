; =========================================================
; Game Engine Function: sub_F1F28
; Address            : 0xF1F28 - 0xF20E8
; =========================================================

F1F28:  PUSH            {R4-R7,LR}
F1F2A:  ADD             R7, SP, #0xC
F1F2C:  PUSH.W          {R8-R11}
F1F30:  LDR.W           R10, [R7,#arg_4]
F1F34:  STR             R0, [R2]
F1F36:  STR.W           R3, [R10]
F1F3A:  LDRB            R3, [R7,#arg_C]
F1F3C:  LSLS            R3, R3, #0x1D
F1F3E:  BPL             loc_F1F56
F1F40:  LDR             R3, [R2]
F1F42:  SUBS            R4, R1, R3
F1F44:  CMP             R4, #3
F1F46:  BLT             loc_F1F56
F1F48:  LDRB            R4, [R3]
F1F4A:  CMP             R4, #0xEF
F1F4C:  ITT EQ
F1F4E:  LDRBEQ          R4, [R3,#1]
F1F50:  CMPEQ           R4, #0xBB
F1F52:  BEQ.W           loc_F20D8
F1F56:  LDR.W           R8, [R7,#arg_8]
F1F5A:  MOV.W           R12, #0xC0
F1F5E:  LDR.W           LR, [R7,#arg_0]
F1F62:  B               loc_F20B6
F1F64:  LDRB            R5, [R4]
F1F66:  CMP             R5, R8
F1F68:  BHI.W           loc_F20D4
F1F6C:  SXTB            R3, R5
F1F6E:  CMP             R3, #0
F1F70:  BMI             loc_F1F78
F1F72:  STR             R5, [R6]
F1F74:  ADDS            R3, R4, #1
F1F76:  B               loc_F20AA
F1F78:  CMP             R5, #0xC2
F1F7A:  BCC.W           loc_F20D4
F1F7E:  CMP             R5, #0xDF
F1F80:  BHI             loc_F1FAE
F1F82:  SUBS            R3, R1, R4
F1F84:  CMP             R3, #2
F1F86:  BLT.W           loc_F20E4
F1F8A:  LDRB            R3, [R4,#1]
F1F8C:  AND.W           R0, R3, #0xC0
F1F90:  CMP             R0, #0x80
F1F92:  BNE.W           loc_F20D4
F1F96:  AND.W           R0, R5, #0x1F
F1F9A:  AND.W           R3, R3, #0x3F ; '?'
F1F9E:  ORR.W           R3, R3, R0,LSL#6
F1FA2:  CMP             R3, R8
F1FA4:  BHI.W           loc_F20D4
F1FA8:  STR             R3, [R6]
F1FAA:  ADDS            R3, R4, #2
F1FAC:  B               loc_F20AA
F1FAE:  CMP             R5, #0xEF
F1FB0:  BHI             loc_F1FD2
F1FB2:  SUBS            R0, R1, R4
F1FB4:  CMP             R0, #3
F1FB6:  BLT.W           loc_F20E4
F1FBA:  LDRB            R3, [R4,#1]
F1FBC:  CMP             R5, #0xED
F1FBE:  LDRB.W          R9, [R4,#2]
F1FC2:  BEQ             loc_F1FFC
F1FC4:  CMP             R5, #0xE0
F1FC6:  BNE             loc_F2002
F1FC8:  AND.W           R0, R3, #0xE0
F1FCC:  CMP             R0, #0xA0
F1FCE:  BEQ             loc_F200A
F1FD0:  B               loc_F20D4
F1FD2:  CMP             R5, #0xF4
F1FD4:  BHI             loc_F20D4
F1FD6:  SUBS            R0, R1, R4
F1FD8:  CMP             R0, #4
F1FDA:  BLT.W           loc_F20E4
F1FDE:  LDRB            R3, [R4,#1]
F1FE0:  CMP             R5, #0xF4
F1FE2:  LDRB.W          R9, [R4,#2]
F1FE6:  LDRB.W          R11, [R4,#3]
F1FEA:  BEQ             loc_F202E
F1FEC:  CMP             R5, #0xF0
F1FEE:  BNE             loc_F2034
F1FF0:  ADD.W           R0, R3, #0x70 ; 'p'
F1FF4:  UXTB            R0, R0
F1FF6:  CMP             R0, #0x30 ; '0'
F1FF8:  BCC             loc_F203C
F1FFA:  B               loc_F20D4
F1FFC:  AND.W           R0, R3, #0xE0
F2000:  B               loc_F2006
F2002:  AND.W           R0, R3, #0xC0
F2006:  CMP             R0, #0x80
F2008:  BNE             loc_F20D4
F200A:  AND.W           R0, R9, #0xC0
F200E:  CMP             R0, #0x80
F2010:  BNE             loc_F20D4
F2012:  AND.W           R0, R3, #0x3F ; '?'
F2016:  LSLS            R3, R5, #0xC
F2018:  UXTH            R3, R3
F201A:  ORR.W           R0, R3, R0,LSL#6
F201E:  AND.W           R3, R9, #0x3F ; '?'
F2022:  ADD             R3, R0
F2024:  CMP             R3, R8
F2026:  BHI             loc_F20D4
F2028:  STR             R3, [R6]
F202A:  ADDS            R3, R4, #3
F202C:  B               loc_F20AA
F202E:  AND.W           R0, R3, #0xF0
F2032:  B               loc_F2038
F2034:  AND.W           R0, R3, #0xC0
F2038:  CMP             R0, #0x80
F203A:  BNE             loc_F20D4
F203C:  AND.W           R0, R9, #0xC0
F2040:  CMP             R0, #0x80
F2042:  ITT EQ
F2044:  ANDEQ.W         R0, R11, #0xC0
F2048:  CMPEQ           R0, #0x80
F204A:  BNE             loc_F20D4
F204C:  SUB.W           R0, LR, R6
F2050:  CMP             R0, #8
F2052:  BLT             loc_F20E4
F2054:  AND.W           R5, R5, #7
F2058:  AND.W           R4, R9, #0x3F ; '?'
F205C:  LSLS            R0, R5, #0x12
F205E:  BFI.W           R0, R3, #0xC, #6
F2062:  ORR.W           R0, R0, R4,LSL#6
F2066:  AND.W           R4, R11, #0x3F ; '?'
F206A:  ADD             R0, R4
F206C:  CMP             R0, R8
F206E:  BHI             loc_F20D4
F2070:  MOV.W           R0, R9,LSL#6
F2074:  AND.W           R0, R0, #0x3C0
F2078:  ADD             R0, R4
F207A:  MOV             R4, R6
F207C:  ADD.W           R0, R0, #0xDC00
F2080:  STR.W           R0, [R4,#4]!
F2084:  AND.W           R0, R12, R3,LSL#2
F2088:  AND.W           R3, R3, #0xF
F208C:  ORR.W           R0, R0, R5,LSL#8
F2090:  STR.W           R4, [R10]
F2094:  ORR.W           R0, R0, R3,LSL#2
F2098:  UBFX.W          R3, R9, #4, #2
F209C:  ADD             R0, R3
F209E:  SUBS            R0, #0x40 ; '@'
F20A0:  ORR.W           R0, R0, #0xD800
F20A4:  STR             R0, [R6]
F20A6:  LDR             R0, [R2]
F20A8:  ADDS            R3, R0, #4
F20AA:  STR             R3, [R2]
F20AC:  LDR.W           R0, [R10]
F20B0:  ADDS            R0, #4
F20B2:  STR.W           R0, [R10]
F20B6:  LDR             R4, [R2]
F20B8:  CMP             R4, R1
F20BA:  ITT CC
F20BC:  LDRCC.W         R6, [R10]
F20C0:  CMPCC           R6, LR
F20C2:  BCC.W           loc_F1F64
F20C6:  MOVS            R0, #0
F20C8:  CMP             R4, R1
F20CA:  IT CC
F20CC:  MOVCC           R0, #1
F20CE:  POP.W           {R8-R11}
F20D2:  POP             {R4-R7,PC}
F20D4:  MOVS            R0, #2
F20D6:  B               loc_F20CE
F20D8:  LDRB            R4, [R3,#2]
F20DA:  CMP             R4, #0xBF
F20DC:  ITT EQ
F20DE:  ADDEQ           R3, #3
F20E0:  STREQ           R3, [R2]
F20E2:  B               loc_F1F56
F20E4:  MOVS            R0, #1
F20E6:  B               loc_F20CE
