; =========================================================
; Game Engine Function: sub_261DB4
; Address            : 0x261DB4 - 0x261FB8
; =========================================================

261DB4:  PUSH            {R4-R7,LR}
261DB6:  ADD             R7, SP, #0xC
261DB8:  PUSH.W          {R8-R11}
261DBC:  SUB             SP, SP, #0x1C
261DBE:  LDR             R5, [R7,#arg_0]
261DC0:  MOV             R4, R3
261DC2:  MOV             R6, R0
261DC4:  STR             R2, [SP,#0x38+var_20]
261DC6:  CMP             R5, #0
261DC8:  BLE             loc_261EAC
261DCA:  LSLS            R0, R5, #2
261DCC:  MOV             R8, R2
261DCE:  STR             R0, [SP,#0x38+var_38]
261DD0:  MOV             R0, R5
261DD2:  MOV             R10, R4
261DD4:  MOV             R2, R1
261DD6:  MOV             R11, R6
261DD8:  STR             R1, [SP,#0x38+var_34]
261DDA:  STR             R0, [SP,#0x38+var_28]
261DDC:  LDR             R1, =(unk_5FCABC - 0x261DE6)
261DDE:  LDR.W           R0, [R10]
261DE2:  ADD             R1, PC; unk_5FCABC
261DE4:  LDR.W           R3, [R8]
261DE8:  LDR.W           R9, [R1,R0,LSL#2]
261DEC:  LDRSH.W         R0, [R2],#2
261DF0:  SUBS            R5, R0, R3
261DF2:  STRD.W          R3, R2, [SP,#0x38+var_30]
261DF6:  MOV.W           R0, R9,LSL#1
261DFA:  MOV             R1, R5
261DFC:  IT MI
261DFE:  NEGMI           R1, R5
261E00:  CMP             R0, R1
261E02:  IT GT
261E04:  MOVGT           R0, R1
261E06:  MOV             R1, R9
261E08:  LSLS            R0, R0, #3
261E0A:  BLX             __aeabi_idiv
261E0E:  SUBS            R0, #1
261E10:  MOVS            R1, #8
261E12:  AND.W           R1, R1, R5,LSR#28
261E16:  LDR             R2, =(unk_5FCC20 - 0x261E20)
261E18:  ADD.W           R0, R0, R0,LSR#31
261E1C:  ADD             R2, PC; unk_5FCC20
261E1E:  ORR.W           R0, R1, R0,LSR#1
261E22:  LDR             R1, =(unk_5FCA7C - 0x261E28)
261E24:  ADD             R1, PC; unk_5FCA7C
261E26:  LDR.W           R1, [R1,R0,LSL#2]
261E2A:  LDR.W           R0, [R2,R0,LSL#2]
261E2E:  MUL.W           R1, R1, R9
261E32:  ASRS            R2, R1, #0x1F
261E34:  ADD.W           R1, R1, R2,LSR#29
261E38:  LDR             R2, [SP,#0x38+var_30]
261E3A:  ADD.W           R1, R2, R1,ASR#3
261E3E:  MOV             R2, #0xFFFF8000
261E46:  CMP             R1, R2
261E48:  IT LE
261E4A:  MOVLE           R1, R2
261E4C:  MOVW            R2, #0x7FFF
261E50:  CMP             R1, R2
261E52:  IT GE
261E54:  MOVGE           R1, R2
261E56:  STR.W           R1, [R8]
261E5A:  LDR.W           R1, [R10]
261E5E:  ADD             R0, R1
261E60:  CMP             R0, #0
261E62:  IT LE
261E64:  MOVLE           R0, #0
261E66:  CMP             R0, #0x58 ; 'X'
261E68:  IT GE
261E6A:  MOVGE           R0, #0x58 ; 'X'
261E6C:  STR.W           R0, [R10]
261E70:  LDR.W           R0, [R8]
261E74:  STRB.W          R0, [R11]
261E78:  LDR.W           R0, [R8],#4
261E7C:  LSRS            R0, R0, #8
261E7E:  STRB.W          R0, [R11,#1]
261E82:  LDR.W           R0, [R10]
261E86:  STRB.W          R0, [R11,#2]
261E8A:  LDR.W           R0, [R10],#4
261E8E:  LSRS            R0, R0, #8
261E90:  STRB.W          R0, [R11,#3]
261E94:  ADD.W           R11, R11, #4
261E98:  LDR             R0, [SP,#0x38+var_28]
261E9A:  LDR             R2, [SP,#0x38+var_2C]
261E9C:  SUBS            R0, #1
261E9E:  BNE             loc_261DDA
261EA0:  LDR             R1, [R7,#arg_0]
261EA2:  LDR             R0, [SP,#0x38+var_38]
261EA4:  LDR             R2, [SP,#0x38+var_20]
261EA6:  MOV             R5, R1
261EA8:  ADD             R6, R0
261EAA:  LDR             R1, [SP,#0x38+var_34]
261EAC:  LSLS            R0, R5, #1
261EAE:  ADD.W           R10, R1, R5,LSL#1
261EB2:  STR             R0, [SP,#0x38+var_28]
261EB4:  LSLS            R0, R5, #4
261EB6:  STR             R0, [SP,#0x38+var_38]
261EB8:  MOVS            R0, #1
261EBA:  STR             R4, [SP,#0x38+var_24]
261EBC:  CMP             R5, #1
261EBE:  STRD.W          R0, R10, [SP,#0x38+var_34]
261EC2:  BLT             loc_261F9E
261EC4:  MOV.W           R8, #0
261EC8:  MOV             R11, R6
261ECA:  MOV.W           R9, #0
261ECE:  STR.W           R10, [SP,#0x38+var_2C]
261ED2:  LDR             R1, =(unk_5FCABC - 0x261EDC)
261ED4:  LDR.W           R0, [R4,R8,LSL#2]
261ED8:  ADD             R1, PC; unk_5FCABC
261EDA:  LDR.W           R5, [R2,R8,LSL#2]
261EDE:  LDR.W           R6, [R1,R0,LSL#2]
261EE2:  LDRSH.W         R0, [R10]
261EE6:  SUBS            R4, R0, R5
261EE8:  MOV.W           R0, R6,LSL#1
261EEC:  MOV             R1, R4
261EEE:  IT MI
261EF0:  NEGMI           R1, R4
261EF2:  CMP             R0, R1
261EF4:  IT GT
261EF6:  MOVGT           R0, R1
261EF8:  MOV             R1, R6
261EFA:  LSLS            R0, R0, #3
261EFC:  BLX             __aeabi_idiv
261F00:  SUBS            R0, #1
261F02:  MOVS            R1, #8
261F04:  AND.W           R1, R1, R4,LSR#28
261F08:  LDR             R2, =(unk_5FCC20 - 0x261F12)
261F0A:  ADD.W           R0, R0, R0,LSR#31
261F0E:  ADD             R2, PC; unk_5FCC20
261F10:  ORR.W           R0, R1, R0,ASR#1
261F14:  LDR             R1, =(unk_5FCA7C - 0x261F1A)
261F16:  ADD             R1, PC; unk_5FCA7C
261F18:  LDR.W           R1, [R1,R0,LSL#2]
261F1C:  MULS            R1, R6
261F1E:  LDR.W           R6, [R2,R0,LSL#2]
261F22:  MOV             R2, #0xFFFF8000
261F2A:  ASRS            R3, R1, #0x1F
261F2C:  ADD.W           R1, R1, R3,LSR#29
261F30:  ADD.W           R1, R5, R1,ASR#3
261F34:  CMP             R1, R2
261F36:  IT LE
261F38:  MOVLE           R1, R2
261F3A:  MOVW            R2, #0x7FFF
261F3E:  CMP             R1, R2
261F40:  IT GE
261F42:  MOVGE           R1, R2
261F44:  LDR             R2, [SP,#0x38+var_20]
261F46:  STR.W           R1, [R2,R8,LSL#2]
261F4A:  LDR             R4, [SP,#0x38+var_24]
261F4C:  LDR.W           R1, [R4,R8,LSL#2]
261F50:  ADD             R1, R6
261F52:  MOV             R6, R11
261F54:  CMP             R1, #0
261F56:  IT LE
261F58:  MOVLE           R1, #0
261F5A:  CMP             R1, #0x58 ; 'X'
261F5C:  IT GE
261F5E:  MOVGE           R1, #0x58 ; 'X'
261F60:  STR.W           R1, [R4,R8,LSL#2]
261F64:  MOVS.W          R1, R9,LSL#31
261F68:  ITTT NE
261F6A:  MOVNE           R6, R11
261F6C:  LDRBNE.W        R1, [R6],#1
261F70:  ORRNE.W         R0, R1, R0,LSL#4
261F74:  ADD.W           R9, R9, #1
261F78:  CMP.W           R9, #8
261F7C:  STRB.W          R0, [R11]
261F80:  MOV             R11, R6
261F82:  LDR             R0, [SP,#0x38+var_28]
261F84:  ADD             R10, R0
261F86:  BNE             loc_261ED2
261F88:  LDR.W           R10, [SP,#0x38+var_2C]
261F8C:  ADD.W           R8, R8, #1
261F90:  LDR             R1, [R7,#arg_0]
261F92:  MOV             R11, R6
261F94:  ADD.W           R10, R10, #2
261F98:  MOV             R5, R1
261F9A:  CMP             R8, R5
261F9C:  BNE             loc_261ECA
261F9E:  LDR             R1, [SP,#0x38+var_34]
261FA0:  LDR.W           R10, [SP,#0x38+var_30]
261FA4:  LDR             R0, [SP,#0x38+var_38]
261FA6:  CMP             R1, #0x39 ; '9'
261FA8:  ADD             R10, R0
261FAA:  ADD.W           R0, R1, #8
261FAE:  BLT             loc_261EBC
261FB0:  ADD             SP, SP, #0x1C
261FB2:  POP.W           {R8-R11}
261FB6:  POP             {R4-R7,PC}
