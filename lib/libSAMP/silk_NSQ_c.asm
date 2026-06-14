; =========================================================
; Game Engine Function: silk_NSQ_c
; Address            : 0x1B3C2C - 0x1B4B7A
; =========================================================

1B3C2C:  PUSH            {R4-R7,LR}
1B3C2E:  ADD             R7, SP, #0xC
1B3C30:  PUSH.W          {R8-R11}
1B3C34:  SUB             SP, SP, #0x10C
1B3C36:  MOV             R11, R1
1B3C38:  LDR.W           R1, =(__stack_chk_guard_ptr - 0x1B3C48)
1B3C3C:  STR.W           R3, [R7,#var_E8]
1B3C40:  MOVW            R3, #0x10F4
1B3C44:  ADD             R1, PC; __stack_chk_guard_ptr
1B3C46:  MOVW            R10, #0x11E8
1B3C4A:  MOVS            R4, #7
1B3C4C:  LDR             R1, [R1]; __stack_chk_guard
1B3C4E:  LDR             R1, [R1]
1B3C50:  STR.W           R1, [R7,#var_24]
1B3C54:  LDRSB.W         R1, [R2,#0x22]
1B3C58:  STR.W           R1, [R11,R3]
1B3C5C:  MOVW            R1, #0x11F0
1B3C60:  LDR.W           LR, [R0,R1]
1B3C64:  LDR.W           R8, [R0,R10]
1B3C68:  LDRSB.W         R6, [R2,#0x1E]
1B3C6C:  ADD.W           R1, R8, LR
1B3C70:  ADD.W           R3, R4, R1,LSL#2
1B3C74:  ADD.W           R1, R4, R1,LSL#1
1B3C78:  BIC.W           R5, R3, #7
1B3C7C:  LDRB            R3, [R2,#0x1F]
1B3C7E:  STR.W           R6, [R7,#var_28]
1B3C82:  BIC.W           R1, R1, #7
1B3C86:  STR.W           R2, [R7,#var_F0]
1B3C8A:  LDRSB.W         R9, [R2,#0x1D]
1B3C8E:  MOVW            R2, #0x10E8
1B3C92:  LDR.W           R6, [R11,R2]
1B3C96:  STR.W           R6, [R7,#var_70]
1B3C9A:  SUB.W           R6, SP, R5
1B3C9E:  STR.W           R6, [R7,#var_5C]
1B3CA2:  MOV             SP, R6
1B3CA4:  SUB.W           R1, SP, R1
1B3CA8:  STR.W           R1, [R7,#var_EC]
1B3CAC:  MOV             SP, R1
1B3CAE:  MOVW            R1, #0x11EC
1B3CB2:  LDR             R1, [R0,R1]
1B3CB4:  ADD.W           R5, R4, R1,LSL#2
1B3CB8:  BIC.W           R5, R5, #7
1B3CBC:  SUB.W           R6, SP, R5
1B3CC0:  STR.W           R6, [R7,#var_38]
1B3CC4:  MOV             SP, R6
1B3CC6:  SUB.W           R6, R7, #-var_100
1B3CCA:  MOVW            R12, #0x10EC
1B3CCE:  MOVW            R4, #0x10F0
1B3CD2:  STR.W           LR, [R11,R12]
1B3CD6:  ADD.W           R5, R0, R10
1B3CDA:  STR.W           LR, [R11,R4]
1B3CDE:  MOVW            R10, #0x11E4
1B3CE2:  CMP             R3, #4
1B3CE4:  STR.W           R5, [R6,#-0x24]
1B3CE8:  MOVW            R4, #0x11F0
1B3CEC:  STR.W           R11, [R7,#dest]
1B3CF0:  ADD.W           R5, R0, R4
1B3CF4:  LDR.W           R6, [R0,R10]
1B3CF8:  MOV.W           R3, #0
1B3CFC:  ADD             R2, R11
1B3CFE:  IT NE
1B3D00:  MOVNE           R3, #1
1B3D02:  CMP             R6, #1
1B3D04:  BLT.W           loc_1B4B22
1B3D08:  SUB.W           R11, R7, #-var_100
1B3D0C:  SUB.W           R8, R7, #-var_100
1B3D10:  LDR.W           R4, [R7,#dest]
1B3D14:  MOV             R6, #0xFFFFFFFC
1B3D18:  STR.W           R5, [R11,#-0xC]
1B3D1C:  AND.W           R6, R6, R9,LSL#1
1B3D20:  LDR.W           R5, =(silk_Quantization_Offsets_Q10_ptr - 0x1B3D34)
1B3D24:  SUB.W           R11, R7, #-var_100
1B3D28:  STR.W           R2, [R8,#-0x28]
1B3D2C:  ADD.W           R2, R4, R12
1B3D30:  ADD             R5, PC; silk_Quantization_Offsets_Q10_ptr
1B3D32:  STR.W           R2, [R7,#var_6C]
1B3D36:  LDR.W           R2, [R7,#var_28]
1B3D3A:  MOVW            R12, #0x10F4
1B3D3E:  LDR             R5, [R5]; silk_Quantization_Offsets_Q10
1B3D40:  ADD             R6, R5
1B3D42:  MOV             R5, R9
1B3D44:  LDRSH.W         R2, [R6,R2,LSL#1]
1B3D48:  MOVW            R6, #0x10F0
1B3D4C:  ADD.W           R9, R4, R6
1B3D50:  MOVW            R6, #0x11EC
1B3D54:  ADD             R6, R0
1B3D56:  STR.W           R6, [R7,#var_E4]
1B3D5A:  ADD.W           R6, R4, R12
1B3D5E:  STR.W           R6, [R7,#var_3C]
1B3D62:  ADD.W           R6, R0, R10
1B3D66:  STR.W           R6, [R7,#var_FC]
1B3D6A:  UXTB.W          R10, R5
1B3D6E:  LDR             R5, [R7,#arg_0]
1B3D70:  LDRD.W          R8, R6, [R7,#arg_24]
1B3D74:  STR.W           R5, [R7,#var_64]
1B3D78:  MOVW            R5, #0x1088
1B3D7C:  ADD             R5, R4
1B3D7E:  STR.W           R5, [R7,#var_CC]
1B3D82:  MOV.W           R5, #0x200
1B3D86:  SXTH            R6, R6
1B3D88:  SUB.W           R5, R5, R8,LSR#1
1B3D8C:  STR.W           R5, [R7,#var_DC]
1B3D90:  MOVW            R5, #0xFE00
1B3D94:  STR.W           R2, [R7,#var_50]
1B3D98:  MOVT            R5, #0xFFFF
1B3D9C:  LDR.W           R12, [R7,#arg_C]
1B3DA0:  ADD.W           R5, R5, R8,LSR#1
1B3DA4:  STR.W           R5, [R7,#var_AC]
1B3DA8:  MOVW            R5, #0x10E4
1B3DAC:  STR.W           R9, [R7,#var_34]
1B3DB0:  ADD             R5, R4
1B3DB2:  STR.W           R5, [R7,#var_44]
1B3DB6:  MOVW            R5, #0x121C
1B3DBA:  ADD             R5, R0
1B3DBC:  STR.W           R5, [R11,#-0x10]
1B3DC0:  MOVW            R5, #0x10F8
1B3DC4:  SUB.W           R11, R7, #-var_100
1B3DC8:  ADD             R5, R4
1B3DCA:  STR.W           R5, [R7,#var_F4]
1B3DCE:  MOVW            R5, #0x13E4
1B3DD2:  ADD             R5, R0
1B3DD4:  STR.W           R5, [R11,#-0x20]
1B3DD8:  MOVS            R5, #3
1B3DDA:  SUB.W           R11, R7, #-var_100
1B3DDE:  EOR.W           R5, R5, R3,LSL#1
1B3DE2:  ADD.W           R0, R0, #0x1220
1B3DE6:  STR.W           R5, [R11,#-0x18]
1B3DEA:  MOVW            R5, #0x10FC
1B3DEE:  ADD             R5, R4
1B3DF0:  STR.W           R5, [R7,#var_F8]
1B3DF4:  ADD.W           R5, R4, LR,LSL#1
1B3DF8:  SUB.W           LR, R7, #-var_100
1B3DFC:  LDR.W           R11, [R7,#var_E8]
1B3E00:  STR.W           R6, [LR,#-0x1C]
1B3E04:  SXTH.W          R6, R8
1B3E08:  STR.W           R6, [R7,#var_B0]
1B3E0C:  RSB.W           R6, R2, #0x3B0
1B3E10:  STR.W           R6, [R7,#var_D4]
1B3E14:  SUB.W           R6, R2, #0x3B0
1B3E18:  STR.W           R6, [R7,#var_D8]
1B3E1C:  ADD.W           R6, R2, #0x3B0
1B3E20:  SUBS            R2, #0x50 ; 'P'
1B3E22:  STR.W           R2, [R7,#var_C4]
1B3E26:  ADD.W           R2, R4, #0x10E0
1B3E2A:  SUB.W           LR, R7, #-var_100
1B3E2E:  STR.W           R2, [R7,#var_48]
1B3E32:  ADD.W           R2, R4, #0x1080
1B3E36:  STR.W           R2, [R7,#var_A8]
1B3E3A:  ADDW            R2, R4, #0xF3C
1B3E3E:  STR.W           R2, [LR,#-0x14]
1B3E42:  SUB.W           LR, R7, #-var_100
1B3E46:  ADD.W           R2, R4, #0xF00
1B3E4A:  MOV.W           R8, #1
1B3E4E:  STR.W           R2, [LR]
1B3E52:  SUB.W           LR, R7, #-var_100
1B3E56:  MOVS            R4, #0
1B3E58:  STR.W           R5, [R7,#var_68]
1B3E5C:  STR.W           R0, [LR,#-8]
1B3E60:  SUB.W           LR, R7, #-var_100
1B3E64:  EOR.W           R0, R3, #1
1B3E68:  STR.W           R6, [R7,#var_D0]
1B3E6C:  STR.W           R0, [LR,#-4]
1B3E70:  MOV             R0, R12
1B3E72:  B               loc_1B3EDE
1B3E74:  LDR.W           R0, [R7,#dest]
1B3E78:  SUB.W           LR, R7, #-var_100
1B3E7C:  ADD.W           R0, R0, R2,LSL#2
1B3E80:  LDR.W           R1, [LR]
1B3E84:  ADD.W           R12, R0, #0xF00
1B3E88:  LDM.W           R12!, {R2-R6}
1B3E8C:  STM             R1!, {R2-R6}
1B3E8E:  LDM.W           R12!, {R2-R6}
1B3E92:  STM             R1!, {R2-R6}
1B3E94:  LDM.W           R12, {R0,R2-R6}
1B3E98:  STM             R1!, {R0,R2-R6}
1B3E9A:  LDR.W           R0, [R7,#var_FC]
1B3E9E:  LDR.W           R4, [R7,#var_E0]
1B3EA2:  LDR             R6, [R0]
1B3EA4:  ADDS            R4, #1
1B3EA6:  CMP             R4, R6
1B3EA8:  BGE.W           loc_1B4B00
1B3EAC:  LDR.W           R0, [R7,#var_E4]
1B3EB0:  LDR.W           R11, [R7,#var_E8]
1B3EB4:  LDR             R1, [R0]
1B3EB6:  LDR.W           R0, [R7,#var_64]
1B3EBA:  ADD             R0, R1
1B3EBC:  STR.W           R0, [R7,#var_64]
1B3EC0:  LDR.W           R0, [R7,#var_68]
1B3EC4:  ADD.W           R11, R11, R1,LSL#1
1B3EC8:  ADD.W           R0, R0, R1,LSL#1
1B3ECC:  STR.W           R0, [R7,#var_68]
1B3ED0:  LDR.W           R0, [R7,#var_F0]
1B3ED4:  LDRB.W          R10, [R0,#0x1D]
1B3ED8:  LDR.W           R0, [R7,#var_C0]
1B3EDC:  ADDS            R0, #0x30 ; '0'
1B3EDE:  STR.W           R0, [R7,#var_C0]
1B3EE2:  MOVS            R3, #0
1B3EE4:  LDR             R0, [R7,#arg_10]
1B3EE6:  SUB.W           LR, R7, #-var_100
1B3EEA:  LDR             R2, [R7,#arg_4]
1B3EEC:  LDR.W           R0, [R0,R4,LSL#2]
1B3EF0:  STR.W           R0, [R7,#var_40]
1B3EF4:  LDR.W           R0, [R7,#var_F8]
1B3EF8:  STR             R3, [R0]
1B3EFA:  LDR.W           R0, [LR,#-4]
1B3EFE:  LDR.W           R5, [R7,#var_EC]
1B3F02:  ORR.W           R0, R0, R4,LSR#1
1B3F06:  STR.W           R4, [R7,#var_E0]
1B3F0A:  ADD.W           R0, R2, R0,LSL#5
1B3F0E:  STR.W           R0, [R7,#var_54]
1B3F12:  UXTB.W          R0, R10
1B3F16:  CMP             R0, #2
1B3F18:  BNE             loc_1B3FA2
1B3F1A:  LDR             R0, [R7,#arg_20]
1B3F1C:  SUB.W           LR, R7, #-var_100
1B3F20:  LDR.W           R2, [LR,#-0x18]
1B3F24:  LDR.W           R0, [R0,R4,LSL#2]
1B3F28:  TST             R4, R2
1B3F2A:  STR.W           R0, [R7,#var_70]
1B3F2E:  BEQ             loc_1B3F38
1B3F30:  MOV.W           R10, #2
1B3F34:  MOVS            R3, #0
1B3F36:  B               loc_1B3FA2
1B3F38:  SUB.W           R9, R7, #-var_100
1B3F3C:  MOV             R2, #0xFFFFFFFE
1B3F40:  SUBS            R0, R2, R0
1B3F42:  LDR.W           R4, [R9,#-0xC]
1B3F46:  SUB.W           R9, R7, #-var_100
1B3F4A:  LDR.W           R3, [R9,#-8]
1B3F4E:  SUB.W           R9, R7, #-var_100
1B3F52:  LDR             R2, [R4]
1B3F54:  LDR.W           R6, [R9,#-0x20]
1B3F58:  LDR             R3, [R3]
1B3F5A:  ADD             R0, R2
1B3F5C:  LDR.W           R12, [R6]
1B3F60:  SUBS            R0, R0, R3
1B3F62:  LDR.W           R6, [R7,#var_E0]
1B3F66:  MLA.W           R1, R1, R6, R0
1B3F6A:  STRD.W          R3, R12, [SP,#0x128+var_130]!
1B3F6E:  SUBS            R3, R2, R0
1B3F70:  LDR.W           R2, [R7,#dest]
1B3F74:  ADD.W           R0, R5, R0,LSL#1
1B3F78:  ADD.W           R1, R2, R1,LSL#1
1B3F7C:  LDR.W           R2, [R7,#var_54]
1B3F80:  BLX             j_silk_LPC_analysis_filter
1B3F84:  ADD             SP, SP, #8
1B3F86:  LDR.W           R0, [R7,#var_F8]
1B3F8A:  MOVS            R3, #1
1B3F8C:  STR             R3, [R0]
1B3F8E:  LDR.W           R1, [R7,#var_6C]
1B3F92:  LDR             R0, [R4]
1B3F94:  LDR.W           R4, [R7,#var_E0]
1B3F98:  STR             R0, [R1]
1B3F9A:  LDR.W           R0, [R7,#var_F0]
1B3F9E:  LDRB.W          R10, [R0,#0x1D]
1B3FA2:  LDR             R0, [R7,#arg_1C]
1B3FA4:  STR.W           R3, [R7,#var_28]
1B3FA8:  LDR.W           R9, [R0,R4,LSL#2]
1B3FAC:  MOVS            R0, #1
1B3FAE:  CMP.W           R9, #1
1B3FB2:  IT GT
1B3FB4:  MOVGT           R0, R9
1B3FB6:  CMP             R0, #0
1B3FB8:  MOV             R1, R0
1B3FBA:  IT MI
1B3FBC:  NEGMI           R1, R0
1B3FBE:  CLZ.W           R6, R1
1B3FC2:  SUBS            R1, R6, #1
1B3FC4:  LSL.W           R5, R0, R1
1B3FC8:  MOV             R0, #0x1FFFFFFF
1B3FCC:  ASRS            R1, R5, #0x10
1B3FCE:  BLX             sub_220A40
1B3FD2:  UXTH            R1, R5
1B3FD4:  SXTH            R2, R0
1B3FD6:  MULS            R1, R2
1B3FD8:  ADD.W           R3, R8, R0,ASR#15
1B3FDC:  ASRS            R3, R3, #1
1B3FDE:  ASRS            R1, R1, #0x10
1B3FE0:  SMLABT.W        R1, R0, R5, R1
1B3FE4:  NEGS            R1, R1
1B3FE6:  LSLS            R1, R1, #3
1B3FE8:  MULS            R3, R1
1B3FEA:  UXTH            R5, R1
1B3FEC:  MULS            R2, R5
1B3FEE:  ADD.W           R3, R3, R0,LSL#16
1B3FF2:  SMLATB.W        R0, R1, R0, R3
1B3FF6:  LDR             R1, [R7,#arg_20]
1B3FF8:  LDR.W           R1, [R1,R4,LSL#2]
1B3FFC:  STR.W           R1, [R7,#var_2C]
1B4000:  ADD.W           R1, R0, R2,ASR#16
1B4004:  RSB.W           R0, R6, #0x3E ; '>'
1B4008:  CMP             R0, #0x2F ; '/'
1B400A:  STR.W           R10, [R7,#var_4C]
1B400E:  BGT             loc_1B403E
1B4010:  RSB.W           R5, R0, #0x2F ; '/'
1B4014:  MOV             R0, #0x7FFFFFFF
1B4018:  LSR.W           R2, R0, R5
1B401C:  MOV.W           R0, #0x80000000
1B4020:  ASR.W           R3, R0, R5
1B4024:  LDR.W           R0, [R7,#var_38]
1B4028:  CMP             R3, R2
1B402A:  BLE             loc_1B4058
1B402C:  LDR.W           R12, [R7,#var_EC]
1B4030:  CMP             R1, R3
1B4032:  MOV             R6, R3
1B4034:  BGT             loc_1B406A
1B4036:  CMP             R1, R2
1B4038:  IT LT
1B403A:  MOVLT           R1, R2
1B403C:  B               loc_1B4068
1B403E:  SUB.W           R2, R0, #0x2F ; '/'
1B4042:  CMP             R0, #0x4F ; 'O'
1B4044:  MOV.W           LR, #0
1B4048:  IT LT
1B404A:  ASRLT.W         LR, R1, R2
1B404E:  LDR.W           R12, [R7,#var_EC]
1B4052:  LDR.W           R0, [R7,#var_38]
1B4056:  B               loc_1B406E
1B4058:  LDR.W           R12, [R7,#var_EC]
1B405C:  CMP             R1, R2
1B405E:  MOV             R6, R2
1B4060:  BGT             loc_1B406A
1B4062:  CMP             R1, R3
1B4064:  IT LT
1B4066:  MOVLT           R1, R3
1B4068:  MOV             R6, R1
1B406A:  LSL.W           LR, R6, R5
1B406E:  LDR.W           R1, [R7,#var_E4]
1B4072:  LDR.W           R10, [R1]
1B4076:  CMP.W           R10, #1
1B407A:  BLT             loc_1B40B0
1B407C:  MOVS            R1, #1
1B407E:  ADD.W           R2, R1, LR,ASR#4
1B4082:  MOV.W           R8, #1
1B4086:  MOVS            R3, #0
1B4088:  ADD.W           R1, R1, R2,ASR#16
1B408C:  SBFX.W          R2, R2, #1, #0x10
1B4090:  ASRS            R1, R1, #1
1B4092:  LDRSH.W         R6, [R11,R3,LSL#1]
1B4096:  UXTH            R5, R6
1B4098:  SMULBB.W        R4, R1, R6
1B409C:  MULS            R5, R2
1B409E:  SMLABT.W        R6, R2, R6, R4
1B40A2:  ADD.W           R6, R6, R5,ASR#16
1B40A6:  STR.W           R6, [R0,R3,LSL#2]
1B40AA:  ADDS            R3, #1
1B40AC:  CMP             R3, R10
1B40AE:  BLT             loc_1B4092
1B40B0:  STR.W           R10, [R7,#var_60]
1B40B4:  LDR.W           R0, [R7,#var_28]
1B40B8:  LDR.W           R10, [R7,#var_5C]
1B40BC:  CBZ             R0, loc_1B4114
1B40BE:  LDR.W           R0, [R7,#var_E0]
1B40C2:  CBNZ            R0, loc_1B40DC
1B40C4:  SUB.W           R2, R7, #-var_100
1B40C8:  UXTH.W          R1, LR
1B40CC:  LDR.W           R0, [R2,#-0x1C]
1B40D0:  MULS            R1, R0
1B40D2:  ASRS            R1, R1, #0x10
1B40D4:  SMLATB.W        R0, LR, R0, R1
1B40D8:  MOV.W           LR, R0,LSL#2
1B40DC:  LDR.W           R0, [R7,#var_6C]
1B40E0:  LDR.W           R2, [R7,#var_2C]
1B40E4:  LDR             R1, [R0]
1B40E6:  MOV             R0, #0xFFFFFFFE
1B40EA:  SUBS            R2, R0, R2
1B40EC:  ADD             R2, R1
1B40EE:  CMP             R2, R1
1B40F0:  BGE             loc_1B4114
1B40F2:  UXTH.W          R3, LR
1B40F6:  MOV.W           R0, LR,ASR#16
1B40FA:  LDRSH.W         R6, [R12,R2,LSL#1]
1B40FE:  MUL.W           R5, R3, R6
1B4102:  SMULBB.W        R6, R0, R6
1B4106:  ADD.W           R6, R6, R5,ASR#16
1B410A:  STR.W           R6, [R10,R2,LSL#2]
1B410E:  ADDS            R2, #1
1B4110:  CMP             R2, R1
1B4112:  BLT             loc_1B40FA
1B4114:  LDR.W           R0, [R7,#var_F4]
1B4118:  LDR             R0, [R0]
1B411A:  STR.W           R11, [R7,#var_E8]
1B411E:  CMP             R9, R0
1B4120:  BNE             loc_1B412E
1B4122:  LDR.W           R2, [R7,#var_60]
1B4126:  CMP             R2, #1
1B4128:  BGE.W           loc_1B44EE
1B412C:  B               loc_1B3E74
1B412E:  CMP             R0, #0
1B4130:  MOV             R1, R0
1B4132:  IT MI
1B4134:  NEGMI           R1, R0
1B4136:  CMP.W           R9, #0
1B413A:  CLZ.W           R10, R1
1B413E:  SUB.W           R1, R10, #1
1B4142:  LSL.W           R6, R0, R1
1B4146:  MOV             R0, R9
1B4148:  IT MI
1B414A:  RSBMI.W         R0, R9, #0
1B414E:  CLZ.W           R4, R0
1B4152:  SUBS            R0, R4, #1
1B4154:  LSL.W           R5, R9, R0
1B4158:  MOV             R0, #0x1FFFFFFF
1B415C:  ASRS            R1, R5, #0x10
1B415E:  BLX             sub_220A40
1B4162:  UXTH            R1, R6
1B4164:  SXTH            R2, R0
1B4166:  MULS            R1, R2
1B4168:  ASRS            R1, R1, #0x10
1B416A:  SMLABT.W        R1, R0, R6, R1
1B416E:  SMMUL.W         R3, R1, R5
1B4172:  SUB.W           R3, R6, R3,LSL#3
1B4176:  UXTH            R6, R3
1B4178:  SMLABT.W        R0, R0, R3, R1
1B417C:  MULS            R2, R6
1B417E:  ADD.W           R1, R0, R2,ASR#16
1B4182:  RSB.W           R0, R4, #1
1B4186:  ADD             R0, R10
1B4188:  ADDS            R0, #0x1C
1B418A:  CMP             R0, #0xF
1B418C:  BGT             loc_1B41BC
1B418E:  RSB.W           R0, R0, #0x10
1B4192:  LDR.W           LR, [R7,#var_34]
1B4196:  LDR.W           R8, [R7,#var_A8]
1B419A:  MOV             R2, #0x7FFFFFFF
1B419E:  LDR.W           R10, [R7,#var_4C]
1B41A2:  MOV.W           R3, #0x80000000
1B41A6:  LSRS            R2, R0
1B41A8:  ASRS            R3, R0
1B41AA:  CMP             R3, R2
1B41AC:  BLE             loc_1B41DA
1B41AE:  CMP             R1, R3
1B41B0:  MOV             R6, R3
1B41B2:  BGT             loc_1B41E8
1B41B4:  CMP             R1, R2
1B41B6:  IT LT
1B41B8:  MOVLT           R1, R2
1B41BA:  B               loc_1B41E6
1B41BC:  SUB.W           R2, R0, #0x10
1B41C0:  CMP             R0, #0x30 ; '0'
1B41C2:  MOV.W           R12, #0
1B41C6:  IT LT
1B41C8:  ASRLT.W         R12, R1, R2
1B41CC:  LDR.W           LR, [R7,#var_34]
1B41D0:  LDR.W           R8, [R7,#var_A8]
1B41D4:  LDR.W           R10, [R7,#var_4C]
1B41D8:  B               loc_1B41EC
1B41DA:  CMP             R1, R2
1B41DC:  MOV             R6, R2
1B41DE:  BGT             loc_1B41E8
1B41E0:  CMP             R1, R3
1B41E2:  IT LT
1B41E4:  MOVLT           R1, R3
1B41E6:  MOV             R6, R1
1B41E8:  LSL.W           R12, R6, R0
1B41EC:  SUB.W           R2, R7, #-var_100
1B41F0:  MOV.W           R9, #1
1B41F4:  LDR.W           R0, [R2,#-0xC]
1B41F8:  LDR             R1, [R0]
1B41FA:  CMP             R1, #1
1B41FC:  BLT             loc_1B423E
1B41FE:  LDR.W           R2, [LR]
1B4202:  MOV.W           R3, R12,ASR#16
1B4206:  SUBS            R1, R2, R1
1B4208:  UXTH.W          R2, R12
1B420C:  LDR.W           R0, [R7,#dest]
1B4210:  ADD.W           R6, R0, R1,LSL#2
1B4214:  ADDS            R1, #1
1B4216:  LDR.W           R5, [R6,#0x500]
1B421A:  SXTH            R4, R5
1B421C:  ADD.W           R5, R9, R5,ASR#15
1B4220:  MUL.W           R0, R4, R2
1B4224:  ASRS            R5, R5, #1
1B4226:  SMULBB.W        R4, R4, R3
1B422A:  ADD.W           R0, R4, R0,ASR#16
1B422E:  MLA.W           R0, R5, R12, R0
1B4232:  STR.W           R0, [R6,#0x500]
1B4236:  LDR.W           R0, [LR]
1B423A:  CMP             R1, R0
1B423C:  BLT             loc_1B420C
1B423E:  UXTB.W          R0, R10
1B4242:  LDR.W           R10, [R7,#var_5C]
1B4246:  CMP             R0, #2
1B4248:  MOV.W           LR, #1
1B424C:  BNE             loc_1B429E
1B424E:  LDR.W           R0, [R7,#var_F8]
1B4252:  LDR             R0, [R0]
1B4254:  CBNZ            R0, loc_1B429E
1B4256:  LDR.W           R0, [R7,#var_6C]
1B425A:  LDR.W           R2, [R7,#var_2C]
1B425E:  LDR             R1, [R0]
1B4260:  MOV             R0, #0xFFFFFFFE
1B4264:  SUBS            R0, R0, R2
1B4266:  ADDS            R2, R1, R0
1B4268:  CMP             R2, R1
1B426A:  BGE             loc_1B429E
1B426C:  UXTH.W          R3, R12
1B4270:  MOV.W           R6, R12,ASR#16
1B4274:  LDR.W           R0, [R10,R2,LSL#2]
1B4278:  LDR.W           R10, [R7,#var_5C]
1B427C:  SXTH            R5, R0
1B427E:  ADD.W           R0, LR, R0,ASR#15
1B4282:  MUL.W           R4, R5, R3
1B4286:  ASRS            R0, R0, #1
1B4288:  SMULBB.W        R5, R5, R6
1B428C:  ADD.W           R5, R5, R4,ASR#16
1B4290:  MLA.W           R0, R0, R12, R5
1B4294:  STR.W           R0, [R10,R2,LSL#2]
1B4298:  ADDS            R2, #1
1B429A:  CMP             R2, R1
1B429C:  BLT             loc_1B4274
1B429E:  LDR.W           R0, [R7,#var_48]
1B42A2:  UXTH.W          R1, R12
1B42A6:  MOV             R3, R0
1B42A8:  LDR             R0, [R3]
1B42AA:  SXTH            R2, R0
1B42AC:  MULS            R2, R1
1B42AE:  ASRS            R2, R2, #0x10
1B42B0:  SMLABT.W        R2, R0, R12, R2
1B42B4:  ADD.W           R0, LR, R0,ASR#15
1B42B8:  ASRS            R0, R0, #1
1B42BA:  MLA.W           R0, R0, R12, R2
1B42BE:  STR             R0, [R3]
1B42C0:  LDR.W           R0, [R7,#var_44]
1B42C4:  MOV             R3, R0
1B42C6:  LDR             R0, [R3]
1B42C8:  SXTH            R2, R0
1B42CA:  MULS            R2, R1
1B42CC:  ASRS            R2, R2, #0x10
1B42CE:  SMLABT.W        R2, R0, R12, R2
1B42D2:  ADD.W           R0, LR, R0,ASR#15
1B42D6:  ASRS            R0, R0, #1
1B42D8:  MLA.W           R0, R0, R12, R2
1B42DC:  STR             R0, [R3]
1B42DE:  LDR.W           R4, [R7,#dest]
1B42E2:  ADD.W           R6, R4, #0xF00
1B42E6:  LDM             R6, {R0,R2,R6}
1B42E8:  LDR.W           R3, [R4,#0xF0C]
1B42EC:  SXTH            R5, R0
1B42EE:  MULS            R5, R1
1B42F0:  ASRS            R5, R5, #0x10
1B42F2:  SMLABT.W        R5, R0, R12, R5
1B42F6:  ADD.W           R0, LR, R0,ASR#15
1B42FA:  ASRS            R0, R0, #1
1B42FC:  MLA.W           R0, R0, R12, R5
1B4300:  STR.W           R0, [R4,#0xF00]
1B4304:  SXTH            R0, R2
1B4306:  MULS            R0, R1
1B4308:  ASRS            R0, R0, #0x10
1B430A:  SMLABT.W        R0, R2, R12, R0
1B430E:  ADD.W           R2, LR, R2,ASR#15
1B4312:  ASRS            R2, R2, #1
1B4314:  MLA.W           R0, R2, R12, R0
1B4318:  ADD.W           R2, LR, R6,ASR#15
1B431C:  ASRS            R2, R2, #1
1B431E:  STR.W           R0, [R4,#0xF04]
1B4322:  SXTH            R0, R6
1B4324:  MULS            R0, R1
1B4326:  ASRS            R0, R0, #0x10
1B4328:  SMLABT.W        R0, R6, R12, R0
1B432C:  MLA.W           R0, R2, R12, R0
1B4330:  STR.W           R0, [R4,#0xF08]
1B4334:  LDR.W           R0, [R4,#0xF24]
1B4338:  SXTH            R2, R0
1B433A:  MULS            R2, R1
1B433C:  ASRS            R2, R2, #0x10
1B433E:  SMLABT.W        R2, R0, R12, R2
1B4342:  ADD.W           R0, LR, R0,ASR#15
1B4346:  ASRS            R0, R0, #1
1B4348:  MLA.W           R2, R0, R12, R2
1B434C:  LDR.W           R0, [R4,#0xF20]
1B4350:  SXTH            R6, R0
1B4352:  MULS            R6, R1
1B4354:  ASRS            R6, R6, #0x10
1B4356:  SMLABT.W        R6, R0, R12, R6
1B435A:  ADD.W           R0, LR, R0,ASR#15
1B435E:  ASRS            R0, R0, #1
1B4360:  MLA.W           R5, R0, R12, R6
1B4364:  LDR.W           R0, [R4,#0xF1C]
1B4368:  SXTH            R6, R0
1B436A:  MULS            R6, R1
1B436C:  ASRS            R6, R6, #0x10
1B436E:  SMLABT.W        R6, R0, R12, R6
1B4372:  ADD.W           R0, LR, R0,ASR#15
1B4376:  ASRS            R0, R0, #1
1B4378:  MLA.W           R6, R0, R12, R6
1B437C:  SXTH            R0, R3
1B437E:  MULS            R0, R1
1B4380:  ASRS            R0, R0, #0x10
1B4382:  SMLABT.W        R0, R3, R12, R0
1B4386:  ADD.W           R3, LR, R3,ASR#15
1B438A:  ASRS            R3, R3, #1
1B438C:  MLA.W           R0, R3, R12, R0
1B4390:  STR.W           R0, [R4,#0xF0C]
1B4394:  LDR.W           R0, [R4,#0xF10]
1B4398:  SXTH            R3, R0
1B439A:  MULS            R3, R1
1B439C:  ASRS            R3, R3, #0x10
1B439E:  SMLABT.W        R3, R0, R12, R3
1B43A2:  ADD.W           R0, LR, R0,ASR#15
1B43A6:  ASRS            R0, R0, #1
1B43A8:  MLA.W           R0, R0, R12, R3
1B43AC:  STR.W           R0, [R4,#0xF10]
1B43B0:  LDR.W           R0, [R4,#0xF14]
1B43B4:  SXTH            R3, R0
1B43B6:  MULS            R3, R1
1B43B8:  ASRS            R3, R3, #0x10
1B43BA:  SMLABT.W        R3, R0, R12, R3
1B43BE:  ADD.W           R0, LR, R0,ASR#15
1B43C2:  ASRS            R0, R0, #1
1B43C4:  MLA.W           R0, R0, R12, R3
1B43C8:  STR.W           R0, [R4,#0xF14]
1B43CC:  LDR.W           R0, [R4,#0xF18]
1B43D0:  SXTH            R3, R0
1B43D2:  MULS            R3, R1
1B43D4:  ASRS            R3, R3, #0x10
1B43D6:  SMLABT.W        R3, R0, R12, R3
1B43DA:  ADD.W           R0, LR, R0,ASR#15
1B43DE:  ASRS            R0, R0, #1
1B43E0:  MLA.W           R0, R0, R12, R3
1B43E4:  MOVS            R3, #0
1B43E6:  STR.W           R0, [R4,#0xF18]
1B43EA:  STR.W           R6, [R4,#0xF1C]
1B43EE:  STR.W           R5, [R4,#0xF20]
1B43F2:  STR.W           R2, [R4,#0xF24]
1B43F6:  LDR.W           R0, [R4,#0xF28]
1B43FA:  SXTH            R2, R0
1B43FC:  MULS            R2, R1
1B43FE:  ASRS            R2, R2, #0x10
1B4400:  SMLABT.W        R2, R0, R12, R2
1B4404:  ADD.W           R0, LR, R0,ASR#15
1B4408:  ASRS            R0, R0, #1
1B440A:  MLA.W           R0, R0, R12, R2
1B440E:  STR.W           R0, [R4,#0xF28]
1B4412:  LDR.W           R0, [R4,#0xF2C]
1B4416:  SXTH            R2, R0
1B4418:  MULS            R2, R1
1B441A:  ASRS            R2, R2, #0x10
1B441C:  SMLABT.W        R2, R0, R12, R2
1B4420:  ADD.W           R0, LR, R0,ASR#15
1B4424:  ASRS            R0, R0, #1
1B4426:  MLA.W           R0, R0, R12, R2
1B442A:  STR.W           R0, [R4,#0xF2C]
1B442E:  LDR.W           R0, [R4,#0xF30]
1B4432:  SXTH            R2, R0
1B4434:  MULS            R2, R1
1B4436:  ASRS            R2, R2, #0x10
1B4438:  SMLABT.W        R2, R0, R12, R2
1B443C:  ADD.W           R0, LR, R0,ASR#15
1B4440:  ASRS            R0, R0, #1
1B4442:  MLA.W           R0, R0, R12, R2
1B4446:  STR.W           R0, [R4,#0xF30]
1B444A:  LDR.W           R0, [R4,#0xF34]
1B444E:  SXTH            R2, R0
1B4450:  MULS            R2, R1
1B4452:  ASRS            R2, R2, #0x10
1B4454:  SMLABT.W        R2, R0, R12, R2
1B4458:  ADD.W           R0, LR, R0,ASR#15
1B445C:  ASRS            R0, R0, #1
1B445E:  MLA.W           R0, R0, R12, R2
1B4462:  STR.W           R0, [R4,#0xF34]
1B4466:  LDR.W           R0, [R4,#0xF38]
1B446A:  SXTH            R2, R0
1B446C:  MULS            R2, R1
1B446E:  ASRS            R2, R2, #0x10
1B4470:  SMLABT.W        R2, R0, R12, R2
1B4474:  ADD.W           R0, LR, R0,ASR#15
1B4478:  ASRS            R0, R0, #1
1B447A:  MLA.W           R0, R0, R12, R2
1B447E:  STR.W           R0, [R4,#0xF38]
1B4482:  LDR.W           R0, [R4,#0xF3C]
1B4486:  SXTH            R2, R0
1B4488:  MULS            R2, R1
1B448A:  ASRS            R2, R2, #0x10
1B448C:  SMLABT.W        R2, R0, R12, R2
1B4490:  ADD.W           R0, LR, R0,ASR#15
1B4494:  ASRS            R0, R0, #1
1B4496:  MLA.W           R0, R0, R12, R2
1B449A:  MOV.W           R2, R12,ASR#16
1B449E:  STR.W           R0, [R4,#0xF3C]
1B44A2:  LDR.W           R0, [R8,R3,LSL#2]
1B44A6:  SXTH            R6, R0
1B44A8:  ADD.W           R0, LR, R0,ASR#15
1B44AC:  MUL.W           R5, R6, R1
1B44B0:  ASRS            R0, R0, #1
1B44B2:  SMULBB.W        R6, R6, R2
1B44B6:  ADD.W           R6, R6, R5,ASR#16
1B44BA:  MLA.W           R0, R0, R12, R6
1B44BE:  STR.W           R0, [R8,R3,LSL#2]
1B44C2:  ADDS            R3, #1
1B44C4:  CMP             R3, #0x18
1B44C6:  BNE             loc_1B44A2
1B44C8:  LDR             R0, [R7,#arg_1C]
1B44CA:  MOV.W           R8, #1
1B44CE:  LDR.W           R3, [R7,#var_E0]
1B44D2:  LDR.W           R2, [R7,#var_F4]
1B44D6:  MOV             R1, R0
1B44D8:  LDR.W           R0, [R1,R3,LSL#2]
1B44DC:  STR             R0, [R2]
1B44DE:  LDR.W           R0, [R7,#var_E4]
1B44E2:  LDR.W           R9, [R1,R3,LSL#2]
1B44E6:  LDR             R2, [R0]
1B44E8:  CMP             R2, #1
1B44EA:  BLT.W           loc_1B3E74
1B44EE:  LDR.W           R5, [R7,#var_E0]
1B44F2:  SUB.W           R4, R7, #-var_100
1B44F6:  LDR             R3, [R7,#arg_8]
1B44F8:  LDR.W           R6, [R7,#var_40]
1B44FC:  ADD.W           R0, R5, R5,LSL#2
1B4500:  ADD.W           R1, R5, R5,LSL#1
1B4504:  ADD.W           R0, R3, R0,LSL#1
1B4508:  LDR             R3, [R7,#arg_C]
1B450A:  STR.W           R0, [R7,#var_C8]
1B450E:  MOV.W           R12, R6,ASR#2
1B4512:  ADD.W           R1, R3, R1,LSL#4
1B4516:  STR.W           R1, [R7,#var_40]
1B451A:  LDR             R1, [R7,#arg_18]
1B451C:  ORR.W           LR, R12, R6,LSL#15
1B4520:  LDR             R3, [R7,#arg_14]
1B4522:  LDR.W           R6, [R1,R5,LSL#2]
1B4526:  LDR.W           R1, [R4,#-8]
1B452A:  SUB.W           R4, R7, #-var_100
1B452E:  LDRSH.W         R3, [R3,R5,LSL#2]
1B4532:  LDR.W           R11, [R1]
1B4536:  LDR.W           R1, [R4,#-0x10]
1B453A:  LDR.W           R4, [R7,#var_70]
1B453E:  LDR             R0, [R1]
1B4540:  RSB.W           R5, R4, #2
1B4544:  LDR.W           R1, [R7,#var_6C]
1B4548:  LDR             R1, [R1]
1B454A:  STR.W           R3, [R7,#var_7C]
1B454E:  ADD             R1, R5
1B4550:  LDR.W           R3, [R7,#dest]
1B4554:  RSB.W           R5, R4, #1
1B4558:  LDR.W           R4, [R7,#var_3C]
1B455C:  ADD.W           R1, R10, R1,LSL#2
1B4560:  STR.W           R1, [R7,#var_80]
1B4564:  ADD.W           R1, R8, R9,ASR#21
1B4568:  MOV.W           R10, #0
1B456C:  ASRS            R1, R1, #1
1B456E:  STR.W           R1, [R7,#var_84]
1B4572:  SUBS            R1, R0, #1
1B4574:  STR.W           R1, [R7,#var_88]
1B4578:  ADD.W           R1, R3, R1,LSL#2
1B457C:  ADD.W           R1, R1, #0x1080
1B4580:  STR.W           R1, [R7,#var_8C]
1B4584:  LDR.W           R1, [R7,#var_34]
1B4588:  LDR             R1, [R1]
1B458A:  ADD             R1, R5
1B458C:  ADD.W           R1, R3, R1,LSL#2
1B4590:  ADD.W           R1, R1, #0x500
1B4594:  STR.W           R1, [R7,#var_58]
1B4598:  LDR             R1, [R4]
1B459A:  SBFX.W          R3, R9, #6, #0x10
1B459E:  STR.W           R3, [R7,#var_90]
1B45A2:  MOV.W           R3, LR,ASR#16
1B45A6:  STR.W           R0, [R7,#var_78]
1B45AA:  ASRS            R0, R0, #1
1B45AC:  STR.W           R3, [R7,#var_B8]
1B45B0:  SXTH.W          R3, R12
1B45B4:  STR.W           R0, [R7,#var_9C]
1B45B8:  MOV.W           R0, R11,ASR#1
1B45BC:  SUB.W           LR, R7, #-var_100
1B45C0:  STR.W           R3, [R7,#var_BC]
1B45C4:  ASRS            R3, R6, #0x10
1B45C6:  STR.W           R0, [R7,#var_A0]
1B45CA:  LDR.W           R0, [R7,#var_F0]
1B45CE:  STR.W           R3, [R7,#var_94]
1B45D2:  SXTH            R3, R6
1B45D4:  STR.W           R11, [R7,#var_74]
1B45D8:  LDR.W           R11, [LR,#-0x14]
1B45DC:  STR.W           R3, [R7,#var_98]
1B45E0:  LDRB            R0, [R0,#0x1D]
1B45E2:  STR.W           R0, [R7,#var_A4]
1B45E6:  STR.W           R2, [R7,#var_60]
1B45EA:  MOVW            R0, #0x636B
1B45EE:  MOVW            R2, #0x8435
1B45F2:  MOVT            R0, #0x3619
1B45F6:  MOVT            R2, #0xBB3
1B45FA:  MLA.W           R0, R1, R2, R0
1B45FE:  STR             R0, [R4]
1B4600:  LDR.W           R5, [R7,#var_54]
1B4604:  LDR.W           R3, [R11]
1B4608:  LDR.W           R2, [R7,#var_A0]
1B460C:  LDRSH.W         R0, [R5]
1B4610:  LDR.W           R4, [R11,#-4]
1B4614:  LDRSH.W         R1, [R5,#2]
1B4618:  SMLABT.W        R2, R0, R3, R2
1B461C:  UXTH            R3, R3
1B461E:  MULS            R0, R3
1B4620:  LDRSH.W         R6, [R5,#4]
1B4624:  LDR.W           R3, [R11,#-0xC]
1B4628:  LDRSH.W         LR, [R5,#6]
1B462C:  ADD.W           R0, R2, R0,ASR#16
1B4630:  UXTH            R2, R4
1B4632:  SMLATB.W        R0, R4, R1, R0
1B4636:  LDR.W           R4, [R11,#-0x14]
1B463A:  MULS            R1, R2
1B463C:  ADD.W           R0, R0, R1,ASR#16
1B4640:  LDR.W           R1, [R11,#-8]
1B4644:  UXTH            R2, R1
1B4646:  SMLATB.W        R0, R1, R6, R0
1B464A:  MULS            R2, R6
1B464C:  UXTH            R1, R3
1B464E:  LDR.W           R6, [R11,#-0x10]
1B4652:  MUL.W           R1, R1, LR
1B4656:  ADD.W           R0, R0, R2,ASR#16
1B465A:  LDRSH.W         R2, [R5,#8]
1B465E:  SMLATB.W        R0, R3, LR, R0
1B4662:  UXTH            R3, R6
1B4664:  MULS            R3, R2
1B4666:  ADD.W           R0, R0, R1,ASR#16
1B466A:  LDRSH.W         R1, [R5,#0xA]
1B466E:  SMLATB.W        R0, R6, R2, R0
1B4672:  UXTH            R2, R4
1B4674:  MULS            R2, R1
1B4676:  ADD.W           R0, R0, R3,ASR#16
1B467A:  LDRD.W          LR, R3, [R11,#-0x24]
1B467E:  SMLATB.W        R0, R4, R1, R0
1B4682:  LDRD.W          R6, R1, [R11,#-0x1C]
1B4686:  LDRSH.W         R4, [R5,#0xC]
1B468A:  ADD.W           R0, R0, R2,ASR#16
1B468E:  UXTH            R2, R1
1B4690:  MULS            R2, R4
1B4692:  SMLATB.W        R0, R1, R4, R0
1B4696:  LDRSH.W         R1, [R5,#0xE]
1B469A:  UXTH            R4, R3
1B469C:  ADD.W           R0, R0, R2,ASR#16
1B46A0:  LDRSH.W         R2, [R5,#0x10]
1B46A4:  SMLATB.W        R0, R6, R1, R0
1B46A8:  UXTH            R6, R6
1B46AA:  MULS            R6, R1
1B46AC:  LDRSH.W         R5, [R5,#0x12]
1B46B0:  MULS            R4, R2
1B46B2:  ADD.W           R0, R0, R6,ASR#16
1B46B6:  SMLATB.W        R0, R3, R2, R0
1B46BA:  UXTH.W          R2, LR
1B46BE:  MULS            R2, R5
1B46C0:  ADD.W           R0, R0, R4,ASR#16
1B46C4:  SMLATB.W        R0, LR, R5, R0
1B46C8:  ADD.W           R0, R0, R2,ASR#16
1B46CC:  STR.W           R0, [R7,#var_28]
1B46D0:  LDR.W           R0, [R7,#var_74]
1B46D4:  CMP             R0, #0x10
1B46D6:  BNE             loc_1B476C
1B46D8:  LDR.W           R12, [R7,#var_54]
1B46DC:  MOV             LR, R10
1B46DE:  LDR.W           R0, [R11,#-0x3C]
1B46E2:  LDRSH.W         R1, [R12,#0x14]
1B46E6:  LDRSH.W         R2, [R12,#0x16]
1B46EA:  LDRSH.W         R6, [R12,#0x18]
1B46EE:  LDRSH.W         R9, [R12,#0x1A]
1B46F2:  STR.W           R0, [R7,#var_2C]
1B46F6:  LDR.W           R0, [R11,#-0x38]
1B46FA:  STR.W           R0, [R7,#var_B4]
1B46FE:  LDRD.W          R8, R0, [R11,#-0x34]
1B4702:  LDRD.W          R4, R5, [R11,#-0x2C]
1B4706:  LDR.W           R3, [R7,#var_28]
1B470A:  SMLABT.W        R10, R1, R5, R3
1B470E:  UXTH            R5, R5
1B4710:  MULS            R1, R5
1B4712:  UXTH.W          R3, R8
1B4716:  MUL.W           R3, R3, R9
1B471A:  ADD.W           R1, R10, R1,ASR#16
1B471E:  MOV             R10, LR
1B4720:  SMLATB.W        R1, R4, R2, R1
1B4724:  UXTH            R4, R4
1B4726:  MULS            R2, R4
1B4728:  LDRSH.W         R4, [R12,#0x1E]
1B472C:  ADD.W           R1, R1, R2,ASR#16
1B4730:  SMLATB.W        R1, R0, R6, R1
1B4734:  UXTH            R0, R0
1B4736:  MULS            R0, R6
1B4738:  LDR.W           R6, [R7,#var_B4]
1B473C:  UXTH            R2, R6
1B473E:  ADD.W           R0, R1, R0,ASR#16
1B4742:  LDRSH.W         R1, [R12,#0x1C]
1B4746:  SMLATB.W        R0, R8, R9, R0
1B474A:  MULS            R2, R1
1B474C:  ADD.W           R0, R0, R3,ASR#16
1B4750:  LDR.W           R3, [R7,#var_2C]
1B4754:  SMLATB.W        R0, R6, R1, R0
1B4758:  UXTH            R1, R3
1B475A:  MULS            R1, R4
1B475C:  ADD.W           R0, R0, R2,ASR#16
1B4760:  SMLATB.W        R0, R3, R4, R0
1B4764:  ADD.W           R0, R0, R1,ASR#16
1B4768:  STR.W           R0, [R7,#var_28]
1B476C:  LDR.W           R0, [R7,#var_A4]
1B4770:  STR.W           R10, [R7,#var_4C]
1B4774:  CMP             R0, #2
1B4776:  BNE             loc_1B47F0
1B4778:  LDR.W           R10, [R7,#var_80]
1B477C:  LDRD.W          LR, R8, [R10,#-0x10]
1B4780:  LDRD.W          R12, R3, [R10,#-8]
1B4784:  LDR.W           R0, [R7,#var_C8]
1B4788:  LDR.W           R6, [R10]
1B478C:  ADD.W           R10, R10, #4
1B4790:  MOV             R4, R0
1B4792:  LDRSH.W         R5, [R4]
1B4796:  UXTH            R1, R6
1B4798:  LDRSH.W         R2, [R4,#2]
1B479C:  LDRSH.W         R0, [R4,#4]
1B47A0:  MULS            R1, R5
1B47A2:  LDRSH.W         R9, [R4,#6]
1B47A6:  ASRS            R1, R1, #0x10
1B47A8:  SMLABT.W        R1, R5, R6, R1
1B47AC:  SMLATB.W        R1, R3, R2, R1
1B47B0:  UXTH            R3, R3
1B47B2:  MULS            R3, R2
1B47B4:  UXTH.W          R2, R12
1B47B8:  ADD.W           R1, R1, R3,ASR#16
1B47BC:  UXTH.W          R3, LR
1B47C0:  SMLATB.W        R1, R12, R0, R1
1B47C4:  MULS            R0, R2
1B47C6:  LDRSH.W         R2, [R4,#8]
1B47CA:  STR.W           R10, [R7,#var_80]
1B47CE:  MULS            R3, R2
1B47D0:  ADD.W           R0, R1, R0,ASR#16
1B47D4:  UXTH.W          R1, R8
1B47D8:  MUL.W           R1, R1, R9
1B47DC:  SMLATB.W        R0, R8, R9, R0
1B47E0:  ADD.W           R0, R0, R1,ASR#16
1B47E4:  SMLATB.W        R0, LR, R2, R0
1B47E8:  ADD.W           R0, R0, R3,ASR#16
1B47EC:  ADDS            R0, #2
1B47EE:  B               loc_1B47F2
1B47F0:  MOVS            R0, #0
1B47F2:  STR.W           R0, [R7,#var_2C]
1B47F6:  LDR.W           R0, [R7,#var_44]
1B47FA:  LDR.W           R1, [R7,#var_A8]
1B47FE:  LDR             R0, [R0]
1B4800:  LDR             R5, [R1]
1B4802:  STR             R0, [R1]
1B4804:  LDR.W           R1, [R7,#var_40]
1B4808:  UXTH            R2, R0
1B480A:  LDR.W           R3, [R7,#var_9C]
1B480E:  LDR.W           R12, [R7,#var_78]
1B4812:  LDRSH.W         R1, [R1]
1B4816:  CMP.W           R12, #3
1B481A:  MUL.W           R2, R1, R2
1B481E:  SMLABT.W        R0, R1, R0, R3
1B4822:  ADD.W           LR, R0, R2,ASR#16
1B4826:  BLT             loc_1B4874
1B4828:  LDR.W           R0, [R7,#var_CC]
1B482C:  MOVS            R4, #0
1B482E:  LDR.W           R10, [R7,#var_C0]
1B4832:  ADD.W           R3, R10, R4,LSL#1
1B4836:  LDR.W           R2, [R0,#-4]
1B483A:  LDR.W           R8, [R0]
1B483E:  STR.W           R5, [R0,#-4]
1B4842:  LDRSH.W         R1, [R3,#2]
1B4846:  UXTH            R6, R2
1B4848:  STR             R2, [R0]
1B484A:  ADDS            R0, #8
1B484C:  LDRSH.W         R3, [R3,#4]
1B4850:  MUL.W           R9, R6, R3
1B4854:  SMLABT.W        R6, R1, R5, LR
1B4858:  UXTH            R5, R5
1B485A:  MULS            R1, R5
1B485C:  MOV             R5, R8
1B485E:  ADD.W           R1, R6, R1,ASR#16
1B4862:  SMLATB.W        R1, R2, R3, R1
1B4866:  ADD.W           LR, R1, R9,ASR#16
1B486A:  ADDS            R1, R4, #4
1B486C:  ADDS            R4, #2
1B486E:  CMP             R1, R12
1B4870:  BLT             loc_1B4832
1B4872:  B               loc_1B4876
1B4874:  MOV             R8, R5
1B4876:  LDR.W           R0, [R7,#var_8C]
1B487A:  STR.W           R8, [R0]
1B487E:  LDR.W           R0, [R7,#var_34]
1B4882:  LDR.W           R1, [R7,#var_40]
1B4886:  LDR.W           R2, [R7,#var_88]
1B488A:  LDR             R0, [R0]
1B488C:  LDR.W           R3, [R7,#var_48]
1B4890:  LDRSH.W         R1, [R1,R2,LSL#1]
1B4894:  LDR.W           R2, [R7,#dest]
1B4898:  LDR.W           R10, [R7,#var_98]
1B489C:  ADD.W           R0, R2, R0,LSL#2
1B48A0:  UXTH.W          R2, R8
1B48A4:  LDR             R3, [R3]
1B48A6:  MUL.W           R12, R2, R1
1B48AA:  LDR.W           R0, [R0,#0x4FC]
1B48AE:  LDR.W           R2, [R7,#var_7C]
1B48B2:  SMLABT.W        R1, R1, R8, LR
1B48B6:  UXTH            R5, R3
1B48B8:  UXTH            R4, R0
1B48BA:  MUL.W           R9, R4, R10
1B48BE:  LDR.W           R4, [R7,#var_94]
1B48C2:  MUL.W           R6, R5, R2
1B48C6:  MULS            R5, R4
1B48C8:  ASRS            R6, R6, #0x10
1B48CA:  ASRS            R5, R5, #0x10
1B48CC:  SMLATB.W        R5, R3, R4, R5
1B48D0:  SMLATB.W        R0, R0, R10, R5
1B48D4:  SMLATB.W        R3, R3, R2, R6
1B48D8:  ADD.W           LR, R0, R9,ASR#16
1B48DC:  ADD.W           R0, R1, R12,ASR#16
1B48E0:  LDR.W           R1, [R7,#var_70]
1B48E4:  ADD.W           R9, R3, R0,LSL#1
1B48E8:  LDR.W           R0, [R7,#var_28]
1B48EC:  CMP             R1, #1
1B48EE:  RSB.W           R0, R9, R0,LSL#2
1B48F2:  SUB.W           R0, R0, LR
1B48F6:  BLT             loc_1B493C
1B48F8:  LDR.W           R6, [R7,#var_58]
1B48FC:  LDRD.W          R1, R2, [R6,#-8]
1B4900:  LDR             R3, [R6]
1B4902:  ADDS            R6, #4
1B4904:  LDR.W           R4, [R7,#var_BC]
1B4908:  ADD             R1, R3
1B490A:  LDR.W           R5, [R7,#var_B8]
1B490E:  STR.W           R6, [R7,#var_58]
1B4912:  UXTH            R3, R1
1B4914:  MUL.W           R12, R3, R4
1B4918:  SMULTB.W        R3, R2, R5
1B491C:  UXTH            R2, R2
1B491E:  MULS            R2, R5
1B4920:  SMLATB.W        R1, R1, R4, R3
1B4924:  ADD.W           R1, R1, R12,ASR#16
1B4928:  ADD.W           R1, R1, R2,ASR#16
1B492C:  LDR.W           R2, [R7,#var_2C]
1B4930:  ADD.W           R0, R2, R0,LSL#1
1B4934:  SUB.W           R0, R0, R1,LSL#1
1B4938:  ASRS            R0, R0, #2
1B493A:  B               loc_1B493E
1B493C:  ASRS            R0, R0, #1
1B493E:  LDR.W           R10, [R7,#var_4C]
1B4942:  ADDS            R0, #1
1B4944:  LDR.W           R3, [R7,#var_AC]
1B4948:  LDRD.W          R2, R1, [R7,#var_3C]
1B494C:  LDR.W           R1, [R1,R10,LSL#2]
1B4950:  LDR             R2, [R2]
1B4952:  SUB.W           R8, R1, R0,ASR#1
1B4956:  MOVW            R0, #0x8000
1B495A:  LDR             R1, [R7,#arg_24]
1B495C:  MOVT            R0, #0xFFFF
1B4960:  CMP             R2, #0
1B4962:  IT LT
1B4964:  RSBLT.W         R8, R8, #0
1B4968:  ADD.W           R0, R0, #0x400
1B496C:  CMP             R8, R0
1B496E:  IT LE
1B4970:  MOVLE           R8, R0
1B4972:  CMP.W           R8, #0x7800
1B4976:  IT GE
1B4978:  MOVGE.W         R8, #0x7800
1B497C:  LDR.W           R0, [R7,#var_50]
1B4980:  CMP.W           R1, #0x800
1B4984:  SUB.W           R0, R8, R0
1B4988:  BLE             loc_1B499C
1B498A:  CMP             R0, R3
1B498C:  BLE             loc_1B4992
1B498E:  SUBS            R0, R0, R3
1B4990:  B               loc_1B499C
1B4992:  LDR.W           R1, [R7,#var_DC]
1B4996:  CMP             R0, R1
1B4998:  BGE             loc_1B49B4
1B499A:  ADD             R0, R3
1B499C:  ASRS            R5, R0, #0xA
1B499E:  CMP             R5, #1
1B49A0:  BLT             loc_1B49B6
1B49A2:  LDR.W           R0, [R7,#var_C4]
1B49A6:  ADD.W           R1, R0, R5,LSL#10
1B49AA:  ADD.W           R0, R1, #0x400
1B49AE:  MOV             R6, R1
1B49B0:  MOV             R4, R0
1B49B2:  B               loc_1B49F4
1B49B4:  ASRS            R5, R0, #0x1F
1B49B6:  LDR.W           R0, [R7,#var_D0]
1B49BA:  CMP             R5, #0
1B49BC:  LDR.W           R1, [R7,#var_50]
1B49C0:  MOV             R3, R0
1B49C2:  MOV             R2, R1
1B49C4:  MOV             R4, R3
1B49C6:  MOV             R6, R2
1B49C8:  BEQ             loc_1B49F4
1B49CA:  ADDS            R0, R5, #1
1B49CC:  LDR.W           R1, [R7,#var_D8]
1B49D0:  LDR.W           R0, [R7,#var_50]
1B49D4:  LDR.W           R6, [R7,#var_D4]
1B49D8:  MOV             R2, R0
1B49DA:  MOV             R4, R2
1B49DC:  BEQ             loc_1B49F4
1B49DE:  MOVS            R0, #0x50 ; 'P'
1B49E0:  LDR.W           R1, [R7,#var_50]
1B49E4:  ORR.W           R0, R0, R5,LSL#10
1B49E8:  ADD             R1, R0
1B49EA:  RSB.W           R0, R1, #0xFC00
1B49EE:  NEGS            R6, R1
1B49F0:  ADD.W           R4, R1, #0x400
1B49F4:  LDR.W           R5, [R7,#var_B0]
1B49F8:  SXTH            R3, R6
1B49FA:  SUB.W           R2, R8, R1
1B49FE:  SXTH            R0, R0
1B4A00:  MOV.W           R12, #1
1B4A04:  SMULBB.W        R3, R3, R5
1B4A08:  SMLABB.W        R2, R2, R2, R3
1B4A0C:  SUB.W           R3, R8, R4
1B4A10:  SMULBB.W        R0, R0, R5
1B4A14:  MOV.W           R8, #1
1B4A18:  SMLABB.W        R0, R3, R3, R0
1B4A1C:  CMP             R0, R2
1B4A1E:  IT LT
1B4A20:  MOVLT           R1, R4
1B4A22:  LDR.W           R5, [R7,#var_64]
1B4A26:  ADD.W           R0, R12, R1,LSR#9
1B4A2A:  LSLS            R2, R1, #4
1B4A2C:  LSRS            R0, R0, #1
1B4A2E:  STRB.W          R0, [R5,R10]
1B4A32:  LDR.W           R4, [R7,#var_3C]
1B4A36:  LDR             R0, [R4]
1B4A38:  CMP             R0, #0
1B4A3A:  MOV.W           R0, #0
1B4A3E:  IT LT
1B4A40:  SUBLT.W         R2, R0, R1,LSL#4
1B4A44:  LDR.W           R0, [R7,#var_2C]
1B4A48:  LDR.W           R1, [R7,#var_28]
1B4A4C:  LDR.W           R6, [R7,#var_90]
1B4A50:  ADD.W           R0, R2, R0,LSL#1
1B4A54:  LDR.W           R2, [R7,#var_84]
1B4A58:  ADD.W           R1, R0, R1,LSL#4
1B4A5C:  LSLS            R0, R0, #1
1B4A5E:  UXTH            R3, R1
1B4A60:  MULS            R2, R1
1B4A62:  MULS            R3, R6
1B4A64:  SMLABT.W        R2, R6, R1, R2
1B4A68:  MOV             R6, #0xFFFF8000
1B4A70:  ADD.W           R2, R2, R3,ASR#16
1B4A74:  ADD.W           R2, R12, R2,ASR#7
1B4A78:  ASRS            R3, R2, #1
1B4A7A:  CMP             R3, R6
1B4A7C:  MOV             R3, R6
1B4A7E:  IT GT
1B4A80:  ASRGT           R3, R2, #1
1B4A82:  MOVW            R2, #0x7FFF
1B4A86:  CMP             R3, R2
1B4A88:  IT GE
1B4A8A:  MOVGE           R3, R2
1B4A8C:  LDR.W           R2, [R7,#var_68]
1B4A90:  STRH.W          R3, [R2,R10,LSL#1]
1B4A94:  STR.W           R1, [R11,#4]!
1B4A98:  LDR.W           R2, [R7,#var_38]
1B4A9C:  LDR.W           R2, [R2,R10,LSL#2]
1B4AA0:  SUB.W           R1, R1, R2,LSL#4
1B4AA4:  LDR.W           R2, [R7,#var_44]
1B4AA8:  STR             R1, [R2]
1B4AAA:  SUB.W           R1, R1, R9,LSL#2
1B4AAE:  LDR.W           R2, [R7,#var_48]
1B4AB2:  STR             R1, [R2]
1B4AB4:  SUB.W           R1, R1, LR,LSL#2
1B4AB8:  LDR.W           R6, [R7,#var_34]
1B4ABC:  LDR.W           R3, [R7,#dest]
1B4AC0:  LDR             R2, [R6]
1B4AC2:  ADD.W           R2, R3, R2,LSL#2
1B4AC6:  STR.W           R1, [R2,#0x500]
1B4ACA:  LDR.W           R1, [R7,#var_6C]
1B4ACE:  LDR.W           R2, [R7,#var_5C]
1B4AD2:  MOV             R3, R1
1B4AD4:  LDR             R1, [R3]
1B4AD6:  STR.W           R0, [R2,R1,LSL#2]
1B4ADA:  LDR             R0, [R6]
1B4ADC:  ADDS            R0, #1
1B4ADE:  STR             R0, [R6]
1B4AE0:  ADDS            R0, R1, #1
1B4AE2:  STR             R0, [R3]
1B4AE4:  LDRSB.W         R0, [R5,R10]
1B4AE8:  ADD.W           R10, R10, #1
1B4AEC:  LDR             R1, [R4]
1B4AEE:  ADD             R1, R0
1B4AF0:  STR             R1, [R4]
1B4AF2:  LDR.W           R2, [R7,#var_60]
1B4AF6:  CMP             R10, R2
1B4AF8:  BNE.W           loc_1B45EA
1B4AFC:  B.W             loc_1B3E74
1B4B00:  SUB.W           R0, R7, #-var_100
1B4B04:  LDR.W           R5, [R0,#-0xC]
1B4B08:  SUB.W           R0, R7, #-var_100
1B4B0C:  LDR.W           R4, [R0,#-0x24]
1B4B10:  SUB.W           R0, R7, #-var_100
1B4B14:  LDR.W           LR, [R5]
1B4B18:  LDR.W           R2, [R0,#-0x28]
1B4B1C:  LDR.W           R8, [R4]
1B4B20:  B               loc_1B4B2A
1B4B22:  SUB.W           R0, R7, #-var_100
1B4B26:  LDR.W           R4, [R0,#-0x24]
1B4B2A:  LDR             R0, [R7,#arg_20]
1B4B2C:  ADD.W           R0, R0, R6,LSL#2
1B4B30:  LDR.W           R0, [R0,#-4]
1B4B34:  STR             R0, [R2]
1B4B36:  MOV.W           R2, LR,LSL#1; n
1B4B3A:  LDR.W           R6, [R7,#dest]
1B4B3E:  ADD.W           R1, R6, R8,LSL#1; src
1B4B42:  MOV             R0, R6; dest
1B4B44:  BLX             j_memmove
1B4B48:  LDR             R1, [R4]
1B4B4A:  ADD.W           R0, R6, #0x500; dest
1B4B4E:  LDR             R2, [R5]
1B4B50:  ADD.W           R1, R0, R1,LSL#2; src
1B4B54:  LSLS            R2, R2, #2; n
1B4B56:  BLX             j_memmove
1B4B5A:  LDR             R0, =(__stack_chk_guard_ptr - 0x1B4B64)
1B4B5C:  LDR.W           R1, [R7,#var_24]
1B4B60:  ADD             R0, PC; __stack_chk_guard_ptr
1B4B62:  LDR             R0, [R0]; __stack_chk_guard
1B4B64:  LDR             R0, [R0]
1B4B66:  SUBS            R0, R0, R1
1B4B68:  ITTTT EQ
1B4B6A:  SUBEQ.W         R4, R7, #-var_1C
1B4B6E:  MOVEQ           SP, R4
1B4B70:  POPEQ.W         {R8-R11}
1B4B74:  POPEQ           {R4-R7,PC}
1B4B76:  BLX             __stack_chk_fail
