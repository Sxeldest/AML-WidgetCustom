; =========================================================
; Game Engine Function: silk_encode_pulses
; Address            : 0x1A8E40 - 0x1A97B0
; =========================================================

1A8E40:  PUSH            {R4-R7,LR}
1A8E42:  ADD             R7, SP, #0xC
1A8E44:  PUSH.W          {R8-R11}
1A8E48:  SUB             SP, SP, #0x5C
1A8E4A:  MOV             R11, R0
1A8E4C:  LDR.W           R0, =(__stack_chk_guard_ptr - 0x1A8E5A)
1A8E50:  STR.W           R2, [R7,#var_70]
1A8E54:  MOV             R10, R1
1A8E56:  ADD             R0, PC; __stack_chk_guard_ptr
1A8E58:  LDR             R2, [R7,#arg_0]
1A8E5A:  MOV             R9, R3
1A8E5C:  LDR             R0, [R0]; __stack_chk_guard
1A8E5E:  BIC.W           R1, R2, #0xF
1A8E62:  ASRS            R3, R2, #4
1A8E64:  CMP             R1, R2
1A8E66:  LDR             R0, [R0]
1A8E68:  STR.W           R0, [R7,#var_24]
1A8E6C:  MOV.W           R0, #0
1A8E70:  STRD.W          R0, R0, [R7,#var_30]
1A8E74:  STRD.W          R0, R0, [R7,#var_38]
1A8E78:  STRD.W          R0, R0, [R7,#var_40]
1A8E7C:  STRD.W          R0, R0, [R7,#var_48]
1A8E80:  BGE             loc_1A8E92
1A8E82:  LDR             R1, [R7,#arg_0]
1A8E84:  ADDS            R3, #1
1A8E86:  STR.W           R0, [R9,R1]
1A8E8A:  ADD             R1, R9
1A8E8C:  STR             R0, [R1,#0xC]
1A8E8E:  STR             R0, [R1,#8]
1A8E90:  STR             R0, [R1,#4]
1A8E92:  SUB.W           R4, SP, R3,LSL#6
1A8E96:  MOV             SP, R4
1A8E98:  CMP             R3, #1
1A8E9A:  BLT.W           loc_1A96C6
1A8E9E:  ADD.W           R1, R4, #0xC
1A8EA2:  LSLS            R0, R3, #4
1A8EA4:  MOVS            R2, #0
1A8EA6:  STR.W           R3, [R7,#var_68]
1A8EAA:  LDRSB.W         R3, [R9,R2]
1A8EAE:  ADD.W           R6, R9, R2
1A8EB2:  CMP             R3, #0
1A8EB4:  IT MI
1A8EB6:  NEGMI           R3, R3
1A8EB8:  STR.W           R3, [R1,#-0xC]
1A8EBC:  ADD.W           R3, R4, R2,LSL#2
1A8EC0:  LDRSB.W         R5, [R6,#1]
1A8EC4:  ADDS            R2, #4
1A8EC6:  CMP             R5, #0
1A8EC8:  IT MI
1A8ECA:  NEGMI           R5, R5
1A8ECC:  STR             R5, [R3,#4]
1A8ECE:  LDRSB.W         R5, [R6,#2]
1A8ED2:  CMP             R5, #0
1A8ED4:  IT MI
1A8ED6:  NEGMI           R5, R5
1A8ED8:  STR             R5, [R3,#8]
1A8EDA:  LDRSB.W         R3, [R6,#3]
1A8EDE:  CMP             R3, #0
1A8EE0:  IT MI
1A8EE2:  NEGMI           R3, R3
1A8EE4:  CMP             R2, R0
1A8EE6:  STR             R3, [R1]
1A8EE8:  ADD.W           R1, R1, #0x10
1A8EEC:  BLT             loc_1A8EAA
1A8EEE:  LDR.W           R1, [R7,#var_68]
1A8EF2:  MOVS            R0, #7
1A8EF4:  ADD.W           R0, R0, R1,LSL#2
1A8EF8:  BIC.W           R0, R0, #7
1A8EFC:  SUB.W           R2, SP, R0
1A8F00:  STR.W           R2, [R7,#var_60]
1A8F04:  MOV             SP, R2
1A8F06:  SUB.W           R0, SP, R0
1A8F0A:  STR.W           R0, [R7,#var_50]
1A8F0E:  MOV             SP, R0
1A8F10:  CMP             R1, #1
1A8F12:  BLT.W           loc_1A96DA
1A8F16:  LDR.W           R0, =(silk_max_pulses_table_ptr - 0x1A8F2A)
1A8F1A:  MOV.W           R8, #0
1A8F1E:  STR.W           R11, [R7,#var_64]
1A8F22:  MOV.W           LR, #0
1A8F26:  ADD             R0, PC; silk_max_pulses_table_ptr
1A8F28:  STR.W           R9, [R7,#var_6C]
1A8F2C:  LDR.W           R1, [R7,#var_44]
1A8F30:  MOV.W           R9, #0
1A8F34:  LDR             R0, [R0]; silk_max_pulses_table
1A8F36:  STR.W           R10, [R7,#var_74]
1A8F3A:  STR.W           R1, [R7,#var_4C]
1A8F3E:  LDRB.W          R11, [R0]
1A8F42:  LDRB            R5, [R0,#(byte_BFF58 - 0xBFF57)]
1A8F44:  LDRB.W          R12, [R0,#(byte_BFF59 - 0xBFF57)]
1A8F48:  LDRB            R0, [R0,#(byte_BFF5A - 0xBFF57)]
1A8F4A:  STR.W           R0, [R7,#var_5C]
1A8F4E:  MOV             R0, R4
1A8F50:  STR.W           R4, [R7,#var_78]
1A8F54:  STRD.W          R12, R5, [R7,#var_58]
1A8F58:  LDR.W           R1, [R7,#var_50]
1A8F5C:  MOVS            R2, #0
1A8F5E:  STR.W           R2, [R1,LR,LSL#2]
1A8F62:  LDRD.W          R3, R10, [R0]
1A8F66:  B               loc_1A8FDA
1A8F68:  LDR.W           R2, [R7,#var_50]
1A8F6C:  LDR.W           R1, [R2,LR,LSL#2]
1A8F70:  ADDS            R1, #1
1A8F72:  STR.W           R1, [R2,LR,LSL#2]
1A8F76:  LDRD.W          R12, R2, [R0]
1A8F7A:  LDRD.W          R3, R6, [R0,#8]
1A8F7E:  MOV.W           R10, R2,ASR#1
1A8F82:  LDRD.W          R5, R4, [R0,#0x10]
1A8F86:  LDR             R1, [R0,#0x18]
1A8F88:  ASRS            R4, R4, #1
1A8F8A:  ASRS            R3, R3, #1
1A8F8C:  STR             R3, [R0,#8]
1A8F8E:  ASRS            R3, R6, #1
1A8F90:  LDR             R6, [R0,#0x1C]
1A8F92:  ASRS            R1, R1, #1
1A8F94:  STR             R3, [R0,#0xC]
1A8F96:  ASRS            R3, R5, #1
1A8F98:  LDR             R5, [R0,#0x20]
1A8F9A:  STR             R3, [R0,#0x10]
1A8F9C:  MOV.W           R3, R12,ASR#1
1A8FA0:  LDR             R2, [R0,#0x24]
1A8FA2:  STRD.W          R3, R10, [R0]
1A8FA6:  STR             R4, [R0,#0x14]
1A8FA8:  STR             R1, [R0,#0x18]
1A8FAA:  ASRS            R1, R6, #1
1A8FAC:  STR             R1, [R0,#0x1C]
1A8FAE:  ASRS            R1, R5, #1
1A8FB0:  STR             R1, [R0,#0x20]
1A8FB2:  ASRS            R1, R2, #1
1A8FB4:  STR             R1, [R0,#0x24]
1A8FB6:  LDR             R1, [R0,#0x28]
1A8FB8:  ASRS            R1, R1, #1
1A8FBA:  STR             R1, [R0,#0x28]
1A8FBC:  LDR             R1, [R0,#0x2C]
1A8FBE:  ASRS            R1, R1, #1
1A8FC0:  STR             R1, [R0,#0x2C]
1A8FC2:  LDR             R1, [R0,#0x30]
1A8FC4:  ASRS            R1, R1, #1
1A8FC6:  STR             R1, [R0,#0x30]
1A8FC8:  LDR             R1, [R0,#0x34]
1A8FCA:  ASRS            R1, R1, #1
1A8FCC:  STR             R1, [R0,#0x34]
1A8FCE:  LDR             R1, [R0,#0x38]
1A8FD0:  ASRS            R1, R1, #1
1A8FD2:  STR             R1, [R0,#0x38]
1A8FD4:  LDR             R1, [R0,#0x3C]
1A8FD6:  ASRS            R1, R1, #1
1A8FD8:  STR             R1, [R0,#0x3C]
1A8FDA:  ADD.W           R12, R10, R3
1A8FDE:  CMP             R12, R11
1A8FE0:  BLE             loc_1A8FE8
1A8FE2:  MOV.W           R10, #1
1A8FE6:  B               loc_1A905A
1A8FE8:  STR.W           R12, [R7,#var_48]
1A8FEC:  LDRD.W          R1, R2, [R0,#8]
1A8FF0:  ADDS            R6, R2, R1
1A8FF2:  CMP             R6, R11
1A8FF4:  BLE             loc_1A8FFC
1A8FF6:  MOV.W           R10, #1
1A8FFA:  B               loc_1A9058
1A8FFC:  LDRD.W          R1, R2, [R0,#0x10]
1A9000:  ADD             R1, R2
1A9002:  CMP             R1, R11
1A9004:  BGT             loc_1A904C
1A9006:  STR.W           R1, [R7,#var_40]
1A900A:  LDRD.W          R1, R2, [R0,#0x18]
1A900E:  ADD             R1, R2
1A9010:  CMP             R1, R11
1A9012:  BGT             loc_1A904C
1A9014:  STR.W           R1, [R7,#var_3C]
1A9018:  LDRD.W          R1, R2, [R0,#0x20]
1A901C:  ADD             R1, R2
1A901E:  CMP             R1, R11
1A9020:  BGT             loc_1A904C
1A9022:  STR.W           R1, [R7,#var_38]
1A9026:  LDRD.W          R1, R2, [R0,#0x28]
1A902A:  ADD             R1, R2
1A902C:  CMP             R1, R11
1A902E:  BGT             loc_1A904C
1A9030:  STR.W           R1, [R7,#var_34]
1A9034:  LDRD.W          R1, R2, [R0,#0x30]
1A9038:  ADD             R1, R2
1A903A:  CMP             R1, R11
1A903C:  BGT             loc_1A904C
1A903E:  STR.W           R1, [R7,#var_30]
1A9042:  LDRD.W          R1, R2, [R0,#0x38]
1A9046:  ADD             R1, R2
1A9048:  CMP             R1, R11
1A904A:  BLE             loc_1A9108
1A904C:  MOV.W           R10, #1
1A9050:  MOV             R1, R6
1A9052:  MOV             R8, R6
1A9054:  STR.W           R1, [R7,#var_4C]
1A9058:  MOV             R9, R12
1A905A:  LDR.W           R5, [R7,#var_54]
1A905E:  ADD.W           R3, R8, R9
1A9062:  LDR.W           R12, [R7,#var_58]
1A9066:  CMP             R3, R5
1A9068:  BLE             loc_1A906E
1A906A:  MOVS            R6, #1
1A906C:  B               loc_1A90AC
1A906E:  LDRD.W          R1, R2, [R7,#var_40]
1A9072:  STR.W           R3, [R7,#var_48]
1A9076:  ADD             R2, R1
1A9078:  CMP             R2, R5
1A907A:  BLE             loc_1A9080
1A907C:  MOVS            R6, #1
1A907E:  B               loc_1A90AA
1A9080:  LDRD.W          R1, R6, [R7,#var_38]
1A9084:  ADD             R1, R6
1A9086:  CMP             R1, R5
1A9088:  BGT             loc_1A9098
1A908A:  LDRD.W          R6, R4, [R7,#var_30]
1A908E:  STR.W           R1, [R7,#var_40]
1A9092:  ADDS            R1, R4, R6
1A9094:  CMP             R1, R5
1A9096:  BLE             loc_1A909C
1A9098:  MOVS            R6, #1
1A909A:  B               loc_1A90A2
1A909C:  STR.W           R1, [R7,#var_3C]
1A90A0:  MOVS            R6, #0
1A90A2:  MOV             R1, R2
1A90A4:  MOV             R8, R2
1A90A6:  STR.W           R1, [R7,#var_4C]
1A90AA:  MOV             R9, R3
1A90AC:  ADD.W           R1, R8, R9
1A90B0:  ADD.W           R3, R6, R10
1A90B4:  CMP             R1, R12
1A90B6:  BLE             loc_1A90BC
1A90B8:  MOVS            R2, #1
1A90BA:  B               loc_1A90DE
1A90BC:  LDRD.W          R2, R6, [R7,#var_40]
1A90C0:  MOV             R9, R1
1A90C2:  STR.W           R1, [R7,#var_48]
1A90C6:  ADD             R6, R2
1A90C8:  MOVS            R2, #0
1A90CA:  CMP             R6, R12
1A90CC:  ITE GT
1A90CE:  MOVGT           R2, #1
1A90D0:  MOVLE           R8, R6
1A90D2:  LDR.W           R4, [R7,#var_4C]
1A90D6:  IT LE
1A90D8:  MOVLE           R4, R6
1A90DA:  STR.W           R4, [R7,#var_4C]
1A90DE:  ADDS            R1, R3, R2
1A90E0:  LDR.W           R2, [R7,#var_5C]
1A90E4:  ADD.W           R6, R8, R9
1A90E8:  CMP             R6, R2
1A90EA:  BLE             loc_1A90F6
1A90EC:  MOVS            R2, #1
1A90EE:  CMN             R1, R2
1A90F0:  BNE.W           loc_1A8F68
1A90F4:  B               loc_1A9112
1A90F6:  LDR.W           R2, [R7,#var_60]
1A90FA:  STR.W           R6, [R2,LR,LSL#2]
1A90FE:  MOVS            R2, #0
1A9100:  CMN             R1, R2
1A9102:  BNE.W           loc_1A8F68
1A9106:  B               loc_1A9112
1A9108:  STR.W           R1, [R7,#var_2C]
1A910C:  MOV.W           R10, #0
1A9110:  B               loc_1A9050
1A9112:  LDR.W           R1, [R7,#var_68]
1A9116:  ADD.W           LR, LR, #1
1A911A:  ADDS            R0, #0x40 ; '@'
1A911C:  CMP             LR, R1
1A911E:  BNE.W           loc_1A8F58
1A9122:  LDR.W           R10, [R7,#var_74]
1A9126:  LDR.W           R4, [R7,#var_68]
1A912A:  LDR.W           R0, [R7,#var_4C]
1A912E:  STR.W           R0, [R7,#var_44]
1A9132:  MOV.W           R0, R10,ASR#1
1A9136:  CMP             R4, #0
1A9138:  BLE.W           loc_1A979A
1A913C:  LDR.W           R1, =(silk_rate_levels_BITS_Q5_ptr - 0x1A914E)
1A9140:  ADD.W           R0, R0, R0,LSL#3
1A9144:  LDR.W           R3, =(silk_pulses_per_block_BITS_Q5_ptr - 0x1A9154)
1A9148:  MOVS            R2, #0
1A914A:  ADD             R1, PC; silk_rate_levels_BITS_Q5_ptr
1A914C:  LDR.W           R11, [R7,#var_64]
1A9150:  ADD             R3, PC; silk_pulses_per_block_BITS_Q5_ptr
1A9152:  LDR             R1, [R1]; silk_rate_levels_BITS_Q5
1A9154:  LDR             R3, [R3]; silk_pulses_per_block_BITS_Q5
1A9156:  LDRB            R1, [R1,R0]
1A9158:  LDR.W           R6, [R7,#var_50]
1A915C:  LDR.W           R6, [R6,R2,LSL#2]
1A9160:  CMP             R6, #0
1A9162:  ITTE LE
1A9164:  LDRLE.W         R6, [R7,#var_60]
1A9168:  LDRLE.W         R6, [R6,R2,LSL#2]
1A916C:  MOVGT           R6, #(byte_C0020 - 0xC000F)
1A916E:  ADDS            R2, #1
1A9170:  CMP             R4, R2
1A9172:  LDRB            R6, [R3,R6]
1A9174:  ADD             R1, R6
1A9176:  BNE             loc_1A9158
1A9178:  LDR.W           R2, =(silk_rate_levels_BITS_Q5_ptr - 0x1A9186)
1A917C:  MOVS            R3, #0
1A917E:  LDR.W           R6, =(silk_pulses_per_block_BITS_Q5_ptr - 0x1A9188)
1A9182:  ADD             R2, PC; silk_rate_levels_BITS_Q5_ptr
1A9184:  ADD             R6, PC; silk_pulses_per_block_BITS_Q5_ptr
1A9186:  LDR             R2, [R2]; silk_rate_levels_BITS_Q5
1A9188:  LDR             R6, [R6]; silk_pulses_per_block_BITS_Q5
1A918A:  ADD             R2, R0
1A918C:  LDRB            R2, [R2,#1]
1A918E:  LDR.W           R5, [R7,#var_50]
1A9192:  LDR.W           R5, [R5,R3,LSL#2]
1A9196:  CMP             R5, #0
1A9198:  ITTE LE
1A919A:  LDRLE.W         R5, [R7,#var_60]
1A919E:  LDRLE.W         R5, [R5,R3,LSL#2]
1A91A2:  MOVGT           R5, #0x11
1A91A4:  ADDS            R3, #1
1A91A6:  CMP             R4, R3
1A91A8:  ADD             R5, R6
1A91AA:  LDRB            R5, [R5,#(byte_C0032 - 0xC0020)]
1A91AC:  ADD             R2, R5
1A91AE:  BNE             loc_1A918E
1A91B0:  LDR.W           R3, =(silk_rate_levels_BITS_Q5_ptr - 0x1A91C2)
1A91B4:  CMP             R2, R1
1A91B6:  MOV.W           R8, #0
1A91BA:  MOV.W           R6, #0
1A91BE:  ADD             R3, PC; silk_rate_levels_BITS_Q5_ptr
1A91C0:  IT LT
1A91C2:  MOVLT.W         R8, #1
1A91C6:  IT LT
1A91C8:  MOVLT           R1, R2
1A91CA:  LDR.W           R2, =(silk_pulses_per_block_BITS_Q5_ptr - 0x1A91D4)
1A91CE:  LDR             R3, [R3]; silk_rate_levels_BITS_Q5
1A91D0:  ADD             R2, PC; silk_pulses_per_block_BITS_Q5_ptr
1A91D2:  ADD             R3, R0
1A91D4:  LDR             R2, [R2]; silk_pulses_per_block_BITS_Q5
1A91D6:  LDRB            R3, [R3,#2]
1A91D8:  LDR.W           R5, [R7,#var_50]
1A91DC:  LDR.W           R5, [R5,R6,LSL#2]
1A91E0:  CMP             R5, #0
1A91E2:  ITTE LE
1A91E4:  LDRLE.W         R5, [R7,#var_60]
1A91E8:  LDRLE.W         R5, [R5,R6,LSL#2]
1A91EC:  MOVGT           R5, #0x11
1A91EE:  ADDS            R6, #1
1A91F0:  CMP             R4, R6
1A91F2:  ADD             R5, R2
1A91F4:  LDRB.W          R5, [R5,#(byte_C0044 - 0xC0020)]
1A91F8:  ADD             R3, R5
1A91FA:  BNE             loc_1A91D8
1A91FC:  LDR.W           R2, =(silk_rate_levels_BITS_Q5_ptr - 0x1A9212)
1A9200:  CMP             R3, R1
1A9202:  LDR.W           R6, =(silk_pulses_per_block_BITS_Q5_ptr - 0x1A9216)
1A9206:  ITT LT
1A9208:  MOVLT.W         R8, #2
1A920C:  MOVLT           R1, R3
1A920E:  ADD             R2, PC; silk_rate_levels_BITS_Q5_ptr
1A9210:  MOVS            R3, #0
1A9212:  ADD             R6, PC; silk_pulses_per_block_BITS_Q5_ptr
1A9214:  LDR             R2, [R2]; silk_rate_levels_BITS_Q5
1A9216:  LDR             R6, [R6]; silk_pulses_per_block_BITS_Q5
1A9218:  ADD             R2, R0
1A921A:  LDRB            R2, [R2,#3]
1A921C:  LDR.W           R5, [R7,#var_50]
1A9220:  LDR.W           R5, [R5,R3,LSL#2]
1A9224:  CMP             R5, #0
1A9226:  ITTE LE
1A9228:  LDRLE.W         R5, [R7,#var_60]
1A922C:  LDRLE.W         R5, [R5,R3,LSL#2]
1A9230:  MOVGT           R5, #0x11
1A9232:  ADDS            R3, #1
1A9234:  CMP             R4, R3
1A9236:  ADD             R5, R6
1A9238:  LDRB.W          R5, [R5,#(byte_C0056 - 0xC0020)]
1A923C:  ADD             R2, R5
1A923E:  BNE             loc_1A921C
1A9240:  LDR.W           R3, =(silk_rate_levels_BITS_Q5_ptr - 0x1A9256)
1A9244:  CMP             R2, R1
1A9246:  LDR.W           R6, =(silk_pulses_per_block_BITS_Q5_ptr - 0x1A9258)
1A924A:  ITT LT
1A924C:  MOVLT.W         R8, #3
1A9250:  MOVLT           R1, R2
1A9252:  ADD             R3, PC; silk_rate_levels_BITS_Q5_ptr
1A9254:  ADD             R6, PC; silk_pulses_per_block_BITS_Q5_ptr
1A9256:  LDR             R2, [R3]; silk_rate_levels_BITS_Q5
1A9258:  MOVS            R3, #0
1A925A:  LDR             R6, [R6]; silk_pulses_per_block_BITS_Q5
1A925C:  ADD             R2, R0
1A925E:  LDRB            R2, [R2,#4]
1A9260:  LDR.W           R5, [R7,#var_50]
1A9264:  LDR.W           R5, [R5,R3,LSL#2]
1A9268:  CMP             R5, #0
1A926A:  ITTE LE
1A926C:  LDRLE.W         R5, [R7,#var_60]
1A9270:  LDRLE.W         R5, [R5,R3,LSL#2]
1A9274:  MOVGT           R5, #0x11
1A9276:  ADDS            R3, #1
1A9278:  CMP             R4, R3
1A927A:  ADD             R5, R6
1A927C:  LDRB.W          R5, [R5,#(byte_C0068 - 0xC0020)]
1A9280:  ADD             R2, R5
1A9282:  BNE             loc_1A9260
1A9284:  LDR.W           R3, =(silk_rate_levels_BITS_Q5_ptr - 0x1A929A)
1A9288:  CMP             R2, R1
1A928A:  LDR.W           R6, =(silk_pulses_per_block_BITS_Q5_ptr - 0x1A929C)
1A928E:  ITT LT
1A9290:  MOVLT.W         R8, #4
1A9294:  MOVLT           R1, R2
1A9296:  ADD             R3, PC; silk_rate_levels_BITS_Q5_ptr
1A9298:  ADD             R6, PC; silk_pulses_per_block_BITS_Q5_ptr
1A929A:  LDR             R2, [R3]; silk_rate_levels_BITS_Q5
1A929C:  MOVS            R3, #0
1A929E:  LDR             R6, [R6]; silk_pulses_per_block_BITS_Q5
1A92A0:  ADD             R2, R0
1A92A2:  LDRB            R2, [R2,#5]
1A92A4:  LDR.W           R5, [R7,#var_50]
1A92A8:  LDR.W           R5, [R5,R3,LSL#2]
1A92AC:  CMP             R5, #0
1A92AE:  ITTE LE
1A92B0:  LDRLE.W         R5, [R7,#var_60]
1A92B4:  LDRLE.W         R5, [R5,R3,LSL#2]
1A92B8:  MOVGT           R5, #0x11
1A92BA:  ADDS            R3, #1
1A92BC:  CMP             R4, R3
1A92BE:  ADD             R5, R6
1A92C0:  LDRB.W          R5, [R5,#(byte_C007A - 0xC0020)]
1A92C4:  ADD             R2, R5
1A92C6:  BNE             loc_1A92A4
1A92C8:  LDR.W           R3, =(silk_rate_levels_BITS_Q5_ptr - 0x1A92DE)
1A92CC:  CMP             R2, R1
1A92CE:  LDR.W           R6, =(silk_pulses_per_block_BITS_Q5_ptr - 0x1A92E0)
1A92D2:  ITT LT
1A92D4:  MOVLT.W         R8, #5
1A92D8:  MOVLT           R1, R2
1A92DA:  ADD             R3, PC; silk_rate_levels_BITS_Q5_ptr
1A92DC:  ADD             R6, PC; silk_pulses_per_block_BITS_Q5_ptr
1A92DE:  LDR             R2, [R3]; silk_rate_levels_BITS_Q5
1A92E0:  MOVS            R3, #0
1A92E2:  LDR             R6, [R6]; silk_pulses_per_block_BITS_Q5
1A92E4:  ADD             R2, R0
1A92E6:  LDRB            R2, [R2,#6]
1A92E8:  LDR.W           R5, [R7,#var_50]
1A92EC:  LDR.W           R5, [R5,R3,LSL#2]
1A92F0:  CMP             R5, #0
1A92F2:  ITTE LE
1A92F4:  LDRLE.W         R5, [R7,#var_60]
1A92F8:  LDRLE.W         R5, [R5,R3,LSL#2]
1A92FC:  MOVGT           R5, #0x11
1A92FE:  ADDS            R3, #1
1A9300:  CMP             R4, R3
1A9302:  ADD             R5, R6
1A9304:  LDRB.W          R5, [R5,#(byte_C008C - 0xC0020)]
1A9308:  ADD             R2, R5
1A930A:  BNE             loc_1A92E8
1A930C:  LDR.W           R3, =(silk_rate_levels_BITS_Q5_ptr - 0x1A9322)
1A9310:  CMP             R2, R1
1A9312:  LDR.W           R6, =(silk_pulses_per_block_BITS_Q5_ptr - 0x1A9324)
1A9316:  ITT LT
1A9318:  MOVLT.W         R8, #6
1A931C:  MOVLT           R1, R2
1A931E:  ADD             R3, PC; silk_rate_levels_BITS_Q5_ptr
1A9320:  ADD             R6, PC; silk_pulses_per_block_BITS_Q5_ptr
1A9322:  LDR             R2, [R3]; silk_rate_levels_BITS_Q5
1A9324:  MOVS            R3, #0
1A9326:  LDR             R6, [R6]; silk_pulses_per_block_BITS_Q5
1A9328:  ADD             R2, R0
1A932A:  LDRB            R2, [R2,#7]
1A932C:  LDR.W           R5, [R7,#var_50]
1A9330:  LDR.W           R5, [R5,R3,LSL#2]
1A9334:  CMP             R5, #0
1A9336:  ITTE LE
1A9338:  LDRLE.W         R5, [R7,#var_60]
1A933C:  LDRLE.W         R5, [R5,R3,LSL#2]
1A9340:  MOVGT           R5, #0x11
1A9342:  ADDS            R3, #1
1A9344:  CMP             R4, R3
1A9346:  ADD             R5, R6
1A9348:  LDRB.W          R5, [R5,#(byte_C009E - 0xC0020)]
1A934C:  ADD             R2, R5
1A934E:  BNE             loc_1A932C
1A9350:  LDR.W           R3, =(silk_rate_levels_BITS_Q5_ptr - 0x1A9366)
1A9354:  CMP             R2, R1
1A9356:  LDR.W           R6, =(silk_pulses_per_block_BITS_Q5_ptr - 0x1A9368)
1A935A:  ITT LT
1A935C:  MOVLT.W         R8, #7
1A9360:  MOVLT           R1, R2
1A9362:  ADD             R3, PC; silk_rate_levels_BITS_Q5_ptr
1A9364:  ADD             R6, PC; silk_pulses_per_block_BITS_Q5_ptr
1A9366:  LDR             R2, [R3]; silk_rate_levels_BITS_Q5
1A9368:  MOVS            R3, #0
1A936A:  LDR             R6, [R6]; silk_pulses_per_block_BITS_Q5
1A936C:  ADD             R2, R0
1A936E:  LDRB            R2, [R2,#8]
1A9370:  LDR.W           R5, [R7,#var_50]
1A9374:  LDR.W           R5, [R5,R3,LSL#2]
1A9378:  CMP             R5, #0
1A937A:  ITTE LE
1A937C:  LDRLE.W         R5, [R7,#var_60]
1A9380:  LDRLE.W         R5, [R5,R3,LSL#2]
1A9384:  MOVGT           R5, #0x11
1A9386:  ADDS            R3, #1
1A9388:  CMP             R4, R3
1A938A:  ADD             R5, R6
1A938C:  LDRB.W          R5, [R5,#(byte_C00B0 - 0xC0020)]
1A9390:  ADD             R2, R5
1A9392:  BNE             loc_1A9370
1A9394:  LDR.W           R3, =(silk_rate_levels_iCDF_ptr - 0x1A93A4)
1A9398:  CMP             R2, R1
1A939A:  IT LT
1A939C:  MOVLT.W         R8, #8
1A93A0:  ADD             R3, PC; silk_rate_levels_iCDF_ptr
1A93A2:  LDR             R1, [R3]; silk_rate_levels_iCDF
1A93A4:  MOVS            R3, #8
1A93A6:  ADDS            R2, R1, R0
1A93A8:  MOV             R0, R11
1A93AA:  MOV             R1, R8
1A93AC:  BLX             j_ec_enc_icdf
1A93B0:  CMP             R4, #1
1A93B2:  BLT.W           loc_1A97A4
1A93B6:  LDR.W           R0, =(silk_pulses_per_block_iCDF_ptr - 0x1A93C6)
1A93BA:  ADD.W           R1, R8, R8,LSL#3
1A93BE:  MOV.W           R9, #0
1A93C2:  ADD             R0, PC; silk_pulses_per_block_iCDF_ptr
1A93C4:  LDR             R0, [R0]; silk_pulses_per_block_iCDF
1A93C6:  ADD.W           R8, R0, R1,LSL#1
1A93CA:  LDR.W           R0, =(silk_pulses_per_block_iCDF_ptr - 0x1A93D2)
1A93CE:  ADD             R0, PC; silk_pulses_per_block_iCDF_ptr
1A93D0:  LDR             R0, [R0]; silk_pulses_per_block_iCDF
1A93D2:  ADD.W           R4, R0, #0xA2
1A93D6:  LDR.W           R0, =(silk_pulses_per_block_iCDF_ptr - 0x1A93DE)
1A93DA:  ADD             R0, PC; silk_pulses_per_block_iCDF_ptr
1A93DC:  LDR             R0, [R0]; silk_pulses_per_block_iCDF
1A93DE:  ADDS            R0, #0xA2
1A93E0:  STR.W           R0, [R7,#var_4C]
1A93E4:  LDR.W           R0, [R7,#var_50]
1A93E8:  LDR.W           R5, [R0,R9,LSL#2]
1A93EC:  CBZ             R5, loc_1A941E
1A93EE:  MOV             R0, R11
1A93F0:  MOVS            R1, #0x11
1A93F2:  MOV             R2, R8
1A93F4:  MOVS            R3, #8
1A93F6:  BLX             j_ec_enc_icdf
1A93FA:  CMP             R5, #2
1A93FC:  BLT             loc_1A9414
1A93FE:  SUBS            R5, #1
1A9400:  MOVS            R6, #0
1A9402:  MOV             R0, R11
1A9404:  MOVS            R1, #0x11
1A9406:  MOV             R2, R4
1A9408:  MOVS            R3, #8
1A940A:  BLX             j_ec_enc_icdf
1A940E:  ADDS            R6, #1
1A9410:  CMP             R6, R5
1A9412:  BLT             loc_1A9402
1A9414:  LDR.W           R0, [R7,#var_60]
1A9418:  LDR.W           R2, [R7,#var_4C]
1A941C:  B               loc_1A9424
1A941E:  LDR.W           R0, [R7,#var_60]
1A9422:  MOV             R2, R8
1A9424:  LDR.W           R1, [R0,R9,LSL#2]
1A9428:  MOV             R0, R11
1A942A:  MOVS            R3, #8
1A942C:  BLX             j_ec_enc_icdf
1A9430:  LDR.W           R0, [R7,#var_68]
1A9434:  ADD.W           R9, R9, #1
1A9438:  CMP             R9, R0
1A943A:  BNE             loc_1A93E4
1A943C:  LDR.W           R0, [R7,#var_68]
1A9440:  LDR.W           R9, [R7,#var_6C]
1A9444:  CMP             R0, #1
1A9446:  BLT.W           loc_1A975E
1A944A:  LDR.W           R5, [R7,#var_78]
1A944E:  MOVS            R4, #0
1A9450:  LDR.W           R0, [R7,#var_60]
1A9454:  LDR.W           R0, [R0,R4,LSL#2]
1A9458:  CMP             R0, #1
1A945A:  ITTT GE
1A945C:  MOVGE           R0, R11
1A945E:  MOVGE           R1, R5
1A9460:  BLXGE           j_silk_shell_encoder
1A9464:  LDR.W           R0, [R7,#var_68]
1A9468:  ADDS            R4, #1
1A946A:  ADDS            R5, #0x40 ; '@'
1A946C:  CMP             R0, R4
1A946E:  BNE             loc_1A9450
1A9470:  LDR.W           R0, [R7,#var_68]
1A9474:  CMP             R0, #1
1A9476:  BLT.W           loc_1A97AA
1A947A:  LDR             R0, =(silk_lsb_iCDF_ptr - 0x1A9486)
1A947C:  MOVS            R1, #0
1A947E:  LDR.W           R8, [R7,#var_64]
1A9482:  ADD             R0, PC; silk_lsb_iCDF_ptr
1A9484:  LDR             R0, [R0]; silk_lsb_iCDF
1A9486:  STR.W           R0, [R7,#var_58]
1A948A:  LDR             R0, =(silk_lsb_iCDF_ptr - 0x1A9490)
1A948C:  ADD             R0, PC; silk_lsb_iCDF_ptr
1A948E:  LDR.W           R11, [R0]; silk_lsb_iCDF
1A9492:  LDR             R0, =(silk_lsb_iCDF_ptr - 0x1A9498)
1A9494:  ADD             R0, PC; silk_lsb_iCDF_ptr
1A9496:  LDR             R0, [R0]; silk_lsb_iCDF
1A9498:  STR.W           R0, [R7,#var_4C]
1A949C:  LDR.W           R0, [R7,#var_50]
1A94A0:  STR.W           R1, [R7,#var_54]
1A94A4:  LDR.W           R0, [R0,R1,LSL#2]
1A94A8:  CMP             R0, #1
1A94AA:  BLT.W           loc_1A96A8
1A94AE:  LDR.W           R2, [R7,#var_54]
1A94B2:  LDR.W           R1, [R7,#var_6C]
1A94B6:  ADD.W           R9, R1, R2,LSL#4
1A94BA:  BNE.W           loc_1A9664
1A94BE:  LDRSB.W         R0, [R9]
1A94C2:  MOVS            R3, #8
1A94C4:  CMP             R0, #0
1A94C6:  IT MI
1A94C8:  NEGMI           R0, R0
1A94CA:  LDR.W           R4, [R7,#var_58]
1A94CE:  AND.W           R1, R0, #1
1A94D2:  LDR.W           R0, [R7,#var_64]
1A94D6:  MOV             R2, R4
1A94D8:  BLX             j_ec_enc_icdf
1A94DC:  LDRSB.W         R0, [R9,#1]
1A94E0:  MOV             R2, R4
1A94E2:  MOVS            R3, #8
1A94E4:  CMP             R0, #0
1A94E6:  IT MI
1A94E8:  NEGMI           R0, R0
1A94EA:  AND.W           R1, R0, #1
1A94EE:  LDR.W           R0, [R7,#var_64]
1A94F2:  BLX             j_ec_enc_icdf
1A94F6:  LDRSB.W         R0, [R9,#2]
1A94FA:  MOV             R2, R4
1A94FC:  MOVS            R3, #8
1A94FE:  CMP             R0, #0
1A9500:  IT MI
1A9502:  NEGMI           R0, R0
1A9504:  AND.W           R1, R0, #1
1A9508:  LDR.W           R0, [R7,#var_64]
1A950C:  BLX             j_ec_enc_icdf
1A9510:  LDRSB.W         R0, [R9,#3]
1A9514:  MOV             R2, R4
1A9516:  MOVS            R3, #8
1A9518:  CMP             R0, #0
1A951A:  IT MI
1A951C:  NEGMI           R0, R0
1A951E:  AND.W           R1, R0, #1
1A9522:  LDR.W           R0, [R7,#var_64]
1A9526:  BLX             j_ec_enc_icdf
1A952A:  LDRSB.W         R0, [R9,#4]
1A952E:  MOV             R2, R4
1A9530:  MOVS            R3, #8
1A9532:  CMP             R0, #0
1A9534:  IT MI
1A9536:  NEGMI           R0, R0
1A9538:  AND.W           R1, R0, #1
1A953C:  LDR.W           R0, [R7,#var_64]
1A9540:  BLX             j_ec_enc_icdf
1A9544:  LDRSB.W         R0, [R9,#5]
1A9548:  MOV             R2, R4
1A954A:  MOVS            R3, #8
1A954C:  CMP             R0, #0
1A954E:  IT MI
1A9550:  NEGMI           R0, R0
1A9552:  AND.W           R1, R0, #1
1A9556:  LDR.W           R0, [R7,#var_64]
1A955A:  BLX             j_ec_enc_icdf
1A955E:  LDRSB.W         R0, [R9,#6]
1A9562:  MOV             R2, R4
1A9564:  MOVS            R3, #8
1A9566:  CMP             R0, #0
1A9568:  IT MI
1A956A:  NEGMI           R0, R0
1A956C:  AND.W           R1, R0, #1
1A9570:  LDR.W           R0, [R7,#var_64]
1A9574:  BLX             j_ec_enc_icdf
1A9578:  LDRSB.W         R0, [R9,#7]
1A957C:  MOV             R2, R4
1A957E:  MOVS            R3, #8
1A9580:  CMP             R0, #0
1A9582:  IT MI
1A9584:  NEGMI           R0, R0
1A9586:  AND.W           R1, R0, #1
1A958A:  LDR.W           R0, [R7,#var_64]
1A958E:  BLX             j_ec_enc_icdf
1A9592:  LDRSB.W         R0, [R9,#8]
1A9596:  MOV             R2, R4
1A9598:  MOVS            R3, #8
1A959A:  CMP             R0, #0
1A959C:  IT MI
1A959E:  NEGMI           R0, R0
1A95A0:  AND.W           R1, R0, #1
1A95A4:  LDR.W           R0, [R7,#var_64]
1A95A8:  BLX             j_ec_enc_icdf
1A95AC:  LDRSB.W         R0, [R9,#9]
1A95B0:  MOV             R2, R4
1A95B2:  MOVS            R3, #8
1A95B4:  CMP             R0, #0
1A95B6:  IT MI
1A95B8:  NEGMI           R0, R0
1A95BA:  AND.W           R1, R0, #1
1A95BE:  LDR.W           R0, [R7,#var_64]
1A95C2:  BLX             j_ec_enc_icdf
1A95C6:  LDRSB.W         R0, [R9,#0xA]
1A95CA:  MOV             R2, R4
1A95CC:  MOVS            R3, #8
1A95CE:  CMP             R0, #0
1A95D0:  IT MI
1A95D2:  NEGMI           R0, R0
1A95D4:  AND.W           R1, R0, #1
1A95D8:  LDR.W           R0, [R7,#var_64]
1A95DC:  BLX             j_ec_enc_icdf
1A95E0:  LDRSB.W         R0, [R9,#0xB]
1A95E4:  MOV             R2, R4
1A95E6:  MOVS            R3, #8
1A95E8:  CMP             R0, #0
1A95EA:  IT MI
1A95EC:  NEGMI           R0, R0
1A95EE:  AND.W           R1, R0, #1
1A95F2:  LDR.W           R0, [R7,#var_64]
1A95F6:  BLX             j_ec_enc_icdf
1A95FA:  LDRSB.W         R0, [R9,#0xC]
1A95FE:  MOV             R2, R4
1A9600:  MOVS            R3, #8
1A9602:  CMP             R0, #0
1A9604:  IT MI
1A9606:  NEGMI           R0, R0
1A9608:  AND.W           R1, R0, #1
1A960C:  LDR.W           R0, [R7,#var_64]
1A9610:  BLX             j_ec_enc_icdf
1A9614:  LDRSB.W         R0, [R9,#0xD]
1A9618:  MOV             R2, R4
1A961A:  MOVS            R3, #8
1A961C:  CMP             R0, #0
1A961E:  IT MI
1A9620:  NEGMI           R0, R0
1A9622:  AND.W           R1, R0, #1
1A9626:  LDR.W           R0, [R7,#var_64]
1A962A:  BLX             j_ec_enc_icdf
1A962E:  LDRSB.W         R0, [R9,#0xE]
1A9632:  MOV             R2, R4
1A9634:  MOVS            R3, #8
1A9636:  CMP             R0, #0
1A9638:  IT MI
1A963A:  NEGMI           R0, R0
1A963C:  AND.W           R1, R0, #1
1A9640:  LDR.W           R0, [R7,#var_64]
1A9644:  BLX             j_ec_enc_icdf
1A9648:  LDRSB.W         R0, [R9,#0xF]
1A964C:  MOV             R2, R4
1A964E:  MOVS            R3, #8
1A9650:  CMP             R0, #0
1A9652:  IT MI
1A9654:  NEGMI           R0, R0
1A9656:  AND.W           R1, R0, #1
1A965A:  LDR.W           R0, [R7,#var_64]
1A965E:  BLX             j_ec_enc_icdf
1A9662:  B               loc_1A96A8
1A9664:  ADD.W           R10, R0, #1
1A9668:  MOVS            R5, #0
1A966A:  LDRSB.W         R0, [R9,R5]
1A966E:  MOV             R4, R10
1A9670:  CMP             R0, #0
1A9672:  IT MI
1A9674:  NEGMI           R0, R0
1A9676:  SXTB            R6, R0
1A9678:  SUBS            R0, R4, #2
1A967A:  MOV             R2, R11
1A967C:  MOVS            R3, #8
1A967E:  LSR.W           R0, R6, R0
1A9682:  AND.W           R1, R0, #1
1A9686:  MOV             R0, R8
1A9688:  BLX             j_ec_enc_icdf
1A968C:  SUBS            R4, #1
1A968E:  CMP             R4, #2
1A9690:  BGT             loc_1A9678
1A9692:  LDR.W           R2, [R7,#var_4C]
1A9696:  AND.W           R1, R6, #1
1A969A:  MOV             R0, R8
1A969C:  MOVS            R3, #8
1A969E:  BLX             j_ec_enc_icdf
1A96A2:  ADDS            R5, #1
1A96A4:  CMP             R5, #0x10
1A96A6:  BNE             loc_1A966A
1A96A8:  LDR.W           R1, [R7,#var_54]
1A96AC:  LDR.W           R0, [R7,#var_68]
1A96B0:  ADDS            R1, #1
1A96B2:  CMP             R1, R0
1A96B4:  BNE.W           loc_1A949C
1A96B8:  LDR.W           R10, [R7,#var_74]
1A96BC:  LDR.W           R9, [R7,#var_6C]
1A96C0:  LDR.W           R11, [R7,#var_64]
1A96C4:  B               loc_1A975E
1A96C6:  MOVS            R0, #7
1A96C8:  ADD.W           R0, R0, R3,LSL#2
1A96CC:  BIC.W           R0, R0, #7
1A96D0:  SUB.W           R0, SP, R0
1A96D4:  STR.W           R0, [R7,#var_60]
1A96D8:  MOV             SP, R0
1A96DA:  MOV.W           R0, R10,ASR#1
1A96DE:  LDR             R1, =(silk_rate_levels_BITS_Q5_ptr - 0x1A96E8)
1A96E0:  ADD.W           LR, R0, R0,LSL#3
1A96E4:  ADD             R1, PC; silk_rate_levels_BITS_Q5_ptr
1A96E6:  LDR             R1, [R1]; silk_rate_levels_BITS_Q5
1A96E8:  ADD.W           R5, R1, LR
1A96EC:  LDRB.W          R2, [R1,LR]
1A96F0:  MOVS            R1, #0
1A96F2:  LDRB            R4, [R5,#1]
1A96F4:  LDRB            R3, [R5,#2]
1A96F6:  CMP             R2, R4
1A96F8:  LDRB            R0, [R5,#3]
1A96FA:  LDRB            R6, [R5,#4]
1A96FC:  ITT HI
1A96FE:  MOVHI           R1, #1
1A9700:  MOVHI           R2, R4
1A9702:  LDRB.W          R8, [R5,#6]
1A9706:  LDRB.W          R12, [R5,#7]
1A970A:  CMP             R2, R3
1A970C:  LDR             R4, =(silk_rate_levels_iCDF_ptr - 0x1A971A)
1A970E:  ITT HI
1A9710:  MOVHI           R1, #2
1A9712:  MOVHI           R2, R3
1A9714:  LDRB            R3, [R5,#5]
1A9716:  ADD             R4, PC; silk_rate_levels_iCDF_ptr
1A9718:  CMP             R2, R0
1A971A:  ITT HI
1A971C:  MOVHI           R1, #3
1A971E:  MOVHI           R2, R0
1A9720:  LDRB            R0, [R5,#8]
1A9722:  LDR             R4, [R4]; silk_rate_levels_iCDF
1A9724:  CMP             R2, R6
1A9726:  IT HI
1A9728:  MOVHI           R1, #4
1A972A:  IT HI
1A972C:  MOVHI           R2, R6
1A972E:  CMP             R2, R3
1A9730:  IT HI
1A9732:  MOVHI           R1, #5
1A9734:  IT HI
1A9736:  MOVHI           R2, R3
1A9738:  CMP             R2, R8
1A973A:  ITT HI
1A973C:  MOVHI           R1, #6
1A973E:  MOVHI           R2, R8
1A9740:  UXTB            R3, R2
1A9742:  CMP             R3, R12
1A9744:  ITT HI
1A9746:  MOVHI           R1, #7
1A9748:  MOVHI           R2, R12
1A974A:  MOVS            R3, #8
1A974C:  UXTB            R2, R2
1A974E:  CMP             R2, R0
1A9750:  ADD.W           R2, R4, LR
1A9754:  IT HI
1A9756:  MOVHI           R1, #8
1A9758:  MOV             R0, R11
1A975A:  BLX             j_ec_enc_icdf
1A975E:  SUB             SP, SP, #8
1A9760:  LDR.W           R0, [R7,#var_70]
1A9764:  MOV             R1, R9
1A9766:  LDR             R2, [R7,#arg_0]
1A9768:  MOV             R3, R10
1A976A:  STR             R0, [SP,#0x80+var_80]
1A976C:  LDR.W           R0, [R7,#var_60]
1A9770:  STR             R0, [SP,#0x80+var_7C]
1A9772:  MOV             R0, R11
1A9774:  BLX             j_silk_encode_signs
1A9778:  ADD             SP, SP, #8
1A977A:  LDR             R0, =(__stack_chk_guard_ptr - 0x1A9784)
1A977C:  LDR.W           R1, [R7,#var_24]
1A9780:  ADD             R0, PC; __stack_chk_guard_ptr
1A9782:  LDR             R0, [R0]; __stack_chk_guard
1A9784:  LDR             R0, [R0]
1A9786:  SUBS            R0, R0, R1
1A9788:  ITTTT EQ
1A978A:  SUBEQ.W         R4, R7, #-var_1C
1A978E:  MOVEQ           SP, R4
1A9790:  POPEQ.W         {R8-R11}
1A9794:  POPEQ           {R4-R7,PC}
1A9796:  BLX             __stack_chk_fail
1A979A:  LDR.W           R9, [R7,#var_6C]
1A979E:  LDR.W           R11, [R7,#var_64]
1A97A2:  B               loc_1A96DE
1A97A4:  LDR.W           R9, [R7,#var_6C]
1A97A8:  B               loc_1A975E
1A97AA:  LDR.W           R10, [R7,#var_74]
1A97AE:  B               loc_1A975E
