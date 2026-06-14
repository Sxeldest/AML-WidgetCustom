; =========================================================
; Game Engine Function: sub_209E1C
; Address            : 0x209E1C - 0x209FDC
; =========================================================

209E1C:  PUSH            {R4-R7,LR}
209E1E:  ADD             R7, SP, #0xC
209E20:  PUSH.W          {R8-R11}
209E24:  LDR.W           R10, [R7,#arg_4]
209E28:  STR             R0, [R2]
209E2A:  STR.W           R3, [R10]
209E2E:  LDRB            R3, [R7,#arg_C]
209E30:  LSLS            R3, R3, #0x1D
209E32:  BPL             loc_209E4A
209E34:  LDR             R3, [R2]
209E36:  SUBS            R4, R1, R3
209E38:  CMP             R4, #3
209E3A:  BLT             loc_209E4A
209E3C:  LDRB            R4, [R3]
209E3E:  CMP             R4, #0xEF
209E40:  ITT EQ
209E42:  LDRBEQ          R4, [R3,#1]
209E44:  CMPEQ           R4, #0xBB
209E46:  BEQ.W           loc_209FCC
209E4A:  LDR.W           R8, [R7,#arg_8]
209E4E:  MOV.W           R12, #0xC0
209E52:  LDR.W           LR, [R7,#arg_0]
209E56:  B               loc_209FAA
209E58:  LDRB            R5, [R4]
209E5A:  CMP             R5, R8
209E5C:  BHI.W           loc_209FC8
209E60:  SXTB            R3, R5
209E62:  CMP             R3, #0
209E64:  BMI             loc_209E6C
209E66:  STR             R5, [R6]
209E68:  ADDS            R3, R4, #1
209E6A:  B               loc_209F9E
209E6C:  CMP             R5, #0xC2
209E6E:  BCC.W           loc_209FC8
209E72:  CMP             R5, #0xDF
209E74:  BHI             loc_209EA2
209E76:  SUBS            R3, R1, R4
209E78:  CMP             R3, #2
209E7A:  BLT.W           loc_209FD8
209E7E:  LDRB            R3, [R4,#1]
209E80:  AND.W           R0, R3, #0xC0
209E84:  CMP             R0, #0x80
209E86:  BNE.W           loc_209FC8
209E8A:  AND.W           R0, R5, #0x1F
209E8E:  AND.W           R3, R3, #0x3F ; '?'
209E92:  ORR.W           R3, R3, R0,LSL#6
209E96:  CMP             R3, R8
209E98:  BHI.W           loc_209FC8
209E9C:  STR             R3, [R6]
209E9E:  ADDS            R3, R4, #2
209EA0:  B               loc_209F9E
209EA2:  CMP             R5, #0xEF
209EA4:  BHI             loc_209EC6
209EA6:  SUBS            R0, R1, R4
209EA8:  CMP             R0, #3
209EAA:  BLT.W           loc_209FD8
209EAE:  LDRB            R3, [R4,#1]
209EB0:  CMP             R5, #0xED
209EB2:  LDRB.W          R9, [R4,#2]
209EB6:  BEQ             loc_209EF0
209EB8:  CMP             R5, #0xE0
209EBA:  BNE             loc_209EF6
209EBC:  AND.W           R0, R3, #0xE0
209EC0:  CMP             R0, #0xA0
209EC2:  BEQ             loc_209EFE
209EC4:  B               loc_209FC8
209EC6:  CMP             R5, #0xF4
209EC8:  BHI             loc_209FC8
209ECA:  SUBS            R0, R1, R4
209ECC:  CMP             R0, #4
209ECE:  BLT.W           loc_209FD8
209ED2:  LDRB            R3, [R4,#1]
209ED4:  CMP             R5, #0xF4
209ED6:  LDRB.W          R9, [R4,#2]
209EDA:  LDRB.W          R11, [R4,#3]
209EDE:  BEQ             loc_209F22
209EE0:  CMP             R5, #0xF0
209EE2:  BNE             loc_209F28
209EE4:  ADD.W           R0, R3, #0x70 ; 'p'
209EE8:  UXTB            R0, R0
209EEA:  CMP             R0, #0x30 ; '0'
209EEC:  BCC             loc_209F30
209EEE:  B               loc_209FC8
209EF0:  AND.W           R0, R3, #0xE0
209EF4:  B               loc_209EFA
209EF6:  AND.W           R0, R3, #0xC0
209EFA:  CMP             R0, #0x80
209EFC:  BNE             loc_209FC8
209EFE:  AND.W           R0, R9, #0xC0
209F02:  CMP             R0, #0x80
209F04:  BNE             loc_209FC8
209F06:  AND.W           R0, R3, #0x3F ; '?'
209F0A:  LSLS            R3, R5, #0xC
209F0C:  UXTH            R3, R3
209F0E:  ORR.W           R0, R3, R0,LSL#6
209F12:  AND.W           R3, R9, #0x3F ; '?'
209F16:  ADD             R3, R0
209F18:  CMP             R3, R8
209F1A:  BHI             loc_209FC8
209F1C:  STR             R3, [R6]
209F1E:  ADDS            R3, R4, #3
209F20:  B               loc_209F9E
209F22:  AND.W           R0, R3, #0xF0
209F26:  B               loc_209F2C
209F28:  AND.W           R0, R3, #0xC0
209F2C:  CMP             R0, #0x80
209F2E:  BNE             loc_209FC8
209F30:  AND.W           R0, R9, #0xC0
209F34:  CMP             R0, #0x80
209F36:  ITT EQ
209F38:  ANDEQ.W         R0, R11, #0xC0
209F3C:  CMPEQ           R0, #0x80
209F3E:  BNE             loc_209FC8
209F40:  SUB.W           R0, LR, R6
209F44:  CMP             R0, #8
209F46:  BLT             loc_209FD8
209F48:  AND.W           R5, R5, #7
209F4C:  AND.W           R4, R9, #0x3F ; '?'
209F50:  LSLS            R0, R5, #0x12
209F52:  BFI.W           R0, R3, #0xC, #6
209F56:  ORR.W           R0, R0, R4,LSL#6
209F5A:  AND.W           R4, R11, #0x3F ; '?'
209F5E:  ADD             R0, R4
209F60:  CMP             R0, R8
209F62:  BHI             loc_209FC8
209F64:  MOV.W           R0, R9,LSL#6
209F68:  AND.W           R0, R0, #0x3C0
209F6C:  ADD             R0, R4
209F6E:  MOV             R4, R6
209F70:  ADD.W           R0, R0, #0xDC00
209F74:  STR.W           R0, [R4,#4]!
209F78:  AND.W           R0, R12, R3,LSL#2
209F7C:  AND.W           R3, R3, #0xF
209F80:  ORR.W           R0, R0, R5,LSL#8
209F84:  STR.W           R4, [R10]
209F88:  ORR.W           R0, R0, R3,LSL#2
209F8C:  UBFX.W          R3, R9, #4, #2
209F90:  ADD             R0, R3
209F92:  SUBS            R0, #0x40 ; '@'
209F94:  ORR.W           R0, R0, #0xD800
209F98:  STR             R0, [R6]
209F9A:  LDR             R0, [R2]
209F9C:  ADDS            R3, R0, #4
209F9E:  STR             R3, [R2]
209FA0:  LDR.W           R0, [R10]
209FA4:  ADDS            R0, #4
209FA6:  STR.W           R0, [R10]
209FAA:  LDR             R4, [R2]
209FAC:  CMP             R4, R1
209FAE:  ITT CC
209FB0:  LDRCC.W         R6, [R10]
209FB4:  CMPCC           R6, LR
209FB6:  BCC.W           loc_209E58
209FBA:  MOVS            R0, #0
209FBC:  CMP             R4, R1
209FBE:  IT CC
209FC0:  MOVCC           R0, #1
209FC2:  POP.W           {R8-R11}
209FC6:  POP             {R4-R7,PC}
209FC8:  MOVS            R0, #2
209FCA:  B               loc_209FC2
209FCC:  LDRB            R4, [R3,#2]
209FCE:  CMP             R4, #0xBF
209FD0:  ITT EQ
209FD2:  ADDEQ           R3, #3
209FD4:  STREQ           R3, [R2]
209FD6:  B               loc_209E4A
209FD8:  MOVS            R0, #1
209FDA:  B               loc_209FC2
