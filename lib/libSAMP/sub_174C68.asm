; =========================================================
; Game Engine Function: sub_174C68
; Address            : 0x174C68 - 0x174F42
; =========================================================

174C68:  PUSH            {R4-R7,LR}
174C6A:  ADD             R7, SP, #0xC
174C6C:  PUSH.W          {R8-R11}
174C70:  SUB             SP, SP, #0x1C
174C72:  MOV             R5, R0
174C74:  LDR             R0, [R0,#4]
174C76:  CMP             R0, #2
174C78:  BLT.W           loc_174F3A
174C7C:  MOV             R0, R5
174C7E:  MOVS            R2, #0
174C80:  MOV             R9, R1
174C82:  BL              sub_174F42
174C86:  LDR.W           R0, [R9]
174C8A:  CBZ             R0, loc_174CA4
174C8C:  SUBS            R1, R0, #1
174C8E:  LDR.W           R2, [R9,#8]
174C92:  ADD.W           R3, R1, R1,LSL#2
174C96:  LDR.W           R2, [R2,R3,LSL#3]
174C9A:  CBNZ            R2, loc_174CA6
174C9C:  MOV             R0, R1
174C9E:  STR.W           R1, [R9]
174CA2:  B               loc_174CA6
174CA4:  MOVS            R0, #0
174CA6:  LDR             R1, [R5,#4]
174CA8:  ADD.W           R12, R5, #0x10
174CAC:  STR             R5, [SP,#0x38+var_24]
174CAE:  CMP             R1, #1
174CB0:  STR.W           R9, [SP,#0x38+var_30]
174CB4:  BLT.W           loc_174DE0
174CB8:  LDR.W           R3, [R12]
174CBC:  LDR             R2, [R3]
174CBE:  CMP             R2, #1
174CC0:  BLT             loc_174CDC
174CC2:  LDR             R3, [R3,#8]
174CC4:  CBZ             R3, loc_174CDC
174CC6:  SUBS            R2, #1
174CC8:  ADD.W           R2, R2, R2,LSL#2
174CCC:  ADD.W           LR, R3, R2,LSL#3
174CD0:  LDR.W           R2, [LR]
174CD4:  LDR.W           R3, [LR,#0x1C]
174CD8:  ADDS            R4, R2, R3
174CDA:  B               loc_174CE2
174CDC:  MOV.W           LR, #0
174CE0:  MOVS            R4, #0
174CE2:  CMP             R1, #2
174CE4:  BCC             loc_174DE0
174CE6:  MOV.W           R8, #1
174CEA:  MOVS            R6, #0
174CEC:  MOV.W           R11, #0
174CF0:  STR.W           R12, [SP,#0x38+var_20]
174CF4:  LDR.W           R0, [R12]
174CF8:  ADD.W           R1, R8, R8,LSL#1
174CFC:  ADD.W           R10, R0, R1,LSL#3
174D00:  LDR.W           R9, [R0,R1,LSL#3]
174D04:  CMP.W           R9, #0
174D08:  BEQ             loc_174D58
174D0A:  MOV             R2, R10
174D0C:  SUB.W           R0, R9, #1
174D10:  LDR.W           R5, [R2,#8]!
174D14:  ADD.W           R3, R0, R0,LSL#2
174D18:  LDR.W           R1, [R5,R3,LSL#3]
174D1C:  CBZ             R1, loc_174D5E
174D1E:  CMP.W           R9, #1
174D22:  BLT             loc_174D64
174D24:  CMP.W           LR, #0
174D28:  BEQ             loc_174D64
174D2A:  ADD.W           R0, LR, #4; s1
174D2E:  ADDS            R1, R5, #4; s2
174D30:  STRD.W          R2, R6, [SP,#0x38+var_2C]
174D34:  MOVS            R2, #0x10; n
174D36:  STR             R3, [SP,#0x38+var_34]
174D38:  MOV             R6, LR
174D3A:  BLX             memcmp
174D3E:  CBNZ            R0, loc_174D4E
174D40:  LDR             R0, [R5,#0x14]
174D42:  LDR             R1, [R6,#0x14]
174D44:  CMP             R1, R0
174D46:  BNE             loc_174D4E
174D48:  LDR             R0, [R6,#0x20]
174D4A:  MOV             R3, R6
174D4C:  CBZ             R0, loc_174DA6
174D4E:  LDR.W           R12, [SP,#0x38+var_20]
174D52:  LDRD.W          R2, R6, [SP,#0x38+var_2C]
174D56:  B               loc_174D6A
174D58:  MOV.W           R9, #0
174D5C:  B               loc_174D90
174D5E:  MOV             R9, R0
174D60:  STR.W           R9, [R10]
174D64:  CMP.W           R9, #0
174D68:  BLE             loc_174D90
174D6A:  LDR             R1, [R2]
174D6C:  ADD.W           R0, R9, R9,LSL#2
174D70:  MOV             R2, R9
174D72:  ADD.W           R0, R1, R0,LSL#3
174D76:  ADDS            R1, #0x1C
174D78:  SUB.W           LR, R0, #0x28 ; '('
174D7C:  LDR.W           R0, [R10,#0xC]
174D80:  LDR.W           R3, [R1,#-0x1C]
174D84:  SUBS            R2, #1
174D86:  STR.W           R4, [R1],#0x28
174D8A:  ADD             R4, R3
174D8C:  BNE             loc_174D80
174D8E:  B               loc_174D94
174D90:  LDR.W           R0, [R10,#0xC]
174D94:  LDR             R1, [SP,#0x38+var_24]
174D96:  ADD             R11, R0
174D98:  ADD             R6, R9
174D9A:  ADD.W           R8, R8, #1
174D9E:  LDR             R0, [R1,#4]
174DA0:  CMP             R8, R0
174DA2:  BLT             loc_174CF4
174DA4:  B               loc_174DE8
174DA6:  LDR             R0, [R5,#0x20]
174DA8:  LDR.W           R12, [SP,#0x38+var_20]
174DAC:  LDRD.W          R2, R6, [SP,#0x38+var_2C]
174DB0:  CMP             R0, #0
174DB2:  BNE             loc_174D6A
174DB4:  MOV             R1, R5
174DB6:  LDR             R2, [R3]
174DB8:  LDR.W           R0, [R1],#0x28; src
174DBC:  ADD             R0, R2
174DBE:  STR             R0, [R3]
174DC0:  LDR             R0, [SP,#0x38+var_34]
174DC2:  LSLS            R2, R0, #3; n
174DC4:  MOV             R0, R5; dest
174DC6:  MOV             R5, R3
174DC8:  BLX             j_memmove
174DCC:  LDR.W           R0, [R10]
174DD0:  MOV             LR, R5
174DD2:  LDR             R2, [SP,#0x38+var_2C]
174DD4:  LDR             R6, [SP,#0x38+var_28]
174DD6:  SUB.W           R9, R0, #1
174DDA:  LDR.W           R12, [SP,#0x38+var_20]
174DDE:  B               loc_174D60
174DE0:  MOV.W           R11, #0
174DE4:  MOVS            R6, #0
174DE6:  B               loc_174DF0
174DE8:  LDR.W           R9, [SP,#0x38+var_30]
174DEC:  LDR.W           R0, [R9]
174DF0:  LDR.W           R1, [R9,#4]
174DF4:  ADD.W           R10, R0, R6
174DF8:  STR.W           R12, [SP,#0x38+var_20]
174DFC:  CMP             R1, R10
174DFE:  BGE             loc_174E4C
174E00:  CMP             R1, #0
174E02:  ITTE NE
174E04:  ADDNE.W         R0, R1, R1,LSR#31
174E08:  ADDNE.W         R0, R1, R0,ASR#1
174E0C:  MOVEQ           R0, #8
174E0E:  CMP             R0, R10
174E10:  MOV             R4, R10
174E12:  IT GT
174E14:  MOVGT           R4, R0
174E16:  CMP             R1, R4
174E18:  BGE             loc_174E4C
174E1A:  ADD.W           R0, R4, R4,LSL#2
174E1E:  LSLS            R0, R0, #3
174E20:  BL              sub_1654B0
174E24:  LDR.W           R1, [R9,#8]; src
174E28:  MOV             R8, R0
174E2A:  CBZ             R1, loc_174E44
174E2C:  LDR.W           R0, [R9]
174E30:  ADD.W           R0, R0, R0,LSL#2
174E34:  LSLS            R2, R0, #3; n
174E36:  MOV             R0, R8; dest
174E38:  BLX             j_memcpy
174E3C:  LDR.W           R0, [R9,#8]
174E40:  BL              sub_165578
174E44:  LDR.W           R12, [SP,#0x38+var_20]
174E48:  STRD.W          R4, R8, [R9,#4]
174E4C:  LDRD.W          R2, R0, [R9,#0xC]
174E50:  STR.W           R10, [R9]
174E54:  ADD.W           R4, R2, R11
174E58:  CMP             R0, R4
174E5A:  BGE             loc_174EB6
174E5C:  CMP             R0, #0
174E5E:  ITTE NE
174E60:  ADDNE.W         R1, R0, R0,LSR#31
174E64:  ADDNE.W         R1, R0, R1,ASR#1
174E68:  MOVEQ           R1, #8
174E6A:  LDR.W           R11, [SP,#0x38+var_24]
174E6E:  CMP             R1, R4
174E70:  MOV             R8, R4
174E72:  IT GT
174E74:  MOVGT           R8, R1
174E76:  CMP             R0, R8
174E78:  BGE             loc_174EBA
174E7A:  MOV.W           R0, R8,LSL#1
174E7E:  STR             R2, [SP,#0x38+var_28]
174E80:  MOV             R11, R6
174E82:  BL              sub_1654B0
174E86:  LDR.W           R1, [R9,#0x14]; src
174E8A:  MOV             R6, R0
174E8C:  CBZ             R1, loc_174EA2
174E8E:  LDR.W           R0, [R9,#0xC]
174E92:  LSLS            R2, R0, #1; n
174E94:  MOV             R0, R6; dest
174E96:  BLX             j_memcpy
174E9A:  LDR.W           R0, [R9,#0x14]
174E9E:  BL              sub_165578
174EA2:  STRD.W          R8, R6, [R9,#0x10]
174EA6:  MOV             R6, R11
174EA8:  LDR.W           R10, [R9]
174EAC:  LDR.W           R12, [SP,#0x38+var_20]
174EB0:  LDRD.W          R2, R11, [SP,#0x38+var_28]
174EB4:  B               loc_174EBA
174EB6:  LDR.W           R11, [SP,#0x38+var_24]
174EBA:  LDR.W           R0, [R9,#0x14]
174EBE:  LDR.W           R1, [R11,#4]
174EC2:  ADD.W           R8, R0, R2,LSL#1
174EC6:  STR.W           R4, [R9,#0xC]
174ECA:  CMP             R1, #2
174ECC:  BLT             loc_174F2A
174ECE:  ADD.W           R1, R10, R10,LSL#2
174ED2:  LDR.W           R0, [R9,#8]
174ED6:  MOV.W           R10, #1
174EDA:  ADD.W           R0, R0, R1,LSL#3
174EDE:  NEGS            R1, R6
174EE0:  MOVS            R6, #0
174EE2:  ADD.W           R1, R1, R1,LSL#2
174EE6:  ADD.W           R9, R0, R1,LSL#3
174EEA:  LDR.W           R0, [R12]
174EEE:  ADDS            R5, R0, R6
174EF0:  LDR             R0, [R5,#0x18]
174EF2:  CBZ             R0, loc_174F06
174EF4:  ADD.W           R4, R0, R0,LSL#2
174EF8:  LDR             R1, [R5,#0x20]; src
174EFA:  MOV             R0, R9; dest
174EFC:  LSLS            R2, R4, #3; n
174EFE:  BLX             j_memcpy
174F02:  ADD.W           R9, R9, R4,LSL#3
174F06:  LDR             R4, [R5,#0x24]
174F08:  CBZ             R4, loc_174F18
174F0A:  LDR             R1, [R5,#0x2C]; src
174F0C:  LSLS            R2, R4, #1; n
174F0E:  MOV             R0, R8; dest
174F10:  BLX             j_memcpy
174F14:  ADD.W           R8, R8, R4,LSL#1
174F18:  LDR.W           R12, [SP,#0x38+var_20]
174F1C:  ADDS            R6, #0x18
174F1E:  LDR.W           R0, [R11,#4]
174F22:  ADD.W           R10, R10, #1
174F26:  CMP             R10, R0
174F28:  BLT             loc_174EEA
174F2A:  LDR             R0, [SP,#0x38+var_30]
174F2C:  STR.W           R8, [R0,#0x3C]
174F30:  BL              sub_172AB2
174F34:  MOVS            R0, #1
174F36:  STR.W           R0, [R11,#4]
174F3A:  ADD             SP, SP, #0x1C
174F3C:  POP.W           {R8-R11}
174F40:  POP             {R4-R7,PC}
