; =========================================================
; Game Engine Function: silk_A2NLSF
; Address            : 0x1B0D18 - 0x1B1214
; =========================================================

1B0D18:  PUSH            {R4-R7,LR}
1B0D1A:  ADD             R7, SP, #0xC
1B0D1C:  PUSH.W          {R8-R11}
1B0D20:  SUB             SP, SP, #0xBC
1B0D22:  STR             R0, [SP,#0xD8+var_B4]
1B0D24:  ADD.W           R8, SP, #0xD8+var_88
1B0D28:  LDR.W           R0, =(__stack_chk_guard_ptr - 0x1B0D3A)
1B0D2C:  MOV.W           R10, R2,ASR#1
1B0D30:  STR             R1, [SP,#0xD8+var_C0]
1B0D32:  MOV.W           R1, #0x10000
1B0D36:  ADD             R0, PC; __stack_chk_guard_ptr
1B0D38:  CMP.W           R10, #1
1B0D3C:  LDR             R0, [R0]; __stack_chk_guard
1B0D3E:  LDR             R0, [R0]
1B0D40:  STR             R0, [SP,#0xD8+var_20]
1B0D42:  ADD             R0, SP, #0xD8+var_54
1B0D44:  STR.W           R8, [SP,#0xD8+var_8C]
1B0D48:  STR             R0, [SP,#0xD8+var_90]
1B0D4A:  STR             R2, [SP,#0xD8+var_B0]
1B0D4C:  STR.W           R1, [R0,R10,LSL#2]
1B0D50:  STR.W           R1, [R8,R10,LSL#2]
1B0D54:  BLT             loc_1B0E2E
1B0D56:  LDR             R1, [SP,#0xD8+var_C0]
1B0D58:  MOVS            R2, #0
1B0D5A:  MOV.W           R3, #0xFFFFFFFF
1B0D5E:  ADD.W           R1, R1, R10,LSL#2
1B0D62:  LDR.W           R5, [R1,R3,LSL#2]
1B0D66:  SUBS            R3, #1
1B0D68:  LDR.W           R6, [R1,R2,LSL#2]
1B0D6C:  ADDS            R4, R5, R6
1B0D6E:  SUBS            R6, R6, R5
1B0D70:  NEGS            R4, R4
1B0D72:  STR.W           R4, [R0,R2,LSL#2]
1B0D76:  STR.W           R6, [R8,R2,LSL#2]
1B0D7A:  ADDS            R2, #1
1B0D7C:  CMP             R10, R2
1B0D7E:  BNE             loc_1B0D62
1B0D80:  LDR.W           R1, [R8,R10,LSL#2]
1B0D84:  SUB.W           R3, R10, #1
1B0D88:  LDR.W           R2, [R0,R10,LSL#2]
1B0D8C:  LDR.W           R6, [R0,R3,LSL#2]
1B0D90:  SUBS            R2, R6, R2
1B0D92:  LDR.W           R6, [R8,R3,LSL#2]
1B0D96:  STR.W           R2, [R0,R3,LSL#2]
1B0D9A:  ADD             R1, R6
1B0D9C:  ADDS            R6, R3, #1
1B0D9E:  STR.W           R1, [R8,R3,LSL#2]
1B0DA2:  SUBS            R3, #1
1B0DA4:  CMP             R6, #1
1B0DA6:  BGT             loc_1B0D8C
1B0DA8:  CMP.W           R10, #2
1B0DAC:  BLT             loc_1B0E2E
1B0DAE:  ADD.W           R1, R0, R10,LSL#2
1B0DB2:  MOVS            R2, #2
1B0DB4:  SUBS            R1, #8
1B0DB6:  CMP             R2, R10
1B0DB8:  BGE             loc_1B0DD0
1B0DBA:  MOV             R3, R1
1B0DBC:  MOV             R6, R10
1B0DBE:  LDR             R5, [R3]
1B0DC0:  SUBS            R6, #1
1B0DC2:  LDR             R4, [R3,#8]
1B0DC4:  CMP             R6, R2
1B0DC6:  SUB.W           R5, R5, R4
1B0DCA:  STR.W           R5, [R3],#-4
1B0DCE:  BGT             loc_1B0DBE
1B0DD0:  ADD.W           R6, R0, R2,LSL#2
1B0DD4:  LDR.W           R3, [R0,R2,LSL#2]
1B0DD8:  CMP             R2, R10
1B0DDA:  LDR.W           R5, [R6,#-8]
1B0DDE:  SUB.W           R3, R5, R3,LSL#1
1B0DE2:  STR.W           R3, [R6,#-8]
1B0DE6:  ADD.W           R3, R2, #1
1B0DEA:  MOV             R2, R3
1B0DEC:  BNE             loc_1B0DB6
1B0DEE:  ADD.W           R0, R8, R10,LSL#2
1B0DF2:  MOVS            R1, #2
1B0DF4:  SUBS            R0, #8
1B0DF6:  CMP             R1, R10
1B0DF8:  BGE             loc_1B0E10
1B0DFA:  MOV             R2, R0
1B0DFC:  MOV             R3, R10
1B0DFE:  LDR             R6, [R2]
1B0E00:  SUBS            R3, #1
1B0E02:  LDR             R5, [R2,#8]
1B0E04:  CMP             R3, R1
1B0E06:  SUB.W           R6, R6, R5
1B0E0A:  STR.W           R6, [R2],#-4
1B0E0E:  BGT             loc_1B0DFE
1B0E10:  ADD.W           R3, R8, R1,LSL#2
1B0E14:  LDR.W           R2, [R8,R1,LSL#2]
1B0E18:  CMP             R1, R10
1B0E1A:  LDR.W           R6, [R3,#-8]
1B0E1E:  SUB.W           R2, R6, R2,LSL#1
1B0E22:  STR.W           R2, [R3,#-8]
1B0E26:  ADD.W           R2, R1, #1
1B0E2A:  MOV             R1, R2
1B0E2C:  BNE             loc_1B0DF6
1B0E2E:  LDR.W           R0, =(silk_LSFCosTab_FIX_Q12_ptr - 0x1B0E3A)
1B0E32:  ADD             R4, SP, #0xD8+var_54
1B0E34:  MOV             R2, R10
1B0E36:  ADD             R0, PC; silk_LSFCosTab_FIX_Q12_ptr
1B0E38:  LDR             R0, [R0]; silk_LSFCosTab_FIX_Q12
1B0E3A:  LDRSH.W         R6, [R0]
1B0E3E:  MOV             R0, R4
1B0E40:  MOV             R1, R6
1B0E42:  BL              sub_1B1228
1B0E46:  MOV             R9, R0
1B0E48:  MOVS            R1, #0
1B0E4A:  CMP.W           R9, #0xFFFFFFFF
1B0E4E:  BLE             loc_1B0E56
1B0E50:  MOVS            R2, #0
1B0E52:  STR             R4, [SP,#0xD8+var_94]
1B0E54:  B               loc_1B0E6A
1B0E56:  LDR             R0, [SP,#0xD8+var_B4]
1B0E58:  MOV             R2, R10
1B0E5A:  STRH            R1, [R0]
1B0E5C:  ADD             R0, SP, #0xD8+var_88
1B0E5E:  MOV             R1, R6
1B0E60:  STR             R0, [SP,#0xD8+var_94]
1B0E62:  BL              sub_1B1228
1B0E66:  MOV             R9, R0
1B0E68:  MOVS            R2, #1
1B0E6A:  LDR             R0, [SP,#0xD8+var_C0]
1B0E6C:  STR.W           R10, [SP,#0xD8+var_98]
1B0E70:  ADD.W           R0, R0, R10,LSL#2
1B0E74:  STR             R0, [SP,#0xD8+var_C8]
1B0E76:  MOV             R0, #0xFFFFFFF8
1B0E7A:  STR             R6, [SP,#0xD8+var_C4]
1B0E7C:  ADD.W           R0, R0, R10,LSL#2
1B0E80:  ADD.W           R1, R8, R0
1B0E84:  ADD             R0, R4
1B0E86:  STR             R0, [SP,#0xD8+var_D4]
1B0E88:  SUB.W           R0, R10, #1
1B0E8C:  STR             R0, [SP,#0xD8+var_D0]
1B0E8E:  LDR             R0, =(silk_LSFCosTab_FIX_Q12_ptr - 0x1B0E96)
1B0E90:  STR             R1, [SP,#0xD8+var_CC]
1B0E92:  ADD             R0, PC; silk_LSFCosTab_FIX_Q12_ptr
1B0E94:  LDR             R0, [R0]; silk_LSFCosTab_FIX_Q12
1B0E96:  STR             R0, [SP,#0xD8+var_9C]
1B0E98:  LDR             R0, =(silk_LSFCosTab_FIX_Q12_ptr - 0x1B0E9E)
1B0E9A:  ADD             R0, PC; silk_LSFCosTab_FIX_Q12_ptr
1B0E9C:  LDR             R0, [R0]; silk_LSFCosTab_FIX_Q12
1B0E9E:  STR             R0, [SP,#0xD8+var_B8]
1B0EA0:  MOVS            R0, #0
1B0EA2:  STR             R0, [SP,#0xD8+var_BC]
1B0EA4:  B               loc_1B0ED4
1B0EA6:  LDR             R6, [SP,#0xD8+var_C4]
1B0EA8:  ADD             R0, SP, #0xD8+var_54
1B0EAA:  MOV             R2, R10
1B0EAC:  STR             R0, [SP,#0xD8+var_94]
1B0EAE:  MOV             R1, R6
1B0EB0:  BL              sub_1B1228
1B0EB4:  MOV             R9, R0
1B0EB6:  MOVS            R2, #0
1B0EB8:  CMP.W           R9, #0xFFFFFFFF
1B0EBC:  BGT             loc_1B0ED4
1B0EBE:  LDR             R0, [SP,#0xD8+var_B4]
1B0EC0:  MOVS            R1, #0
1B0EC2:  MOV             R2, R10
1B0EC4:  STRH            R1, [R0]
1B0EC6:  ADD             R0, SP, #0xD8+var_88
1B0EC8:  MOV             R1, R6
1B0ECA:  STR             R0, [SP,#0xD8+var_94]
1B0ECC:  BL              sub_1B1228
1B0ED0:  MOV             R9, R0
1B0ED2:  MOVS            R2, #1
1B0ED4:  MOVS            R4, #1
1B0ED6:  MOVS            R5, #0
1B0ED8:  STR             R2, [SP,#0xD8+var_A8]
1B0EDA:  B               loc_1B1072
1B0EDC:  ADD.W           R0, R6, R10
1B0EE0:  LDR             R2, [SP,#0xD8+var_98]
1B0EE2:  AND.W           R1, R0, #1
1B0EE6:  ADD.W           R5, R1, R0,ASR#1
1B0EEA:  LDR             R0, [SP,#0xD8+var_94]
1B0EEC:  MOV             R1, R5
1B0EEE:  BL              sub_1B1228
1B0EF2:  MOV             R2, R0
1B0EF4:  CMP.W           R9, #0
1B0EF8:  BGT             loc_1B0F0E
1B0EFA:  CMP.W           R2, #0xFFFFFFFF
1B0EFE:  BLE             loc_1B0F0E
1B0F00:  MOV             R0, #0xFFFFFF00
1B0F04:  MOV             R10, R5
1B0F06:  STRD.W          R2, R0, [SP,#0xD8+var_A4]
1B0F0A:  MOV             R5, R9
1B0F0C:  B               loc_1B0F44
1B0F0E:  CMP             R2, #1
1B0F10:  MOV.W           R0, #0
1B0F14:  IT LT
1B0F16:  MOVLT           R0, #1
1B0F18:  CMP.W           R9, #0xFFFFFFFF
1B0F1C:  MOV.W           R1, #0
1B0F20:  IT GT
1B0F22:  MOVGT           R1, #1
1B0F24:  ANDS            R0, R1
1B0F26:  MOV             R0, R8
1B0F28:  IT NE
1B0F2A:  MOVNE           R0, R2
1B0F2C:  STR             R0, [SP,#0xD8+var_A4]
1B0F2E:  ITTE NE
1B0F30:  MOVNE           R2, R9
1B0F32:  MOVNE           R10, R5
1B0F34:  MOVEQ           R6, R5
1B0F36:  MOV             R0, #0xFFFFFF80
1B0F3A:  IT NE
1B0F3C:  MOVNE           R0, #0xFFFFFF00
1B0F40:  MOV             R5, R2
1B0F42:  STR             R0, [SP,#0xD8+var_A0]
1B0F44:  ADD.W           R0, R10, R6
1B0F48:  LDR             R2, [SP,#0xD8+var_98]
1B0F4A:  AND.W           R1, R0, #1
1B0F4E:  ADD.W           R1, R1, R0,ASR#1
1B0F52:  LDR             R0, [SP,#0xD8+var_94]
1B0F54:  STR             R1, [SP,#0xD8+var_AC]
1B0F56:  BL              sub_1B1228
1B0F5A:  MOV             R9, R0
1B0F5C:  CMP             R5, #0
1B0F5E:  BGT             loc_1B0F72
1B0F60:  CMP.W           R9, #0xFFFFFFFF
1B0F64:  BLE             loc_1B0F72
1B0F66:  STR.W           R9, [SP,#0xD8+var_A4]
1B0F6A:  MOV             R9, R5
1B0F6C:  LDR.W           R10, [SP,#0xD8+var_AC]
1B0F70:  B               loc_1B0FAC
1B0F72:  CMP.W           R9, #1
1B0F76:  MOV.W           R0, #0
1B0F7A:  IT LT
1B0F7C:  MOVLT           R0, #1
1B0F7E:  CMP.W           R5, #0xFFFFFFFF
1B0F82:  MOV.W           R1, #0
1B0F86:  IT GT
1B0F88:  MOVGT           R1, #1
1B0F8A:  ANDS            R0, R1
1B0F8C:  LDR             R1, [SP,#0xD8+var_A4]
1B0F8E:  IT NE
1B0F90:  MOVNE           R1, R9
1B0F92:  STR             R1, [SP,#0xD8+var_A4]
1B0F94:  IT NE
1B0F96:  MOVNE           R9, R5
1B0F98:  LDR             R1, [SP,#0xD8+var_AC]
1B0F9A:  ITE NE
1B0F9C:  MOVNE           R10, R1
1B0F9E:  MOVEQ           R6, R1
1B0FA0:  CMP             R0, #0
1B0FA2:  LDR             R0, [SP,#0xD8+var_A0]
1B0FA4:  IT EQ
1B0FA6:  ORREQ.W         R0, R0, #0x40 ; '@'
1B0FAA:  STR             R0, [SP,#0xD8+var_A0]
1B0FAC:  ADD.W           R0, R10, R6
1B0FB0:  AND.W           R1, R0, #1
1B0FB4:  ADD.W           R1, R1, R0,ASR#1
1B0FB8:  LDRD.W          R2, R0, [SP,#0xD8+var_98]
1B0FBC:  BL              sub_1B1228
1B0FC0:  CMP.W           R9, #0
1B0FC4:  BGT             loc_1B0FD2
1B0FC6:  CMP.W           R0, #0xFFFFFFFF
1B0FCA:  BLE             loc_1B0FD2
1B0FCC:  MOV             R1, R0
1B0FCE:  LDR             R6, [SP,#0xD8+var_A0]
1B0FD0:  B               loc_1B0FF8
1B0FD2:  CMP             R0, #1
1B0FD4:  MOV.W           R1, #0
1B0FD8:  IT LT
1B0FDA:  MOVLT           R1, #1
1B0FDC:  CMP.W           R9, #0xFFFFFFFF
1B0FE0:  MOV.W           R2, #0
1B0FE4:  IT GT
1B0FE6:  MOVGT           R2, #1
1B0FE8:  ANDS            R1, R2
1B0FEA:  LDR             R1, [SP,#0xD8+var_A4]
1B0FEC:  ITE NE
1B0FEE:  MOVNE           R1, R0
1B0FF0:  MOVEQ           R9, R0
1B0FF2:  LDR             R6, [SP,#0xD8+var_A0]
1B0FF4:  IT EQ
1B0FF6:  ADDEQ           R6, #0x20 ; ' '
1B0FF8:  CMP.W           R8, #0
1B0FFC:  MOV.W           R5, #0
1B1000:  IT EQ
1B1002:  MOVEQ           R5, #1
1B1004:  CMP.W           R9, #0
1B1008:  MOV             R0, R9
1B100A:  SUB.W           R1, R9, R1
1B100E:  IT MI
1B1010:  RSBMI.W         R0, R9, #0
1B1014:  CMP.W           R0, #0x10000
1B1018:  BGE             loc_1B1024
1B101A:  CBZ             R1, loc_1B102E
1B101C:  ASRS            R0, R1, #1
1B101E:  ADD.W           R0, R0, R9,LSL#5
1B1022:  B               loc_1B1028
1B1024:  ASRS            R1, R1, #5
1B1026:  MOV             R0, R9
1B1028:  BLX             sub_220A40
1B102C:  ADD             R6, R0
1B102E:  ADD.W           R0, R6, R11
1B1032:  MOVW            R1, #0x7FFF
1B1036:  CMP             R0, R1
1B1038:  IT GE
1B103A:  MOVGE           R0, R1
1B103C:  LDR             R1, [SP,#0xD8+var_B4]
1B103E:  LDR             R2, [SP,#0xD8+var_A8]
1B1040:  STRH.W          R0, [R1,R2,LSL#1]
1B1044:  ADDS            R2, #1
1B1046:  LDR             R0, [SP,#0xD8+var_B0]
1B1048:  CMP             R2, R0
1B104A:  BGE.W           loc_1B11FA
1B104E:  AND.W           R0, R2, #1
1B1052:  ADD             R1, SP, #0xD8+var_90
1B1054:  STR             R2, [SP,#0xD8+var_A8]
1B1056:  LDR.W           R0, [R1,R0,LSL#2]
1B105A:  AND.W           R1, R2, #2
1B105E:  STR             R0, [SP,#0xD8+var_94]
1B1060:  LDR             R0, [SP,#0xD8+var_B8]
1B1062:  RSB.W           R1, R1, #1
1B1066:  ADD.W           R0, R0, R4,LSL#1
1B106A:  MOV.W           R9, R1,LSL#12
1B106E:  LDRSH.W         R6, [R0,#-2]
1B1072:  MOV.W           R11, R4,LSL#8
1B1076:  LDR             R0, [SP,#0xD8+var_9C]
1B1078:  LDR             R2, [SP,#0xD8+var_98]
1B107A:  LDRSH.W         R10, [R0,R4,LSL#1]
1B107E:  LDR             R0, [SP,#0xD8+var_94]
1B1080:  MOV             R1, R10
1B1082:  BL              sub_1B1228
1B1086:  MOV             R8, R0
1B1088:  CMP.W           R9, #0
1B108C:  BGT             loc_1B1094
1B108E:  CMP             R8, R5
1B1090:  BGE.W           loc_1B0EDC
1B1094:  CMP.W           R9, #0
1B1098:  BLT             loc_1B10A2
1B109A:  NEGS            R0, R5
1B109C:  CMP             R8, R0
1B109E:  BLE.W           loc_1B0EDC
1B10A2:  ADDS            R0, R4, #1
1B10A4:  ADD.W           R11, R11, #0x100
1B10A8:  CMP             R4, #0x80
1B10AA:  MOV.W           R5, #0
1B10AE:  MOV             R6, R10
1B10B0:  MOV             R9, R8
1B10B2:  MOV             R4, R0
1B10B4:  BLT             loc_1B1076
1B10B6:  LDR             R1, [SP,#0xD8+var_BC]
1B10B8:  CMP             R1, #0x10
1B10BA:  BGE.W           loc_1B11BE
1B10BE:  ADDS            R1, #1
1B10C0:  MOVS            R0, #1
1B10C2:  STR             R1, [SP,#0xD8+var_BC]
1B10C4:  LSLS            R0, R1
1B10C6:  RSB.W           R2, R0, #0x10000
1B10CA:  LDR             R0, [SP,#0xD8+var_C0]
1B10CC:  LDR             R1, [SP,#0xD8+var_B0]
1B10CE:  BLX             j_silk_bwexpander_32
1B10D2:  LDR.W           R10, [SP,#0xD8+var_98]
1B10D6:  ADD             R4, SP, #0xD8+var_54
1B10D8:  ADD             R5, SP, #0xD8+var_88
1B10DA:  MOV.W           R0, #0x10000
1B10DE:  MOV             R12, R4
1B10E0:  CMP.W           R10, #1
1B10E4:  STR.W           R0, [R12,R10,LSL#2]
1B10E8:  STR.W           R0, [R5,R10,LSL#2]
1B10EC:  LDRD.W          LR, R4, [SP,#0xD8+var_CC]
1B10F0:  BLT.W           loc_1B0EA6
1B10F4:  MOVS            R0, #0
1B10F6:  MOV.W           R1, #0xFFFFFFFF
1B10FA:  LDR.W           R3, [R4,R1,LSL#2]
1B10FE:  SUBS            R1, #1
1B1100:  LDR.W           R2, [R4,R0,LSL#2]
1B1104:  ADDS            R6, R3, R2
1B1106:  SUBS            R2, R2, R3
1B1108:  NEGS            R6, R6
1B110A:  STR.W           R6, [R12,R0,LSL#2]
1B110E:  STR.W           R2, [R5,R0,LSL#2]
1B1112:  ADDS            R0, #1
1B1114:  CMP             R10, R0
1B1116:  BNE             loc_1B10FA
1B1118:  LDR.W           R0, [R5,R10,LSL#2]
1B111C:  LDR.W           R1, [R12,R10,LSL#2]
1B1120:  LDR             R2, [SP,#0xD8+var_D0]
1B1122:  LDR.W           R3, [R12,R2,LSL#2]
1B1126:  SUBS            R1, R3, R1
1B1128:  LDR.W           R3, [R5,R2,LSL#2]
1B112C:  STR.W           R1, [R12,R2,LSL#2]
1B1130:  ADD             R0, R3
1B1132:  ADDS            R3, R2, #1
1B1134:  STR.W           R0, [R5,R2,LSL#2]
1B1138:  SUBS            R2, #1
1B113A:  CMP             R3, #1
1B113C:  BGT             loc_1B1122
1B113E:  CMP.W           R10, #2
1B1142:  BLT.W           loc_1B0EA6
1B1146:  LDR             R4, [SP,#0xD8+var_D4]
1B1148:  MOVS            R0, #2
1B114A:  CMP             R0, R10
1B114C:  BGE             loc_1B1164
1B114E:  MOV             R1, R4
1B1150:  MOV             R2, R10
1B1152:  LDR             R3, [R1]
1B1154:  SUBS            R2, #1
1B1156:  LDR             R6, [R1,#8]
1B1158:  CMP             R2, R0
1B115A:  SUB.W           R3, R3, R6
1B115E:  STR.W           R3, [R1],#-4
1B1162:  BGT             loc_1B1152
1B1164:  ADD.W           R2, R12, R0,LSL#2
1B1168:  LDR.W           R1, [R12,R0,LSL#2]
1B116C:  CMP             R0, R10
1B116E:  LDR.W           R3, [R2,#-8]
1B1172:  SUB.W           R1, R3, R1,LSL#1
1B1176:  STR.W           R1, [R2,#-8]
1B117A:  ADD.W           R1, R0, #1
1B117E:  MOV             R0, R1
1B1180:  BNE             loc_1B114A
1B1182:  MOVS            R0, #2
1B1184:  CMP             R0, R10
1B1186:  BGE             loc_1B119E
1B1188:  MOV             R1, LR
1B118A:  MOV             R2, R10
1B118C:  LDR             R3, [R1]
1B118E:  SUBS            R2, #1
1B1190:  LDR             R6, [R1,#8]
1B1192:  CMP             R2, R0
1B1194:  SUB.W           R3, R3, R6
1B1198:  STR.W           R3, [R1],#-4
1B119C:  BGT             loc_1B118C
1B119E:  ADD.W           R2, R5, R0,LSL#2
1B11A2:  LDR.W           R1, [R5,R0,LSL#2]
1B11A6:  CMP             R0, R10
1B11A8:  LDR.W           R3, [R2,#-8]
1B11AC:  SUB.W           R1, R3, R1,LSL#1
1B11B0:  STR.W           R1, [R2,#-8]
1B11B4:  ADD.W           R1, R0, #1
1B11B8:  MOV             R0, R1
1B11BA:  BNE             loc_1B1184
1B11BC:  B               loc_1B0EA6
1B11BE:  LDR             R0, [SP,#0xD8+var_B0]
1B11C0:  MOV             R4, R0
1B11C2:  ADDS            R1, R4, #1
1B11C4:  MOV.W           R0, #0x8000
1B11C8:  BLX             sub_220A40
1B11CC:  LDR             R1, [SP,#0xD8+var_B4]
1B11CE:  CMP             R4, #2
1B11D0:  STRH            R0, [R1]
1B11D2:  BLT             loc_1B11FA
1B11D4:  UXTH            R1, R0
1B11D6:  UXTAH.W         R0, R1, R0
1B11DA:  LDR             R1, [SP,#0xD8+var_B4]
1B11DC:  STRH            R0, [R1,#2]
1B11DE:  LDR             R1, [SP,#0xD8+var_B0]
1B11E0:  CMP             R1, #2
1B11E2:  BEQ             loc_1B11FA
1B11E4:  LDR             R3, [SP,#0xD8+var_B4]
1B11E6:  MOVS            R1, #2
1B11E8:  LDRH            R2, [R3]
1B11EA:  UXTAH.W         R0, R2, R0
1B11EE:  STRH.W          R0, [R3,R1,LSL#1]
1B11F2:  ADDS            R1, #1
1B11F4:  LDR             R2, [SP,#0xD8+var_B0]
1B11F6:  CMP             R2, R1
1B11F8:  BNE             loc_1B11E8
1B11FA:  LDR             R0, =(__stack_chk_guard_ptr - 0x1B1202)
1B11FC:  LDR             R1, [SP,#0xD8+var_20]
1B11FE:  ADD             R0, PC; __stack_chk_guard_ptr
1B1200:  LDR             R0, [R0]; __stack_chk_guard
1B1202:  LDR             R0, [R0]
1B1204:  SUBS            R0, R0, R1
1B1206:  ITTT EQ
1B1208:  ADDEQ           SP, SP, #0xBC
1B120A:  POPEQ.W         {R8-R11}
1B120E:  POPEQ           {R4-R7,PC}
1B1210:  BLX             __stack_chk_fail
