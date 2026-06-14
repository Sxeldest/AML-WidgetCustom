; =========================================================
; Game Engine Function: _Z21RpTriStripDefaultCostP17RpTriStripPolygonjPv
; Address            : 0x219E16 - 0x21A02E
; =========================================================

219E16:  PUSH            {R4-R7,LR}
219E18:  ADD             R7, SP, #0xC
219E1A:  PUSH.W          {R8-R11}
219E1E:  SUB             SP, SP, #0x18
219E20:  STR             R1, [R0,#0x30]
219E22:  LDR.W           R12, [R0,#0x18]
219E26:  CMP.W           R12, #0
219E2A:  BEQ             loc_219EFA
219E2C:  MOVS            R3, #0
219E2E:  ADD.W           R6, R0, R3,LSL#2
219E32:  LDR             R6, [R6,#0x1C]
219E34:  LDR             R5, [R6,#0x1C]
219E36:  CMP             R5, #0
219E38:  ITTT NE
219E3A:  MOVNE           R5, R6
219E3C:  LDRNE.W         R4, [R5,#0x10]!
219E40:  CMPNE           R4, #0
219E42:  BEQ             loc_219E4A
219E44:  LDR.W           R2, [R6,#0x14]!
219E48:  CBNZ            R2, loc_219E52
219E4A:  ADDS            R3, #1
219E4C:  CMP             R3, R12
219E4E:  BCC             loc_219E2E
219E50:  B               loc_219EFA
219E52:  CMP             R4, R0
219E54:  IT EQ
219E56:  MOVEQ           R5, R6
219E58:  LDR.W           R12, [R5]
219E5C:  CMP.W           R12, #0
219E60:  ITTT NE
219E62:  STRNE.W         R1, [R12,#0x30]
219E66:  LDRNE.W         LR, [R12,#0x18]
219E6A:  CMPNE.W         LR, #0
219E6E:  BEQ             loc_219EFA
219E70:  MOVS            R3, #0
219E72:  ADD.W           R6, R12, R3,LSL#2
219E76:  LDR             R6, [R6,#0x1C]
219E78:  LDR             R5, [R6,#0x1C]
219E7A:  CMP             R5, #0
219E7C:  ITTT NE
219E7E:  MOVNE           R5, R6
219E80:  LDRNE.W         R4, [R5,#0x10]!
219E84:  CMPNE           R4, R0
219E86:  BEQ             loc_219E90
219E88:  LDR.W           R2, [R6,#0x14]!
219E8C:  CMP             R2, R0
219E8E:  BNE             loc_219E98
219E90:  ADDS            R3, #1
219E92:  CMP             R3, LR
219E94:  BCC             loc_219E72
219E96:  B               loc_219EFA
219E98:  CMP             R4, R12
219E9A:  IT EQ
219E9C:  MOVEQ           R5, R6
219E9E:  LDR.W           R11, [R5]
219EA2:  CMP.W           R11, #0
219EA6:  ITTT NE
219EA8:  STRNE.W         R1, [R11,#0x30]
219EAC:  LDRNE.W         R8, [R11,#0x18]
219EB0:  CMPNE.W         R8, #0
219EB4:  BEQ             loc_219EFA
219EB6:  MOVS            R6, #0
219EB8:  MOVW            LR, #0x9C40
219EBC:  ADD.W           R2, R11, R6,LSL#2
219EC0:  LDR             R2, [R2,#0x1C]
219EC2:  LDR             R3, [R2,#0x1C]
219EC4:  CMP             R3, #0
219EC6:  ITTT NE
219EC8:  MOVNE           R3, R2
219ECA:  LDRNE.W         R4, [R3,#0x10]!
219ECE:  CMPNE           R4, R12
219ED0:  BEQ             loc_219EDA
219ED2:  LDR.W           R5, [R2,#0x14]!
219ED6:  CMP             R5, R12
219ED8:  BNE             loc_219EE6
219EDA:  ADDS            R6, #1
219EDC:  MOVS            R2, #0
219EDE:  MOVS            R3, #1
219EE0:  CMP             R6, R8
219EE2:  BCC             loc_219EBC
219EE4:  B               loc_219F02
219EE6:  CMP             R4, R11
219EE8:  IT EQ
219EEA:  MOVEQ           R3, R2
219EEC:  LDR             R5, [R3]
219EEE:  CBZ             R5, loc_219EFA
219EF0:  MOVW            LR, #0x9C40
219EF4:  MOVS            R3, #1
219EF6:  MOVS            R2, #0
219EF8:  B               loc_219F54
219EFA:  MOVS            R2, #0
219EFC:  MOVS            R3, #1
219EFE:  MOVW            LR, #0x9C40
219F02:  CMP             R2, R3
219F04:  IT HI
219F06:  MOVHI           R2, R3
219F08:  ADD.W           R0, R2, LR
219F0C:  ADD             SP, SP, #0x18
219F0E:  POP.W           {R8-R11}
219F12:  POP             {R4-R7,PC}
219F14:  MOVS            R5, #0
219F16:  ADD.W           R0, R11, R5,LSL#2
219F1A:  LDR             R4, [R0,#0x1C]
219F1C:  LDR             R0, [R4,#0x1C]
219F1E:  CMP             R0, #0
219F20:  ITTT NE
219F22:  MOVNE           R6, R4
219F24:  LDRNE.W         R9, [R6,#0x10]!
219F28:  CMPNE           R9, R12
219F2A:  BEQ             loc_219F34
219F2C:  LDR.W           R0, [R4,#0x14]!
219F30:  CMP             R0, R12
219F32:  BNE             loc_219F3C
219F34:  ADDS            R5, #1
219F36:  CMP             R5, R8
219F38:  BCC             loc_219F16
219F3A:  B               loc_219F02
219F3C:  CMP             R9, R11
219F3E:  IT EQ
219F40:  MOVEQ           R6, R4
219F42:  LDR             R0, [SP,#0x34+var_34]
219F44:  LDR             R5, [R6]
219F46:  CBNZ            R5, loc_219F54
219F48:  B               loc_219F02
219F4A:  MOVW            R0, #0x2710
219F4E:  ADD             LR, R0
219F50:  MOVS            R2, #1
219F52:  B               loc_21A020
219F54:  STR.W           R12, [SP,#0x34+var_34]
219F58:  MOV             R12, R11
219F5A:  MOV             R11, R5
219F5C:  STR.W           R1, [R11,#0x30]
219F60:  LDR             R5, [R0,#0x18]
219F62:  CMP             R5, #0
219F64:  MOV             R4, R5
219F66:  STR             R4, [SP,#0x34+var_2C]
219F68:  BEQ             loc_21A016
219F6A:  ADD.W           R4, R11, #0x28 ; '('
219F6E:  STR             R4, [SP,#0x34+var_24]
219F70:  ADD.W           R4, R12, #0x28 ; '('
219F74:  STR             R4, [SP,#0x34+var_20]
219F76:  LDR             R4, [SP,#0x34+var_34]
219F78:  MOVS            R5, #0
219F7A:  ADD.W           R9, R4, #0x28 ; '('
219F7E:  LDR.W           R8, [R4,#0x18]
219F82:  STR.W           R11, [SP,#0x34+var_30]
219F86:  CMP.W           R8, #0
219F8A:  STR             R5, [SP,#0x34+var_28]
219F8C:  BEQ             loc_219FAA
219F8E:  ADD.W           R4, R0, R5,LSL#1
219F92:  LDRH            R5, [R4,#0x28]
219F94:  MOVS            R4, #0
219F96:  LDRH.W          R6, [R9,R4,LSL#1]
219F9A:  CMP             R5, R6
219F9C:  BEQ             loc_219FA4
219F9E:  ADDS            R4, #1
219FA0:  CMP             R4, R8
219FA2:  BCC             loc_219F96
219FA4:  CMP             R4, R8
219FA6:  BCC             loc_219FB0
219FA8:  B               loc_21A00C
219FAA:  MOVS            R4, #0
219FAC:  CMP             R4, R8
219FAE:  BCS             loc_21A00C
219FB0:  LDR.W           R10, [R12,#0x18]
219FB4:  CMP.W           R10, #0
219FB8:  BEQ             loc_219FD6
219FBA:  LDR             R4, [SP,#0x34+var_28]
219FBC:  ADD.W           R4, R0, R4,LSL#1
219FC0:  LDRH            R5, [R4,#0x28]
219FC2:  MOVS            R4, #0
219FC4:  LDR             R6, [SP,#0x34+var_20]
219FC6:  LDRH.W          R6, [R6,R4,LSL#1]
219FCA:  CMP             R5, R6
219FCC:  BEQ             loc_219FD8
219FCE:  ADDS            R4, #1
219FD0:  CMP             R4, R10
219FD2:  BCC             loc_219FC4
219FD4:  B               loc_219FD8
219FD6:  MOVS            R4, #0
219FD8:  CMP             R4, R10
219FDA:  BCS             loc_21A00C
219FDC:  LDR.W           R11, [R11,#0x18]
219FE0:  CMP.W           R11, #0
219FE4:  BEQ             loc_21A002
219FE6:  LDR             R4, [SP,#0x34+var_28]
219FE8:  ADD.W           R4, R0, R4,LSL#1
219FEC:  LDRH            R5, [R4,#0x28]
219FEE:  MOVS            R4, #0
219FF0:  LDR             R6, [SP,#0x34+var_24]
219FF2:  LDRH.W          R6, [R6,R4,LSL#1]
219FF6:  CMP             R5, R6
219FF8:  BEQ             loc_21A004
219FFA:  ADDS            R4, #1
219FFC:  CMP             R4, R11
219FFE:  BCC             loc_219FF0
21A000:  B               loc_21A004
21A002:  MOVS            R4, #0
21A004:  LDR.W           R11, [SP,#0x34+var_30]
21A008:  CMP             R4, R10
21A00A:  BCC             loc_219F4A
21A00C:  LDR             R5, [SP,#0x34+var_28]
21A00E:  LDR             R4, [SP,#0x34+var_2C]
21A010:  ADDS            R5, #1
21A012:  CMP             R5, R4
21A014:  BCC             loc_219F86
21A016:  CMP             R2, #0
21A018:  ITTE EQ
21A01A:  ADDEQ           R3, #1
21A01C:  MOVEQ           R2, #0
21A01E:  ADDNE           R2, #1
21A020:  LDR.W           R8, [R11,#0x18]
21A024:  CMP.W           R8, #0
21A028:  BNE.W           loc_219F14
21A02C:  B               loc_219F02
