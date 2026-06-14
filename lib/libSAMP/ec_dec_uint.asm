; =========================================================
; Game Engine Function: ec_dec_uint
; Address            : 0x193DD8 - 0x193FD4
; =========================================================

193DD8:  PUSH            {R4-R7,LR}
193DDA:  ADD             R7, SP, #0xC
193DDC:  PUSH.W          {R8-R11}
193DE0:  SUB             SP, SP, #0xC
193DE2:  MOV             R5, R1
193DE4:  SUBS            R1, R5, #1
193DE6:  MOV             R9, R0
193DE8:  CLZ.W           R0, R1
193DEC:  MOVW            R11, #1
193DF0:  MOVW            R10, #0xFF00
193DF4:  RSB.W           R2, R0, #0x20 ; ' '
193DF8:  MOVT            R11, #0x80
193DFC:  MOVT            R10, #0x7FFF
193E00:  CMP             R2, #9
193E02:  STR             R1, [SP,#0x28+var_20]
193E04:  BLT.W           loc_193F38
193E08:  SUBS            R2, #8
193E0A:  LDR.W           R0, [R9,#0x1C]
193E0E:  STR             R0, [SP,#0x28+var_28]
193E10:  LSR.W           R8, R1, R2
193E14:  ADD.W           R5, R8, #1
193E18:  LDR.W           R4, [R9,#0x20]
193E1C:  MOV             R1, R5
193E1E:  STR             R2, [SP,#0x28+var_24]
193E20:  BLX             sub_220A6C
193E24:  MOV             R6, R0
193E26:  MOV             R0, R4
193E28:  MOV             R1, R6
193E2A:  BLX             sub_220A6C
193E2E:  ADDS            R0, #1
193E30:  MOV             R1, R6
193E32:  CMP             R0, R5
193E34:  IT HI
193E36:  MOVHI           R0, R5
193E38:  LDR             R3, [SP,#0x28+var_28]
193E3A:  SUBS.W          R12, R5, R0
193E3E:  SUB.W           R0, R8, R12
193E42:  MLS.W           R2, R0, R6, R4
193E46:  IT EQ
193E48:  MLSEQ.W         R1, R0, R1, R3
193E4C:  ADD.W           R0, R9, #0x1C
193E50:  CMP             R1, R11
193E52:  STM             R0!, {R1,R2,R6}
193E54:  BCS             loc_193EAE
193E56:  LDR.W           LR, [R9,#4]
193E5A:  LDRD.W          R0, R8, [R9,#0x14]
193E5E:  LDR.W           R3, [R9,#0x28]
193E62:  ADD.W           R6, R0, #8
193E66:  LSLS            R1, R1, #8
193E68:  CMP             R8, LR
193E6A:  STR.W           R6, [R9,#0x14]
193E6E:  STR.W           R1, [R9,#0x1C]
193E72:  BCS             loc_193E88
193E74:  LDR.W           R0, [R9]
193E78:  ADD.W           R5, R8, #1
193E7C:  STR.W           R5, [R9,#0x18]
193E80:  LDRB.W          R0, [R0,R8]
193E84:  MOV             R8, R5
193E86:  B               loc_193E8A
193E88:  MOVS            R0, #0
193E8A:  ORR.W           R3, R0, R3,LSL#8
193E8E:  STR.W           R0, [R9,#0x28]
193E92:  AND.W           R2, R10, R2,LSL#8
193E96:  ADDS            R6, #8
193E98:  UBFX.W          R3, R3, #1, #8
193E9C:  CMP             R1, R11
193E9E:  ORR.W           R2, R2, R3
193EA2:  MOV             R3, R0
193EA4:  EOR.W           R2, R2, #0xFF
193EA8:  STR.W           R2, [R9,#0x20]
193EAC:  BCC             loc_193E66
193EAE:  LDRD.W          R1, R8, [R9,#0xC]
193EB2:  LDR             R4, [SP,#0x28+var_24]
193EB4:  CMP             R8, R4
193EB6:  LSL.W           LR, R12, R4
193EBA:  BCS             loc_193F02
193EBC:  CMP.W           R8, #0x11
193EC0:  MOV             R0, R8
193EC2:  IT LE
193EC4:  MOVLE           R0, #0x11
193EC6:  RSB.W           R5, R8, #7
193ECA:  LDRD.W          R3, R6, [R9,#4]
193ECE:  ADD.W           R12, R5, R0
193ED2:  MOV             R5, R8
193ED4:  CMP             R6, R3
193ED6:  BCS             loc_193EE8
193ED8:  ADDS            R6, #1
193EDA:  STR.W           R6, [R9,#8]
193EDE:  LDR.W           R0, [R9]
193EE2:  SUBS            R2, R3, R6
193EE4:  LDRB            R0, [R0,R2]
193EE6:  B               loc_193EEA
193EE8:  MOVS            R0, #0
193EEA:  LSLS            R0, R5
193EEC:  ORRS            R1, R0
193EEE:  ADD.W           R0, R5, #8
193EF2:  CMP             R5, #0x11
193EF4:  MOV             R5, R0
193EF6:  BLT             loc_193ED4
193EF8:  BIC.W           R0, R12, #7
193EFC:  ADD             R0, R8
193EFE:  ADD.W           R8, R0, #8
193F02:  SUB.W           R0, R8, R4
193F06:  STR.W           R0, [R9,#0x10]
193F0A:  LDR.W           R0, [R9,#0x14]
193F0E:  LSR.W           R2, R1, R4
193F12:  STR.W           R2, [R9,#0xC]
193F16:  MOVS            R2, #1
193F18:  ADD             R0, R4
193F1A:  STR.W           R0, [R9,#0x14]
193F1E:  LSL.W           R0, R2, R4
193F22:  SUBS            R0, #1
193F24:  ANDS            R0, R1
193F26:  LDR             R1, [SP,#0x28+var_20]
193F28:  ORR.W           R0, R0, LR
193F2C:  CMP             R0, R1
193F2E:  ITT HI
193F30:  STRHI.W         R2, [R9,#0x2C]
193F34:  MOVHI           R0, R1
193F36:  B               loc_193FCC
193F38:  LDRD.W          R8, R4, [R9,#0x1C]
193F3C:  MOV             R1, R5
193F3E:  MOV             R0, R8
193F40:  BLX             sub_220A6C
193F44:  MOV             R6, R0
193F46:  MOV             R0, R4
193F48:  MOV             R1, R6
193F4A:  BLX             sub_220A6C
193F4E:  ADDS            R0, #1
193F50:  CMP             R0, R5
193F52:  IT HI
193F54:  MOVHI           R0, R5
193F56:  LDR             R1, [SP,#0x28+var_20]
193F58:  SUBS            R0, R5, R0
193F5A:  SUB.W           R3, R1, R0
193F5E:  MOV             R1, R6
193F60:  MLS.W           R2, R3, R6, R4
193F64:  IT EQ
193F66:  MLSEQ.W         R1, R3, R1, R8
193F6A:  ADD.W           R3, R9, #0x1C
193F6E:  CMP             R1, R11
193F70:  STM             R3!, {R1,R2,R6}
193F72:  BCS             loc_193FCC
193F74:  LDR.W           R12, [R9,#4]
193F78:  LDRD.W          R3, LR, [R9,#0x14]
193F7C:  LDR.W           R5, [R9,#0x28]
193F80:  ADD.W           R6, R3, #8
193F84:  LSLS            R1, R1, #8
193F86:  CMP             LR, R12
193F88:  STR.W           R6, [R9,#0x14]
193F8C:  STR.W           R1, [R9,#0x1C]
193F90:  BCS             loc_193FA6
193F92:  LDR.W           R3, [R9]
193F96:  ADD.W           R4, LR, #1
193F9A:  STR.W           R4, [R9,#0x18]
193F9E:  LDRB.W          R3, [R3,LR]
193FA2:  MOV             LR, R4
193FA4:  B               loc_193FA8
193FA6:  MOVS            R3, #0
193FA8:  ORR.W           R4, R3, R5,LSL#8
193FAC:  STR.W           R3, [R9,#0x28]
193FB0:  AND.W           R2, R10, R2,LSL#8
193FB4:  ADDS            R6, #8
193FB6:  UBFX.W          R4, R4, #1, #8
193FBA:  CMP             R1, R11
193FBC:  ORR.W           R2, R2, R4
193FC0:  MOV             R5, R3
193FC2:  EOR.W           R2, R2, #0xFF
193FC6:  STR.W           R2, [R9,#0x20]
193FCA:  BCC             loc_193F84
193FCC:  ADD             SP, SP, #0xC
193FCE:  POP.W           {R8-R11}
193FD2:  POP             {R4-R7,PC}
