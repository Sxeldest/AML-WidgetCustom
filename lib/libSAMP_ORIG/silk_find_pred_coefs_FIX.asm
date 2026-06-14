; =========================================================
; Game Engine Function: silk_find_pred_coefs_FIX
; Address            : 0xD0D10 - 0xD118A
; =========================================================

D0D10:  PUSH            {R4-R7,LR}
D0D12:  ADD             R7, SP, #0xC
D0D14:  PUSH.W          {R8-R11}
D0D18:  SUB             SP, SP, #0x6C
D0D1A:  STRD.W          R2, R3, [R7,#var_84]
D0D1E:  STR.W           R1, [R7,#var_6C]
D0D22:  LDR.W           R1, =(__stack_chk_guard_ptr - 0xD0D2A)
D0D26:  ADD             R1, PC; __stack_chk_guard_ptr
D0D28:  LDR             R1, [R1]; __stack_chk_guard
D0D2A:  LDR             R1, [R1]
D0D2C:  STR.W           R1, [R7,#var_24]
D0D30:  MOVW            R1, #0x11E4
D0D34:  LDR.W           R9, [R0,R1]
D0D38:  STR.W           R0, [R7,#var_78]
D0D3C:  CMP.W           R9, #1
D0D40:  ADD             R0, R1
D0D42:  STR.W           R0, [R7,#var_7C]
D0D46:  BLT.W           loc_D0E54
D0D4A:  LDR.W           R3, [R7,#var_6C]
D0D4E:  MOV             R0, #0x1FFFFFF
D0D52:  MOVS            R1, #0
D0D54:  LDR.W           R2, [R3,R1,LSL#2]
D0D58:  ADDS            R1, #1
D0D5A:  CMP             R0, R2
D0D5C:  IT GE
D0D5E:  MOVGE           R0, R2
D0D60:  CMP             R1, R9
D0D62:  BLT             loc_D0D54
D0D64:  CMP.W           R9, #1
D0D68:  BLT             loc_D0E54
D0D6A:  CMP             R0, #0
D0D6C:  MOV             R1, R0
D0D6E:  IT MI
D0D70:  NEGMI           R1, R0
D0D72:  MOVS            R4, #0
D0D74:  CLZ.W           R1, R1
D0D78:  SUBS            R2, R1, #1
D0D7A:  ADD.W           R10, R1, #0x1C
D0D7E:  LSL.W           R11, R0, R2
D0D82:  UXTH.W          R0, R11
D0D86:  STR.W           R0, [R7,#var_70]
D0D8A:  MOV.W           R0, R11,ASR#16
D0D8E:  STR.W           R0, [R7,#var_74]
D0D92:  LDR.W           R0, [R7,#var_6C]
D0D96:  LDR.W           R0, [R0,R4,LSL#2]
D0D9A:  CMP             R0, #0
D0D9C:  MOV             R1, R0
D0D9E:  IT MI
D0DA0:  NEGMI           R1, R0
D0DA2:  CLZ.W           R6, R1
D0DA6:  SUBS            R1, R6, #1
D0DA8:  LSL.W           R8, R0, R1
D0DAC:  MOV             R0, #0x1FFFFFFF
D0DB0:  MOV.W           R1, R8,ASR#16
D0DB4:  BLX             sub_108848
D0DB8:  LDR.W           R2, [R7,#var_70]
D0DBC:  SXTH            R1, R0
D0DBE:  LDR.W           R3, [R7,#var_74]
D0DC2:  MULS            R2, R1
D0DC4:  SMULBB.W        R3, R1, R3
D0DC8:  ADD.W           R2, R3, R2,ASR#16
D0DCC:  SMMUL.W         R3, R2, R8
D0DD0:  SUB.W           R3, R11, R3,LSL#3
D0DD4:  UXTH            R5, R3
D0DD6:  SMLABT.W        R0, R0, R3, R2
D0DDA:  MULS            R1, R5
D0DDC:  ADD.W           R0, R0, R1,ASR#16
D0DE0:  RSB.W           R1, R6, #1
D0DE4:  ADD             R1, R10
D0DE6:  CMP             R1, #0xD
D0DE8:  BGT             loc_D0E0C
D0DEA:  RSB.W           R1, R1, #0xE
D0DEE:  MOV             R2, #0x7FFFFFFF
D0DF2:  MOV.W           R3, #0x80000000
D0DF6:  LSRS            R2, R1
D0DF8:  ASRS            R3, R1
D0DFA:  CMP             R3, R2
D0DFC:  BLE             loc_D0E1E
D0DFE:  CMP             R0, R3
D0E00:  MOV             R6, R3
D0E02:  BGT             loc_D0E2C
D0E04:  CMP             R0, R2
D0E06:  IT LT
D0E08:  MOVLT           R0, R2
D0E0A:  B               loc_D0E2A
D0E0C:  SUB.W           R2, R1, #0xE
D0E10:  CMP             R1, #0x2E ; '.'
D0E12:  MOV.W           R1, #0
D0E16:  IT LT
D0E18:  ASRLT.W         R1, R0, R2
D0E1C:  B               loc_D0E30
D0E1E:  CMP             R0, R2
D0E20:  MOV             R6, R2
D0E22:  BGT             loc_D0E2C
D0E24:  CMP             R0, R3
D0E26:  IT LT
D0E28:  MOVLT           R0, R3
D0E2A:  MOV             R6, R0
D0E2C:  LSL.W           R1, R6, R1
D0E30:  CMP             R1, #0x64 ; 'd'
D0E32:  SUB.W           R0, R7, #-var_34
D0E36:  IT LE
D0E38:  MOVLE           R1, #0x64 ; 'd'
D0E3A:  STR.W           R1, [R0,R4,LSL#2]
D0E3E:  MOV.W           R0, #0x10000
D0E42:  BLX             sub_108874
D0E46:  SUB.W           R1, R7, #-var_44
D0E4A:  STR.W           R0, [R1,R4,LSL#2]
D0E4E:  ADDS            R4, #1
D0E50:  CMP             R4, R9
D0E52:  BLT             loc_D0D92
D0E54:  LDR.W           R3, [R7,#var_78]
D0E58:  MOV.W           R0, #0x1220
D0E5C:  MOVW            R1, #0x11E8
D0E60:  LDR             R0, [R3,R0]
D0E62:  LDR             R1, [R3,R1]
D0E64:  MLA.W           R2, R0, R9, R1
D0E68:  MOVS            R1, #7
D0E6A:  ADD.W           R2, R1, R2,LSL#1
D0E6E:  BIC.W           R2, R2, #7
D0E72:  SUB.W           R10, SP, R2
D0E76:  MOV             SP, R10
D0E78:  MOVW            R2, #0x129D
D0E7C:  ADD.W           R4, R3, #0x1220
D0E80:  LDRB            R2, [R3,R2]
D0E82:  CMP             R2, #2
D0E84:  BNE             loc_D0F7A
D0E86:  MOVS            R0, #0x64 ; 'd'
D0E88:  ADD.W           R2, R9, R9,LSL#2
D0E8C:  MUL.W           R0, R9, R0
D0E90:  ADD.W           R1, R1, R2,LSL#2
D0E94:  BIC.W           R1, R1, #7
D0E98:  SUB.W           R5, SP, R1
D0E9C:  ADDS            R0, #7
D0E9E:  BIC.W           R0, R0, #7
D0EA2:  MOV             SP, R5
D0EA4:  SUB.W           R8, SP, R0
D0EA8:  MOV             SP, R8
D0EAA:  LDR.W           R0, [R7,#var_78]
D0EAE:  MOVW            R1, #0x11EC
D0EB2:  MOVW            R2, #0x13E4
D0EB6:  LDR             R0, [R0,R1]
D0EB8:  LDR.W           R1, [R7,#var_78]
D0EBC:  LDR             R1, [R1,R2]
D0EBE:  SUB             SP, SP, #0x10
D0EC0:  STRD.W          R0, R9, [SP,#0x98+var_98]
D0EC4:  MOV             R0, R8
D0EC6:  LDR.W           R6, [R7,#var_6C]
D0ECA:  LDR.W           R2, [R7,#var_84]
D0ECE:  ADD.W           R11, R6, #0x7C ; '|'
D0ED2:  STR             R1, [SP,#0x98+n]
D0ED4:  MOV             R1, R5
D0ED6:  MOV             R3, R11
D0ED8:  BLX             j_silk_find_LTP_FIX
D0EDC:  ADD             SP, SP, #0x10
D0EDE:  LDR.W           R0, [R7,#var_78]
D0EE2:  MOVW            R1, #0x13E4
D0EE6:  LDR.W           R9, [R7,#var_7C]
D0EEA:  MOVW            R2, #0x11EC
D0EEE:  LDR             R0, [R0,R1]
D0EF0:  LDR.W           R1, [R7,#var_78]
D0EF4:  LDR             R1, [R1,R2]
D0EF6:  LDR.W           R2, [R9]
D0EFA:  SUB             SP, SP, #0x18
D0EFC:  ADD.W           R3, R6, #0x18C
D0F00:  STRD.W          R3, R8, [SP,#0xA0+var_A0]; int
D0F04:  STRD.W          R5, R1, [SP,#0xA0+var_98]; int
D0F08:  ADD.W           R5, R6, #0x50 ; 'P'
D0F0C:  STRD.W          R2, R0, [SP,#0xA0+n]; n
D0F10:  MOVW            R0, #0x1284
D0F14:  LDR.W           R1, [R7,#var_78]
D0F18:  LDR.W           R2, [R7,#var_78]
D0F1C:  ADD             R1, R0; dest
D0F1E:  MOVW            R0, #0x1230
D0F22:  ADDS            R3, R2, R0; int
D0F24:  LDR.W           R0, [R7,#var_78]
D0F28:  ADD.W           R2, R0, #0x12A0; int
D0F2C:  MOV             R0, R5; int
D0F2E:  BLX             j_silk_quant_LTP_gains
D0F32:  ADD             SP, SP, #0x18
D0F34:  LDR.W           R0, [R7,#var_78]
D0F38:  MOV             R1, R6
D0F3A:  LDR             R2, [R7,#arg_0]
D0F3C:  MOV             R8, R6
D0F3E:  BLX             j_silk_LTP_scale_ctrl_FIX
D0F42:  LDR.W           R6, [R7,#var_78]
D0F46:  MOVW            R1, #0x11EC
D0F4A:  LDR.W           R0, [R7,#var_78]
D0F4E:  LDR             R2, [R4]
D0F50:  LDR             R0, [R0,R1]
D0F52:  LDR.W           R1, [R9]
D0F56:  SUB             SP, SP, #0x10
D0F58:  SUB.W           R3, R7, #-var_34
D0F5C:  STRD.W          R3, R0, [SP,#0x98+var_98]
D0F60:  STRD.W          R1, R2, [SP,#0x98+n]
D0F64:  MOV             R3, R11
D0F66:  LDR.W           R0, [R7,#var_80]
D0F6A:  SUB.W           R1, R0, R2,LSL#1
D0F6E:  MOV             R0, R10
D0F70:  MOV             R2, R5
D0F72:  BLX             j_silk_LTP_analysis_filter_FIX
D0F76:  ADD             SP, SP, #0x10
D0F78:  B               loc_D0FFE
D0F7A:  STR.W           R10, [R7,#var_70]
D0F7E:  CMP.W           R9, #1
D0F82:  LDR.W           R10, [R7,#var_7C]
D0F86:  MOV             R11, R4
D0F88:  BLT             loc_D0FD4
D0F8A:  LDR.W           R3, [R7,#var_78]
D0F8E:  MOVW            R2, #0x11EC
D0F92:  LDR.W           R5, [R7,#var_70]
D0F96:  MOVS            R4, #0
D0F98:  ADD.W           R8, R3, R2
D0F9C:  LDR             R1, [R3,R2]
D0F9E:  LDR.W           R2, [R7,#var_80]
D0FA2:  SUB.W           R6, R2, R0,LSL#1
D0FA6:  SUB.W           R2, R7, #-var_34
D0FAA:  ADDS            R3, R0, R1
D0FAC:  MOV             R0, R5
D0FAE:  MOV             R1, R6
D0FB0:  LDR.W           R2, [R2,R4,LSL#2]
D0FB4:  BLX             j_silk_scale_copy_vector16
D0FB8:  LDR.W           R1, [R8]
D0FBC:  ADDS            R4, #1
D0FBE:  LDR.W           R0, [R11]
D0FC2:  LDR.W           R9, [R10]
D0FC6:  ADDS            R2, R0, R1
D0FC8:  ADD.W           R6, R6, R1,LSL#1
D0FCC:  CMP             R4, R9
D0FCE:  ADD.W           R5, R5, R2,LSL#1
D0FD2:  BLT             loc_D0FA6
D0FD4:  LDR.W           R4, [R7,#var_6C]
D0FD8:  ADD.W           R1, R9, R9,LSL#2
D0FDC:  ADD.W           R0, R4, #0x50 ; 'P'; int
D0FE0:  LSLS            R1, R1, #1; n
D0FE2:  BLX             sub_10967C
D0FE6:  MOVS            R0, #0
D0FE8:  MOVW            R1, #0x1230
D0FEC:  STR.W           R0, [R4,#0x18C]
D0FF0:  MOV             R8, R4
D0FF2:  LDR.W           R6, [R7,#var_78]
D0FF6:  MOV             R4, R11
D0FF8:  STR             R0, [R6,R1]
D0FFA:  LDR.W           R10, [R7,#var_70]
D0FFE:  MOVW            R0, #0x1238
D1002:  MOV             R9, R6
D1004:  LDR             R0, [R6,R0]
D1006:  CBZ             R0, loc_D1014
D1008:  MOVW            R3, #0xD70A
D100C:  MOV             R11, R8
D100E:  MOVT            R3, #0xA3
D1012:  B               loc_D1100
D1014:  STR.W           R4, [R7,#var_6C]
D1018:  MOV             R11, R8
D101A:  LDR.W           R0, [R11,#0x18C]
D101E:  MOVW            R2, #0x5555
D1022:  UXTH            R1, R0
D1024:  MULS            R1, R2
D1026:  LSRS            R1, R1, #0x10
D1028:  SMLABT.W        R0, R2, R0, R1
D102C:  ADD.W           R0, R0, #0x800
D1030:  BLX             j_silk_log2lin
D1034:  MOV             R6, R0
D1036:  LDRSH.W         R0, [R11,#0x184]
D103A:  MOVS            R1, #1
D103C:  MOVW            R2, #0x2710
D1040:  ADD.W           R0, R0, R0,LSL#1
D1044:  ADD.W           R0, R0, #0x10000
D1048:  ADD.W           R1, R1, R0,ASR#15
D104C:  SXTH            R0, R0
D104E:  SMULBB.W        R0, R0, R2
D1052:  ASRS            R1, R1, #1
D1054:  MULS            R1, R2
D1056:  ADD.W           R0, R1, R0,ASR#16
D105A:  CMP             R0, #0
D105C:  MOV             R1, R0
D105E:  IT MI
D1060:  NEGMI           R1, R0
D1062:  CLZ.W           R4, R1
D1066:  SUBS            R1, R4, #1
D1068:  LSL.W           R5, R0, R1
D106C:  MOV             R0, #0x1FFFFFFF
D1070:  ASRS            R1, R5, #0x10
D1072:  BLX             sub_108848
D1076:  CMP             R6, #0
D1078:  MOV             R2, R6
D107A:  IT MI
D107C:  NEGMI           R2, R6
D107E:  SXTH            R1, R0
D1080:  CLZ.W           R2, R2
D1084:  SUBS            R3, R2, #1
D1086:  LSL.W           R3, R6, R3
D108A:  UXTH            R6, R3
D108C:  MULS            R6, R1
D108E:  ASRS            R6, R6, #0x10
D1090:  SMLATB.W        R6, R3, R0, R6
D1094:  SMMUL.W         R5, R5, R6
D1098:  SUB.W           R3, R3, R5,LSL#3
D109C:  UXTH            R5, R3
D109E:  SMLABT.W        R0, R0, R3, R6
D10A2:  MULS            R1, R5
D10A4:  ADD.W           R0, R0, R1,ASR#16
D10A8:  RSB.W           R1, R4, #1
D10AC:  ADD             R1, R2
D10AE:  ADDS            R1, #0x1C
D10B0:  CMP             R1, #0xD
D10B2:  BGT             loc_D10DA
D10B4:  RSB.W           R1, R1, #0xE
D10B8:  LDR.W           R4, [R7,#var_6C]
D10BC:  MOV             R2, #0x7FFFFFFF
D10C0:  MOV.W           R3, #0x80000000
D10C4:  LSRS            R2, R1
D10C6:  ASRS            R3, R1
D10C8:  CMP             R3, R2
D10CA:  BLE             loc_D10EE
D10CC:  CMP             R0, R3
D10CE:  MOV             R6, R3
D10D0:  BGT             loc_D10FC
D10D2:  CMP             R0, R2
D10D4:  IT LT
D10D6:  MOVLT           R0, R2
D10D8:  B               loc_D10FA
D10DA:  SUB.W           R2, R1, #0xE
D10DE:  MOVS            R3, #0
D10E0:  CMP             R1, #0x2E ; '.'
D10E2:  IT LT
D10E4:  ASRLT.W         R3, R0, R2
D10E8:  LDR.W           R4, [R7,#var_6C]
D10EC:  B               loc_D1100
D10EE:  CMP             R0, R2
D10F0:  MOV             R6, R2
D10F2:  BGT             loc_D10FC
D10F4:  CMP             R0, R3
D10F6:  IT LT
D10F8:  MOVLT           R0, R3
D10FA:  MOV             R6, R0
D10FC:  LSL.W           R3, R6, R1
D1100:  SUB.W           R8, R7, #-var_68
D1104:  MOV             R0, R9
D1106:  MOV             R2, R10
D1108:  MOV             R1, R8
D110A:  BLX             j_silk_find_LPC_FIX
D110E:  MOVW            R0, #0x1194
D1112:  ADD.W           R5, R9, R0
D1116:  ADD.W           R6, R11, #0x10
D111A:  MOV             R0, R9
D111C:  MOV             R2, R8
D111E:  MOV             R3, R5
D1120:  MOV             R1, R6
D1122:  BLX             j_silk_process_NLSFs
D1126:  LDR.W           R2, [R7,#var_7C]
D112A:  MOVW            R0, #0x11EC
D112E:  MOVW            R1, #0x13E4
D1132:  LDR.W           R0, [R9,R0]
D1136:  LDR.W           R1, [R9,R1]
D113A:  LDR             R2, [R2]
D113C:  LDR             R3, [R4]
D113E:  SUB             SP, SP, #0x18
D1140:  SUB.W           R4, R7, #-var_44
D1144:  STRD.W          R4, R0, [SP,#0xA0+var_A0]
D1148:  STRD.W          R2, R3, [SP,#0xA0+var_98]
D114C:  ADD.W           R0, R11, #0x190
D1150:  STR             R1, [SP,#0xA0+n]
D1152:  ADD.W           R1, R11, #0x1A0
D1156:  MOV             R2, R10
D1158:  MOV             R3, R6
D115A:  BLX             j_silk_residual_energy_FIX
D115E:  ADD             SP, SP, #0x18
D1160:  MOV             R0, R5; dest
D1162:  MOV             R1, R8; src
D1164:  MOVS            R2, #0x20 ; ' '; n
D1166:  BLX             j_memcpy
D116A:  LDR             R0, =(__stack_chk_guard_ptr - 0xD1174)
D116C:  LDR.W           R1, [R7,#var_24]
D1170:  ADD             R0, PC; __stack_chk_guard_ptr
D1172:  LDR             R0, [R0]; __stack_chk_guard
D1174:  LDR             R0, [R0]
D1176:  SUBS            R0, R0, R1
D1178:  ITTTT EQ
D117A:  SUBEQ.W         R4, R7, #-var_1C
D117E:  MOVEQ           SP, R4
D1180:  POPEQ.W         {R8-R11}
D1184:  POPEQ           {R4-R7,PC}
D1186:  BLX             __stack_chk_fail
