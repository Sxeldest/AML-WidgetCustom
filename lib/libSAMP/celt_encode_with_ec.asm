; =========================================================
; Game Engine Function: celt_encode_with_ec
; Address            : 0x1B4DA0 - 0x1B7636
; =========================================================

1B4DA0:  PUSH            {R4-R7,LR}
1B4DA2:  ADD             R7, SP, #0xC
1B4DA4:  PUSH.W          {R8-R11}
1B4DA8:  SUB             SP, SP, #0x16C
1B4DAA:  MOV             R5, R1
1B4DAC:  LDR.W           R1, =(__stack_chk_guard_ptr - 0x1B4DB8)
1B4DB0:  MOV             R8, R3
1B4DB2:  CMP             R5, #0
1B4DB4:  ADD             R1, PC; __stack_chk_guard_ptr
1B4DB6:  MOV             R6, SP
1B4DB8:  LDR             R1, [R1]; __stack_chk_guard
1B4DBA:  LDR             R1, [R1]
1B4DBC:  STR.W           R1, [R7,#var_24]
1B4DC0:  LDRD.W          R4, R1, [R0]
1B4DC4:  STR.W           R1, [R7,#var_BC]
1B4DC8:  MOV.W           R1, #0xF
1B4DCC:  LDR.W           LR, [R0,#8]
1B4DD0:  STR.W           R1, [R7,#var_8C]
1B4DD4:  MOV.W           R1, #0
1B4DD8:  STRH.W          R1, [R7,#var_8E]
1B4DDC:  STRD.W          R1, R1, [R7,#var_98]
1B4DE0:  STR.W           R1, [R7,#var_A4]
1B4DE4:  LDRD.W          R12, R10, [R0,#0x20]
1B4DE8:  LDR             R3, [R4,#4]
1B4DEA:  STR.W           R3, [R7,#var_EC]
1B4DEE:  LDR             R3, [R4,#8]
1B4DF0:  STR.W           R3, [R7,#var_DC]
1B4DF4:  STR.W           R4, [R7,#var_CC]
1B4DF8:  LDR             R3, [R4,#0x18]
1B4DFA:  STR.W           R3, [R7,#var_E8]
1B4DFE:  MOV.W           R3, #0xFFFFFFFF
1B4E02:  STRH.W          R1, [R7,#var_9A]
1B4E06:  STR.W           R5, [R7,#n]
1B4E0A:  BEQ.W           loc_1B709A
1B4E0E:  LDR.W           R9, [R7,#arg_0]
1B4E12:  CMP.W           R9, #2
1B4E16:  BLT.W           loc_1B709A
1B4E1A:  MOV             R1, R0
1B4E1C:  STR.W           R1, [R7,#var_C0]
1B4E20:  LDR             R0, [R0,#0x1C]
1B4E22:  LDR.W           R1, [R7,#var_CC]
1B4E26:  MUL.W           R4, R0, R2
1B4E2A:  LDR             R0, [R1,#0x1C]
1B4E2C:  CMP             R0, #0
1B4E2E:  BLT             loc_1B4E50
1B4E30:  LDR             R1, [R1,#0x24]
1B4E32:  MOVS            R2, #0
1B4E34:  LSL.W           R3, R1, R2
1B4E38:  CMP             R3, R4
1B4E3A:  BEQ             loc_1B4E9E
1B4E3C:  ADDS            R3, R2, #1
1B4E3E:  CMP             R2, R0
1B4E40:  MOV             R2, R3
1B4E42:  BLT             loc_1B4E34
1B4E44:  CMP             R3, R0
1B4E46:  BLE             loc_1B4E56
1B4E48:  MOV.W           R3, #0xFFFFFFFF
1B4E4C:  B.W             loc_1B709A
1B4E50:  MOVS            R3, #0
1B4E52:  CMP             R3, R0
1B4E54:  BGT             loc_1B4E48
1B4E56:  STR.W           LR, [R7,#var_C4]
1B4E5A:  MOV             R5, R10
1B4E5C:  STRD.W          R12, R3, [R7,#var_D8]
1B4E60:  LDR.W           R0, [R7,#var_CC]
1B4E64:  STR.W           R5, [R7,#var_C8]
1B4E68:  LDR.W           R11, [R7,#arg_4]
1B4E6C:  LDR.W           R10, [R0,#0x24]
1B4E70:  CMP.W           R11, #0
1B4E74:  BEQ             loc_1B4EA6
1B4E76:  MOV             R0, R11
1B4E78:  BLX             j_ec_tell_frac
1B4E7C:  STR             R0, [R6,#0x14]
1B4E7E:  LDR.W           R1, [R11,#0x1C]
1B4E82:  LDR.W           R0, [R11,#0x14]
1B4E86:  CLZ.W           R1, R1
1B4E8A:  ADD             R0, R1
1B4E8C:  SUB.W           R1, R0, #0x20 ; ' '
1B4E90:  SUBS            R0, #0x1C
1B4E92:  STR.W           R1, [R7,#var_F8]
1B4E96:  ASRS            R0, R0, #3
1B4E98:  STR.W           R0, [R7,#var_A8]
1B4E9C:  B               loc_1B4EB6
1B4E9E:  MOV             R3, R2
1B4EA0:  CMP             R3, R0
1B4EA2:  BGT             loc_1B4E48
1B4EA4:  B               loc_1B4E56
1B4EA6:  MOVS            R0, #0
1B4EA8:  STR.W           R0, [R7,#var_A8]
1B4EAC:  MOVS            R0, #1
1B4EAE:  STR             R0, [R6,#0x14]
1B4EB0:  MOVS            R0, #1
1B4EB2:  STR.W           R0, [R7,#var_F8]
1B4EB6:  MOVW            R5, #0x4FB
1B4EBA:  CMP             R9, R5
1B4EBC:  IT LT
1B4EBE:  MOVLT           R5, R9
1B4EC0:  LDR.W           R0, [R7,#var_C0]
1B4EC4:  LDRD.W          R9, R0, [R0,#0x28]
1B4EC8:  CMP             R0, #0
1B4ECA:  BEQ             loc_1B4EF6
1B4ECC:  LDR.W           R12, [R7,#var_CC]
1B4ED0:  ADDS.W          R0, R9, #1
1B4ED4:  BEQ             loc_1B4F3E
1B4ED6:  MUL.W           R0, R9, R4
1B4EDA:  LDR.W           R1, [R12]
1B4EDE:  ADD.W           R0, R0, R1,ASR#4
1B4EE2:  ASRS            R1, R1, #3
1B4EE4:  BLX             sub_220A40
1B4EE8:  STR             R0, [R6,#0x6C]
1B4EEA:  ASRS            R0, R0, #6
1B4EEC:  LDR.W           R12, [R7,#var_CC]
1B4EF0:  MOV             R4, R5
1B4EF2:  STR             R0, [R6,#0x5C]
1B4EF4:  B               loc_1B4F50
1B4EF6:  LDR.W           R12, [R7,#var_CC]
1B4EFA:  ADDS.W          R0, R9, #1
1B4EFE:  BEQ             loc_1B4F3E
1B4F00:  LDR.W           R2, [R7,#var_F8]
1B4F04:  MUL.W           R0, R9, R4
1B4F08:  LDR.W           R1, [R12]
1B4F0C:  CMP             R2, #1
1B4F0E:  IT GT
1B4F10:  MLAGT.W         R0, R9, R4, R2
1B4F14:  ADD.W           R0, R0, R1,LSL#2
1B4F18:  LSLS            R1, R1, #3
1B4F1A:  BLX             sub_220A40
1B4F1E:  MOV             R4, R0
1B4F20:  LDR.W           R0, [R7,#var_C0]
1B4F24:  LDR.W           R12, [R7,#var_CC]
1B4F28:  LDR             R0, [R0,#0x30]
1B4F2A:  CMP             R0, #0
1B4F2C:  IT NE
1B4F2E:  SUBNE           R4, #1
1B4F30:  CMP             R5, R4
1B4F32:  IT LT
1B4F34:  MOVLT           R4, R5
1B4F36:  CMP             R4, #2
1B4F38:  IT LE
1B4F3A:  MOVLE           R4, #2
1B4F3C:  B               loc_1B4F44
1B4F3E:  MOV.W           R9, #0xFFFFFFFF
1B4F42:  MOV             R4, R5
1B4F44:  LDR.W           R0, [R7,#var_A8]
1B4F48:  SUBS            R0, R4, R0
1B4F4A:  STR             R0, [R6,#0x5C]
1B4F4C:  MOVS            R0, #0
1B4F4E:  STR             R0, [R6,#0x6C]
1B4F50:  LDR.W           R2, [R7,#var_C4]
1B4F54:  MOV.W           R0, #0x190
1B4F58:  MUL.W           R1, R4, R0
1B4F5C:  ADD.W           R3, R2, R2,LSL#2
1B4F60:  MOVS            R2, #0x14
1B4F62:  STR             R3, [R6,#8]
1B4F64:  ADD.W           R3, R2, R3,LSL#3
1B4F68:  LDR.W           R2, [R7,#var_D4]
1B4F6C:  LSRS            R0, R2
1B4F6E:  RSB.W           R2, R2, #3
1B4F72:  SUBS            R0, #0x32 ; '2'
1B4F74:  STR             R2, [R6,#0x3C]
1B4F76:  ASRS            R1, R2
1B4F78:  STRD.W          R4, R3, [R6,#0x84]
1B4F7C:  MLS.W           R2, R0, R3, R1
1B4F80:  ADDS.W          R1, R9, #1
1B4F84:  BEQ             loc_1B4F92
1B4F86:  MULS            R0, R3
1B4F88:  SUB.W           R0, R9, R0
1B4F8C:  CMP             R2, R0
1B4F8E:  IT GE
1B4F90:  MOVGE           R2, R0
1B4F92:  LDR.W           R0, [R7,#var_EC]
1B4F96:  CMP.W           R11, #0
1B4F9A:  STR             R2, [R6,#0x28]
1B4F9C:  ADD.W           R4, R0, #0x400
1B4FA0:  LDR.W           R0, [R7,#var_A8]
1B4FA4:  SUB.W           R0, R5, R0
1B4FA8:  STR             R0, [R6,#0x68]
1B4FAA:  BNE             loc_1B4FC0
1B4FAC:  SUB.W           R11, R7, #-var_88
1B4FB0:  LDR.W           R2, [R6,#0x84]
1B4FB4:  MOV             R1, R8
1B4FB6:  MOV             R0, R11
1B4FB8:  BLX             j_ec_enc_init
1B4FBC:  LDR.W           R12, [R7,#var_CC]
1B4FC0:  LDR.W           R0, [R7,#var_BC]
1B4FC4:  LDR.W           R1, [R7,#var_C0]
1B4FC8:  MUL.W           R9, R4, R0
1B4FCC:  LDR.W           R0, [R7,#var_D4]
1B4FD0:  ADD.W           R2, R1, #0xF4
1B4FD4:  LSL.W           R3, R10, R0
1B4FD8:  LDR             R0, [R6,#0x6C]
1B4FDA:  STR.W           R3, [R7,#var_E4]
1B4FDE:  CMP             R0, #1
1B4FE0:  BLT             loc_1B502E
1B4FE2:  LDR             R0, [R1,#0x34]
1B4FE4:  LDRD.W          R5, R8, [R7,#var_C8]
1B4FE8:  CBZ             R0, loc_1B5032
1B4FEA:  LDR.W           R0, [R1,#0xD0]
1B4FEE:  MOVS            R4, #0
1B4FF0:  LDR.W           R1, [R7,#var_F8]
1B4FF4:  CMP             R1, #1
1B4FF6:  IT EQ
1B4FF8:  MOVEQ           R4, #2
1B4FFA:  LDR             R1, [R6,#0x6C]
1B4FFC:  RSB.W           R0, R0, R1,LSL#1
1B5000:  CMP.W           R4, R0,ASR#6
1B5004:  IT LE
1B5006:  ASRLE           R4, R0, #6
1B5008:  LDR             R0, [R6,#0x68]
1B500A:  CMP             R4, R0
1B500C:  BGE             loc_1B5032
1B500E:  LDR.W           R0, [R7,#var_A8]
1B5012:  MOV             R10, R2
1B5014:  ADDS            R1, R4, R0
1B5016:  MOV             R0, R11
1B5018:  STR.W           R1, [R6,#0x84]
1B501C:  BLX             j_ec_enc_shrink
1B5020:  LDR.W           R3, [R7,#var_E4]
1B5024:  MOV             R2, R10
1B5026:  LDR.W           R12, [R7,#var_CC]
1B502A:  STR             R4, [R6,#0x68]
1B502C:  B               loc_1B5032
1B502E:  LDRD.W          R5, R8, [R7,#var_C8]
1B5032:  LDR.W           R0, [R7,#var_BC]
1B5036:  ADD.W           R10, R2, R9,LSL#2
1B503A:  LDR.W           R1, [R7,#var_DC]
1B503E:  STR.W           R2, [R7,#var_B0]
1B5042:  LDR.W           R2, [R7,#var_EC]
1B5046:  MULS            R1, R0
1B5048:  LSLS            R0, R0, #2
1B504A:  STR.W           R0, [R6,#0x80]
1B504E:  STR.W           R11, [R7,#var_AC]
1B5052:  STR.W           R9, [R6,#0x48]
1B5056:  STR             R1, [R6,#0x7C]
1B5058:  ADDS            R1, R3, R2
1B505A:  STR.W           R1, [R7,#var_E0]
1B505E:  MULS            R1, R0
1B5060:  SUBS            R0, R3, R2
1B5062:  LDR.W           R2, [R12,#0xC]
1B5066:  MUL.W           R0, R0, R8
1B506A:  STR             R2, [R6,#0x24]
1B506C:  CMP             R5, R2
1B506E:  IT GT
1B5070:  MOVGT           R5, R2
1B5072:  ADDS            R1, #7
1B5074:  STR             R5, [R6,#0x70]
1B5076:  BIC.W           R1, R1, #7
1B507A:  SUB.W           R1, SP, R1
1B507E:  STR.W           R1, [R7,#var_D0]
1B5082:  MOV             SP, R1
1B5084:  LDR.W           R1, [R7,#var_C0]
1B5088:  LDR.W           R8, [R1,#0x1C]
1B508C:  LDR.W           R9, [R1,#0xE0]
1B5090:  MOV             R1, R8
1B5092:  BLX             sub_220A40
1B5096:  MOV             R11, R0
1B5098:  MOVS            R0, #0
1B509A:  CMP.W           R11, #1
1B509E:  BLT             loc_1B50C4
1B50A0:  LDR.W           R1, [R7,#n]
1B50A4:  MOV             R2, R11
1B50A6:  MOVS            R3, #0
1B50A8:  LDRSH.W         R4, [R1],#2
1B50AC:  SXTH            R5, R0
1B50AE:  CMP             R5, R4
1B50B0:  SXTH            R5, R3
1B50B2:  IT GE
1B50B4:  MOVGE           R0, R4
1B50B6:  CMP             R5, R4
1B50B8:  IT LE
1B50BA:  MOVLE           R3, R4
1B50BC:  SUBS            R2, #1
1B50BE:  BNE             loc_1B50A8
1B50C0:  SXTH            R1, R3
1B50C2:  B               loc_1B50C6
1B50C4:  MOVS            R1, #0
1B50C6:  SXTH            R0, R0
1B50C8:  LDR             R3, [R6,#0x7C]
1B50CA:  NEGS            R0, R0
1B50CC:  CMP             R1, R0
1B50CE:  IT GT
1B50D0:  MOVGT           R0, R1
1B50D2:  LDR.W           R2, [R6,#0x84]
1B50D6:  ADD.W           R5, R10, R3,LSL#1
1B50DA:  CMP             R9, R0
1B50DC:  BGT             loc_1B5124
1B50DE:  CMP.W           R11, #1
1B50E2:  BLT             loc_1B5114
1B50E4:  LDR.W           R1, [R7,#n]
1B50E8:  MOV             R12, R5
1B50EA:  MOVS            R0, #0
1B50EC:  MOV             R2, R11
1B50EE:  MOVS            R3, #0
1B50F0:  LDRSH.W         R5, [R1],#2
1B50F4:  SXTH            R4, R0
1B50F6:  CMP             R4, R5
1B50F8:  SXTH            R4, R3
1B50FA:  IT GE
1B50FC:  MOVGE           R0, R5
1B50FE:  CMP             R4, R5
1B5100:  IT LE
1B5102:  MOVLE           R3, R5
1B5104:  SUBS            R2, #1
1B5106:  BNE             loc_1B50F0
1B5108:  SXTH            R1, R3
1B510A:  LDR.W           R2, [R6,#0x84]
1B510E:  LDR             R3, [R6,#0x7C]
1B5110:  MOV             R5, R12
1B5112:  B               loc_1B5118
1B5114:  MOVS            R0, #0
1B5116:  MOVS            R1, #0
1B5118:  SXTH            R0, R0
1B511A:  RSB.W           R9, R0, #0
1B511E:  CMP             R1, R9
1B5120:  IT GT
1B5122:  MOVGT           R9, R1
1B5124:  LDR.W           R0, [R7,#var_BC]
1B5128:  LDR.W           R1, [R7,#var_EC]
1B512C:  STR.W           R10, [R6,#0x78]
1B5130:  STR             R5, [R6,#0x10]
1B5132:  MUL.W           R10, R1, R0
1B5136:  ADD.W           R0, R5, R3,LSL#1
1B513A:  STR             R0, [R6,#0x40]
1B513C:  LSLS            R0, R2, #3
1B513E:  STR.W           R0, [R7,#var_F4]
1B5142:  LDR.W           R0, [R7,#var_C4]
1B5146:  MULS            R0, R1
1B5148:  MOV             R1, R8
1B514A:  BLX             sub_220A40
1B514E:  CMP             R0, #1
1B5150:  BLT             loc_1B5186
1B5152:  LDR.W           LR, [R7,#n]
1B5156:  MOVS            R1, #0
1B5158:  MOVS            R3, #0
1B515A:  MOV.W           R12, #1
1B515E:  ADD.W           R2, LR, R11,LSL#1
1B5162:  LDRSH.W         R5, [R2],#2
1B5166:  SXTH            R4, R1
1B5168:  CMP             R4, R5
1B516A:  SXTH            R4, R3
1B516C:  IT GE
1B516E:  MOVGE           R1, R5
1B5170:  CMP             R4, R5
1B5172:  IT LE
1B5174:  MOVLE           R3, R5
1B5176:  SUBS            R0, #1
1B5178:  BNE             loc_1B5162
1B517A:  LDR.W           R8, [R7,#var_AC]
1B517E:  SXTH            R0, R3
1B5180:  LDR.W           R2, [R7,#var_D4]
1B5184:  B               loc_1B519A
1B5186:  MOVS            R1, #0
1B5188:  MOVS            R0, #0
1B518A:  LDR.W           R8, [R7,#var_AC]
1B518E:  MOV.W           R12, #1
1B5192:  LDR.W           R2, [R7,#var_D4]
1B5196:  LDR.W           LR, [R7,#n]
1B519A:  LSL.W           R2, R12, R2
1B519E:  SXTH            R1, R1
1B51A0:  STR             R2, [R6,#0x44]
1B51A2:  NEGS            R4, R1
1B51A4:  LDR.W           R2, [R7,#var_B0]
1B51A8:  CMP             R0, R4
1B51AA:  LDR             R3, [R6,#0x40]
1B51AC:  ADD.W           R10, R2, R10,LSL#2
1B51B0:  LDR             R2, [R6,#0x7C]
1B51B2:  IT GT
1B51B4:  MOVGT           R4, R0
1B51B6:  LDR.W           R0, [R7,#var_C0]
1B51BA:  CMP             R9, R4
1B51BC:  ADD.W           R5, R3, R2,LSL#1
1B51C0:  STR.W           R4, [R0,#0xE0]
1B51C4:  MOV.W           R0, #0
1B51C8:  IT GT
1B51CA:  MOVGT           R4, R9
1B51CC:  STR             R0, [R6,#0x60]
1B51CE:  LDR.W           R0, [R7,#var_F8]
1B51D2:  STR             R5, [R6,#0x38]
1B51D4:  CMP             R0, #1
1B51D6:  STR.W           R10, [R7,#var_FC]
1B51DA:  BNE             loc_1B5208
1B51DC:  CMP             R4, #0
1B51DE:  MOV.W           R1, #0
1B51E2:  IT EQ
1B51E4:  MOVEQ           R1, #1
1B51E6:  MOV             R0, R8
1B51E8:  MOVS            R2, #0xF
1B51EA:  BLX             j_ec_enc_bit_logp
1B51EE:  CBZ             R4, loc_1B5216
1B51F0:  MOVS            R0, #1
1B51F2:  LDR.W           R3, [R7,#var_C0]
1B51F6:  STR.W           R0, [R7,#var_F8]
1B51FA:  LDR.W           R12, [R7,#var_CC]
1B51FE:  LDR.W           R4, [R7,#var_E4]
1B5202:  LDR.W           LR, [R7,#n]
1B5206:  B               loc_1B528C
1B5208:  LDR.W           R3, [R7,#var_C0]
1B520C:  LDR.W           R12, [R7,#var_CC]
1B5210:  LDR.W           R4, [R7,#var_E4]
1B5214:  B               loc_1B528C
1B5216:  LDR             R0, [R6,#0x6C]
1B5218:  CMP             R0, #1
1B521A:  BLT             loc_1B524C
1B521C:  LDR.W           R0, [R7,#var_A8]
1B5220:  ADDS            R4, R0, #2
1B5222:  LDR.W           R0, [R6,#0x84]
1B5226:  CMP             R0, R4
1B5228:  IT LT
1B522A:  MOVLT           R4, R0
1B522C:  MOV             R0, R8
1B522E:  MOV             R1, R4
1B5230:  BLX             j_ec_enc_shrink
1B5234:  LDR.W           R9, [R7,#var_C0]
1B5238:  LSLS            R0, R4, #3
1B523A:  LDR.W           R12, [R7,#var_CC]
1B523E:  MOV             R3, R4
1B5240:  STR.W           R0, [R7,#var_F4]
1B5244:  MOVS            R0, #2
1B5246:  STR             R0, [R6,#0x68]
1B5248:  STR             R4, [R6,#0x5C]
1B524A:  B               loc_1B5258
1B524C:  LDR.W           R9, [R7,#var_C0]
1B5250:  LDR.W           R12, [R7,#var_CC]
1B5254:  LDR.W           R3, [R6,#0x84]
1B5258:  LDR.W           R0, [R8,#0x14]
1B525C:  LDR.W           R1, [R8,#0x1C]
1B5260:  RSB.W           R2, R0, #0x20 ; ' '
1B5264:  LDR.W           R4, [R7,#var_E4]
1B5268:  ADD.W           R2, R2, R3,LSL#3
1B526C:  CLZ.W           R1, R1
1B5270:  SUBS            R1, R2, R1
1B5272:  LDR.W           LR, [R7,#n]
1B5276:  ADD             R0, R1
1B5278:  STR.W           R0, [R8,#0x14]
1B527C:  LSLS            R0, R3, #3
1B527E:  STR.W           R3, [R6,#0x84]
1B5282:  STR.W           R0, [R7,#var_F8]
1B5286:  MOVS            R0, #1
1B5288:  MOV             R3, R9
1B528A:  STR             R0, [R6,#0x60]
1B528C:  LDR.W           R0, [R7,#var_EC]
1B5290:  LDR.W           R1, [R7,#var_D0]
1B5294:  ADD.W           R8, R1, R0,LSL#2
1B5298:  LDR.W           R0, [R7,#var_E0]
1B529C:  MOVS            R1, #0
1B529E:  LSLS            R0, R0, #2
1B52A0:  STR.W           R0, [R7,#var_B8]
1B52A4:  LDR.W           R0, [R7,#var_BC]
1B52A8:  MOV.W           R10, R0,LSL#1
1B52AC:  LSLS            R0, R4, #2
1B52AE:  STR.W           R0, [R7,#dest]
1B52B2:  ADD.W           R2, R3, R1,LSL#2
1B52B6:  LDR             R5, [R3,#0x1C]
1B52B8:  LDRSH.W         R11, [R12,#0x10]
1B52BC:  LDR.W           R9, [R2,#0xC0]!
1B52C0:  CMP             R5, #1
1B52C2:  STR.W           R1, [R7,#var_A8]
1B52C6:  STR.W           R2, [R7,#var_B0]
1B52CA:  ITT EQ
1B52CC:  LDRHEQ.W        R0, [R12,#0x12]
1B52D0:  CMPEQ           R0, #0
1B52D2:  BNE             loc_1B52FA
1B52D4:  CMP             R4, #1
1B52D6:  BLT             loc_1B5378
1B52D8:  MOV             R0, R8
1B52DA:  MOV             R1, R4
1B52DC:  MOV             R2, LR
1B52DE:  LDRSH.W         R3, [R2]
1B52E2:  ADD             R2, R10
1B52E4:  SUBS            R1, #1
1B52E6:  SMULBB.W        R5, R3, R11
1B52EA:  RSB.W           R3, R9, R3,LSL#12
1B52EE:  STR.W           R3, [R0],#4
1B52F2:  MOV.W           R9, R5,ASR#3
1B52F6:  BNE             loc_1B52DE
1B52F8:  B               loc_1B5378
1B52FA:  MOV             R0, R4
1B52FC:  MOV             R1, R5
1B52FE:  STR.W           LR, [R7,#n]
1B5302:  BLX             sub_220A40
1B5306:  MOV             R4, R0
1B5308:  CMP             R5, #1
1B530A:  BEQ             loc_1B532E
1B530C:  LDR.W           R0, [R7,#var_E0]
1B5310:  LDR.W           R1, [R7,#var_A8]
1B5314:  MULS            R0, R1
1B5316:  LDR.W           R1, [R7,#var_D0]
1B531A:  ADD.W           R0, R1, R0,LSL#2
1B531E:  LDR.W           R1, [R7,#var_EC]
1B5322:  ADD.W           R0, R0, R1,LSL#2; int
1B5326:  LDR.W           R1, [R7,#dest]; n
1B532A:  BLX             sub_22178C
1B532E:  LDR.W           LR, [R7,#n]
1B5332:  CMP             R4, #1
1B5334:  BLT             loc_1B534C
1B5336:  LSLS            R0, R5, #2
1B5338:  MOVS            R1, #0
1B533A:  MOVS            R2, #0
1B533C:  LDRSH.W         R3, [LR,R1]
1B5340:  ADD             R1, R10
1B5342:  STR.W           R3, [R8,R2]
1B5346:  ADD             R2, R0
1B5348:  SUBS            R4, #1
1B534A:  BNE             loc_1B533C
1B534C:  LDR.W           R4, [R7,#var_E4]
1B5350:  LDR.W           R12, [R7,#var_CC]
1B5354:  CMP             R4, #1
1B5356:  BLT             loc_1B5378
1B5358:  MOVS            R0, #0
1B535A:  LDR.W           R1, [R8,R0,LSL#2]
1B535E:  SXTH            R2, R1
1B5360:  LSLS            R1, R1, #0x10
1B5362:  SMULBB.W        R2, R2, R11
1B5366:  RSB.W           R1, R9, R1,ASR#4
1B536A:  STR.W           R1, [R8,R0,LSL#2]
1B536E:  ADDS            R0, #1
1B5370:  CMP             R4, R0
1B5372:  MOV.W           R9, R2,ASR#3
1B5376:  BNE             loc_1B535A
1B5378:  LDR.W           R0, [R7,#var_B0]
1B537C:  ADD.W           LR, LR, #2
1B5380:  STR.W           R9, [R0]
1B5384:  LDR.W           R0, [R7,#var_B8]
1B5388:  LDR.W           R1, [R7,#var_A8]
1B538C:  ADD             R8, R0
1B538E:  LDR.W           R0, [R7,#var_BC]
1B5392:  LDR.W           R3, [R7,#var_C0]
1B5396:  ADDS            R1, #1
1B5398:  CMP             R1, R0
1B539A:  BLT             loc_1B52B2
1B539C:  LDR             R0, [R6,#0x68]
1B539E:  CMP             R0, #4
1B53A0:  BLT             loc_1B53B8
1B53A2:  LDR             R0, [R3,#0x40]
1B53A4:  CBZ             R0, loc_1B53B8
1B53A6:  LDR.W           R0, [R7,#var_D8]
1B53AA:  LDR             R1, [R6,#0x60]
1B53AC:  LDR.W           R10, [R7,#var_AC]
1B53B0:  ORRS            R0, R1
1B53B2:  BEQ             loc_1B53DA
1B53B4:  MOVS            R0, #0
1B53B6:  B               loc_1B53EE
1B53B8:  LDR.W           R0, [R7,#var_D8]
1B53BC:  LDR             R1, [R6,#0x60]
1B53BE:  ORRS            R0, R1
1B53C0:  MOV.W           R0, #0
1B53C4:  BNE             loc_1B53EA
1B53C6:  LDR.W           R1, [R7,#var_C4]
1B53CA:  LDR             R2, [R6,#0x68]
1B53CC:  LDR.W           R10, [R7,#var_AC]
1B53D0:  ADD.W           R1, R1, R1,LSL#1
1B53D4:  LSLS            R1, R1, #2
1B53D6:  CMP             R2, R1
1B53D8:  BLE             loc_1B53EE
1B53DA:  LDR             R1, [R3,#0x14]
1B53DC:  MOVS            R0, #0
1B53DE:  CBNZ            R1, loc_1B53EE
1B53E0:  LDR             R1, [R3,#0x18]
1B53E2:  CMP             R1, #4
1B53E4:  IT GT
1B53E6:  MOVGT           R0, #1
1B53E8:  B               loc_1B53EE
1B53EA:  LDR.W           R10, [R7,#var_AC]
1B53EE:  MOV             R1, R3
1B53F0:  LDR.W           R5, [R1,#0x64]!
1B53F4:  STR             R1, [R6,#4]
1B53F6:  SUB             SP, SP, #0x20 ; ' '
1B53F8:  SUB.W           R1, R7, #-var_8E
1B53FC:  SUB.W           R11, R7, #-var_58
1B5400:  SUB.W           R2, R7, #-var_8C
1B5404:  STRD.W          R4, R5, [SP,#0x1A8+var_1A8]; int
1B5408:  STRD.W          R2, R1, [SP,#0x1A8+var_1A0]; int
1B540C:  STRD.W          R11, R0, [SP,#0x1A8+var_198]; int
1B5410:  LDR             R0, [R6,#0x68]
1B5412:  STR             R0, [SP,#0x1A8+var_190]; int
1B5414:  MOV             R0, R3; int
1B5416:  LDR.W           R1, [R7,#var_D0]; int
1B541A:  LDR.W           R2, [R7,#var_FC]; src
1B541E:  LDR.W           R3, [R7,#var_BC]; int
1B5422:  BL              sub_1B7648
1B5426:  ADD             SP, SP, #0x20 ; ' '
1B5428:  LDR.W           LR, [R7,#var_D4]
1B542C:  CMP             R0, #0
1B542E:  STR             R0, [R6]
1B5430:  BEQ             loc_1B5498
1B5432:  MOV             R0, R10
1B5434:  MOVS            R1, #1
1B5436:  MOVS            R2, #1
1B5438:  BLX             j_ec_enc_bit_logp
1B543C:  LDR.W           R8, [R7,#var_8C]
1B5440:  MOV             R11, R5
1B5442:  MOV             R0, R10
1B5444:  MOVS            R2, #6
1B5446:  ADD.W           R5, R8, #1
1B544A:  CLZ.W           R9, R5
1B544E:  RSB.W           R4, R9, #0x1B
1B5452:  MOV             R1, R4
1B5454:  BLX             j_ec_enc_uint
1B5458:  MOVS            R0, #0x10
1B545A:  RSB.W           R2, R9, #0x1F
1B545E:  LSLS            R0, R4
1B5460:  SUBS            R1, R5, R0
1B5462:  MOV             R0, R10
1B5464:  MOV             R5, R11
1B5466:  SUB.W           R11, R7, #-var_58
1B546A:  BLX             j_ec_enc_bits
1B546E:  LDR.W           R1, [R7,#var_58]
1B5472:  MOV             R0, R10
1B5474:  MOVS            R2, #3
1B5476:  STR.W           R8, [R7,#var_8C]
1B547A:  BLX             j_ec_enc_bits
1B547E:  LDR.W           R2, =(unk_C3E88 - 0x1B548C)
1B5482:  MOV             R0, R10
1B5484:  MOV             R1, R5
1B5486:  MOVS            R3, #2
1B5488:  ADD             R2, PC; unk_C3E88
1B548A:  BLX             j_ec_enc_icdf
1B548E:  LDR.W           LR, [R7,#var_D4]
1B5492:  LDRD.W          R4, R8, [R6,#0x7C]
1B5496:  B               loc_1B54BE
1B5498:  LDR.W           R0, [R7,#var_D8]
1B549C:  LDRD.W          R4, R8, [R6,#0x7C]
1B54A0:  CBNZ            R0, loc_1B54BE
1B54A2:  LDR.W           R0, [R7,#var_F8]
1B54A6:  LDR.W           R1, [R7,#var_F4]
1B54AA:  ADDS            R0, #0x10
1B54AC:  CMP             R0, R1
1B54AE:  BGT             loc_1B54BE
1B54B0:  MOV             R0, R10
1B54B2:  MOVS            R1, #0
1B54B4:  MOVS            R2, #1
1B54B6:  BLX             j_ec_enc_bit_logp
1B54BA:  LDR.W           LR, [R7,#var_D4]
1B54BE:  LDR.W           R2, [R7,#var_C0]
1B54C2:  LDR             R0, [R2,#0x18]
1B54C4:  CMP             R0, #1
1B54C6:  BLT             loc_1B551E
1B54C8:  LDR             R0, [R2,#0x40]
1B54CA:  LDR.W           R12, [R7,#var_CC]
1B54CE:  CMP             R0, #0
1B54D0:  MOV.W           R0, #0
1B54D4:  BNE             loc_1B5524
1B54D6:  LDR.W           R1, [R7,#var_D8]
1B54DA:  CBZ             R1, loc_1B54EE
1B54DC:  LDR             R1, [R6,#0x5C]
1B54DE:  CMP             R1, #0xE
1B54E0:  BGT             loc_1B54EE
1B54E2:  LDR.W           R1, [R2,#0xB8]
1B54E6:  MOVS            R0, #0
1B54E8:  CMP             R1, #2
1B54EA:  IT NE
1B54EC:  MOVNE           R0, #1
1B54EE:  SUB             SP, SP, #0x10
1B54F0:  SUB.W           R2, R7, #-var_98
1B54F4:  STRD.W          R2, R0, [SP,#0x198+var_198]
1B54F8:  SUB.W           R1, R7, #-var_A4
1B54FC:  STR             R1, [SP,#0x198+var_190]
1B54FE:  LDR.W           R0, [R7,#var_D0]
1B5502:  SUB.W           R3, R7, #-var_9A
1B5506:  LDR.W           R1, [R7,#var_E0]
1B550A:  LDR.W           R2, [R7,#var_BC]
1B550E:  BL              sub_1B7BD8
1B5512:  ADD             SP, SP, #0x10
1B5514:  LDR.W           R12, [R7,#var_CC]
1B5518:  LDR.W           LR, [R7,#var_D4]
1B551C:  B               loc_1B5524
1B551E:  MOVS            R0, #0
1B5520:  LDR.W           R12, [R7,#var_CC]
1B5524:  STR.W           R0, [R7,#var_F8]
1B5528:  CMP.W           LR, #1
1B552C:  BLT             loc_1B5546
1B552E:  LDR.W           R1, [R10,#0x1C]
1B5532:  LDR.W           R0, [R10,#0x14]
1B5536:  CLZ.W           R1, R1
1B553A:  ADD             R0, R1
1B553C:  LDR.W           R1, [R7,#var_F4]
1B5540:  SUBS            R0, #0x1D
1B5542:  CMP             R0, R1
1B5544:  BLE             loc_1B5552
1B5546:  MOVS            R0, #0
1B5548:  MOVS            R2, #0
1B554A:  STR.W           R0, [R7,#var_F8]
1B554E:  MOVS            R0, #1
1B5550:  B               loc_1B5560
1B5552:  LDR.W           R0, [R7,#var_F8]
1B5556:  LDR             R2, [R6,#0x44]
1B5558:  CMP             R0, #0
1B555A:  IT EQ
1B555C:  MOVEQ           R2, R0
1B555E:  MOVS            R0, #0
1B5560:  STR             R0, [R6,#0x2C]
1B5562:  LDR.W           R0, [R7,#var_E4]
1B5566:  MUL.W           R0, R8, R0
1B556A:  ADDS            R0, #7
1B556C:  BIC.W           R0, R0, #7
1B5570:  SUB.W           R3, SP, R0
1B5574:  MOVS            R0, #7
1B5576:  ADD.W           R1, R0, R4,LSL#2
1B557A:  STR.W           R3, [R7,#n]
1B557E:  BIC.W           R1, R1, #7
1B5582:  MOV             SP, R3
1B5584:  SUB.W           R9, SP, R1
1B5588:  ADD.W           R1, R0, R4,LSL#1
1B558C:  BIC.W           R1, R1, #7
1B5590:  MOV             SP, R9
1B5592:  SUB.W           R1, SP, R1
1B5596:  STR             R1, [R6,#0x74]
1B5598:  MOV             SP, R1
1B559A:  CMP             R2, #0
1B559C:  STR             R5, [R6,#0x34]
1B559E:  STR             R2, [R6,#0x4C]
1B55A0:  BEQ             loc_1B566E
1B55A2:  LDR.W           R1, [R7,#var_DC]
1B55A6:  LDR.W           R8, [R7,#var_C4]
1B55AA:  LDR.W           R3, [R7,#var_C0]
1B55AE:  MUL.W           R5, R1, R8
1B55B2:  LDR             R1, [R3,#0x18]
1B55B4:  ADD.W           R0, R0, R5,LSL#1
1B55B8:  MOV.W           R10, R5,LSL#1
1B55BC:  BIC.W           R0, R0, #7
1B55C0:  SUB.W           R4, SP, R0
1B55C4:  MOV             SP, R4
1B55C6:  CMP             R1, #8
1B55C8:  STR             R5, [R6,#0x58]
1B55CA:  STR.W           R4, [R7,#dest]
1B55CE:  BLT             loc_1B5698
1B55D0:  STR.W           R10, [R6,#0x80]
1B55D4:  LDR             R0, [R3,#0x1C]
1B55D6:  LDR             R1, [R3,#0x48]
1B55D8:  SUB             SP, SP, #0x18
1B55DA:  LDR.W           R2, [R7,#var_BC]
1B55DE:  MOV             R5, LR
1B55E0:  STR.W           R8, [SP,#0x1A0+var_1A0]
1B55E4:  STRD.W          R2, LR, [SP,#0x1A0+var_19C]
1B55E8:  STRD.W          R0, R1, [SP,#0x1A0+var_194]
1B55EC:  MOV             R0, R12
1B55EE:  LDR.W           R10, [R7,#n]
1B55F2:  MOVS            R1, #0
1B55F4:  LDR.W           R2, [R7,#var_D0]
1B55F8:  MOV             R3, R10
1B55FA:  BL              sub_1B7FB4
1B55FE:  ADD             SP, SP, #0x18
1B5600:  LDR.W           R0, [R7,#var_C0]
1B5604:  LDR             R0, [R0,#0x48]
1B5606:  SUB             SP, SP, #0x10
1B5608:  STRD.W          R8, R5, [SP,#0x198+var_198]
1B560C:  MOV             R1, R10
1B560E:  LDR.W           R10, [R6,#0x70]
1B5612:  MOV             R2, R9
1B5614:  LDR.W           R5, [R7,#var_CC]
1B5618:  STR             R0, [SP,#0x198+var_190]
1B561A:  MOV             R3, R10
1B561C:  MOV             R0, R5
1B561E:  BLX             j_compute_band_energies
1B5622:  ADD             SP, SP, #0x10
1B5624:  STRD.W          R4, R8, [SP,#0x188+var_190]!
1B5628:  LDR.W           R2, [R7,#var_C8]
1B562C:  MOV             R0, R5
1B562E:  MOV             R1, R10
1B5630:  MOV             R3, R9
1B5632:  LDR             R4, [R6,#0x58]
1B5634:  BLX             j_amp2Log2
1B5638:  ADD             SP, SP, #8
1B563A:  CMP             R4, #1
1B563C:  BLT             loc_1B569E
1B563E:  LDR.W           R2, [R7,#var_D4]
1B5642:  MOVS            R1, #0
1B5644:  LDR.W           R3, [R7,#dest]
1B5648:  LSLS            R0, R2, #0x1A
1B564A:  MOV             LR, R2
1B564C:  ASRS            R0, R0, #0x11
1B564E:  LDRH.W          R2, [R3,R1,LSL#1]
1B5652:  ADD             R2, R0
1B5654:  STRH.W          R2, [R3,R1,LSL#1]
1B5658:  ADDS            R1, #1
1B565A:  CMP             R4, R1
1B565C:  BNE             loc_1B564E
1B565E:  LDR.W           R8, [R7,#var_C4]
1B5662:  MOVS            R0, #1
1B5664:  LDR.W           R12, [R7,#var_CC]
1B5668:  LDR             R2, [R6,#0x4C]
1B566A:  STR             R0, [R6,#0x54]
1B566C:  B               loc_1B56B0
1B566E:  LDR.W           R1, [R7,#var_DC]
1B5672:  LDR.W           R8, [R7,#var_C4]
1B5676:  MUL.W           R1, R1, R8
1B567A:  STR             R1, [R6,#0x58]
1B567C:  ADD.W           R0, R0, R1,LSL#1
1B5680:  MOV.W           R10, R1,LSL#1
1B5684:  BIC.W           R0, R0, #7
1B5688:  SUB.W           R0, SP, R0
1B568C:  STR.W           R0, [R7,#dest]
1B5690:  MOV             SP, R0
1B5692:  MOVS            R0, #0
1B5694:  STR             R0, [R6,#0x54]
1B5696:  B               loc_1B56B4
1B5698:  MOVS            R0, #0
1B569A:  STR             R0, [R6,#0x54]
1B569C:  B               loc_1B56B8
1B569E:  MOVS            R0, #1
1B56A0:  LDR.W           R8, [R7,#var_C4]
1B56A4:  STR             R0, [R6,#0x54]
1B56A6:  LDR.W           R12, [R7,#var_CC]
1B56AA:  LDR             R2, [R6,#0x4C]
1B56AC:  LDR.W           LR, [R7,#var_D4]
1B56B0:  LDR.W           R10, [R6,#0x80]
1B56B4:  LDR.W           R3, [R7,#var_C0]
1B56B8:  LDR             R0, [R3,#0x1C]
1B56BA:  LDR             R1, [R3,#0x48]
1B56BC:  SUB             SP, SP, #0x18
1B56BE:  LDR.W           R5, [R7,#var_BC]
1B56C2:  STR.W           R8, [SP,#0x1A0+var_1A0]
1B56C6:  STRD.W          R5, LR, [SP,#0x1A0+var_19C]
1B56CA:  STRD.W          R0, R1, [SP,#0x1A0+var_194]
1B56CE:  MOV             R1, R2
1B56D0:  LDR.W           R2, [R7,#var_D0]
1B56D4:  MOV             R0, R12
1B56D6:  LDR.W           R3, [R7,#n]
1B56DA:  BL              sub_1B7FB4
1B56DE:  ADD             SP, SP, #0x18
1B56E0:  EOR.W           R0, R8, #1
1B56E4:  EOR.W           R1, R5, #2
1B56E8:  ORRS            R0, R1
1B56EA:  MOV.W           R4, #0
1B56EE:  MOV.W           R0, #0
1B56F2:  ITT EQ
1B56F4:  MOVEQ           R4, #1
1B56F6:  STREQ.W         R0, [R7,#var_98]
1B56FA:  LDR.W           R5, [R7,#var_C0]
1B56FE:  LDR             R0, [R5,#0x48]
1B5700:  SUB             SP, SP, #0x10
1B5702:  LDR.W           R1, [R7,#var_C4]
1B5706:  MOV             R2, R9
1B5708:  STR             R1, [SP,#0x198+var_198]
1B570A:  LDR.W           R1, [R7,#var_D4]
1B570E:  STRD.W          R1, R0, [SP,#0x198+var_194]; int
1B5712:  LDR.W           R0, [R7,#var_CC]
1B5716:  LDR.W           R1, [R7,#n]
1B571A:  LDR             R3, [R6,#0x70]
1B571C:  BLX             j_compute_band_energies
1B5720:  ADD             SP, SP, #0x10
1B5722:  LDR             R0, [R5,#0x40]
1B5724:  CBZ             R0, loc_1B5766
1B5726:  LDR.W           R0, [R7,#var_C8]
1B572A:  CMP             R0, #3
1B572C:  BLT             loc_1B5766
1B572E:  LDR.W           R0, [R7,#var_C8]
1B5732:  ADD.W           R1, R9, #8
1B5736:  SUBS            R0, #2
1B5738:  LDR.W           R2, [R9]
1B573C:  LDR             R3, [R1]
1B573E:  UXTH            R5, R2
1B5740:  LSLS            R5, R5, #1
1B5742:  UXTAH.W         R5, R5, R2
1B5746:  ASRS            R2, R2, #0x10
1B5748:  ADD.W           R2, R2, R2,LSL#1
1B574C:  LSRS            R5, R5, #0xF
1B574E:  ADD.W           R2, R5, R2,LSL#1
1B5752:  CMP             R3, R2
1B5754:  IT LT
1B5756:  MOVLT           R2, R3
1B5758:  CMP             R2, #1
1B575A:  IT LE
1B575C:  MOVLE           R2, #1
1B575E:  SUBS            R0, #1
1B5760:  STR.W           R2, [R1],#4
1B5764:  BNE             loc_1B5738
1B5766:  SUB             SP, SP, #8
1B5768:  LDR             R0, [R6,#0x74]
1B576A:  MOV             R3, R9
1B576C:  STR             R0, [SP,#0x190+var_190]
1B576E:  LDR.W           R0, [R7,#var_C4]
1B5772:  LDR.W           R5, [R7,#var_C8]
1B5776:  STR             R0, [SP,#0x190+var_18C]
1B5778:  LDR.W           R0, [R7,#var_CC]
1B577C:  LDR             R1, [R6,#0x70]
1B577E:  MOV             R2, R5
1B5780:  BLX             j_amp2Log2
1B5784:  ADD             SP, SP, #8
1B5786:  ADD.W           R0, R10, #7
1B578A:  BIC.W           R0, R0, #7
1B578E:  STR             R0, [R6,#0x64]
1B5790:  SUB.W           R0, SP, R0; int
1B5794:  MOV             SP, R0
1B5796:  LSLS            R1, R5, #1; n
1B5798:  STR.W           R0, [R7,#var_B8]
1B579C:  STR.W           R1, [R7,#var_FC]
1B57A0:  BLX             sub_22178C
1B57A4:  LDR.W           R0, [R7,#var_D8]
1B57A8:  MOV             R8, #0xFFFFC000
1B57B0:  STR.W           R9, [R6,#0x50]
1B57B4:  CMP             R0, #0
1B57B6:  STR             R4, [R6,#0x30]
1B57B8:  STR.W           R10, [R6,#0x80]
1B57BC:  BEQ             loc_1B57E2
1B57BE:  MOVS            R0, #0
1B57C0:  LDR.W           R9, [R6,#0x74]
1B57C4:  STR             R0, [R6,#0x18]
1B57C6:  MOVS            R0, #0
1B57C8:  STR             R0, [R6,#0xC]
1B57CA:  LDR.W           LR, [R7,#var_D4]
1B57CE:  LDR.W           R2, [R7,#var_C0]
1B57D2:  MOV             R4, R2
1B57D4:  LDR.W           R10, [R4,#0x40]
1B57D8:  CMP.W           R10, #0
1B57DC:  BEQ             loc_1B5810
1B57DE:  MOVS            R5, #0
1B57E0:  B               loc_1B5A10
1B57E2:  LDR.W           R2, [R7,#var_C0]
1B57E6:  LDR.W           LR, [R7,#var_D4]
1B57EA:  LDR.W           R0, [R2,#0xEC]
1B57EE:  STR             R0, [R6,#0xC]
1B57F0:  CMP             R0, #0
1B57F2:  BEQ             loc_1B5890
1B57F4:  MOV             R0, R2
1B57F6:  LDR.W           R9, [R6,#0x74]
1B57FA:  LDR.W           R10, [R0,#0x40]
1B57FE:  CMP.W           R10, #0
1B5802:  BEQ             loc_1B589E
1B5804:  MOVS            R0, #0
1B5806:  MOVS            R5, #0
1B5808:  STR             R0, [R6,#0xC]
1B580A:  MOVS            R0, #0
1B580C:  STR             R0, [R6,#0x18]
1B580E:  B               loc_1B5A10
1B5810:  LDR             R1, [R6,#0x4C]
1B5812:  MOV.W           R0, LR,LSL#26
1B5816:  CMP             R1, #0
1B5818:  MOV             R12, R1
1B581A:  IT NE
1B581C:  MOVNE.W         R12, R0,ASR#17
1B5820:  LDR.W           R0, [R7,#var_D8]
1B5824:  LDR.W           R1, [R7,#var_C8]
1B5828:  CMP             R1, R0
1B582A:  BLE             loc_1B588C
1B582C:  LDR.W           R0, [R7,#var_C4]
1B5830:  CMP             R0, #2
1B5832:  BNE.W           loc_1B5982
1B5836:  LDR.W           R1, [R7,#var_D8]
1B583A:  MOV             R5, R9
1B583C:  LDR.W           R0, [R7,#var_C8]
1B5840:  ADD.W           R4, R8, #0x1800
1B5844:  SUBS            R3, R0, R1
1B5846:  LDR.W           R0, [R7,#var_DC]
1B584A:  ADD.W           R9, R5, R1,LSL#1
1B584E:  ADD             R0, R1
1B5850:  ADD.W           R5, R5, R0,LSL#1
1B5854:  MOVS            R0, #0
1B5856:  LDRSH.W         R1, [R9],#2
1B585A:  SXTH            R4, R4
1B585C:  SUB.W           R2, R4, #0x400
1B5860:  LDRSH.W         LR, [R5],#2
1B5864:  SUB.W           R8, R1, R12
1B5868:  CMP             R2, R8
1B586A:  MOV             R2, R12
1B586C:  ITT GT
1B586E:  MOVGT           R1, R4
1B5870:  MOVGT.W         R2, #0x400
1B5874:  SUB.W           R4, LR, R12
1B5878:  SUBS            R1, R1, R2
1B587A:  SXTH            R1, R1
1B587C:  CMP             R1, R4
1B587E:  IT GT
1B5880:  MOVGT           R4, R1
1B5882:  SUBS            R3, #1
1B5884:  SXTAH.W         R0, R0, R4
1B5888:  BNE             loc_1B5856
1B588A:  B               loc_1B59BE
1B588C:  MOVS            R0, #0
1B588E:  B               loc_1B59BE
1B5890:  MOVS            R0, #0
1B5892:  LDR.W           R9, [R6,#0x74]
1B5896:  STR             R0, [R6,#0x18]
1B5898:  MOVS            R0, #0
1B589A:  STR             R0, [R6,#0xC]
1B589C:  B               loc_1B57D2
1B589E:  LDR.W           R12, [R0,#0x5C]
1B58A2:  MOVS            R4, #0
1B58A4:  CMP.W           R12, #2
1B58A8:  IT LE
1B58AA:  MOVLE.W         R12, #2
1B58AE:  LDR.W           R1, [R7,#var_C4]
1B58B2:  STR.W           R12, [R7,#var_A8]
1B58B6:  CMP             R1, #1
1B58B8:  BLT.W           loc_1B620C
1B58BC:  CMP.W           R12, #1
1B58C0:  MOV.W           R0, #0
1B58C4:  MOV.W           R9, #0
1B58C8:  BLT.W           loc_1B6212
1B58CC:  MOV.W           R0, #0x10000
1B58D0:  LDR.W           R8, [R7,#var_E8]
1B58D4:  SUB.W           R0, R0, R12,LSL#16
1B58D8:  STR             R0, [R6,#0x20]
1B58DA:  LDR.W           R0, [R7,#var_DC]
1B58DE:  MOVS            R2, #0
1B58E0:  LDR             R3, [R6,#0xC]
1B58E2:  MOV.W           R9, #0
1B58E6:  MOVS            R4, #0
1B58E8:  LSLS            R0, R0, #1
1B58EA:  STR             R0, [R6,#0x1C]
1B58EC:  LDRH.W          R0, [R8],#2
1B58F0:  STR             R0, [R6,#0x18]
1B58F2:  MOVS            R0, #0
1B58F4:  LDR.W           LR, [R6,#0x20]
1B58F8:  MOVS            R1, #0
1B58FA:  LDR.W           R10, [R6,#0x18]
1B58FE:  STR.W           R2, [R7,#var_E0]
1B5902:  STR.W           R3, [R7,#var_B0]
1B5906:  LDRSH.W         R11, [R3,R1,LSL#1]
1B590A:  MOVW            R2, #0xF800
1B590E:  LDRSH.W         R12, [R8,R1,LSL#1]
1B5912:  MOVT            R2, #0xFFFF
1B5916:  CMP.W           R11, #0x100
1B591A:  SXTH.W          R5, R10
1B591E:  IT GE
1B5920:  MOVGE.W         R11, #0x100
1B5924:  ADDS            R1, #1
1B5926:  CMN.W           R11, #0x800
1B592A:  UXTH.W          R10, R12
1B592E:  IT LE
1B5930:  MOVLE           R11, R2
1B5932:  MOV             R2, R9
1B5934:  CMP.W           R11, #0
1B5938:  MOV.W           R9, #0
1B593C:  IT GT
1B593E:  MOVGT.W         R9, #1
1B5942:  ASR.W           R3, R11, R9
1B5946:  MOV             R9, R2
1B5948:  MOV.W           R2, LR,ASR#16
1B594C:  ADD.W           LR, LR, #0x20000
1B5950:  MLA.W           R0, R3, R2, R0
1B5954:  SUB.W           R2, R12, R5
1B5958:  LDR.W           R12, [R7,#var_A8]
1B595C:  SXTH            R5, R2
1B595E:  ADD             R9, R2
1B5960:  MLA.W           R4, R3, R5, R4
1B5964:  LDR.W           R3, [R7,#var_B0]
1B5968:  CMP             R1, R12
1B596A:  BLT             loc_1B5906
1B596C:  LDR             R1, [R6,#0x1C]
1B596E:  LDR.W           R2, [R7,#var_E0]
1B5972:  ADD             R3, R1
1B5974:  LDR.W           R1, [R7,#var_C4]
1B5978:  ADDS            R2, #1
1B597A:  CMP             R2, R1
1B597C:  BNE             loc_1B58F4
1B597E:  B.W             loc_1B6212
1B5982:  LDR.W           R0, [R7,#var_D8]
1B5986:  ADD.W           R5, R8, #0x1800
1B598A:  LDR.W           R1, [R7,#var_C8]
1B598E:  SUBS            R2, R1, R0
1B5990:  ADD.W           R3, R9, R0,LSL#1
1B5994:  MOVS            R0, #0
1B5996:  LDRSH.W         R1, [R3],#2
1B599A:  SXTH            R5, R5
1B599C:  SUB.W           R4, R5, #0x400
1B59A0:  SUB.W           LR, R1, R12
1B59A4:  CMP             R4, LR
1B59A6:  IT GT
1B59A8:  MOVGT           R1, R5
1B59AA:  MOV             R5, R12
1B59AC:  IT GT
1B59AE:  MOVGT.W         R5, #0x400
1B59B2:  SUBS            R2, #1
1B59B4:  SUB.W           R5, R1, R5
1B59B8:  SXTAH.W         R0, R0, R5
1B59BC:  BNE             loc_1B5996
1B59BE:  LDR.W           R1, [R7,#var_D8]
1B59C2:  LDR.W           R2, [R7,#var_C8]
1B59C6:  SUBS            R1, R2, R1
1B59C8:  BLX             sub_220A40
1B59CC:  LDR.W           R1, [R7,#var_C0]
1B59D0:  MOV.W           R10, #0
1B59D4:  MOV             R2, R1
1B59D6:  LDRH.W          R1, [R2,#0xF0]
1B59DA:  SUBS            R0, R0, R1
1B59DC:  SXTH            R5, R0
1B59DE:  MOVW            R0, #0xF800
1B59E2:  CMN.W           R5, #0x600
1B59E6:  MOVT            R0, #0xFFFF
1B59EA:  IT LE
1B59EC:  ADDLE.W         R5, R0, #0x200
1B59F0:  MOVW            R0, #0x28F
1B59F4:  CMP.W           R5, #0xC00
1B59F8:  IT GE
1B59FA:  MOVGE.W         R5, #0xC00
1B59FE:  MULS            R0, R5
1B5A00:  ADD.W           R0, R1, R0,LSR#15
1B5A04:  STRH.W          R0, [R2,#0xF0]
1B5A08:  LDR.W           R9, [R6,#0x74]
1B5A0C:  LDR.W           LR, [R7,#var_D4]
1B5A10:  LDR             R0, [R6,#0x54]
1B5A12:  CBNZ            R0, loc_1B5A26
1B5A14:  LDR.W           R0, [R7,#dest]; dest
1B5A18:  MOV             R1, R9; src
1B5A1A:  LDR.W           R2, [R6,#0x80]; n
1B5A1E:  MOV             R4, LR
1B5A20:  BLX             j_memcpy
1B5A24:  MOV             LR, R4
1B5A26:  LDR.W           R0, [R7,#var_CC]
1B5A2A:  CMP.W           LR, #1
1B5A2E:  STR             R5, [R6,#0x1C]
1B5A30:  BLT             loc_1B5AD6
1B5A32:  LDR.W           R1, [R7,#var_AC]
1B5A36:  LDR.W           R2, [R7,#var_F8]
1B5A3A:  LDR.W           R12, [R1,#0x14]
1B5A3E:  CMP             R2, #0
1B5A40:  LDR             R1, [R1,#0x1C]
1B5A42:  BNE             loc_1B5AC8
1B5A44:  CLZ.W           R2, R1
1B5A48:  LDR.W           R3, [R7,#var_F4]
1B5A4C:  ADD             R2, R12
1B5A4E:  SUBS            R2, #0x1D
1B5A50:  CMP             R2, R3
1B5A52:  BGT             loc_1B5AC8
1B5A54:  LDR.W           R2, [R7,#var_C0]
1B5A58:  MOVS            R3, #0
1B5A5A:  LDR             R2, [R2,#0x18]
1B5A5C:  STR.W           R3, [R7,#var_F8]
1B5A60:  CMP             R2, #5
1B5A62:  BLT             loc_1B5AC8
1B5A64:  LDR.W           R3, [R7,#var_D8]
1B5A68:  ORRS.W          R2, R10, R3
1B5A6C:  BNE             loc_1B5AC8
1B5A6E:  LDR             R2, [R6,#0x78]
1B5A70:  LDR.W           R0, [R7,#var_C4]
1B5A74:  LDRSH.W         R5, [R2,R3,LSL#1]
1B5A78:  CMP             R0, #1
1B5A7A:  BNE             loc_1B5AF8
1B5A7C:  LDR.W           R0, [R7,#var_C8]
1B5A80:  ADDS            R1, R3, #1
1B5A82:  STRH.W          R5, [R11,R3,LSL#1]
1B5A86:  CMP             R1, R0
1B5A88:  BGE.W           loc_1B5B8C
1B5A8C:  LDR.W           R0, [R7,#var_C8]
1B5A90:  ADD.W           R1, R11, R1,LSL#1
1B5A94:  LDR             R3, [R6,#0x48]
1B5A96:  SUBS            R2, R0, #1
1B5A98:  LDR.W           R0, [R7,#var_D8]
1B5A9C:  LSLS            R3, R3, #2
1B5A9E:  SUBS            R2, R2, R0
1B5AA0:  ADD.W           R3, R3, R0,LSL#1
1B5AA4:  LDR.W           R0, [R7,#var_C0]
1B5AA8:  ADD             R3, R0
1B5AAA:  ADDS            R3, #0xF6
1B5AAC:  SXTH            R5, R5
1B5AAE:  LDRSH.W         R0, [R3],#2
1B5AB2:  SUB.W           R5, R5, #0x400
1B5AB6:  CMP             R5, R0
1B5AB8:  IT GT
1B5ABA:  MOVGT           R0, R5
1B5ABC:  SUBS            R2, #1
1B5ABE:  STRH.W          R0, [R1],#2
1B5AC2:  MOV             R5, R0
1B5AC4:  BNE             loc_1B5AAC
1B5AC6:  B               loc_1B5B8C
1B5AC8:  LDRD.W          R5, R4, [R7,#var_C4]
1B5ACC:  LDR.W           R8, [R6,#0x70]
1B5AD0:  LDR.W           R10, [R7,#var_AC]
1B5AD4:  B               loc_1B5CEE
1B5AD6:  LDRD.W          R5, R4, [R7,#var_C4]
1B5ADA:  LDR.W           R1, [R7,#var_E4]
1B5ADE:  LDR.W           R8, [R6,#0x70]
1B5AE2:  B               loc_1B5D12
1B5AE4:  DCD __stack_chk_guard_ptr - 0x1B4DB8
1B5AE8:  DCD unk_C3E88 - 0x1B548C
1B5AEC:  DCD tf_select_table_ptr - 0x1B60FC
1B5AF0:  DCD tf_select_table_ptr - 0x1B6170
1B5AF4:  DCD unk_C3E8B - 0x1B648E
1B5AF8:  LDR.W           R0, [R7,#var_DC]
1B5AFC:  ADD.W           LR, R3, #1
1B5B00:  ADDS            R1, R3, R0
1B5B02:  LDRSH.W         R0, [R2,R1,LSL#1]
1B5B06:  CMP             R5, R0
1B5B08:  MOV             R0, R1
1B5B0A:  IT GT
1B5B0C:  MOVGT           R0, R3
1B5B0E:  LDRH.W          R5, [R2,R0,LSL#1]
1B5B12:  LDR.W           R0, [R7,#var_C8]
1B5B16:  STRH.W          R5, [R11,R3,LSL#1]
1B5B1A:  CMP             LR, R0
1B5B1C:  BGE             loc_1B5B8C
1B5B1E:  LDR.W           R0, [R7,#var_C8]
1B5B22:  ADD.W           R9, R1, #1
1B5B26:  LDR.W           R3, [R7,#var_D8]
1B5B2A:  ADD.W           R12, R11, LR,LSL#1
1B5B2E:  SUBS            R0, #1
1B5B30:  LDR.W           R2, [R7,#var_C0]
1B5B34:  SUB.W           R8, R0, R3
1B5B38:  LDR             R0, [R6,#0x48]
1B5B3A:  LSLS            R0, R0, #2
1B5B3C:  ADD.W           R1, R0, R3,LSL#1
1B5B40:  ADD             R1, R2
1B5B42:  ADD.W           R10, R1, #0xF6
1B5B46:  LDR.W           R1, [R7,#var_DC]
1B5B4A:  ADD.W           R0, R0, R1,LSL#1
1B5B4E:  ADD.W           R0, R0, R3,LSL#1
1B5B52:  ADD             R0, R2
1B5B54:  ADD.W           R1, R0, #0xF6
1B5B58:  MOVS            R0, #0
1B5B5A:  LDRSH.W         R2, [R1,R0,LSL#1]
1B5B5E:  ADD.W           R4, R9, R0
1B5B62:  LDRSH.W         R3, [R10,R0,LSL#1]
1B5B66:  CMP             R3, R2
1B5B68:  SXTH            R3, R5
1B5B6A:  IT GT
1B5B6C:  ADDGT.W         R4, LR, R0
1B5B70:  LDR             R2, [R6,#0x78]
1B5B72:  SUB.W           R3, R3, #0x400
1B5B76:  LDRSH.W         R2, [R2,R4,LSL#1]
1B5B7A:  CMP             R3, R2
1B5B7C:  IT GT
1B5B7E:  MOVGT           R2, R3
1B5B80:  STRH.W          R2, [R12,R0,LSL#1]
1B5B84:  ADDS            R0, #1
1B5B86:  CMP             R8, R0
1B5B88:  MOV             R5, R2
1B5B8A:  BNE             loc_1B5B5A
1B5B8C:  LDR.W           R10, [R7,#var_C8]
1B5B90:  LDR.W           R5, [R7,#var_D8]
1B5B94:  SUB.W           R0, R10, #2
1B5B98:  CMP             R0, R5
1B5B9A:  BLT             loc_1B5BBE
1B5B9C:  ADD.W           R1, R11, R0,LSL#1
1B5BA0:  LDRSH.W         R3, [R1,#2]
1B5BA4:  LDRSH.W         R2, [R1]
1B5BA8:  SUB.W           R3, R3, #0x400
1B5BAC:  CMP             R3, R2
1B5BAE:  IT LT
1B5BB0:  MOVLT           R3, R2
1B5BB2:  SUBS            R2, R0, #1
1B5BB4:  STRH            R3, [R1]
1B5BB6:  SUBS            R1, #2
1B5BB8:  CMP             R0, R5
1B5BBA:  MOV             R0, R2
1B5BBC:  BGT             loc_1B5BA0
1B5BBE:  CMP             R5, #2
1B5BC0:  MOV             LR, R5
1B5BC2:  IT LE
1B5BC4:  MOVLE.W         LR, #2
1B5BC8:  SUB.W           R9, R10, #1
1B5BCC:  MOVS            R3, #0
1B5BCE:  CMP             R9, LR
1B5BD0:  MOV.W           R0, #0
1B5BD4:  BLE             loc_1B5C1C
1B5BD6:  LDR.W           R0, [R7,#var_DC]
1B5BDA:  MOV.W           R8, #0
1B5BDE:  LDR             R4, [R6,#0x74]
1B5BE0:  MOV.W           R12, R0,LSL#1
1B5BE4:  MOVS            R0, #0
1B5BE6:  MOV             R1, LR
1B5BE8:  LDRSH.W         R2, [R11,R1,LSL#1]
1B5BEC:  LDRSH.W         R5, [R4,R1,LSL#1]
1B5BF0:  ADDS            R1, #1
1B5BF2:  CMP             R2, #0
1B5BF4:  IT LE
1B5BF6:  MOVLE           R2, R3
1B5BF8:  CMP             R5, #0
1B5BFA:  IT LE
1B5BFC:  MOVLE           R5, R3
1B5BFE:  UXTH            R2, R2
1B5C00:  UXTH            R5, R5
1B5C02:  SUBS            R2, R5, R2
1B5C04:  CMP             R2, #0
1B5C06:  IT GT
1B5C08:  ADDGT           R0, R0, R2
1B5C0A:  CMP             R1, R9
1B5C0C:  BLT             loc_1B5BE8
1B5C0E:  LDR.W           R1, [R7,#var_C4]
1B5C12:  ADD.W           R8, R8, #1
1B5C16:  ADD             R4, R12
1B5C18:  CMP             R8, R1
1B5C1A:  BLT             loc_1B5BE6
1B5C1C:  LDR.W           R5, [R7,#var_C4]
1B5C20:  SUB.W           R1, R9, LR
1B5C24:  MULS            R1, R5
1B5C26:  BLX             sub_220A40
1B5C2A:  CMP.W           R0, #0x400
1B5C2E:  BLE             loc_1B5CD0
1B5C30:  LDR.W           R4, [R7,#var_C0]
1B5C34:  LDR             R1, [R4,#0x48]
1B5C36:  LDR             R0, [R4,#0x1C]
1B5C38:  SUB             SP, SP, #0x18
1B5C3A:  LDR.W           R2, [R7,#var_BC]
1B5C3E:  LDR.W           R10, [R7,#var_D4]
1B5C42:  STR             R5, [SP,#0x1A0+var_1A0]
1B5C44:  STR             R2, [SP,#0x1A0+var_19C]
1B5C46:  STRD.W          R10, R0, [SP,#0x1A0+var_198]
1B5C4A:  LDR.W           R8, [R7,#var_CC]
1B5C4E:  LDR.W           R9, [R7,#n]
1B5C52:  STR             R1, [SP,#0x1A0+var_190]
1B5C54:  LDR             R1, [R6,#0x44]
1B5C56:  MOV             R0, R8
1B5C58:  LDR.W           R2, [R7,#var_D0]
1B5C5C:  MOV             R3, R9
1B5C5E:  BL              sub_1B7FB4
1B5C62:  ADD             SP, SP, #0x18
1B5C64:  LDR             R0, [R4,#0x48]
1B5C66:  SUB             SP, SP, #0x10
1B5C68:  STRD.W          R5, R10, [SP,#0x198+var_198]
1B5C6C:  MOV             R1, R9
1B5C6E:  LDR.W           R9, [R6,#0x50]
1B5C72:  LDR.W           R11, [R6,#0x70]
1B5C76:  STR             R0, [SP,#0x198+var_190]
1B5C78:  MOV             R0, R8
1B5C7A:  MOV             R2, R9
1B5C7C:  MOV             R3, R11
1B5C7E:  BLX             j_compute_band_energies
1B5C82:  ADD             SP, SP, #0x10
1B5C84:  SUB             SP, SP, #8
1B5C86:  LDR             R0, [R6,#0x74]
1B5C88:  MOV             R1, R11
1B5C8A:  STRD.W          R0, R5, [SP,#0x190+var_190]
1B5C8E:  MOV             R0, R8
1B5C90:  LDR.W           R2, [R7,#var_C8]
1B5C94:  MOV             R3, R9
1B5C96:  BLX             j_amp2Log2
1B5C9A:  ADD             SP, SP, #8
1B5C9C:  LDR             R1, [R6,#0x58]
1B5C9E:  CMP             R1, #1
1B5CA0:  BLT             loc_1B5CB8
1B5CA2:  LDR.W           R2, [R7,#dest]
1B5CA6:  MOV.W           R0, R10,LSL#26
1B5CAA:  ASRS            R0, R0, #0x11
1B5CAC:  LDRH            R3, [R2]
1B5CAE:  SUBS            R1, #1
1B5CB0:  ADD             R3, R0
1B5CB2:  STRH.W          R3, [R2],#2
1B5CB6:  BNE             loc_1B5CAC
1B5CB8:  MOVW            R0, #0xCCD
1B5CBC:  LDR.W           R5, [R7,#var_C4]
1B5CC0:  STRH.W          R0, [R7,#var_9A]
1B5CC4:  MOVS            R0, #1
1B5CC6:  STR.W           R0, [R7,#var_F8]
1B5CCA:  LDR             R0, [R6,#0x44]
1B5CCC:  STR             R0, [R6,#0x4C]
1B5CCE:  B               loc_1B5CDA
1B5CD0:  MOVS            R0, #0
1B5CD2:  LDR.W           R4, [R7,#var_C0]
1B5CD6:  STR.W           R0, [R7,#var_F8]
1B5CDA:  LDR.W           R10, [R7,#var_AC]
1B5CDE:  LDR.W           R0, [R7,#var_CC]
1B5CE2:  LDR.W           R8, [R6,#0x70]
1B5CE6:  LDR.W           R12, [R10,#0x14]
1B5CEA:  LDR.W           R1, [R10,#0x1C]
1B5CEE:  CLZ.W           R1, R1
1B5CF2:  LDR.W           R2, [R7,#var_F4]
1B5CF6:  ADD             R1, R12
1B5CF8:  SUBS            R1, #0x1D
1B5CFA:  CMP             R1, R2
1B5CFC:  BGT             loc_1B5D0E
1B5CFE:  LDR.W           R1, [R7,#var_F8]
1B5D02:  MOV             R0, R10
1B5D04:  MOVS            R2, #3
1B5D06:  BLX             j_ec_enc_bit_logp
1B5D0A:  LDR.W           R0, [R7,#var_CC]
1B5D0E:  LDR.W           R1, [R7,#var_E4]
1B5D12:  MULS            R1, R5
1B5D14:  MOV.W           R9, #7
1B5D18:  ADD.W           R1, R9, R1,LSL#1
1B5D1C:  BIC.W           R1, R1, #7
1B5D20:  SUB.W           R2, SP, R1
1B5D24:  MOV             SP, R2
1B5D26:  SUB             SP, SP, #0x10
1B5D28:  STRD.W          R8, R5, [SP,#0x198+var_198]
1B5D2C:  LDR             R1, [R6,#0x44]
1B5D2E:  STR             R1, [SP,#0x198+var_190]
1B5D30:  LDR.W           R1, [R7,#n]
1B5D34:  LDR             R3, [R6,#0x50]
1B5D36:  STR.W           R2, [R6,#0x80]
1B5D3A:  BLX             j_normalise_bands
1B5D3E:  ADD             SP, SP, #0x10
1B5D40:  LDR.W           R0, [R7,#var_D8]
1B5D44:  MOVS            R2, #0
1B5D46:  CBNZ            R0, loc_1B5D62
1B5D48:  LDR             R1, [R6,#0x5C]
1B5D4A:  RSB.W           R0, R5, R5,LSL#4
1B5D4E:  CMP             R1, R0
1B5D50:  ITTT GE
1B5D52:  LDRGE           R0, [R4,#0x18]
1B5D54:  MOVGE           R2, #0
1B5D56:  CMPGE           R0, #2
1B5D58:  BLT             loc_1B5D62
1B5D5A:  LDR             R0, [R4,#0x40]
1B5D5C:  CMP             R0, #0
1B5D5E:  IT EQ
1B5D60:  MOVEQ           R2, #1
1B5D62:  LDR.W           R0, [R7,#var_DC]
1B5D66:  STR.W           R2, [R7,#var_B0]
1B5D6A:  ADD.W           R0, R9, R0,LSL#2
1B5D6E:  BIC.W           R10, R0, #7
1B5D72:  SUB.W           R3, SP, R10
1B5D76:  MOV             SP, R3
1B5D78:  SUB.W           R0, SP, R10
1B5D7C:  MOV             SP, R0
1B5D7E:  SUB.W           R1, SP, R10
1B5D82:  MOV             SP, R1
1B5D84:  LDR.W           R2, [R7,#var_CC]
1B5D88:  LDR.W           R11, [R4,#0x2C]
1B5D8C:  LDR.W           R12, [R2,#0x30]
1B5D90:  LDR             R2, [R4,#0x34]
1B5D92:  LDRD.W          LR, R5, [R4,#0x3C]
1B5D96:  SUB             SP, SP, #0x40 ; '@'
1B5D98:  LDR.W           R4, [R7,#var_B8]
1B5D9C:  STRD.W          R5, R4, [SP,#0x1C8+var_198]; int
1B5DA0:  SUB.W           R5, R7, #-var_A0
1B5DA4:  STR             R5, [SP,#0x1C8+var_19C]; int
1B5DA6:  LDR.W           R9, [R6,#0x5C]
1B5DAA:  LDR.W           R8, [R7,#var_D4]
1B5DAE:  LDR.W           R5, [R7,#var_E8]
1B5DB2:  STR.W           R9, [SP,#0x1C8+var_1A0]
1B5DB6:  STR.W           R8, [SP,#0x1C8+var_1A4]
1B5DBA:  STR             R5, [SP,#0x1C8+var_1A8]
1B5DBC:  STRD.W          R11, R2, [SP,#0x1C8+var_1B0]
1B5DC0:  LDR.W           R11, [R7,#var_F8]
1B5DC4:  STR.W           R11, [SP,#0x1C8+var_1B4]
1B5DC8:  STR             R1, [SP,#0x1C8+var_18C]
1B5DCA:  STR.W           R1, [R7,#var_B8]
1B5DCE:  STR.W           R0, [R7,#n]
1B5DD2:  STR             R0, [SP,#0x1C8+var_190]; int
1B5DD4:  STRD.W          LR, R12, [SP,#0x1C8+src]
1B5DD8:  LDR.W           R0, [R7,#var_C4]
1B5DDC:  LDR.W           R11, [R7,#var_C8]
1B5DE0:  STR             R3, [SP,#0x1C8+var_1C0]
1B5DE2:  STR             R0, [SP,#0x1C8+var_1C4]
1B5DE4:  STR.W           R3, [R7,#var_A8]
1B5DE8:  STR.W           R11, [SP,#0x1C8+var_1C8]
1B5DEC:  LDR             R0, [R6,#0x74]
1B5DEE:  LDR.W           R1, [R7,#dest]
1B5DF2:  LDRD.W          R2, R5, [R7,#var_DC]
1B5DF6:  MOV             R3, R5
1B5DF8:  BL              sub_1B8124
1B5DFC:  ADD             SP, SP, #0x40 ; '@'
1B5DFE:  SUB.W           R4, SP, R10
1B5E02:  MOV             R3, R0
1B5E04:  MOV             SP, R4
1B5E06:  LDR.W           R0, [R7,#var_B0]
1B5E0A:  STR             R4, [R6,#0x54]
1B5E0C:  CMP             R0, #1
1B5E0E:  STR             R3, [R6,#0x20]
1B5E10:  BNE             loc_1B5E7A
1B5E12:  MOV.W           R0, #0x5000
1B5E16:  MOV             R1, R9
1B5E18:  BLX             sub_220A40
1B5E1C:  LDR.W           R2, [R7,#var_98]
1B5E20:  LDRSH.W         R1, [R7,#var_9A]
1B5E24:  SUB             SP, SP, #0x20 ; ' '
1B5E26:  ADDS            R3, R0, #2
1B5E28:  CMP             R0, #0x4E ; 'N'
1B5E2A:  IT LT
1B5E2C:  MOVLT           R3, #0x50 ; 'P'
1B5E2E:  LDR.W           R0, [R6,#0x80]
1B5E32:  STR             R3, [SP,#0x1A8+var_1A8]
1B5E34:  MOV             R3, R4
1B5E36:  STR             R0, [SP,#0x1A8+var_1A4]
1B5E38:  LDR.W           R0, [R7,#var_E4]
1B5E3C:  STRD.W          R0, R8, [SP,#0x1A8+var_1A0]
1B5E40:  STRD.W          R1, R2, [SP,#0x1A8+var_198]
1B5E44:  LDR.W           R0, [R7,#n]
1B5E48:  LDR             R5, [R6,#0x70]
1B5E4A:  STR             R0, [SP,#0x1A8+var_190]
1B5E4C:  LDR.W           R0, [R7,#var_CC]
1B5E50:  LDR.W           R2, [R7,#var_F8]
1B5E54:  MOV             R1, R5
1B5E56:  BL              sub_1B8A7C
1B5E5A:  ADD             SP, SP, #0x20 ; ' '
1B5E5C:  LDR             R2, [R6,#0x24]
1B5E5E:  MOV             R9, R11
1B5E60:  CMP             R11, R2
1B5E62:  BLE             loc_1B5EAA
1B5E64:  LDR.W           R10, [R7,#var_C4]
1B5E68:  SUBS            R3, R5, #1
1B5E6A:  LDR.W           R1, [R4,R3,LSL#2]
1B5E6E:  STR.W           R1, [R4,R2,LSL#2]
1B5E72:  ADDS            R2, #1
1B5E74:  CMP             R2, R9
1B5E76:  BLT             loc_1B5E6A
1B5E78:  B               loc_1B5EAE
1B5E7A:  CMP             R5, #0
1B5E7C:  ITT NE
1B5E7E:  LDRNE.W         R0, [R7,#var_A4]
1B5E82:  CMPNE           R0, #0
1B5E84:  BEQ             loc_1B5EB6
1B5E86:  LDR.W           R9, [R7,#var_C8]
1B5E8A:  LDR.W           R10, [R7,#var_C4]
1B5E8E:  LDR.W           R11, [R7,#var_D4]
1B5E92:  CMP.W           R9, #1
1B5E96:  LDR             R4, [R6,#0x64]
1B5E98:  BLT             loc_1B5EF2
1B5E9A:  LDR             R2, [R6,#0x54]
1B5E9C:  MOVS            R0, #1
1B5E9E:  MOV             R1, R9
1B5EA0:  STR.W           R0, [R2],#4
1B5EA4:  SUBS            R1, #1
1B5EA6:  BNE             loc_1B5EA0
1B5EA8:  B               loc_1B5EF2
1B5EAA:  LDR.W           R10, [R7,#var_C4]
1B5EAE:  LDR.W           R11, [R7,#var_D4]
1B5EB2:  LDR             R4, [R6,#0x64]
1B5EB4:  B               loc_1B5EF4
1B5EB6:  LDR.W           R0, [R7,#var_D8]
1B5EBA:  CMP             R0, #0
1B5EBC:  LDR.W           R0, [R7,#var_C0]
1B5EC0:  LDRD.W          R9, R10, [R7,#var_C8]
1B5EC4:  LDR.W           R11, [R7,#var_D4]
1B5EC8:  LDR.W           R2, [R7,#var_F8]
1B5ECC:  LDR             R1, [R6,#0x5C]
1B5ECE:  LDR             R4, [R6,#0x64]
1B5ED0:  BEQ             loc_1B5EE0
1B5ED2:  CMP             R1, #0xF
1B5ED4:  BGE             loc_1B5EE0
1B5ED6:  LDR.W           R0, [R0,#0xB8]
1B5EDA:  CMP             R0, #2
1B5EDC:  BNE.W           loc_1B61F2
1B5EE0:  CMP.W           R9, #1
1B5EE4:  BLT             loc_1B5EF2
1B5EE6:  LDR             R1, [R6,#0x54]
1B5EE8:  MOV             R0, R9
1B5EEA:  STR.W           R2, [R1],#4
1B5EEE:  SUBS            R0, #1
1B5EF0:  BNE             loc_1B5EEA
1B5EF2:  MOVS            R0, #0
1B5EF4:  STR.W           R0, [R7,#n]
1B5EF8:  SUB.W           R0, SP, R4
1B5EFC:  STR             R0, [R6,#0x64]
1B5EFE:  MOV             SP, R0
1B5F00:  LDR.W           R0, [R7,#var_D8]
1B5F04:  CMP             R9, R0
1B5F06:  BLE             loc_1B5F8C
1B5F08:  LDR.W           R4, [R7,#var_DC]
1B5F0C:  MOV.W           LR, #0
1B5F10:  LDR.W           R1, [R7,#var_EC]
1B5F14:  LDR             R2, [R6,#0x48]
1B5F16:  ADD.W           R0, R4, R4,LSL#1
1B5F1A:  LDR.W           R3, [R7,#var_D8]
1B5F1E:  LDR.W           R5, [R7,#var_C0]
1B5F22:  LSLS            R0, R0, #1
1B5F24:  LSLS            R2, R2, #2
1B5F26:  ADD.W           R0, R0, R1,LSL#2
1B5F2A:  LDR.W           R1, [R7,#var_BC]
1B5F2E:  ADD.W           R0, R0, #0x1000
1B5F32:  ADD.W           R2, R2, R3,LSL#1
1B5F36:  ADD             R2, R5
1B5F38:  MUL.W           R12, R1, R0
1B5F3C:  LDR             R0, [R6,#0x74]
1B5F3E:  SUB.W           R1, R9, R3
1B5F42:  ADD.W           R0, R0, R3,LSL#1
1B5F46:  ADDS            R2, #0xF4
1B5F48:  ADD.W           R3, R12, R3,LSL#1
1B5F4C:  MOV.W           R12, R4,LSL#1
1B5F50:  ADD             R3, R5
1B5F52:  ADD.W           R8, R3, #0xF4
1B5F56:  MOVS            R5, #0
1B5F58:  LDRSH.W         R3, [R2,R5,LSL#1]
1B5F5C:  LDRSH.W         R4, [R0,R5,LSL#1]
1B5F60:  SUBS            R3, R4, R3
1B5F62:  IT MI
1B5F64:  NEGMI           R3, R3
1B5F66:  CMP.W           R3, #0x800
1B5F6A:  BGE             loc_1B5F78
1B5F6C:  LDRSH.W         R3, [R8,R5,LSL#1]
1B5F70:  SUB.W           R3, R4, R3,LSR#2
1B5F74:  STRH.W          R3, [R0,R5,LSL#1]
1B5F78:  ADDS            R5, #1
1B5F7A:  CMP             R1, R5
1B5F7C:  BNE             loc_1B5F58
1B5F7E:  ADD.W           LR, LR, #1
1B5F82:  ADD             R0, R12
1B5F84:  ADD             R2, R12
1B5F86:  ADD             R8, R12
1B5F88:  CMP             LR, R10
1B5F8A:  BLT             loc_1B5F56
1B5F8C:  LDR.W           R5, [R7,#var_C0]
1B5F90:  LDR             R0, [R5,#0xC]
1B5F92:  LDR             R1, [R5,#0x18]
1B5F94:  LDR             R2, [R5,#0x38]
1B5F96:  LDR             R3, [R5,#0x40]
1B5F98:  SUB             SP, SP, #0x38 ; '8'
1B5F9A:  ADDS            R5, #0x54 ; 'T'
1B5F9C:  CMP             R1, #3
1B5F9E:  MOV.W           R1, #0
1B5FA2:  MOV.W           R8, #0
1B5FA6:  IT GT
1B5FA8:  MOVGT           R1, #1
1B5FAA:  STRD.W          R0, R5, [SP,#0x1C0+var_1A0]; int
1B5FAE:  ADD             R0, SP, #0x1C0+var_198
1B5FB0:  STM             R0!, {R1-R3}
1B5FB2:  MOV             R2, R9; int
1B5FB4:  LDR             R0, [R6,#0x74]
1B5FB6:  STR             R0, [SP,#0x1C0+var_1C0]; int
1B5FB8:  LDR             R0, [R6,#0x78]
1B5FBA:  STR             R0, [SP,#0x1C0+src]; src
1B5FBC:  LDR.W           R0, [R7,#var_F4]
1B5FC0:  STR             R0, [SP,#0x1C0+var_1B8]; int
1B5FC2:  LDR             R0, [R6,#0x64]
1B5FC4:  STR             R0, [SP,#0x1C0+var_1B4]; int
1B5FC6:  LDR.W           R0, [R7,#var_AC]
1B5FCA:  STRD.W          R0, R10, [SP,#0x1C0+var_1B0]; int
1B5FCE:  STR.W           R11, [SP,#0x1C0+var_1A8]; int
1B5FD2:  MOV             R5, R0
1B5FD4:  LDR             R0, [R6,#0x68]
1B5FD6:  STR             R0, [SP,#0x1C0+var_1A4]; int
1B5FD8:  LDR.W           R0, [R7,#var_CC]; int
1B5FDC:  LDR.W           R1, [R7,#var_D8]; int
1B5FE0:  LDR             R3, [R6,#0x70]; int
1B5FE2:  BLX             j_quant_coarse_energy
1B5FE6:  ADD             SP, SP, #0x38 ; '8'
1B5FE8:  LDR             R3, [R5,#0x1C]
1B5FEA:  MOVS            R2, #4
1B5FEC:  LDR.W           R4, [R7,#var_F8]
1B5FF0:  LDR             R0, [R5,#0x14]
1B5FF2:  CLZ.W           R3, R3
1B5FF6:  LDR             R1, [R5,#4]
1B5FF8:  ADD             R0, R3
1B5FFA:  MOV             LR, R4
1B5FFC:  CMP.W           LR, #0
1B6000:  SUB.W           R0, R0, #0x20 ; ' '
1B6004:  IT NE
1B6006:  MOVNE           R2, #2
1B6008:  LSLS            R1, R1, #3
1B600A:  CMP.W           R11, #1
1B600E:  BLT             loc_1B6022
1B6010:  ORR.W           R3, R2, #1
1B6014:  ADD             R3, R0
1B6016:  CMP             R3, R1
1B6018:  IT LS
1B601A:  MOVLS.W         R8, #1
1B601E:  MOV             R4, R8
1B6020:  B               loc_1B6024
1B6022:  MOVS            R4, #0
1B6024:  LDR.W           R3, [R7,#var_D8]
1B6028:  LDR.W           R12, [R7,#var_CC]
1B602C:  CMP             R9, R3
1B602E:  STR.W           R4, [R7,#var_B0]
1B6032:  BLE             loc_1B605C
1B6034:  MOV             R3, R5
1B6036:  MOVS            R5, #5
1B6038:  CMP.W           LR, #0
1B603C:  SUB.W           R10, R1, R4
1B6040:  IT NE
1B6042:  MOVNE           R5, #4
1B6044:  LDR.W           R8, [R6,#0x54]
1B6048:  ADDS            R1, R0, R2
1B604A:  CMP             R1, R10
1B604C:  BLS             loc_1B6062
1B604E:  LDR.W           R3, [R7,#var_D8]
1B6052:  MOV.W           R9, #0
1B6056:  STR.W           R9, [R8,R3,LSL#2]
1B605A:  B               loc_1B6088
1B605C:  MOV.W           R9, #0
1B6060:  B               loc_1B60E2
1B6062:  LDR.W           R9, [R7,#var_D8]
1B6066:  MOV             R4, R3
1B6068:  MOV             R0, R4
1B606A:  LDR.W           R1, [R8,R9,LSL#2]
1B606E:  BLX             j_ec_enc_bit_logp
1B6072:  LDR             R1, [R4,#0x1C]
1B6074:  MOV             R3, R9
1B6076:  LDR             R0, [R4,#0x14]
1B6078:  CLZ.W           R1, R1
1B607C:  LDR.W           R12, [R7,#var_CC]
1B6080:  ADD             R0, R1
1B6082:  LDR.W           R9, [R8,R3,LSL#2]
1B6086:  SUBS            R0, #0x20 ; ' '
1B6088:  LDR.W           R2, [R7,#var_C8]
1B608C:  ADDS            R1, R3, #1
1B608E:  CMP             R1, R2
1B6090:  BEQ             loc_1B60E2
1B6092:  SUBS            R1, R2, #1
1B6094:  SUBS            R4, R1, R3
1B6096:  ADD.W           R1, R8, R3,LSL#2
1B609A:  LDR.W           R8, [R7,#var_AC]
1B609E:  ADD.W           R11, R1, #4
1B60A2:  MOV             R1, R9
1B60A4:  ADDS            R2, R0, R5
1B60A6:  CMP             R2, R10
1B60A8:  BLS             loc_1B60B0
1B60AA:  STR.W           R1, [R11]
1B60AE:  B               loc_1B60DA
1B60B0:  LDR.W           R0, [R11]
1B60B4:  MOV             R2, R5
1B60B6:  EORS            R1, R0
1B60B8:  MOV             R0, R8
1B60BA:  BLX             j_ec_enc_bit_logp
1B60BE:  LDR.W           R2, [R8,#0x1C]
1B60C2:  LDR.W           R0, [R8,#0x14]
1B60C6:  LDR.W           R1, [R11]
1B60CA:  CLZ.W           R2, R2
1B60CE:  ADD             R0, R2
1B60D0:  LDR.W           R12, [R7,#var_CC]
1B60D4:  ORR.W           R9, R9, R1
1B60D8:  SUBS            R0, #0x20 ; ' '
1B60DA:  ADD.W           R11, R11, #4
1B60DE:  SUBS            R4, #1
1B60E0:  BNE             loc_1B60A4
1B60E2:  LDR.W           R0, [R7,#var_B0]
1B60E6:  LDR.W           R10, [R7,#var_AC]
1B60EA:  CMP             R0, #1
1B60EC:  BNE             loc_1B612A
1B60EE:  LDR.W           R0, =(tf_select_table_ptr - 0x1B60FC)
1B60F2:  MOVS            R1, #2
1B60F4:  LDR.W           R2, [R7,#var_F8]
1B60F8:  ADD             R0, PC; tf_select_table_ptr
1B60FA:  LDR.W           R11, [R7,#var_D4]
1B60FE:  LDR.W           R8, [R7,#var_C0]
1B6102:  LDR             R0, [R0]; tf_select_table
1B6104:  ORR.W           R1, R1, R2,LSL#2
1B6108:  ADD             R1, R9
1B610A:  ADD.W           R2, R9, R2,LSL#2
1B610E:  ADD.W           R0, R0, R11,LSL#3
1B6112:  LDR.W           R9, [R7,#var_C8]
1B6116:  LDR.W           R4, [R7,#var_D8]
1B611A:  LDRB            R1, [R0,R1]
1B611C:  LDRB            R0, [R0,R2]
1B611E:  CMP             R0, R1
1B6120:  BNE             loc_1B613E
1B6122:  MOVS            R2, #0
1B6124:  CMP             R9, R4
1B6126:  BGT             loc_1B6156
1B6128:  B               loc_1B6182
1B612A:  MOVS            R2, #0
1B612C:  LDR.W           R8, [R7,#var_C0]
1B6130:  LDR.W           R9, [R7,#var_C8]
1B6134:  LDRD.W          R4, R11, [R7,#var_D8]
1B6138:  CMP             R9, R4
1B613A:  BGT             loc_1B6156
1B613C:  B               loc_1B6182
1B613E:  LDR.W           R5, [R7,#n]
1B6142:  MOV             R0, R10
1B6144:  MOVS            R2, #1
1B6146:  MOV             R1, R5
1B6148:  BLX             j_ec_enc_bit_logp
1B614C:  LDR.W           R12, [R7,#var_CC]
1B6150:  LSLS            R2, R5, #1
1B6152:  CMP             R9, R4
1B6154:  BLE             loc_1B6182
1B6156:  LDR.W           R3, [R7,#var_F8]
1B615A:  SUB.W           R1, R9, R4
1B615E:  LDR             R0, [R6,#0x54]
1B6160:  ADD.W           R2, R2, R3,LSL#2
1B6164:  LDR.W           R3, =(tf_select_table_ptr - 0x1B6170)
1B6168:  ADD.W           R0, R0, R4,LSL#2
1B616C:  ADD             R3, PC; tf_select_table_ptr
1B616E:  LDR             R3, [R3]; tf_select_table
1B6170:  ADD.W           R3, R3, R11,LSL#3
1B6174:  LDR             R5, [R0]
1B6176:  SUBS            R1, #1
1B6178:  ADD             R5, R2
1B617A:  LDRSB           R5, [R3,R5]
1B617C:  STR.W           R5, [R0],#4
1B6180:  BNE             loc_1B6174
1B6182:  LDR.W           R1, [R10,#0x1C]
1B6186:  LDR.W           R0, [R10,#0x14]
1B618A:  CLZ.W           R1, R1
1B618E:  ADD             R0, R1
1B6190:  LDR.W           R1, [R7,#var_F4]
1B6194:  SUBS            R0, #0x1C
1B6196:  CMP             R0, R1
1B6198:  BGT.W           loc_1B6494
1B619C:  LDR.W           R0, [R8,#0x40]
1B61A0:  CBZ             R0, loc_1B61B0
1B61A2:  MOVS            R1, #2
1B61A4:  MOVS            R0, #0
1B61A6:  STR.W           R1, [R8,#0x50]
1B61AA:  STR.W           R0, [R8,#0x64]
1B61AE:  B               loc_1B6482
1B61B0:  CBZ             R4, loc_1B61C2
1B61B2:  LDR.W           R0, [R8,#0x18]
1B61B6:  CBZ             R0, loc_1B61EA
1B61B8:  LDR.W           R0, [R7,#var_F8]
1B61BC:  MOVS            R1, #3
1B61BE:  CMP             R0, #0
1B61C0:  B               loc_1B61E0
1B61C2:  LDR             R0, [R6,#0x4C]
1B61C4:  CBNZ            R0, loc_1B61DA
1B61C6:  LDR             R0, [R6,#8]
1B61C8:  LDR             R1, [R6,#0x68]
1B61CA:  CMP.W           R1, R0,LSL#1
1B61CE:  ITT GE
1B61D0:  LDRGE.W         R0, [R8,#0x18]
1B61D4:  CMPGE           R0, #2
1B61D6:  BGT.W           loc_1B643E
1B61DA:  LDR.W           R1, [R8,#0x18]
1B61DE:  CMP             R1, #0
1B61E0:  IT NE
1B61E2:  MOVNE           R1, #2
1B61E4:  STR.W           R1, [R8,#0x50]
1B61E8:  B               loc_1B6482
1B61EA:  MOVS            R1, #0
1B61EC:  STR.W           R1, [R8,#0x50]
1B61F0:  B               loc_1B6482
1B61F2:  CMP.W           R9, #1
1B61F6:  MOV             R0, R2
1B61F8:  BLT.W           loc_1B5EF4
1B61FC:  LDR             R0, [R6,#0x54]; int
1B61FE:  MOV.W           R1, R9,LSL#2; n
1B6202:  BLX             sub_22178C
1B6206:  LDR.W           R0, [R7,#var_F8]
1B620A:  B               loc_1B5EF4
1B620C:  MOVS            R0, #0
1B620E:  MOV.W           R9, #0
1B6212:  MUL.W           R1, R12, R1
1B6216:  SUB.W           R2, R12, #1
1B621A:  ADD.W           R0, R0, R0,LSL#1
1B621E:  MOV             R10, R12
1B6220:  LSLS            R0, R0, #1
1B6222:  MULS            R1, R2
1B6224:  ADD.W           R2, R12, #1
1B6228:  MULS            R1, R2
1B622A:  BLX             sub_220A40
1B622E:  ASRS            R1, R0, #1
1B6230:  MOV             R3, R9
1B6232:  CMP             R1, #0x20 ; ' '
1B6234:  MOV.W           R9, #0x20 ; ' '
1B6238:  IT LT
1B623A:  MOVLT.W         R9, R0,ASR#1
1B623E:  MOV             R2, R4
1B6240:  CMN.W           R9, #0x20 ; ' '
1B6244:  STR.W           R9, [R7,#var_B0]
1B6248:  IT LE
1B624A:  MOVLE           R9, #0xFFFFFFE0
1B624E:  SXTH            R1, R3
1B6250:  MOV             R0, R2
1B6252:  MOVW            R11, #0xFE32
1B6256:  SUB.W           R5, R11, R9
1B625A:  BLX             sub_220A40
1B625E:  MOV             R2, R0
1B6260:  MOVS            R0, #0xFF320000
1B6266:  SXTH            R4, R2
1B6268:  MOV             R1, R0
1B626A:  SUB.W           R0, R1, R9,LSL#16
1B626E:  SUBS            R3, R5, R4
1B6270:  SUB.W           R5, R0, R2,LSL#16
1B6274:  SUB.W           R0, R11, R4
1B6278:  STR.W           R4, [R7,#var_E0]
1B627C:  LDR.W           R4, [R7,#var_E8]
1B6280:  SUB.W           R1, R1, R2,LSL#16
1B6284:  LSLS            R2, R2, #0x10
1B6286:  MOV.W           R11, R9,LSL#16
1B628A:  STR             R2, [R6,#0x20]
1B628C:  LDRH.W          R2, [R4,R10,LSL#1]
1B6290:  ADDS            R4, #2
1B6292:  ADD.W           R2, R2, R2,LSR#15
1B6296:  SXTH            R2, R2
1B6298:  MOV.W           LR, R2,ASR#1
1B629C:  LDRSH.W         R2, [R4],#2
1B62A0:  MOV             R12, R0
1B62A2:  MOV             R8, R1
1B62A4:  ADD             R3, R9
1B62A6:  ADD             R5, R11
1B62A8:  ADD.W           R1, R8, R11
1B62AC:  ADD.W           R0, R12, R9
1B62B0:  CMP             R2, LR
1B62B2:  BLT             loc_1B629C
1B62B4:  LDR.W           R0, [R7,#var_B0]
1B62B8:  CMN.W           R0, #0x20 ; ' '
1B62BC:  IT LE
1B62BE:  MOVLE           R0, #0xFFFFFFE0
1B62C2:  STR.W           R0, [R7,#var_B0]
1B62C6:  LDR.W           R0, [R7,#var_E0]
1B62CA:  ADD.W           R1, R0, #0xCD
1B62CE:  LDR.W           R0, [R7,#var_A8]
1B62D2:  CMP             R0, #1
1B62D4:  BLT             loc_1B635C
1B62D6:  LDR.W           R0, [R7,#var_C4]
1B62DA:  STR             R1, [R6,#0x1C]
1B62DC:  CMP             R0, #2
1B62DE:  BNE             loc_1B6378
1B62E0:  LDR.W           R0, [R7,#var_DC]
1B62E4:  MOVS            R5, #0
1B62E6:  LDR             R4, [R6,#0xC]
1B62E8:  MOV.W           LR, #0
1B62EC:  ADD.W           R9, R4, R0,LSL#1
1B62F0:  LDR.W           R0, [R7,#var_B0]
1B62F4:  MOV.W           R10, R0,LSL#16
1B62F8:  LDRSH.W         R0, [R9,R5,LSL#1]
1B62FC:  LDRSH.W         R2, [R4,R5,LSL#1]
1B6300:  LDR.W           R1, [R7,#var_DC]
1B6304:  CMP             R2, R0
1B6306:  MOV             R0, R5
1B6308:  IT LE
1B630A:  ADDLE           R0, R0, R1
1B630C:  MOVS            R1, #0
1B630E:  LDRSH.W         R0, [R4,R0,LSL#1]
1B6312:  MOVT            R1, #0xFF32
1B6316:  ADD.W           R3, R1, #0xCD0000
1B631A:  MVNS            R2, R0
1B631C:  CMP.W           R2, #0xFFFFFFFF
1B6320:  IT LE
1B6322:  MOVLE.W         R2, #0xFFFFFFFF
1B6326:  MLA.W           R2, R2, R3, R8
1B632A:  CMP.W           R2, #0x1000000
1B632E:  BLE             loc_1B6344
1B6330:  LDR.W           R1, [R7,#var_B8]
1B6334:  AND.W           R0, R0, R0,ASR#31
1B6338:  ADD.W           LR, LR, #1
1B633C:  ADD             R0, R12
1B633E:  ADDS            R0, #1
1B6340:  STRH.W          R0, [R1,R5,LSL#1]
1B6344:  LDR.W           R0, [R7,#var_B0]
1B6348:  SUB.W           R8, R8, R10
1B634C:  ADDS            R5, #1
1B634E:  SUB.W           R12, R12, R0
1B6352:  LDR.W           R0, [R7,#var_A8]
1B6356:  CMP             R5, R0
1B6358:  BLT             loc_1B62F8
1B635A:  B               loc_1B63CE
1B635C:  MOVW            R8, #0xC000
1B6360:  LDR.W           R2, [R7,#var_C0]
1B6364:  LDR.W           LR, [R7,#var_D4]
1B6368:  SUB.W           R11, R7, #-var_58
1B636C:  MOVT            R8, #0xFFFF
1B6370:  LDR.W           R9, [R6,#0x74]
1B6374:  B.W             loc_1B7168
1B6378:  LDR.W           R12, [R6,#0xC]
1B637C:  MOVS            R0, #0
1B637E:  MOV.W           LR, #0
1B6382:  LDRSH.W         R2, [R12,R0,LSL#1]
1B6386:  MOVS            R1, #0xFFFF0000
1B6390:  MVNS            R4, R2
1B6392:  CMP.W           R4, #0xFFFFFFFF
1B6396:  IT LE
1B6398:  MOVLE.W         R4, #0xFFFFFFFF
1B639C:  MLA.W           R1, R4, R1, R5
1B63A0:  CMP.W           R1, #0x1000000
1B63A4:  BLE             loc_1B63BA
1B63A6:  AND.W           R1, R2, R2,ASR#31
1B63AA:  LDR.W           R2, [R7,#var_B8]
1B63AE:  ADD.W           LR, LR, #1
1B63B2:  ADD             R1, R3
1B63B4:  ADDS            R1, #1
1B63B6:  STRH.W          R1, [R2,R0,LSL#1]
1B63BA:  LDR.W           R2, [R7,#var_B0]
1B63BE:  SUB.W           R5, R5, R11
1B63C2:  LDR.W           R1, [R7,#var_A8]
1B63C6:  ADDS            R0, #1
1B63C8:  SUBS            R3, R3, R2
1B63CA:  CMP             R0, R1
1B63CC:  BLT             loc_1B6382
1B63CE:  CMP.W           LR, #3
1B63D2:  BLT             loc_1B6420
1B63D4:  MOVS            R0, #0
1B63D6:  LDR             R1, [R6,#0x20]
1B63D8:  MOVT            R0, #0xFD2F
1B63DC:  LDR.W           R2, [R7,#var_C0]
1B63E0:  ADD.W           R0, R0, #0x1040000
1B63E4:  LDR.W           LR, [R7,#var_D4]
1B63E8:  CMP             R1, R0
1B63EA:  LDR.W           R9, [R6,#0x74]
1B63EE:  LDR.W           R0, [R7,#var_B8]; int
1B63F2:  MOVW            R8, #0xC000
1B63F6:  SUB.W           R11, R7, #-var_58
1B63FA:  MOVT            R8, #0xFFFF
1B63FE:  BLE.W           loc_1B7134
1B6402:  LDR.W           R1, [R7,#var_A8]
1B6406:  MOV             R10, LR
1B6408:  MOV             R5, R2
1B640A:  LSLS            R1, R1, #1; n
1B640C:  BLX             sub_22178C
1B6410:  MOVS            R0, #0
1B6412:  MOV             R2, R5
1B6414:  MOV             LR, R10
1B6416:  MOVS            R1, #0
1B6418:  STR.W           R0, [R7,#var_B0]
1B641C:  B.W             loc_1B7168
1B6420:  MOVW            R8, #0xC000
1B6424:  LDR.W           R2, [R7,#var_C0]
1B6428:  LDR.W           LR, [R7,#var_D4]
1B642C:  SUB.W           R11, R7, #-var_58
1B6430:  MOVT            R8, #0xFFFF
1B6434:  LDR.W           R9, [R6,#0x74]
1B6438:  LDR             R1, [R6,#0x1C]
1B643A:  B.W             loc_1B7168
1B643E:  LDR.W           R3, [R8,#0x50]
1B6442:  SUB             SP, SP, #0x20 ; ' '
1B6444:  LDR             R1, [R6]
1B6446:  ADD.W           R0, R8, #0x60 ; '`'
1B644A:  ADD.W           R2, R8, #0x58 ; 'X'
1B644E:  CMP             R1, #0
1B6450:  IT NE
1B6452:  MOVNE           R1, #1
1B6454:  STR             R0, [SP,#0x1A8+var_1A8]
1B6456:  LDR             R0, [R6,#4]
1B6458:  STRD.W          R0, R1, [SP,#0x1A8+var_1A4]
1B645C:  LDR             R0, [R6,#0x70]
1B645E:  STR             R0, [SP,#0x1A8+var_19C]
1B6460:  LDR.W           R0, [R7,#var_C4]
1B6464:  STR             R0, [SP,#0x1A8+var_198]
1B6466:  LDR             R0, [R6,#0x44]
1B6468:  LDR.W           R1, [R6,#0x80]
1B646C:  STR             R0, [SP,#0x1A8+var_194]
1B646E:  LDR.W           R0, [R7,#var_B8]
1B6472:  STR             R0, [SP,#0x1A8+var_190]
1B6474:  MOV             R0, R12
1B6476:  BLX             j_spreading_decision
1B647A:  ADD             SP, SP, #0x20 ; ' '
1B647C:  MOV             R1, R0
1B647E:  STR.W           R1, [R8,#0x50]
1B6482:  LDR.W           R2, =(unk_C3E8B - 0x1B648E)
1B6486:  MOV             R0, R10
1B6488:  MOVS            R3, #5
1B648A:  ADD             R2, PC; unk_C3E8B
1B648C:  BLX             j_ec_enc_icdf
1B6490:  LDR.W           R12, [R7,#var_CC]
1B6494:  LDR.W           R0, [R7,#var_DC]
1B6498:  LDR.W           R1, [R8,#0x40]
1B649C:  LSLS            R0, R0, #2
1B649E:  CBZ             R1, loc_1B64BE
1B64A0:  LDR             R2, [R6,#0x5C]
1B64A2:  MOV             R1, #0x55555556
1B64AA:  CMP             R2, #0x1A
1B64AC:  SMMUL.W         R1, R2, R1
1B64B0:  ADD.W           R1, R1, R1,LSR#31
1B64B4:  IT GT
1B64B6:  MOVGT           R1, #8
1B64B8:  LDR.W           R2, [R7,#var_A8]
1B64BC:  STR             R1, [R2]
1B64BE:  ADDS            R0, #7
1B64C0:  BIC.W           R0, R0, #7
1B64C4:  STR             R0, [R6,#0x70]
1B64C6:  SUB.W           R1, SP, R0
1B64CA:  MOV             SP, R1
1B64CC:  LDR.W           R3, [R7,#var_C4]
1B64D0:  MOV             R0, R12
1B64D2:  MOV             R2, R11
1B64D4:  STR.W           R1, [R7,#var_B8]
1B64D8:  BLX             j_init_caps
1B64DC:  LDR.W           R0, [R7,#var_F4]
1B64E0:  LSLS            R0, R0, #3
1B64E2:  STR.W           R0, [R7,#dest]
1B64E6:  MOV             R0, R10
1B64E8:  BLX             j_ec_tell_frac
1B64EC:  CMP             R9, R4
1B64EE:  LDR.W           R9, [R6,#0x88]
1B64F2:  MOV             LR, R0
1B64F4:  MOV.W           R8, #0
1B64F8:  BLE.W           loc_1B660A
1B64FC:  LDR.W           R2, [R7,#var_C4]
1B6500:  MOVS            R3, #6
1B6502:  MOV             R5, R4
1B6504:  LDR.W           R1, [R7,#var_E8]
1B6508:  MOV             R4, R5
1B650A:  ADDS            R5, R4, #1
1B650C:  LDRSH.W         R0, [R1,R4,LSL#1]
1B6510:  STR.W           R5, [R7,#var_E0]
1B6514:  LDRSH.W         R1, [R1,R5,LSL#1]
1B6518:  SUBS            R0, R1, R0
1B651A:  LDR.W           R1, [R7,#var_D4]
1B651E:  MULS            R0, R2
1B6520:  LSL.W           R2, R0, R1
1B6524:  CMP             R2, #0x30 ; '0'
1B6526:  MOV             R5, R2
1B6528:  MOV.W           R1, R2,LSL#3
1B652C:  IT LE
1B652E:  MOVLE           R5, #0x30 ; '0'
1B6530:  CMP             R1, R5
1B6532:  MOV             R0, R5
1B6534:  IT LT
1B6536:  LSLLT           R0, R2, #3
1B6538:  LDR.W           R2, [R7,#dest]
1B653C:  STR.W           R0, [R7,#var_B0]
1B6540:  SUB.W           R10, R2, R8
1B6544:  ADD.W           R2, LR, R3,LSL#3
1B6548:  CMP             R2, R10
1B654A:  STR.W           R3, [R7,#var_D0]
1B654E:  BGE             loc_1B65C2
1B6550:  MVNS            R0, R5
1B6552:  MVNS            R1, R1
1B6554:  CMP             R0, R1
1B6556:  STR.W           R8, [R7,#var_F4]
1B655A:  IT GT
1B655C:  MOVGT           R1, R0
1B655E:  MOV.W           R8, #0
1B6562:  MOV.W           R11, #0
1B6566:  MOV             R2, R3
1B6568:  ADDS            R0, R1, #1
1B656A:  STR.W           R0, [R7,#n]
1B656E:  LDR.W           R0, [R7,#var_B8]
1B6572:  LDR.W           R0, [R0,R4,LSL#2]
1B6576:  CMP             R11, R0
1B6578:  BGE             loc_1B65CC
1B657A:  LDR.W           R0, [R7,#var_A8]
1B657E:  MOVS            R1, #0
1B6580:  LDR.W           R5, [R0,R4,LSL#2]
1B6584:  CMP             R8, R5
1B6586:  IT LT
1B6588:  MOVLT           R1, #1
1B658A:  LDR.W           R9, [R7,#var_AC]
1B658E:  MOV             R0, R9
1B6590:  BLX             j_ec_enc_bit_logp
1B6594:  MOV             R0, R9
1B6596:  BLX             j_ec_tell_frac
1B659A:  MOV             LR, R0
1B659C:  CMP             R8, R5
1B659E:  BGE             loc_1B65CC
1B65A0:  LDR.W           R0, [R7,#n]
1B65A4:  ADD.W           R8, R8, #1
1B65A8:  MOVS            R2, #1
1B65AA:  ADD             R10, R0
1B65AC:  LDR.W           R0, [R7,#var_B0]
1B65B0:  ADD             R11, R0
1B65B2:  ADD.W           R0, LR, #8
1B65B6:  CMP             R0, R10
1B65B8:  BLT             loc_1B656E
1B65BA:  LDR.W           R8, [R7,#var_F4]
1B65BE:  ADD             R8, R11
1B65C0:  B               loc_1B65DA
1B65C2:  MOV.W           R11, #0
1B65C6:  LDRD.W          R0, R2, [R7,#var_C8]
1B65CA:  B               loc_1B65F2
1B65CC:  LDR.W           R0, [R7,#var_F4]
1B65D0:  CMP.W           R8, #0
1B65D4:  ADD             R0, R11
1B65D6:  MOV             R8, R0
1B65D8:  BEQ             loc_1B65EA
1B65DA:  LDR.W           R0, [R7,#var_D0]
1B65DE:  SUBS            R0, #1
1B65E0:  CMP             R0, #2
1B65E2:  IT LE
1B65E4:  MOVLE           R0, #2
1B65E6:  STR.W           R0, [R7,#var_D0]
1B65EA:  LDRD.W          R0, R2, [R7,#var_C8]
1B65EE:  LDR.W           R9, [R6,#0x88]
1B65F2:  LDR.W           R5, [R7,#var_E0]
1B65F6:  LDR.W           R1, [R7,#var_A8]
1B65FA:  LDR.W           R3, [R7,#var_D0]
1B65FE:  CMP             R5, R0
1B6600:  STR.W           R11, [R1,R4,LSL#2]
1B6604:  BNE.W           loc_1B6504
1B6608:  B               loc_1B660E
1B660A:  LDR.W           R2, [R7,#var_C4]
1B660E:  LDR.W           R11, [R7,#var_C0]
1B6612:  CMP             R2, #2
1B6614:  LDR.W           R10, [R7,#var_AC]
1B6618:  LDR.W           R4, [R7,#var_D8]
1B661C:  STR.W           R8, [R7,#var_F4]
1B6620:  BNE.W           loc_1B676E
1B6624:  LDR.W           R0, [R7,#var_D4]
1B6628:  STR.W           LR, [R7,#var_B0]
1B662C:  CMP             R0, #0
1B662E:  BEQ             loc_1B6724
1B6630:  LDR.W           R0, [R7,#var_CC]
1B6634:  MOV.W           R8, #0
1B6638:  MOV.W           R9, #1
1B663C:  LDR.W           R12, [R0,#0x18]
1B6640:  MOVS            R0, #1
1B6642:  LDRH.W          LR, [R12]
1B6646:  ADD.W           R8, R8, #1
1B664A:  LDR.W           R2, [R7,#var_D4]
1B664E:  SXTH.W          R1, LR
1B6652:  LDRSH.W         R3, [R12,R8,LSL#1]
1B6656:  LSLS            R1, R2
1B6658:  LSL.W           R2, R3, R2
1B665C:  UXTH.W          LR, R3
1B6660:  CMP             R1, R2
1B6662:  BGE             loc_1B66A6
1B6664:  LDR.W           R4, [R6,#0x80]
1B6668:  SUBS            R3, R2, R1
1B666A:  LDR.W           R2, [R7,#var_E4]
1B666E:  ADD.W           R10, R4, R1,LSL#1
1B6672:  ADD             R1, R2
1B6674:  ADD.W           R11, R4, R1,LSL#1
1B6678:  LDRSH.W         R5, [R11],#2
1B667C:  LDRSH.W         R4, [R10],#2
1B6680:  SUBS            R2, R4, R5
1B6682:  IT MI
1B6684:  NEGMI           R2, R2
1B6686:  ADDS            R1, R5, R4
1B6688:  IT MI
1B668A:  NEGMI           R1, R1
1B668C:  CMP             R4, #0
1B668E:  IT MI
1B6690:  NEGMI           R4, R4
1B6692:  CMP             R5, #0
1B6694:  ADD             R2, R9
1B6696:  IT MI
1B6698:  NEGMI           R5, R5
1B669A:  ADD             R0, R4
1B669C:  ADD.W           R9, R2, R1
1B66A0:  ADD             R0, R5
1B66A2:  SUBS            R3, #1
1B66A4:  BNE             loc_1B6678
1B66A6:  CMP.W           R8, #0xD
1B66AA:  BNE             loc_1B6646
1B66AC:  UXTH.W          R1, R9
1B66B0:  MOVW            R2, #0x5A82
1B66B4:  MULS            R1, R2
1B66B6:  MOV.W           R2, R9,ASR#16
1B66BA:  MOVW            R5, #0xB504
1B66BE:  MULS            R2, R5
1B66C0:  LDR.W           R4, [R7,#var_D4]
1B66C4:  LDRSH.W         R5, [R12,#0x1A]
1B66C8:  CMP             R4, #2
1B66CA:  MOV.W           R3, #0xD
1B66CE:  ADD.W           R4, R4, #1
1B66D2:  IT LT
1B66D4:  MOVLT           R3, #5
1B66D6:  LSLS            R5, R4
1B66D8:  ADD.W           R1, R2, R1,LSR#15
1B66DC:  ADD             R3, R5
1B66DE:  SXTH            R4, R5
1B66E0:  UXTH            R2, R1
1B66E2:  SXTH.W          R12, R3
1B66E6:  SMULTB.W        R1, R1, R3
1B66EA:  MUL.W           R12, R12, R2
1B66EE:  UXTH            R2, R0
1B66F0:  MULS            R2, R4
1B66F2:  SMULTB.W        R0, R0, R5
1B66F6:  MOV.W           R3, R12,ASR#15
1B66FA:  ADD.W           R1, R3, R1,LSL#1
1B66FE:  ASRS            R2, R2, #0xF
1B6700:  ADD.W           R0, R2, R0,LSL#1
1B6704:  MOVS            R2, #0
1B6706:  CMP             R1, R0
1B6708:  IT GT
1B670A:  MOVGT           R2, #1
1B670C:  LDR.W           R11, [R7,#var_C0]
1B6710:  LDR.W           R10, [R7,#var_AC]
1B6714:  LDR.W           R4, [R7,#var_D8]
1B6718:  LDR.W           R9, [R6,#0x88]
1B671C:  LDR.W           R8, [R7,#var_F4]
1B6720:  STR.W           R2, [R7,#var_94]
1B6724:  LDR             R1, [R6,#0x28]
1B6726:  MOV             R0, #0x10624DD3
1B672E:  LDR.W           R2, =(unk_C3EBA - 0x1B6742)
1B6732:  LDR.W           R3, [R11,#0xE8]
1B6736:  SMMUL.W         R0, R1, R0
1B673A:  LDR.W           R1, =(unk_C3E90 - 0x1B6744)
1B673E:  ADD             R2, PC; unk_C3EBA
1B6740:  ADD             R1, PC; unk_C3E90
1B6742:  SUB             SP, SP, #8
1B6744:  STR             R3, [SP,#0x190+var_190]
1B6746:  LSRS            R3, R0, #6
1B6748:  ADD.W           R0, R3, R0,LSR#31
1B674C:  MOVS            R3, #0x15
1B674E:  SXTH            R0, R0
1B6750:  BLX             j_hysteresis_decision
1B6754:  ADD             SP, SP, #8
1B6756:  CMP             R4, R0
1B6758:  IT GT
1B675A:  MOVGT           R0, R4
1B675C:  LDR.W           R1, [R7,#var_C8]
1B6760:  CMP             R1, R0
1B6762:  IT LT
1B6764:  MOVLT           R0, R1
1B6766:  STR.W           R0, [R11,#0xE8]
1B676A:  LDR.W           LR, [R7,#var_B0]
1B676E:  LDR.W           R0, [R7,#dest]
1B6772:  MOV             R5, R9
1B6774:  MOVW            R9, #:lower16:(elf_gnu_hash_chain+0x25EC)
1B6778:  ADD.W           R1, LR, #0x30 ; '0'
1B677C:  SUB.W           R0, R0, R8
1B6780:  MOVT            R9, #:upper16:(elf_gnu_hash_chain+0x25EC)
1B6784:  CMP             R1, R0
1B6786:  BLE             loc_1B6790
1B6788:  MOVS            R0, #5
1B678A:  STR.W           R0, [R7,#n]
1B678E:  B               loc_1B67C0
1B6790:  CMP             R4, #0
1B6792:  BGT             loc_1B679E
1B6794:  LDR.W           R0, [R11,#0x40]
1B6798:  CMP             R0, #0
1B679A:  BEQ.W           loc_1B6A6E
1B679E:  MOVS            R0, #0
1B67A0:  MOVS            R1, #5
1B67A2:  STRH.W          R0, [R11,#0xE4]
1B67A6:  LDR.W           R2, =(unk_C3EE4 - 0x1B67B6)
1B67AA:  MOV             R0, R10
1B67AC:  MOVS            R3, #7
1B67AE:  STR.W           R1, [R7,#n]
1B67B2:  ADD             R2, PC; unk_C3EE4
1B67B4:  BLX             j_ec_enc_icdf
1B67B8:  MOV             R0, R10
1B67BA:  BLX             j_ec_tell_frac
1B67BE:  MOV             LR, R0
1B67C0:  LDR             R0, [R6,#0x6C]
1B67C2:  LDR.W           R2, [R7,#var_CC]
1B67C6:  CMP             R0, #1
1B67C8:  BLT             loc_1B6808
1B67CA:  LDR             R1, [R6,#0x3C]
1B67CC:  MOVW            R0, #0x4FB
1B67D0:  LSR.W           R3, R0, R1
1B67D4:  LDR.W           R1, [R6,#0x84]
1B67D8:  LDR             R0, [R2,#0x1C]
1B67DA:  CMP             R1, R3
1B67DC:  IT LT
1B67DE:  MOVLT           R3, R1
1B67E0:  CMP             R4, #0
1B67E2:  STR.W           R3, [R7,#var_B0]
1B67E6:  BEQ             loc_1B680E
1B67E8:  LDR.W           R1, [R7,#var_C4]
1B67EC:  LDR             R3, [R6,#0x6C]
1B67EE:  ADD.W           R1, R1, R1,LSL#3
1B67F2:  NEGS            R1, R1
1B67F4:  ADD.W           R1, R3, R1,LSL#3
1B67F8:  SUB.W           R8, R1, #0x20 ; ' '
1B67FC:  CMP.W           R8, #0
1B6800:  IT LE
1B6802:  MOVLE.W         R8, #0
1B6806:  B               loc_1B6814
1B6808:  LDR.W           R5, [R6,#0x84]
1B680C:  B               loc_1B6BB2
1B680E:  LDR             R1, [R6,#0x6C]
1B6810:  SUB.W           R8, R1, R5,LSL#3
1B6814:  LDR.W           R1, [R7,#var_D4]
1B6818:  LDR.W           R12, [R11,#0x34]
1B681C:  SUBS            R1, R0, R1
1B681E:  CMP.W           R12, #0
1B6822:  ITTT NE
1B6824:  LDRNE.W         R0, [R11,#0xD8]
1B6828:  ASRNE           R0, R1
1B682A:  ADDNE           R8, R0
1B682C:  CMP             R4, #0
1B682E:  STR.W           R1, [R7,#var_D0]
1B6832:  BEQ             loc_1B68A4
1B6834:  MOV             R9, R12
1B6836:  LDRSH.W         R12, [R7,#var_9A]
1B683A:  LDR             R1, [R6,#0x3C]
1B683C:  MOVS            R0, #0x60 ; '`'
1B683E:  LDR.W           R3, [R11,#0xBC]
1B6842:  LSR.W           R2, R0, R1
1B6846:  MOV.W           R0, #0xF0000000
1B684A:  ADD.W           R5, R0, R12,LSL#16
1B684E:  MOV.W           R0, #0x190
1B6852:  CMP             R3, #0x64 ; 'd'
1B6854:  MOVW            R3, #0x2CCD
1B6858:  SMULTB.W        R5, R5, R0
1B685C:  IT LT
1B685E:  ADDLT           R8, R2
1B6860:  MOV.W           R2, #0x90
1B6864:  LSR.W           R2, R2, R1
1B6868:  IT GT
1B686A:  SUBGT.W         R8, R8, R2
1B686E:  ADD.W           R2, R8, R5,ASR#14
1B6872:  CMP.W           R2, #0x190
1B6876:  IT GT
1B6878:  MOVGT           R0, R2
1B687A:  CMP             R12, R3
1B687C:  IT LE
1B687E:  MOVLE           R0, R2
1B6880:  LDR.W           R3, [R7,#var_F4]
1B6884:  MOVS            R2, #2
1B6886:  MOV             R12, R9
1B6888:  ADD.W           R1, R3, LR
1B688C:  ADDS            R1, #0x3F ; '?'
1B688E:  ADD.W           R4, R2, R1,ASR#6
1B6892:  LDR             R1, [R6,#0x14]
1B6894:  ADD             R1, R3
1B6896:  ADDW            R1, R1, #0x167
1B689A:  CMP.W           R4, R1,ASR#6
1B689E:  IT LE
1B68A0:  ASRLE           R4, R1, #6
1B68A2:  B               loc_1B6AC8
1B68A4:  LDR.W           R1, [R11,#0xEC]
1B68A8:  LDR.W           R0, [R11,#0x5C]
1B68AC:  LDR.W           R10, [R11,#0x40]
1B68B0:  STR.W           R1, [R7,#var_E0]
1B68B4:  CMP             R0, #0
1B68B6:  LDR             R5, [R2,#8]
1B68B8:  LDR             R1, [R2,#0x18]
1B68BA:  IT EQ
1B68BC:  MOVEQ           R0, R5
1B68BE:  STR.W           R1, [R7,#var_E8]
1B68C2:  LDRSH.W         R1, [R1,R0,LSL#1]
1B68C6:  LDR.W           R4, [R7,#var_D4]
1B68CA:  LDRH.W          R2, [R7,#var_9A]
1B68CE:  LSLS            R1, R4
1B68D0:  STR.W           R1, [R7,#dest]
1B68D4:  LDR.W           R1, [R7,#var_A0]
1B68D8:  STR.W           R1, [R6,#0x88]
1B68DC:  LDR.W           R1, [R7,#var_C4]
1B68E0:  CMP             R1, #2
1B68E2:  MOV             R1, R8
1B68E4:  BNE             loc_1B6974
1B68E6:  LDR.W           R9, [R7,#var_C0]
1B68EA:  MOV             R11, LR
1B68EC:  LDR.W           R1, [R9,#0xE8]
1B68F0:  CMP             R0, R1
1B68F2:  IT GT
1B68F4:  MOVGT           R0, R1
1B68F6:  LDR.W           R1, [R7,#var_E8]
1B68FA:  LDRSH.W         R1, [R1,R0,LSL#1]
1B68FE:  STR             R5, [R6,#0x74]
1B6900:  STR             R2, [R6,#0x68]
1B6902:  MOVW            R2, #0x6666
1B6906:  STR.W           R12, [R6,#0x84]
1B690A:  LSLS            R1, R4
1B690C:  SUBS            R5, R1, R0
1B690E:  SXTH            R0, R5
1B6910:  SMULBB.W        R0, R0, R2
1B6914:  LDR.W           R2, [R7,#dest]
1B6918:  ADD             R2, R1
1B691A:  STR.W           R2, [R7,#dest]
1B691E:  SXTH            R1, R2
1B6920:  BLX             sub_220A40
1B6924:  LDRSH.W         R1, [R9,#0xE4]
1B6928:  MOVW            R12, #0
1B692C:  LSLS            R2, R5, #0x13
1B692E:  SXTH            R3, R0
1B6930:  CMP.W           R1, #0x100
1B6934:  UXTH.W          R5, R8
1B6938:  IT GE
1B693A:  MOVGE.W         R1, #0x100
1B693E:  MOVT            R12, #0xFFE6
1B6942:  ADD.W           R1, R12, R1,LSL#16
1B6946:  MULS            R3, R5
1B6948:  LDR             R5, [R6,#0x74]
1B694A:  SMULTB.W        R0, R8, R0
1B694E:  LDR.W           R12, [R6,#0x84]
1B6952:  SMULTT.W        R1, R2, R1
1B6956:  MOVW            R9, #:lower16:(elf_gnu_hash_chain+0x25EC)
1B695A:  MOV             LR, R11
1B695C:  MOVT            R9, #:upper16:(elf_gnu_hash_chain+0x25EC)
1B6960:  ASRS            R2, R3, #0xF
1B6962:  ADD.W           R0, R2, R0,LSL#1
1B6966:  LDR             R2, [R6,#0x68]
1B6968:  CMP.W           R0, R1,ASR#8
1B696C:  IT GE
1B696E:  ASRGE           R0, R1, #8
1B6970:  SUB.W           R1, R8, R0
1B6974:  MOVS            R3, #0x13
1B6976:  MOVS            R0, #0
1B6978:  LSLS            R3, R4
1B697A:  LDR.W           R4, [R6,#0x88]
1B697E:  MOVT            R0, #0xFD2F
1B6982:  MOV             R11, R2
1B6984:  SUBS            R3, R4, R3
1B6986:  ADD.W           R0, R0, R2,LSL#16
1B698A:  ADD             R1, R3
1B698C:  ASRS            R2, R0, #0x10
1B698E:  ASRS            R0, R0, #0xF
1B6990:  UXTH            R3, R1
1B6992:  MULS            R2, R3
1B6994:  ASRS            R3, R1, #0x10
1B6996:  MULS            R0, R3
1B6998:  ADD.W           R0, R0, R2,ASR#15
1B699C:  LDR.W           R2, [R7,#var_E0]
1B69A0:  ADD.W           R1, R1, R0,LSL#1
1B69A4:  MOVS            R0, #0
1B69A6:  CMP             R2, #0
1B69A8:  IT EQ
1B69AA:  MOVEQ           R0, #1
1B69AC:  CMP.W           R10, #0
1B69B0:  IT NE
1B69B2:  MOVNE.W         R10, #1
1B69B6:  ORRS.W          R3, R10, R0
1B69BA:  BNE             loc_1B69DA
1B69BC:  LDR.W           R0, [R7,#dest]
1B69C0:  LDR             R2, [R6,#0x18]
1B69C2:  LSLS            R0, R0, #0x13
1B69C4:  SMULTB.W        R0, R0, R2
1B69C8:  ASRS            R2, R1, #0x1F
1B69CA:  ADD.W           R2, R1, R2,LSR#30
1B69CE:  ADD.W           R1, R1, R0,ASR#10
1B69D2:  ASRS            R0, R2, #2
1B69D4:  CMP             R0, R1
1B69D6:  IT GT
1B69D8:  ASRGT           R1, R2, #2
1B69DA:  LDR.W           R0, [R7,#var_E8]
1B69DE:  SXTH.W          R2, R11
1B69E2:  ADD.W           R0, R0, R5,LSL#1
1B69E6:  LDR.W           R5, [R7,#var_D4]
1B69EA:  LDRSH.W         R0, [R0,#-4]
1B69EE:  LSLS            R0, R5
1B69F0:  LDR.W           R5, [R7,#var_C4]
1B69F4:  MULS            R0, R5
1B69F6:  LDR             R5, [R6,#0x20]
1B69F8:  LSLS            R0, R0, #0x13
1B69FA:  SMULTB.W        R5, R0, R5
1B69FE:  ASRS            R0, R1, #2
1B6A00:  ASRS            R4, R5, #0xA
1B6A02:  CMP.W           R4, R1,ASR#2
1B6A06:  IT GT
1B6A08:  ASRGT           R0, R5, #0xA
1B6A0A:  CMP             R1, R0
1B6A0C:  IT LT
1B6A0E:  MOVLT           R0, R1
1B6A10:  CMP.W           R12, #0
1B6A14:  MOV             R1, R12
1B6A16:  IT NE
1B6A18:  MOVNE           R1, #1
1B6A1A:  ANDS            R1, R3
1B6A1C:  CMP             R1, #1
1B6A1E:  BNE             loc_1B6A3A
1B6A20:  SUB.W           R0, R0, R8
1B6A24:  MOVW            R3, #0x55C3
1B6A28:  UXTH            R1, R0
1B6A2A:  ASRS            R0, R0, #0x10
1B6A2C:  MULS            R1, R3
1B6A2E:  MOVW            R3, #0xAB86
1B6A32:  MLA.W           R0, R0, R3, R8
1B6A36:  ADD.W           R0, R0, R1,LSR#15
1B6A3A:  MOVW            R1, #0xCCC
1B6A3E:  CMP             R2, R1
1B6A40:  LDR             R2, [R6,#0x28]
1B6A42:  BGT             loc_1B6AAA
1B6A44:  LDR.W           R1, [R7,#var_E0]
1B6A48:  CBNZ            R1, loc_1B6AAA
1B6A4A:  ADD.W           R1, R9, #0x3E80
1B6A4E:  SUBS            R1, R1, R2
1B6A50:  CMP.W           R1, #0x7D00
1B6A54:  IT GE
1B6A56:  MOVGE.W         R1, #0x7D00
1B6A5A:  CMP             R1, #0
1B6A5C:  BLT             loc_1B6A8E
1B6A5E:  SXTH            R1, R1
1B6A60:  MOVW            R2, #0xD01
1B6A64:  SMULBB.W        R1, R1, R2
1B6A68:  SBFX.W          R1, R1, #0xF, #0x10
1B6A6C:  B               loc_1B6A90
1B6A6E:  LDR.W           R0, [R11,#0xE8]
1B6A72:  STR.W           R0, [R7,#var_B0]
1B6A76:  LDR             R0, [R6,#0x28]
1B6A78:  LDRSH.W         R3, [R7,#var_9A]
1B6A7C:  CMP.W           R0, #0xFA00
1B6A80:  BGE.W           loc_1B70C0
1B6A84:  MOV.W           R0, #0x400
1B6A88:  LDR.W           R2, [R7,#var_CC]
1B6A8C:  B               loc_1B70DC
1B6A8E:  MOVS            R1, #0
1B6A90:  LDR             R2, [R6,#0x1C]
1B6A92:  UXTH            R3, R0
1B6A94:  MULS            R1, R2
1B6A96:  SBFX.W          R2, R1, #0xA, #0x10
1B6A9A:  LSLS            R1, R1, #6
1B6A9C:  SMULTT.W        R1, R0, R1
1B6AA0:  MULS            R2, R3
1B6AA2:  ADD.W           R0, R0, R1,LSL#1
1B6AA6:  ADD.W           R0, R0, R2,ASR#15
1B6AAA:  MOV.W           R1, R8,LSL#1
1B6AAE:  CMP             R1, R0
1B6AB0:  IT LT
1B6AB2:  MOVLT.W         R0, R8,LSL#1
1B6AB6:  LDR.W           R1, [R7,#var_F4]
1B6ABA:  LDR.W           R11, [R7,#var_C0]
1B6ABE:  MOVS            R2, #2
1B6AC0:  ADD             R1, LR
1B6AC2:  ADDS            R1, #0x3F ; '?'
1B6AC4:  ADD.W           R4, R2, R1,ASR#6
1B6AC8:  ADD.W           R1, R0, LR
1B6ACC:  LDR.W           R0, [R11,#0xDC]
1B6AD0:  ADD.W           R2, R1, #0x20 ; ' '
1B6AD4:  CMP.W           R4, R2,ASR#6
1B6AD8:  IT LE
1B6ADA:  ASRLE           R4, R2, #6
1B6ADC:  LDR.W           R2, [R7,#var_B0]
1B6AE0:  CMP             R2, R4
1B6AE2:  IT LT
1B6AE4:  MOVLT           R4, R2
1B6AE6:  LDR             R2, [R6,#0x60]
1B6AE8:  MOV             R10, R4
1B6AEA:  MOV.W           R8, R4,LSL#6
1B6AEE:  CMP             R2, #0
1B6AF0:  IT NE
1B6AF2:  MOVNE.W         R10, #2
1B6AF6:  IT NE
1B6AF8:  MOVNE.W         R8, #0x80
1B6AFC:  LDR             R2, [R6,#0x6C]
1B6AFE:  SUB.W           R5, R1, R2
1B6B02:  MOVW            R1, #0x3C9
1B6B06:  IT NE
1B6B08:  MOVNE           R5, #0
1B6B0A:  CMP             R0, R1
1B6B0C:  BGT             loc_1B6B2C
1B6B0E:  ADDS            R1, R0, #1
1B6B10:  STR.W           R1, [R11,#0xDC]
1B6B14:  MOV.W           R1, #0x150000
1B6B18:  ADD.W           R0, R1, R0,LSL#16
1B6B1C:  BLX             j_celt_rcp
1B6B20:  LDR.W           R12, [R11,#0x34]
1B6B24:  CMP.W           R12, #0
1B6B28:  BNE             loc_1B6B34
1B6B2A:  B               loc_1B6B96
1B6B2C:  MOVS            R0, #0x21 ; '!'
1B6B2E:  CMP.W           R12, #0
1B6B32:  BEQ             loc_1B6B96
1B6B34:  LDR.W           R1, [R7,#var_C0]
1B6B38:  MOV             R2, R1
1B6B3A:  LDRD.W          R12, LR, [R2,#0xD0]
1B6B3E:  LDR.W           R1, [R7,#var_D0]
1B6B42:  LDR.W           R3, [R2,#0xD8]
1B6B46:  ADDS            R2, #0xD0
1B6B48:  LSLS            R5, R1
1B6B4A:  SUBS            R3, R5, R3
1B6B4C:  SUB.W           R3, R3, LR
1B6B50:  SXTH            R1, R0
1B6B52:  LSLS            R0, R0, #0x10
1B6B54:  UXTH            R5, R3
1B6B56:  ASRS            R3, R3, #0x10
1B6B58:  MULS            R1, R5
1B6B5A:  ASRS            R0, R0, #0xF
1B6B5C:  ADD.W           R1, LR, R1,ASR#15
1B6B60:  MLA.W           R1, R0, R3, R1
1B6B64:  LDR             R0, [R6,#0x6C]
1B6B66:  SUB.W           R0, R8, R0
1B6B6A:  ADD             R0, R12
1B6B6C:  CMP.W           R0, #0xFFFFFFFF
1B6B70:  RSB.W           R3, R1, #0
1B6B74:  STM             R2!, {R0,R1,R3}
1B6B76:  BGT             loc_1B6B96
1B6B78:  LDR.W           R2, [R7,#var_C0]
1B6B7C:  MOVS            R1, #0
1B6B7E:  STR.W           R1, [R2,#0xD0]
1B6B82:  ASRS            R1, R0, #0x1F
1B6B84:  ADD.W           R0, R0, R1,LSR#26
1B6B88:  SUB.W           R10, R4, R0,ASR#6
1B6B8C:  LDR             R0, [R6,#0x60]
1B6B8E:  CMP             R0, #0
1B6B90:  IT NE
1B6B92:  MOVNE.W         R10, #2
1B6B96:  LDR.W           R0, [R7,#var_B0]
1B6B9A:  MOV             R5, R10
1B6B9C:  CMP             R0, R5
1B6B9E:  IT LT
1B6BA0:  MOVLT           R5, R0
1B6BA2:  LDR.W           R10, [R7,#var_AC]
1B6BA6:  MOV             R1, R5
1B6BA8:  MOV             R0, R10
1B6BAA:  BLX             j_ec_enc_shrink
1B6BAE:  LDR.W           R11, [R7,#var_C0]
1B6BB2:  LDR             R0, [R6,#0x70]
1B6BB4:  SUB.W           R1, SP, R0
1B6BB8:  STR.W           R1, [R7,#var_B0]
1B6BBC:  MOV             SP, R1
1B6BBE:  SUB.W           R8, SP, R0
1B6BC2:  MOV             SP, R8
1B6BC4:  SUB.W           R9, SP, R0
1B6BC8:  MOV             SP, R9
1B6BCA:  MOV             R0, R10
1B6BCC:  BLX             j_ec_tell_frac
1B6BD0:  RSB.W           R0, R0, R5,LSL#6
1B6BD4:  MOVS            R4, #0
1B6BD6:  SUB.W           R12, R0, #1
1B6BDA:  LDR.W           R0, [R7,#var_D4]
1B6BDE:  STR.W           R5, [R6,#0x84]
1B6BE2:  CMP             R0, #2
1B6BE4:  BLT             loc_1B6C0C
1B6BE6:  LDR.W           R0, [R7,#var_F8]
1B6BEA:  CMP             R0, #0
1B6BEC:  LDRD.W          R0, R10, [R7,#var_CC]
1B6BF0:  LDR             R3, [R6,#0x7C]
1B6BF2:  LDR.W           LR, [R7,#n]
1B6BF6:  BEQ             loc_1B6C16
1B6BF8:  LDR.W           R2, [R7,#var_D4]
1B6BFC:  MOVS            R1, #0x10
1B6BFE:  MOVS            R4, #0
1B6C00:  ADD.W           R1, R1, R2,LSL#3
1B6C04:  CMP             R12, R1
1B6C06:  IT GE
1B6C08:  MOVGE           R4, #1
1B6C0A:  B               loc_1B6C16
1B6C0C:  LDRD.W          R0, R10, [R7,#var_CC]
1B6C10:  LDR             R3, [R6,#0x7C]
1B6C12:  LDR.W           LR, [R7,#n]
1B6C16:  LSLS            R1, R3, #1
1B6C18:  SUB.W           R3, R10, #1
1B6C1C:  STR.W           R1, [R7,#n]
1B6C20:  LDR.W           R1, [R6,#0x84]
1B6C24:  LSLS            R1, R1, #6
1B6C26:  STR.W           R1, [R7,#var_E8]
1B6C2A:  LDR.W           R1, [R11,#0x40]
1B6C2E:  LDR.W           R2, [R11,#0x5C]
1B6C32:  CMP             R1, #0
1B6C34:  IT NE
1B6C36:  MOVNE           R3, #1
1B6C38:  SUB             SP, SP, #0x40 ; '@'
1B6C3A:  LDR.W           R5, [R7,#var_C4]
1B6C3E:  MOVS            R1, #1
1B6C40:  STR.W           R9, [SP,#0x1C8+var_1A8]
1B6C44:  CMP             R4, #0
1B6C46:  STR             R5, [SP,#0x1C8+var_1A4]
1B6C48:  LDR.W           R5, [R7,#var_D4]
1B6C4C:  STR             R5, [SP,#0x1C8+var_1A0]
1B6C4E:  LDR.W           R5, [R7,#var_AC]
1B6C52:  STR.W           R9, [R7,#var_D0]
1B6C56:  STRD.W          R5, R1, [SP,#0x1C8+var_19C]
1B6C5A:  STRD.W          R2, R3, [SP,#0x1C8+var_194]
1B6C5E:  ADD.W           R2, R11, #0xE8
1B6C62:  STR.W           R4, [R7,#var_E0]
1B6C66:  IT NE
1B6C68:  MOVNE           R4, #8
1B6C6A:  SUB.W           R3, R12, R4
1B6C6E:  SUB.W           R12, R7, #-var_94
1B6C72:  LDR.W           R1, [R7,#var_B8]
1B6C76:  STRD.W          R1, LR, [SP,#0x1C8+var_1C8]
1B6C7A:  SUB.W           R1, R7, #-var_58
1B6C7E:  STRD.W          R2, R12, [SP,#0x1C8+var_1C0]
1B6C82:  MOV             R2, R10
1B6C84:  STR             R3, [SP,#0x1C8+var_1B8]
1B6C86:  STR             R1, [SP,#0x1C8+var_1B4]
1B6C88:  LDR.W           R1, [R7,#var_B0]
1B6C8C:  STR.W           R8, [SP,#0x1C8+var_1B0]
1B6C90:  STR             R1, [SP,#0x1C8+var_1AC]
1B6C92:  LDR.W           R1, [R7,#var_D8]
1B6C96:  LDR.W           R3, [R7,#var_A8]
1B6C9A:  STR.W           R8, [R7,#var_B8]
1B6C9E:  BLX             j_clt_compute_allocation
1B6CA2:  ADD             SP, SP, #0x40 ; '@'
1B6CA4:  LDR.W           R1, [R11,#0x5C]
1B6CA8:  MOV             R9, R0
1B6CAA:  CBZ             R1, loc_1B6CC0
1B6CAC:  SUBS            R2, R1, #1
1B6CAE:  MOV             R0, R9
1B6CB0:  CMP             R2, R9
1B6CB2:  ADD.W           R1, R1, #1
1B6CB6:  IT GT
1B6CB8:  MOVGT           R0, R2
1B6CBA:  CMP             R1, R0
1B6CBC:  IT LT
1B6CBE:  MOVLT           R0, R1
1B6CC0:  LDR.W           R1, [R6,#0x84]
1B6CC4:  LDR.W           R8, [R7,#var_C0]
1B6CC8:  LSLS            R1, R1, #3
1B6CCA:  STR.W           R1, [R7,#var_A8]
1B6CCE:  STR.W           R0, [R8,#0x5C]
1B6CD2:  SUB             SP, SP, #0x10
1B6CD4:  LDR             R0, [R6,#0x64]
1B6CD6:  MOV             R2, R10
1B6CD8:  STR             R0, [SP,#0x198+var_198]
1B6CDA:  LDR.W           R0, [R7,#var_B0]
1B6CDE:  STR             R0, [SP,#0x198+var_194]
1B6CE0:  LDR.W           R11, [R7,#var_AC]
1B6CE4:  LDR.W           R0, [R7,#var_C4]
1B6CE8:  STR.W           R11, [SP,#0x198+var_190]
1B6CEC:  STR             R0, [SP,#0x198+var_18C]
1B6CEE:  LDR.W           R0, [R7,#var_CC]
1B6CF2:  LDR.W           R1, [R7,#var_D8]
1B6CF6:  LDR             R3, [R6,#0x78]
1B6CF8:  BLX             j_quant_fine_energy
1B6CFC:  ADD             SP, SP, #0x10
1B6CFE:  LDR             R0, [R6,#0x58]
1B6D00:  ADDS            R0, #7
1B6D02:  BIC.W           R0, R0, #7
1B6D06:  SUB.W           R0, SP, R0
1B6D0A:  MOV             SP, R0
1B6D0C:  LDR.W           R1, [R8,#0x18]
1B6D10:  LDRD.W          R2, R3, [R8,#0x44]
1B6D14:  LDR.W           R5, [R8,#0xE8]
1B6D18:  LDR.W           R10, [R7,#var_58]
1B6D1C:  LDR.W           R12, [R8,#0x50]
1B6D20:  LDR.W           LR, [R7,#var_94]
1B6D24:  SUB             SP, SP, #0x50 ; 'P'
1B6D26:  STRD.W          R1, R3, [SP,#0x1D8+var_198]
1B6D2A:  ADD.W           R1, R8, #0x4C ; 'L'
1B6D2E:  STR             R2, [SP,#0x1D8+var_190]
1B6D30:  LDR.W           R2, [R7,#var_E8]
1B6D34:  LDR             R3, [R6,#0x54]
1B6D36:  SUBS            R2, R2, R4
1B6D38:  STR             R5, [SP,#0x1D8+var_1B8]
1B6D3A:  MOVS            R5, #0
1B6D3C:  STRD.W          R3, R2, [SP,#0x1D8+var_1B4]
1B6D40:  LDR.W           R2, [R7,#var_D4]
1B6D44:  STR.W           R10, [SP,#0x1D8+var_1AC]
1B6D48:  LDR.W           R10, [R7,#var_C8]
1B6D4C:  STR.W           R11, [SP,#0x1D8+var_1A8]
1B6D50:  STRD.W          R2, R9, [SP,#0x1D8+var_1A4]
1B6D54:  STR             R1, [SP,#0x1D8+var_19C]
1B6D56:  LDR.W           R1, [R7,#var_C4]
1B6D5A:  LDR.W           R2, [R7,#var_E4]
1B6D5E:  LDR.W           R3, [R6,#0x80]
1B6D62:  CMP             R1, #2
1B6D64:  MOV.W           R1, #0
1B6D68:  IT EQ
1B6D6A:  ADDEQ.W         R1, R3, R2,LSL#1
1B6D6E:  STRD.W          R3, R1, [SP,#0x1D8+var_1D8]
1B6D72:  ADD             R1, SP, #0x1D8+var_1C4
1B6D74:  STR             R0, [SP,#0x1D8+var_1D0]
1B6D76:  MOV             R3, R10
1B6D78:  LDR             R0, [R6,#0x50]
1B6D7A:  STR             R0, [SP,#0x1D8+var_1CC]
1B6D7C:  LDR.W           R0, [R7,#var_B8]
1B6D80:  STR             R0, [SP,#0x1D8+var_1C8]
1B6D82:  LDR             R0, [R6,#0x4C]
1B6D84:  STM.W           R1, {R0,R12,LR}
1B6D88:  MOVS            R0, #1
1B6D8A:  LDR.W           R1, [R7,#var_CC]
1B6D8E:  LDR.W           R2, [R7,#var_D8]
1B6D92:  BLX             j_quant_all_bands
1B6D96:  ADD             SP, SP, #0x50 ; 'P'
1B6D98:  LDR.W           R0, [R7,#var_E0]
1B6D9C:  CMP             R0, #1
1B6D9E:  BNE             loc_1B6DB6
1B6DA0:  LDR.W           R0, [R7,#var_C0]
1B6DA4:  MOVS            R2, #1
1B6DA6:  LDR             R0, [R0,#0x74]
1B6DA8:  CMP             R0, #2
1B6DAA:  MOV             R0, R11
1B6DAC:  IT LT
1B6DAE:  MOVLT           R5, #1
1B6DB0:  MOV             R1, R5
1B6DB2:  BLX             j_ec_enc_bits
1B6DB6:  LDR.W           R0, [R11,#0x14]
1B6DBA:  LDR.W           R1, [R11,#0x1C]
1B6DBE:  SUB             SP, SP, #0x18
1B6DC0:  LDR.W           R2, [R7,#var_A8]
1B6DC4:  CLZ.W           R1, R1
1B6DC8:  LDR             R5, [R6,#0x64]
1B6DCA:  ADDS            R2, #0x20 ; ' '
1B6DCC:  STR             R5, [SP,#0x1A0+var_1A0]
1B6DCE:  SUBS            R0, R2, R0
1B6DD0:  MOV             R2, R10
1B6DD2:  SUBS            R0, R0, R1
1B6DD4:  LDR.W           R1, [R7,#var_B0]
1B6DD8:  STR             R1, [SP,#0x1A0+var_19C]
1B6DDA:  LDR.W           R1, [R7,#var_D0]
1B6DDE:  STRD.W          R1, R0, [SP,#0x1A0+var_198]
1B6DE2:  STR.W           R11, [SP,#0x1A0+var_190]
1B6DE6:  LDR.W           R0, [R7,#var_C4]
1B6DEA:  LDR.W           R11, [R7,#var_D8]
1B6DEE:  STR             R0, [SP,#0x1A0+var_18C]
1B6DF0:  LDR.W           R0, [R7,#var_CC]
1B6DF4:  LDR             R3, [R6,#0x78]
1B6DF6:  MOV             R1, R11
1B6DF8:  BLX             j_quant_energy_finalise
1B6DFC:  ADD             SP, SP, #0x18
1B6DFE:  LDR             R0, [R6,#0x38]; int
1B6E00:  LDR.W           R1, [R7,#n]; n
1B6E04:  BLX             sub_22178C
1B6E08:  CMP             R10, R11
1B6E0A:  BLE             loc_1B6E7C
1B6E0C:  LDR.W           R2, [R7,#var_DC]
1B6E10:  MOVW            R9, #0xC000
1B6E14:  LDR.W           R1, [R7,#var_EC]
1B6E18:  ADD.W           R8, R5, R11,LSL#1
1B6E1C:  SUB.W           R12, R10, R11
1B6E20:  MOVS            R5, #0
1B6E22:  ADD.W           R0, R2, R2,LSL#1
1B6E26:  MOV.W           LR, R2,LSL#1
1B6E2A:  MOVT            R9, #0xFFFF
1B6E2E:  LSLS            R0, R0, #1
1B6E30:  ADD.W           R0, R0, R1,LSL#2
1B6E34:  LDR.W           R1, [R7,#var_BC]
1B6E38:  ADD.W           R0, R0, #0x1000
1B6E3C:  MULS            R0, R1
1B6E3E:  LDR.W           R1, [R7,#var_C0]
1B6E42:  ADD.W           R0, R0, R11,LSL#1
1B6E46:  ADD             R0, R1
1B6E48:  ADD.W           R1, R0, #0xF4
1B6E4C:  MOV             R0, R8
1B6E4E:  MOV             R2, R1
1B6E50:  MOV             R3, R12
1B6E52:  LDRSH.W         R4, [R0],#2
1B6E56:  CMP.W           R4, #0x4000
1B6E5A:  IT GE
1B6E5C:  MOVGE.W         R4, #0x4000
1B6E60:  CMP             R4, R9
1B6E62:  IT LE
1B6E64:  MOVLE           R4, R9
1B6E66:  SUBS            R3, #1
1B6E68:  STRH.W          R4, [R2],#2
1B6E6C:  BNE             loc_1B6E52
1B6E6E:  LDR.W           R0, [R7,#var_C4]
1B6E72:  ADDS            R5, #1
1B6E74:  ADD             R8, LR
1B6E76:  ADD             R1, LR
1B6E78:  CMP             R5, R0
1B6E7A:  BLT             loc_1B6E4C
1B6E7C:  LDR             R2, [R6,#0x58]
1B6E7E:  MOVS            R0, #0
1B6E80:  CMP             R2, #0
1B6E82:  IT GT
1B6E84:  MOVGT           R0, #1
1B6E86:  LDR             R1, [R6,#0x60]
1B6E88:  LDR.W           R4, [R7,#var_C0]
1B6E8C:  LDR.W           R9, [R6,#0x48]
1B6E90:  ANDS            R0, R1
1B6E92:  CMP             R0, #1
1B6E94:  BNE             loc_1B6EA8
1B6E96:  ADD.W           R0, R4, R9,LSL#2
1B6E9A:  MOV.W           R1, #0x9000
1B6E9E:  ADDS            R0, #0xF4
1B6EA0:  STRH.W          R1, [R0],#2
1B6EA4:  SUBS            R2, #1
1B6EA6:  BNE             loc_1B6EA0
1B6EA8:  LDR.W           R0, [R7,#var_8C]
1B6EAC:  STR             R0, [R4,#0x68]
1B6EAE:  LDRH.W          R0, [R7,#var_8E]
1B6EB2:  LDR             R1, [R6,#0x34]
1B6EB4:  STR             R1, [R4,#0x70]
1B6EB6:  STRH.W          R0, [R4,#0x6C]
1B6EBA:  LDR             R0, [R6,#0x30]
1B6EBC:  LDR             R5, [R6,#0x7C]
1B6EBE:  CMP             R0, #1
1B6EC0:  BNE             loc_1B6ED2
1B6EC2:  LDR.W           R2, [R7,#var_DC]
1B6EC6:  LDR             R1, [R6,#0x78]; src
1B6EC8:  ADD.W           R0, R1, R2,LSL#1; dest
1B6ECC:  LSLS            R2, R2, #1; n
1B6ECE:  BLX             j_memcpy
1B6ED2:  LDR.W           R0, [R7,#var_F8]
1B6ED6:  CMP             R0, #0
1B6ED8:  BEQ             loc_1B6FBC
1B6EDA:  CMP             R5, #1
1B6EDC:  BLT             loc_1B6F16
1B6EDE:  LDR.W           R0, [R7,#var_EC]
1B6EE2:  LDR.W           R1, [R7,#var_DC]
1B6EE6:  LSLS            R0, R0, #2
1B6EE8:  ADD.W           R0, R0, R1,LSL#1
1B6EEC:  LDR.W           R1, [R7,#var_BC]
1B6EF0:  ADD.W           R0, R0, #0x1000
1B6EF4:  MLA.W           R1, R1, R0, R4
1B6EF8:  ADD.W           R0, R4, R9,LSL#2
1B6EFC:  ADDS            R0, #0xF4
1B6EFE:  ADDS            R1, #0xF4
1B6F00:  LDRSH.W         R2, [R0],#2
1B6F04:  LDRSH.W         R3, [R1]
1B6F08:  CMP             R3, R2
1B6F0A:  IT LT
1B6F0C:  MOVLT           R2, R3
1B6F0E:  SUBS            R5, #1
1B6F10:  STRH.W          R2, [R1],#2
1B6F14:  BNE             loc_1B6F00
1B6F16:  CMP.W           R11, #1
1B6F1A:  BLT             loc_1B6FDC
1B6F1C:  LDR.W           R0, [R7,#var_EC]
1B6F20:  MOV.W           LR, #0
1B6F24:  LDR.W           R5, [R7,#var_DC]
1B6F28:  LDR.W           R2, [R7,#var_BC]
1B6F2C:  LSLS            R0, R0, #2
1B6F2E:  SUB.W           R8, R5, R10
1B6F32:  ADD.W           R1, R0, R5,LSL#1
1B6F36:  ADD.W           R0, R0, R5,LSL#2
1B6F3A:  ADD.W           R0, R0, #0x1000
1B6F3E:  ADD.W           R1, R1, #0x1000
1B6F42:  MOV.W           R12, R5,LSL#1
1B6F46:  MOV.W           R5, #0x9000
1B6F4A:  MLA.W           R3, R2, R1, R4
1B6F4E:  ADD.W           R1, R4, R9,LSL#2
1B6F52:  ADDS            R1, #0xF4
1B6F54:  MLA.W           R0, R2, R0, R4
1B6F58:  MOV.W           R9, #0
1B6F5C:  ADDS            R3, #0xF4
1B6F5E:  ADD.W           R2, R0, #0xF4
1B6F62:  MOVS            R0, #0
1B6F64:  STRH.W          R9, [R1,R0,LSL#1]
1B6F68:  STRH.W          R5, [R2,R0,LSL#1]
1B6F6C:  STRH.W          R5, [R3,R0,LSL#1]
1B6F70:  ADDS            R0, #1
1B6F72:  CMP             R11, R0
1B6F74:  BNE             loc_1B6F64
1B6F76:  LDR.W           R0, [R7,#var_DC]
1B6F7A:  CMP             R10, R0
1B6F7C:  BGE             loc_1B6FA0
1B6F7E:  LDR.W           R0, [R7,#var_FC]
1B6F82:  MOVS            R4, #0
1B6F84:  ADD.W           R10, R1, R0
1B6F88:  ADD.W           R11, R2, R0
1B6F8C:  ADD             R0, R3
1B6F8E:  STRH.W          R9, [R10,R4,LSL#1]
1B6F92:  STRH.W          R5, [R11,R4,LSL#1]
1B6F96:  STRH.W          R5, [R0,R4,LSL#1]
1B6F9A:  ADDS            R4, #1
1B6F9C:  CMP             R8, R4
1B6F9E:  BNE             loc_1B6F8E
1B6FA0:  LDR.W           R0, [R7,#var_BC]
1B6FA4:  ADD.W           LR, LR, #1
1B6FA8:  LDR.W           R10, [R7,#var_C8]
1B6FAC:  ADD             R1, R12
1B6FAE:  LDR.W           R11, [R7,#var_D8]
1B6FB2:  ADD             R2, R12
1B6FB4:  ADD             R3, R12
1B6FB6:  CMP             LR, R0
1B6FB8:  BLT             loc_1B6F62
1B6FBA:  B               loc_1B7062
1B6FBC:  LDR             R5, [R6,#0x10]
1B6FBE:  LDR.W           R8, [R7,#n]
1B6FC2:  LDR             R0, [R6,#0x40]; dest
1B6FC4:  MOV             R1, R5; src
1B6FC6:  MOV             R2, R8; n
1B6FC8:  BLX             j_memcpy
1B6FCC:  LDR             R1, [R6,#0x78]; src
1B6FCE:  MOV             R0, R5; dest
1B6FD0:  MOV             R2, R8; n
1B6FD2:  BLX             j_memcpy
1B6FD6:  CMP.W           R11, #1
1B6FDA:  BGE             loc_1B6F1C
1B6FDC:  LDR.W           R0, [R7,#var_DC]
1B6FE0:  CMP             R10, R0
1B6FE2:  BGE             loc_1B7062
1B6FE4:  LDR.W           R0, [R7,#var_EC]
1B6FE8:  MOV.W           R8, #0
1B6FEC:  LDR.W           R4, [R7,#var_DC]
1B6FF0:  MOV.W           LR, #0
1B6FF4:  LDR.W           R3, [R7,#var_BC]
1B6FF8:  LSLS            R0, R0, #2
1B6FFA:  LDR.W           R5, [R7,#var_C0]
1B6FFE:  ADD.W           R1, R0, R4,LSL#1
1B7002:  ADD.W           R0, R0, R4,LSL#2
1B7006:  ADD.W           R0, R0, #0x1000
1B700A:  MOV.W           R12, R4,LSL#1
1B700E:  MUL.W           R2, R3, R0
1B7012:  ADD.W           R0, R1, #0x1000
1B7016:  MOV.W           R1, R9,LSL#2
1B701A:  MULS            R3, R0
1B701C:  ADD.W           R1, R1, R10,LSL#1
1B7020:  ADD             R1, R5
1B7022:  SUB.W           R0, R4, R10
1B7026:  ADDS            R1, #0xF4
1B7028:  ADD.W           R2, R2, R10,LSL#1
1B702C:  ADD             R2, R5
1B702E:  ADD.W           R3, R3, R10,LSL#1
1B7032:  ADDS            R2, #0xF4
1B7034:  ADD             R3, R5
1B7036:  MOV.W           R5, #0x9000
1B703A:  ADDS            R3, #0xF4
1B703C:  MOVS            R4, #0
1B703E:  STRH.W          R8, [R1,R4,LSL#1]
1B7042:  STRH.W          R5, [R2,R4,LSL#1]
1B7046:  STRH.W          R5, [R3,R4,LSL#1]
1B704A:  ADDS            R4, #1
1B704C:  CMP             R0, R4
1B704E:  BNE             loc_1B703E
1B7050:  LDR.W           R4, [R7,#var_BC]
1B7054:  ADD.W           LR, LR, #1
1B7058:  ADD             R1, R12
1B705A:  ADD             R2, R12
1B705C:  ADD             R3, R12
1B705E:  CMP             LR, R4
1B7060:  BLT             loc_1B703C
1B7062:  LDR             R0, [R6,#0x2C]
1B7064:  LDR.W           R1, [R7,#var_F8]
1B7068:  ORRS            R0, R1
1B706A:  BEQ             loc_1B7076
1B706C:  LDR.W           R1, [R7,#var_C0]
1B7070:  LDR             R0, [R1,#0x74]
1B7072:  ADDS            R0, #1
1B7074:  B               loc_1B707C
1B7076:  MOVS            R0, #0
1B7078:  LDR.W           R1, [R7,#var_C0]
1B707C:  LDR.W           R4, [R7,#var_AC]
1B7080:  STR             R0, [R1,#0x74]
1B7082:  LDR             R0, [R4,#0x1C]
1B7084:  STR             R0, [R1,#0x4C]
1B7086:  MOV             R0, R4
1B7088:  BLX             j_ec_enc_done
1B708C:  LDR             R0, [R4,#0x2C]
1B708E:  LDR.W           R3, [R6,#0x84]
1B7092:  CMP             R0, #0
1B7094:  IT NE
1B7096:  MOVNE           R3, #0xFFFFFFFD
1B709A:  LDR.W           R0, =(__stack_chk_guard_ptr - 0x1B70A6)
1B709E:  LDR.W           R1, [R7,#var_24]
1B70A2:  ADD             R0, PC; __stack_chk_guard_ptr
1B70A4:  LDR             R0, [R0]; __stack_chk_guard
1B70A6:  LDR             R0, [R0]
1B70A8:  SUBS            R0, R0, R1
1B70AA:  ITTTT EQ
1B70AC:  MOVEQ           R0, R3
1B70AE:  SUBEQ.W         R4, R7, #-var_1C
1B70B2:  MOVEQ           SP, R4
1B70B4:  POPEQ.W         {R8-R11}
1B70B8:  IT EQ
1B70BA:  POPEQ           {R4-R7,PC}
1B70BC:  BLX             __stack_chk_fail
1B70C0:  LDR.W           R2, [R7,#var_CC]
1B70C4:  CMP             R0, R9
1B70C6:  BGE             loc_1B70D8
1B70C8:  SUB.W           R0, R0, #0xFA00
1B70CC:  MOV.W           R1, #0x400
1B70D0:  ASRS            R0, R0, #0xA
1B70D2:  ADD.W           R0, R1, R0,LSL#4
1B70D6:  B               loc_1B70DC
1B70D8:  MOV.W           R0, #0x500
1B70DC:  STR.W           R0, [R7,#n]
1B70E0:  LDR.W           R0, [R7,#var_C4]
1B70E4:  STR.W           R3, [R7,#var_D0]
1B70E8:  CMP             R0, #2
1B70EA:  BNE.W           loc_1B755E
1B70EE:  LDR.W           R9, [R2,#0x18]
1B70F2:  LDR.W           R11, [R7,#var_D4]
1B70F6:  LDRSH.W         R1, [R9]
1B70FA:  LDRSH.W         R12, [R9,#2]
1B70FE:  SUB.W           R0, R12, R1
1B7102:  LSL.W           R0, R0, R11
1B7106:  CMP             R0, #1
1B7108:  BLT             loc_1B717A
1B710A:  LDR.W           R2, [R7,#var_E4]
1B710E:  LSL.W           R1, R1, R11
1B7112:  ADDS            R3, R1, R2
1B7114:  LDR.W           R2, [R6,#0x80]
1B7118:  ADD.W           R5, R2, R1,LSL#1
1B711C:  ADD.W           R1, R2, R3,LSL#1
1B7120:  MOVS            R3, #0
1B7122:  LDRSH.W         R4, [R5],#2
1B7126:  SUBS            R0, #1
1B7128:  LDRSH.W         R2, [R1],#2
1B712C:  SMLABB.W        R3, R2, R4, R3
1B7130:  BNE             loc_1B7122
1B7132:  B               loc_1B717C
1B7134:  LDR.W           R1, [R7,#var_E0]
1B7138:  LDR.W           R5, [R7,#var_A8]
1B713C:  ADDW            R1, R1, #0x1CD
1B7140:  CMP             R5, #1
1B7142:  BLT             loc_1B7168
1B7144:  MOV             R10, R1
1B7146:  MOV             R12, R2
1B7148:  MOVS            R3, #0
1B714A:  LDRSH.W         R1, [R0,R3,LSL#1]
1B714E:  ADD.W           R2, R1, #0xFF00
1B7152:  CMP.W           R1, #0x100
1B7156:  IT LT
1B7158:  MOVLT           R2, #0
1B715A:  STRH.W          R2, [R0,R3,LSL#1]
1B715E:  ADDS            R3, #1
1B7160:  CMP             R3, R5
1B7162:  BLT             loc_1B714A
1B7164:  MOV             R2, R12
1B7166:  MOV             R1, R10
1B7168:  ADD.W           R0, R1, #0xCD
1B716C:  STR             R0, [R6,#0x18]
1B716E:  LDR.W           R0, [R7,#var_B0]
1B7172:  LSLS            R0, R0, #6
1B7174:  STR             R0, [R6,#0xC]
1B7176:  B.W             loc_1B57D2
1B717A:  MOVS            R3, #0
1B717C:  LDRSH.W         R8, [R9,#4]
1B7180:  MOV.W           LR, R3,ASR#18
1B7184:  SUB.W           R1, R8, R12
1B7188:  LSL.W           R5, R1, R11
1B718C:  CMP             R5, #1
1B718E:  BLT             loc_1B71BA
1B7190:  LDR.W           R0, [R7,#var_E4]
1B7194:  LSL.W           R1, R12, R11
1B7198:  ADDS            R4, R1, R0
1B719A:  LDR.W           R0, [R6,#0x80]
1B719E:  ADD.W           R2, R0, R1,LSL#1
1B71A2:  ADD.W           R1, R0, R4,LSL#1
1B71A6:  MOVS            R4, #0
1B71A8:  LDRSH.W         R3, [R2],#2
1B71AC:  SUBS            R5, #1
1B71AE:  LDRSH.W         R0, [R1],#2
1B71B2:  SMLABB.W        R4, R0, R3, R4
1B71B6:  BNE             loc_1B71A8
1B71B8:  B               loc_1B71BC
1B71BA:  MOVS            R4, #0
1B71BC:  LDRSH.W         R10, [R9,#6]
1B71C0:  ADD.W           R12, LR, R4,ASR#18
1B71C4:  SUB.W           R0, R10, R8
1B71C8:  LSL.W           R5, R0, R11
1B71CC:  CMP             R5, #1
1B71CE:  BLT             loc_1B71FA
1B71D0:  LDR.W           R1, [R7,#var_E4]
1B71D4:  LSL.W           R0, R8, R11
1B71D8:  LDR.W           R2, [R6,#0x80]
1B71DC:  MOVS            R4, #0
1B71DE:  ADD             R1, R0
1B71E0:  ADD.W           R0, R2, R0,LSL#1
1B71E4:  ADD.W           R1, R2, R1,LSL#1
1B71E8:  LDRSH.W         R3, [R0],#2
1B71EC:  SUBS            R5, #1
1B71EE:  LDRSH.W         R2, [R1],#2
1B71F2:  SMLABB.W        R4, R2, R3, R4
1B71F6:  BNE             loc_1B71E8
1B71F8:  B               loc_1B71FC
1B71FA:  MOVS            R4, #0
1B71FC:  LDRSH.W         LR, [R9,#8]
1B7200:  ADD.W           R12, R12, R4,ASR#18
1B7204:  SUB.W           R1, LR, R10
1B7208:  LSL.W           R5, R1, R11
1B720C:  CMP             R5, #1
1B720E:  BLT             loc_1B723A
1B7210:  LDR.W           R0, [R7,#var_E4]
1B7214:  LSL.W           R1, R10, R11
1B7218:  MOVS            R4, #0
1B721A:  ADDS            R2, R1, R0
1B721C:  LDR.W           R0, [R6,#0x80]
1B7220:  ADD.W           R1, R0, R1,LSL#1
1B7224:  ADD.W           R2, R0, R2,LSL#1
1B7228:  LDRSH.W         R3, [R1],#2
1B722C:  SUBS            R5, #1
1B722E:  LDRSH.W         R0, [R2],#2
1B7232:  SMLABB.W        R4, R0, R3, R4
1B7236:  BNE             loc_1B7228
1B7238:  B               loc_1B723C
1B723A:  MOVS            R4, #0
1B723C:  LDRSH.W         R8, [R9,#0xA]
1B7240:  ADD.W           R12, R12, R4,ASR#18
1B7244:  SUB.W           R0, R8, LR
1B7248:  LSL.W           R5, R0, R11
1B724C:  CMP             R5, #1
1B724E:  BLT             loc_1B727A
1B7250:  LDR.W           R1, [R7,#var_E4]
1B7254:  LSL.W           R0, LR, R11
1B7258:  LDR.W           R2, [R6,#0x80]
1B725C:  MOVS            R4, #0
1B725E:  ADD             R1, R0
1B7260:  ADD.W           R0, R2, R0,LSL#1
1B7264:  ADD.W           R1, R2, R1,LSL#1
1B7268:  LDRSH.W         R3, [R0],#2
1B726C:  SUBS            R5, #1
1B726E:  LDRSH.W         R2, [R1],#2
1B7272:  SMLABB.W        R4, R2, R3, R4
1B7276:  BNE             loc_1B7268
1B7278:  B               loc_1B727C
1B727A:  MOVS            R4, #0
1B727C:  LDRSH.W         LR, [R9,#0xC]
1B7280:  ADD.W           R12, R12, R4,ASR#18
1B7284:  SUB.W           R1, LR, R8
1B7288:  LSL.W           R5, R1, R11
1B728C:  CMP             R5, #1
1B728E:  BLT             loc_1B72BC
1B7290:  LDR.W           R0, [R7,#var_E4]
1B7294:  LSL.W           R1, R8, R11
1B7298:  ADDS            R2, R1, R0
1B729A:  LDR.W           R0, [R6,#0x80]
1B729E:  ADD.W           R4, R0, R2,LSL#1
1B72A2:  ADD.W           R1, R0, R1,LSL#1
1B72A6:  MOVS            R2, #0
1B72A8:  LDRSH.W         R3, [R1],#2
1B72AC:  SUBS            R5, #1
1B72AE:  LDRSH.W         R0, [R4],#2
1B72B2:  SMLABB.W        R2, R0, R3, R2
1B72B6:  BNE             loc_1B72A8
1B72B8:  ASRS            R1, R2, #0x12
1B72BA:  B               loc_1B72BE
1B72BC:  MOVS            R1, #0
1B72BE:  LDRSH.W         R8, [R9,#0xE]
1B72C2:  ADD             R12, R1
1B72C4:  SUB.W           R0, R8, LR
1B72C8:  LSL.W           R5, R0, R11
1B72CC:  CMP             R5, #1
1B72CE:  BLT             loc_1B72FC
1B72D0:  LDR.W           R1, [R7,#var_E4]
1B72D4:  LSL.W           R0, LR, R11
1B72D8:  LDR.W           R2, [R6,#0x80]
1B72DC:  ADD             R1, R0
1B72DE:  ADD.W           R0, R2, R0,LSL#1
1B72E2:  ADD.W           R4, R2, R1,LSL#1
1B72E6:  MOVS            R1, #0
1B72E8:  LDRSH.W         R3, [R0],#2
1B72EC:  SUBS            R5, #1
1B72EE:  LDRSH.W         R2, [R4],#2
1B72F2:  SMLABB.W        R1, R2, R3, R1
1B72F6:  BNE             loc_1B72E8
1B72F8:  ASRS            R1, R1, #0x12
1B72FA:  B               loc_1B72FE
1B72FC:  MOVS            R1, #0
1B72FE:  LDRSH.W         LR, [R9,#0x10]
1B7302:  ADD             R12, R1
1B7304:  SUB.W           R1, LR, R8
1B7308:  LSL.W           R5, R1, R11
1B730C:  CMP             R5, #1
1B730E:  BLT             loc_1B733C
1B7310:  LDR.W           R0, [R7,#var_E4]
1B7314:  LSL.W           R1, R8, R11
1B7318:  ADDS            R2, R1, R0
1B731A:  LDR.W           R0, [R6,#0x80]
1B731E:  ADD.W           R4, R0, R2,LSL#1
1B7322:  ADD.W           R1, R0, R1,LSL#1
1B7326:  MOVS            R2, #0
1B7328:  LDRSH.W         R3, [R1],#2
1B732C:  SUBS            R5, #1
1B732E:  LDRSH.W         R0, [R4],#2
1B7332:  SMLABB.W        R2, R0, R3, R2
1B7336:  BNE             loc_1B7328
1B7338:  ASRS            R1, R2, #0x12
1B733A:  B               loc_1B733E
1B733C:  MOVS            R1, #0
1B733E:  ADD.W           R0, R12, R1
1B7342:  LSLS            R1, R0, #0x10
1B7344:  SBFX.W          R0, R0, #3, #0xD
1B7348:  ADD.W           R0, R0, R1,ASR#31
1B734C:  EOR.W           R11, R0, R1,ASR#31
1B7350:  CMP.W           R11, #0x400
1B7354:  MOV             R3, R11
1B7356:  IT GE
1B7358:  MOVGE.W         R3, #0x400
1B735C:  LDR.W           R0, [R7,#var_B0]
1B7360:  CMP             R0, #9
1B7362:  BLT             loc_1B73C8
1B7364:  UXTH.W          R0, LR
1B7368:  MOV.W           R10, #8
1B736C:  ADD.W           R10, R10, #1
1B7370:  LDR.W           R4, [R7,#var_D4]
1B7374:  SXTH            R1, R0
1B7376:  LDRSH.W         R5, [R9,R10,LSL#1]
1B737A:  SUBS            R0, R5, R1
1B737C:  LSL.W           R2, R0, R4
1B7380:  UXTH            R0, R5
1B7382:  LDR.W           R5, [R7,#var_E4]
1B7386:  CMP             R2, #1
1B7388:  BLT             loc_1B73AE
1B738A:  LSLS            R1, R4
1B738C:  ADD             R5, R1
1B738E:  LDR.W           R4, [R6,#0x80]
1B7392:  ADD.W           R8, R4, R5,LSL#1
1B7396:  ADD.W           R1, R4, R1,LSL#1
1B739A:  MOVS            R5, #0
1B739C:  LDRSH.W         R12, [R1],#2
1B73A0:  SUBS            R2, #1
1B73A2:  LDRSH.W         LR, [R8],#2
1B73A6:  SMLABB.W        R5, LR, R12, R5
1B73AA:  BNE             loc_1B739C
1B73AC:  B               loc_1B73B0
1B73AE:  MOVS            R5, #0
1B73B0:  ASRS            R1, R5, #0x12
1B73B2:  ADD.W           R1, R1, R5,ASR#31
1B73B6:  EOR.W           R1, R1, R5,ASR#31
1B73BA:  CMP             R1, R3
1B73BC:  IT LE
1B73BE:  MOVLE           R3, R1
1B73C0:  LDR.W           R1, [R7,#var_B0]
1B73C4:  CMP             R10, R1
1B73C6:  BNE             loc_1B736C
1B73C8:  MOVW            R0, #:lower16:(off_100418+1)
1B73CC:  SXTH            R2, R3
1B73CE:  CMP             R2, #0
1B73D0:  MOVW            R2, #0x419
1B73D4:  IT LT
1B73D6:  NEGLT           R3, R3
1B73D8:  CMP.W           R11, #0x400
1B73DC:  MOVT            R0, #:upper16:(off_100418+1)
1B73E0:  MOVW            R4, #0x8001
1B73E4:  IT LT
1B73E6:  MLSLT.W         R2, R11, R11, R0
1B73EA:  MOVW            R1, #0xF50E
1B73EE:  MOVW            R12, #0
1B73F2:  MOVW            R9, #0
1B73F6:  MOVW            R8, #0
1B73FA:  MOVT            R4, #0xFFFF
1B73FE:  MOVT            R1, #0xFFFF
1B7402:  MOVT            R12, #0xE577
1B7406:  MOVT            R9, #0x3D82
1B740A:  MOVT            R8, #0x9F1
1B740E:  SXTH.W          R10, R3
1B7412:  MOV             R11, R0
1B7414:  CMP             R2, #0
1B7416:  MOV             LR, R4
1B7418:  BEQ             loc_1B747E
1B741A:  CLZ.W           R5, R2
1B741E:  MOV             LR, R1
1B7420:  RSB.W           R1, R5, #0x10
1B7424:  RSB.W           R5, R5, #0x1F
1B7428:  RSB.W           R0, R5, #0xF
1B742C:  CMP             R5, #0xF
1B742E:  LSL.W           R0, R2, R0
1B7432:  IT GT
1B7434:  ASRGT.W         R0, R2, R1
1B7438:  MOV.W           R1, #0x40000000
1B743C:  ADD.W           R0, R1, R0,LSL#16
1B7440:  MOVS            R2, #0xFFFF0000
1B7446:  SMLABT.W        R1, LR, R0, R8
1B744A:  SMULTT.W        R1, R1, R0
1B744E:  AND.W           R1, R2, R1,LSL#1
1B7452:  ADD             R1, R12
1B7454:  ADD.W           R1, R1, #0x6280000
1B7458:  SMULTT.W        R1, R1, R0
1B745C:  AND.W           R1, R2, R1,LSL#1
1B7460:  ADD             R1, R9
1B7462:  SMULTT.W        R0, R1, R0
1B7466:  LSLS            R1, R5, #0x1A
1B7468:  AND.W           R0, R2, R0,LSL#1
1B746C:  ADD             R0, R12
1B746E:  ASRS            R0, R0, #0x14
1B7470:  ADD.W           R0, R1, R0,LSL#16
1B7474:  MOV             R1, LR
1B7476:  ADD.W           R0, R0, #0xCC000000
1B747A:  MOV.W           LR, R0,ASR#16
1B747E:  MLS.W           R2, R10, R10, R11
1B7482:  CMP.W           R3, #0x400
1B7486:  IT GT
1B7488:  MOVWGT          R2, #0x419
1B748C:  MOVW            R11, #0x8000
1B7490:  MOV             R12, R1
1B7492:  MOV.W           R5, LR,ASR#1
1B7496:  MOVT            R11, #0xFA00
1B749A:  CBZ             R2, loc_1B7502
1B749C:  CLZ.W           R0, R2
1B74A0:  MOVS            R4, #0
1B74A2:  RSB.W           R1, R0, #0x10
1B74A6:  RSB.W           R0, R0, #0x1F
1B74AA:  RSB.W           R3, R0, #0xF
1B74AE:  CMP             R0, #0xF
1B74B0:  MOVT            R4, #0xE577
1B74B4:  MOV.W           R0, R0,LSL#26
1B74B8:  LSL.W           R3, R2, R3
1B74BC:  IT GT
1B74BE:  ASRGT.W         R3, R2, R1
1B74C2:  MOV.W           R1, #0x40000000
1B74C6:  ADD.W           R1, R1, R3,LSL#16
1B74CA:  MOVS            R3, #0xFFFF0000
1B74D0:  SMLABT.W        R2, R12, R1, R8
1B74D4:  SMULTT.W        R2, R2, R1
1B74D8:  AND.W           R2, R3, R2,LSL#1
1B74DC:  ADD             R2, R4
1B74DE:  ADD.W           R2, R2, #0x6280000
1B74E2:  SMULTT.W        R2, R2, R1
1B74E6:  AND.W           R2, R3, R2,LSL#1
1B74EA:  ADD             R2, R9
1B74EC:  SMULTT.W        R1, R2, R1
1B74F0:  AND.W           R1, R3, R1,LSL#1
1B74F4:  ADD             R1, R4
1B74F6:  ASRS            R1, R1, #0x14
1B74F8:  ADD.W           R0, R0, R1,LSL#16
1B74FC:  ADD.W           R0, R0, #0xCC000000
1B7500:  ASRS            R4, R0, #0x10
1B7502:  CMP             R5, R4
1B7504:  MOV.W           R2, #0
1B7508:  IT GT
1B750A:  MOVGT           R4, R5
1B750C:  LDR.W           R0, [R7,#var_C0]
1B7510:  ADD.W           R1, R11, R4,LSL#14
1B7514:  MOV             R3, R0
1B7516:  SUB.W           R1, R2, R1,ASR#17
1B751A:  LDRSH.W         R0, [R3,#0xE4]
1B751E:  MOV             R2, #0xFFFFF800
1B7526:  ADDS            R0, #0x40 ; '@'
1B7528:  ADD.W           R2, R2, #0x400
1B752C:  CMP             R0, R1
1B752E:  IT LT
1B7530:  MOVLT           R1, R0
1B7532:  ADD.W           R0, R11, LR,LSL#14
1B7536:  STRH.W          R1, [R3,#0xE4]
1B753A:  ASRS            R0, R0, #0x10
1B753C:  ADD.W           R0, R0, R0,LSL#1
1B7540:  SBFX.W          R1, R0, #2, #0x11
1B7544:  LSLS            R0, R0, #0xD
1B7546:  CMN.W           R1, #0x400
1B754A:  IT GT
1B754C:  ASRGT           R2, R0, #0xF
1B754E:  LDR.W           R0, [R7,#n]
1B7552:  LDR.W           R10, [R7,#var_AC]
1B7556:  UXTAH.W         R0, R2, R0
1B755A:  STR.W           R0, [R7,#n]
1B755E:  LDR.W           R0, [R7,#var_C8]
1B7562:  LDR.W           R9, [R6,#0x74]
1B7566:  SUB.W           R12, R0, #1
1B756A:  CMP             R0, #2
1B756C:  MOV.W           R0, #0
1B7570:  BLT             loc_1B75AA
1B7572:  LDR.W           R0, [R7,#var_CC]
1B7576:  MOVS            R5, #0
1B7578:  LDR.W           R1, [R7,#var_C8]
1B757C:  LDR             R0, [R0,#8]
1B757E:  RSB.W           LR, R1, #2
1B7582:  MOV.W           R8, R0,LSL#1
1B7586:  MOVS            R0, #0
1B7588:  MOV             R1, R12
1B758A:  MOV             R4, R9
1B758C:  MOV             R2, LR
1B758E:  LDRSH.W         R3, [R4],#2
1B7592:  SUBS            R1, #1
1B7594:  MLA.W           R0, R2, R3, R0
1B7598:  ADD.W           R2, R2, #2
1B759C:  BNE             loc_1B758E
1B759E:  LDR.W           R1, [R7,#var_C4]
1B75A2:  ADDS            R5, #1
1B75A4:  ADD             R9, R8
1B75A6:  CMP             R5, R1
1B75A8:  BLT             loc_1B7588
1B75AA:  LDR.W           R1, [R7,#var_C4]
1B75AE:  MUL.W           R1, R12, R1
1B75B2:  BLX             sub_220A40
1B75B6:  ADD.W           R0, R0, #0x400
1B75BA:  MOV             R1, #0xD5555555
1B75C2:  MOVW            R2, #0xC05
1B75C6:  ASRS            R0, R0, #2
1B75C8:  CMP             R0, R2
1B75CA:  SMMUL.W         R1, R0, R1
1B75CE:  MOV             R2, #0xFFFFF3FB
1B75D6:  MOV             R9, #0x13880
1B75DE:  ADD.W           R1, R1, R1,LSR#31
1B75E2:  IT GT
1B75E4:  MOVGT.W         R1, #0xFE00
1B75E8:  CMP             R0, R2
1B75EA:  IT LT
1B75EC:  MOVLT.W         R1, #0x200
1B75F0:  LDR.W           R2, [R7,#var_D0]
1B75F4:  MOVW            R0, #0xFFFE
1B75F8:  AND.W           R0, R0, R2,LSR#5
1B75FC:  LDR             R2, [R6,#0xC]
1B75FE:  NEGS            R0, R0
1B7600:  SXTH            R2, R2
1B7602:  SUB.W           R0, R0, R2,LSR#2
1B7606:  LDR.W           R2, [R7,#n]
1B760A:  ADD             R0, R2
1B760C:  MOVS            R2, #0xA
1B760E:  ADD             R0, R1
1B7610:  SXTH            R0, R0
1B7612:  ADDS            R0, #0x80
1B7614:  ASRS            R1, R0, #8
1B7616:  CMP             R1, #0xA
1B7618:  IT LT
1B761A:  ASRLT           R2, R0, #8
1B761C:  CMP             R1, #0
1B761E:  MOV.W           R1, #0
1B7622:  IT GT
1B7624:  MOVGT           R1, R2
1B7626:  LDR.W           R11, [R7,#var_C0]
1B762A:  LDR.W           R5, [R6,#0x88]
1B762E:  LDR.W           R4, [R7,#var_D8]
1B7632:  B.W             loc_1B67A6
