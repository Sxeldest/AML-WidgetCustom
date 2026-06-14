; =========================================================
; Game Engine Function: sub_478C5A
; Address            : 0x478C5A - 0x478FDA
; =========================================================

478C5A:  PUSH            {R4-R7,LR}
478C5C:  ADD             R7, SP, #0xC
478C5E:  PUSH.W          {R8}
478C62:  MOV             R4, R0
478C64:  LDRB.W          R0, [R4,#0xB1]
478C68:  LDR.W           R8, [R4,#0x14C]
478C6C:  CBNZ            R0, loc_478CB8
478C6E:  LDR.W           R0, [R4,#0xE4]
478C72:  CMP             R0, #1
478C74:  BLT             loc_478CB8
478C76:  MOVS            R6, #0
478C78:  ADD.W           R1, R4, R6,LSL#2
478C7C:  LDRB.W          R0, [R4,#0xD4]
478C80:  LDR.W           R5, [R1,#0xE8]
478C84:  CBZ             R0, loc_478C9A
478C86:  LDR.W           R0, [R4,#0x12C]
478C8A:  CBNZ            R0, loc_478CA4
478C8C:  LDR.W           R0, [R4,#0x134]
478C90:  CBNZ            R0, loc_478CAE
478C92:  LDR             R1, [R5,#0x14]
478C94:  MOV             R0, R4
478C96:  MOVS            R2, #0
478C98:  B               loc_478CAA
478C9A:  LDR             R1, [R5,#0x14]
478C9C:  MOV             R0, R4
478C9E:  MOVS            R2, #0
478CA0:  BL              sub_479776
478CA4:  LDR             R1, [R5,#0x18]
478CA6:  MOV             R0, R4
478CA8:  MOVS            R2, #1
478CAA:  BL              sub_479776
478CAE:  LDR.W           R0, [R4,#0xE4]
478CB2:  ADDS            R6, #1
478CB4:  CMP             R6, R0
478CB6:  BLT             loc_478C78
478CB8:  LDR.W           R0, [R8,#0x1C]
478CBC:  LDR.W           R1, [R4,#0xBC]
478CC0:  CMP             R1, R0
478CC2:  BEQ.W           loc_478DCC
478CC6:  LDR             R0, [R4,#0x18]
478CC8:  LDR             R1, [R0]
478CCA:  ADDS            R2, R1, #1
478CCC:  STR             R2, [R0]
478CCE:  MOVS            R2, #0xFF
478CD0:  STRB            R2, [R1]
478CD2:  LDR             R1, [R0,#4]
478CD4:  SUBS            R1, #1
478CD6:  STR             R1, [R0,#4]
478CD8:  BNE             loc_478CF0
478CDA:  LDR             R1, [R0,#0xC]
478CDC:  MOV             R0, R4
478CDE:  BLX             R1
478CE0:  CBNZ            R0, loc_478CF0
478CE2:  LDR             R0, [R4]
478CE4:  MOVS            R1, #0x18
478CE6:  STR             R1, [R0,#0x14]
478CE8:  LDR             R0, [R4]
478CEA:  LDR             R1, [R0]
478CEC:  MOV             R0, R4
478CEE:  BLX             R1
478CF0:  LDR             R0, [R4,#0x18]
478CF2:  LDR             R1, [R0]
478CF4:  ADDS            R2, R1, #1
478CF6:  STR             R2, [R0]
478CF8:  MOVS            R2, #0xDD
478CFA:  STRB            R2, [R1]
478CFC:  LDR             R1, [R0,#4]
478CFE:  SUBS            R1, #1
478D00:  STR             R1, [R0,#4]
478D02:  BNE             loc_478D1A
478D04:  LDR             R1, [R0,#0xC]
478D06:  MOV             R0, R4
478D08:  BLX             R1
478D0A:  CBNZ            R0, loc_478D1A
478D0C:  LDR             R0, [R4]
478D0E:  MOVS            R1, #0x18
478D10:  STR             R1, [R0,#0x14]
478D12:  LDR             R0, [R4]
478D14:  LDR             R1, [R0]
478D16:  MOV             R0, R4
478D18:  BLX             R1
478D1A:  LDR             R0, [R4,#0x18]
478D1C:  LDR             R1, [R0]
478D1E:  ADDS            R2, R1, #1
478D20:  STR             R2, [R0]
478D22:  MOVS            R2, #0
478D24:  STRB            R2, [R1]
478D26:  LDR             R1, [R0,#4]
478D28:  SUBS            R1, #1
478D2A:  STR             R1, [R0,#4]
478D2C:  BNE             loc_478D44
478D2E:  LDR             R1, [R0,#0xC]
478D30:  MOV             R0, R4
478D32:  BLX             R1
478D34:  CBNZ            R0, loc_478D44
478D36:  LDR             R0, [R4]
478D38:  MOVS            R1, #0x18
478D3A:  STR             R1, [R0,#0x14]
478D3C:  LDR             R0, [R4]
478D3E:  LDR             R1, [R0]
478D40:  MOV             R0, R4
478D42:  BLX             R1
478D44:  LDR             R0, [R4,#0x18]
478D46:  LDR             R1, [R0]
478D48:  ADDS            R2, R1, #1
478D4A:  STR             R2, [R0]
478D4C:  MOVS            R2, #4
478D4E:  STRB            R2, [R1]
478D50:  LDR             R1, [R0,#4]
478D52:  SUBS            R1, #1
478D54:  STR             R1, [R0,#4]
478D56:  BNE             loc_478D6E
478D58:  LDR             R1, [R0,#0xC]
478D5A:  MOV             R0, R4
478D5C:  BLX             R1
478D5E:  CBNZ            R0, loc_478D6E
478D60:  LDR             R0, [R4]
478D62:  MOVS            R1, #0x18
478D64:  STR             R1, [R0,#0x14]
478D66:  LDR             R0, [R4]
478D68:  LDR             R1, [R0]
478D6A:  MOV             R0, R4
478D6C:  BLX             R1
478D6E:  LDR             R0, [R4,#0x18]
478D70:  LDR.W           R6, [R4,#0xBC]
478D74:  LDR             R1, [R0]
478D76:  ADDS            R2, R1, #1
478D78:  STR             R2, [R0]
478D7A:  LSRS            R2, R6, #8
478D7C:  STRB            R2, [R1]
478D7E:  LDR             R1, [R0,#4]
478D80:  SUBS            R1, #1
478D82:  STR             R1, [R0,#4]
478D84:  BNE             loc_478D9C
478D86:  LDR             R1, [R0,#0xC]
478D88:  MOV             R0, R4
478D8A:  BLX             R1
478D8C:  CBNZ            R0, loc_478D9C
478D8E:  LDR             R0, [R4]
478D90:  MOVS            R1, #0x18
478D92:  STR             R1, [R0,#0x14]
478D94:  LDR             R0, [R4]
478D96:  LDR             R1, [R0]
478D98:  MOV             R0, R4
478D9A:  BLX             R1
478D9C:  LDR             R0, [R4,#0x18]
478D9E:  LDR             R1, [R0]
478DA0:  ADDS            R2, R1, #1
478DA2:  STR             R2, [R0]
478DA4:  STRB            R6, [R1]
478DA6:  LDR             R1, [R0,#4]
478DA8:  SUBS            R1, #1
478DAA:  STR             R1, [R0,#4]
478DAC:  BNE             loc_478DC4
478DAE:  LDR             R1, [R0,#0xC]
478DB0:  MOV             R0, R4
478DB2:  BLX             R1
478DB4:  CBNZ            R0, loc_478DC4
478DB6:  LDR             R0, [R4]
478DB8:  MOVS            R1, #0x18
478DBA:  STR             R1, [R0,#0x14]
478DBC:  LDR             R0, [R4]
478DBE:  LDR             R1, [R0]
478DC0:  MOV             R0, R4
478DC2:  BLX             R1
478DC4:  LDR.W           R0, [R4,#0xBC]
478DC8:  STR.W           R0, [R8,#0x1C]
478DCC:  LDR             R0, [R4,#0x18]
478DCE:  LDR             R1, [R0]
478DD0:  ADDS            R2, R1, #1
478DD2:  STR             R2, [R0]
478DD4:  MOVS            R2, #0xFF
478DD6:  STRB            R2, [R1]
478DD8:  LDR             R1, [R0,#4]
478DDA:  SUBS            R1, #1
478DDC:  STR             R1, [R0,#4]
478DDE:  BNE             loc_478DF6
478DE0:  LDR             R1, [R0,#0xC]
478DE2:  MOV             R0, R4
478DE4:  BLX             R1
478DE6:  CBNZ            R0, loc_478DF6
478DE8:  LDR             R0, [R4]
478DEA:  MOVS            R1, #0x18
478DEC:  STR             R1, [R0,#0x14]
478DEE:  LDR             R0, [R4]
478DF0:  LDR             R1, [R0]
478DF2:  MOV             R0, R4
478DF4:  BLX             R1
478DF6:  LDR             R0, [R4,#0x18]
478DF8:  LDR             R1, [R0]
478DFA:  ADDS            R2, R1, #1
478DFC:  STR             R2, [R0]
478DFE:  MOVS            R2, #0xDA
478E00:  STRB            R2, [R1]
478E02:  LDR             R1, [R0,#4]
478E04:  SUBS            R1, #1
478E06:  STR             R1, [R0,#4]
478E08:  BNE             loc_478E20
478E0A:  LDR             R1, [R0,#0xC]
478E0C:  MOV             R0, R4
478E0E:  BLX             R1
478E10:  CBNZ            R0, loc_478E20
478E12:  LDR             R0, [R4]
478E14:  MOVS            R1, #0x18
478E16:  STR             R1, [R0,#0x14]
478E18:  LDR             R0, [R4]
478E1A:  LDR             R1, [R0]
478E1C:  MOV             R0, R4
478E1E:  BLX             R1
478E20:  LDR             R0, [R4,#0x18]
478E22:  LDR.W           R1, [R4,#0xE4]
478E26:  LDR             R2, [R0]
478E28:  ADDS            R3, R2, #1
478E2A:  STR             R3, [R0]
478E2C:  MOVS            R3, #6
478E2E:  ADD.W           R5, R3, R1,LSL#1
478E32:  LSRS            R1, R5, #8
478E34:  STRB            R1, [R2]
478E36:  LDR             R1, [R0,#4]
478E38:  SUBS            R1, #1
478E3A:  STR             R1, [R0,#4]
478E3C:  BNE             loc_478E54
478E3E:  LDR             R1, [R0,#0xC]
478E40:  MOV             R0, R4
478E42:  BLX             R1
478E44:  CBNZ            R0, loc_478E54
478E46:  LDR             R0, [R4]
478E48:  MOVS            R1, #0x18
478E4A:  STR             R1, [R0,#0x14]
478E4C:  LDR             R0, [R4]
478E4E:  LDR             R1, [R0]
478E50:  MOV             R0, R4
478E52:  BLX             R1
478E54:  LDR             R0, [R4,#0x18]
478E56:  LDR             R1, [R0]
478E58:  ADDS            R2, R1, #1
478E5A:  STR             R2, [R0]
478E5C:  STRB            R5, [R1]
478E5E:  LDR             R1, [R0,#4]
478E60:  SUBS            R1, #1
478E62:  STR             R1, [R0,#4]
478E64:  BNE             loc_478E7C
478E66:  LDR             R1, [R0,#0xC]
478E68:  MOV             R0, R4
478E6A:  BLX             R1
478E6C:  CBNZ            R0, loc_478E7C
478E6E:  LDR             R0, [R4]
478E70:  MOVS            R1, #0x18
478E72:  STR             R1, [R0,#0x14]
478E74:  LDR             R0, [R4]
478E76:  LDR             R1, [R0]
478E78:  MOV             R0, R4
478E7A:  BLX             R1
478E7C:  LDR             R0, [R4,#0x18]
478E7E:  LDR.W           R1, [R4,#0xE4]
478E82:  LDR             R2, [R0]
478E84:  ADDS            R3, R2, #1
478E86:  STR             R3, [R0]
478E88:  STRB            R1, [R2]
478E8A:  LDR             R1, [R0,#4]
478E8C:  SUBS            R1, #1
478E8E:  STR             R1, [R0,#4]
478E90:  BNE             loc_478EA8
478E92:  LDR             R1, [R0,#0xC]
478E94:  MOV             R0, R4
478E96:  BLX             R1
478E98:  CBNZ            R0, loc_478EA8
478E9A:  LDR             R0, [R4]
478E9C:  MOVS            R1, #0x18
478E9E:  STR             R1, [R0,#0x14]
478EA0:  LDR             R0, [R4]
478EA2:  LDR             R1, [R0]
478EA4:  MOV             R0, R4
478EA6:  BLX             R1
478EA8:  LDR.W           R0, [R4,#0xE4]
478EAC:  CMP             R0, #0
478EAE:  BLE             loc_478F44
478EB0:  MOVS            R5, #0
478EB2:  MOV.W           R8, #0x18
478EB6:  ADD.W           R1, R4, R5,LSL#2
478EBA:  LDR             R0, [R4,#0x18]
478EBC:  LDR.W           R6, [R1,#0xE8]
478EC0:  LDR             R1, [R0]
478EC2:  LDR             R2, [R6]
478EC4:  ADDS            R3, R1, #1
478EC6:  STR             R3, [R0]
478EC8:  STRB            R2, [R1]
478ECA:  LDR             R1, [R0,#4]
478ECC:  SUBS            R1, #1
478ECE:  STR             R1, [R0,#4]
478ED0:  BNE             loc_478EE8
478ED2:  LDR             R1, [R0,#0xC]
478ED4:  MOV             R0, R4
478ED6:  BLX             R1
478ED8:  CBNZ            R0, loc_478EE8
478EDA:  LDR             R0, [R4]
478EDC:  STR.W           R8, [R0,#0x14]
478EE0:  LDR             R0, [R4]
478EE2:  LDR             R1, [R0]
478EE4:  MOV             R0, R4
478EE6:  BLX             R1
478EE8:  LDRD.W          R0, R1, [R6,#0x14]
478EEC:  LDRB.W          R2, [R4,#0xD4]
478EF0:  CBZ             R2, loc_478F0E
478EF2:  LDR.W           R2, [R4,#0x12C]
478EF6:  CBZ             R2, loc_478EFC
478EF8:  MOVS            R0, #0
478EFA:  B               loc_478F0E
478EFC:  LDR.W           R1, [R4,#0x134]
478F00:  CBZ             R1, loc_478F0C
478F02:  LDRB.W          R1, [R4,#0xB1]
478F06:  CMP             R1, #0
478F08:  IT EQ
478F0A:  MOVEQ           R0, R1
478F0C:  MOVS            R1, #0
478F0E:  LDR             R2, [R4,#0x18]
478F10:  ADD.W           R0, R1, R0,LSL#4
478F14:  LDR             R3, [R2]
478F16:  ADDS            R6, R3, #1
478F18:  STR             R6, [R2]
478F1A:  STRB            R0, [R3]
478F1C:  LDR             R0, [R2,#4]
478F1E:  SUBS            R0, #1
478F20:  STR             R0, [R2,#4]
478F22:  BNE             loc_478F3A
478F24:  LDR             R1, [R2,#0xC]
478F26:  MOV             R0, R4
478F28:  BLX             R1
478F2A:  CBNZ            R0, loc_478F3A
478F2C:  LDR             R0, [R4]
478F2E:  STR.W           R8, [R0,#0x14]
478F32:  LDR             R0, [R4]
478F34:  LDR             R1, [R0]
478F36:  MOV             R0, R4
478F38:  BLX             R1
478F3A:  LDR.W           R0, [R4,#0xE4]
478F3E:  ADDS            R5, #1
478F40:  CMP             R5, R0
478F42:  BLT             loc_478EB6
478F44:  LDR             R0, [R4,#0x18]
478F46:  LDR.W           R1, [R4,#0x12C]
478F4A:  LDR             R2, [R0]
478F4C:  ADDS            R3, R2, #1
478F4E:  STR             R3, [R0]
478F50:  STRB            R1, [R2]
478F52:  LDR             R1, [R0,#4]
478F54:  SUBS            R1, #1
478F56:  STR             R1, [R0,#4]
478F58:  BNE             loc_478F70
478F5A:  LDR             R1, [R0,#0xC]
478F5C:  MOV             R0, R4
478F5E:  BLX             R1
478F60:  CBNZ            R0, loc_478F70
478F62:  LDR             R0, [R4]
478F64:  MOVS            R1, #0x18
478F66:  STR             R1, [R0,#0x14]
478F68:  LDR             R0, [R4]
478F6A:  LDR             R1, [R0]
478F6C:  MOV             R0, R4
478F6E:  BLX             R1
478F70:  LDR             R0, [R4,#0x18]
478F72:  LDR.W           R1, [R4,#0x130]
478F76:  LDR             R2, [R0]
478F78:  ADDS            R3, R2, #1
478F7A:  STR             R3, [R0]
478F7C:  STRB            R1, [R2]
478F7E:  LDR             R1, [R0,#4]
478F80:  SUBS            R1, #1
478F82:  STR             R1, [R0,#4]
478F84:  BNE             loc_478F9C
478F86:  LDR             R1, [R0,#0xC]
478F88:  MOV             R0, R4
478F8A:  BLX             R1
478F8C:  CBNZ            R0, loc_478F9C
478F8E:  LDR             R0, [R4]
478F90:  MOVS            R1, #0x18
478F92:  STR             R1, [R0,#0x14]
478F94:  LDR             R0, [R4]
478F96:  LDR             R1, [R0]
478F98:  MOV             R0, R4
478F9A:  BLX             R1
478F9C:  LDR             R0, [R4,#0x18]
478F9E:  LDRD.W          R1, R2, [R4,#0x134]
478FA2:  LDR             R3, [R0]
478FA4:  ADD.W           R1, R2, R1,LSL#4
478FA8:  ADDS            R6, R3, #1
478FAA:  STR             R6, [R0]
478FAC:  STRB            R1, [R3]
478FAE:  LDR             R1, [R0,#4]
478FB0:  SUBS            R1, #1
478FB2:  STR             R1, [R0,#4]
478FB4:  BNE             loc_478FBE
478FB6:  LDR             R1, [R0,#0xC]
478FB8:  MOV             R0, R4
478FBA:  BLX             R1
478FBC:  CBZ             R0, loc_478FC4
478FBE:  POP.W           {R8}
478FC2:  POP             {R4-R7,PC}
478FC4:  LDR             R0, [R4]
478FC6:  MOVS            R1, #0x18
478FC8:  STR             R1, [R0,#0x14]
478FCA:  LDR             R0, [R4]
478FCC:  LDR             R1, [R0]
478FCE:  MOV             R0, R4
478FD0:  POP.W           {R8}
478FD4:  POP.W           {R4-R7,LR}
478FD8:  BX              R1
