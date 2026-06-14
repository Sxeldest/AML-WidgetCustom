; =========================================================
; Game Engine Function: sub_B3BF0
; Address            : 0xB3BF0 - 0xB4518
; =========================================================

B3BF0:  PUSH            {R4-R7,LR}
B3BF2:  ADD             R7, SP, #0xC
B3BF4:  PUSH.W          {R8-R11}
B3BF8:  SUB             SP, SP, #0xD4
B3BFA:  MOV             R6, R0
B3BFC:  LDR.W           R0, =(__stack_chk_guard_ptr - 0xB3C0A)
B3C00:  STR.W           R2, [R7,#var_BC]
B3C04:  MOVS            R2, #7
B3C06:  ADD             R0, PC; __stack_chk_guard_ptr
B3C08:  STR.W           R3, [R7,#var_68]
B3C0C:  STR.W           R1, [R7,#var_DC]
B3C10:  LDR             R0, [R0]; __stack_chk_guard
B3C12:  LDR             R0, [R0]
B3C14:  STR.W           R0, [R7,#var_24]
B3C18:  LDR.W           R0, [R6,#0x918]
B3C1C:  LDR.W           R1, [R6,#0x920]
B3C20:  ADD             R0, R1
B3C22:  ADD.W           R0, R2, R0,LSL#2
B3C26:  BIC.W           R0, R0, #7
B3C2A:  SUB.W           R3, SP, R0
B3C2E:  ADD.W           R0, R2, R1,LSL#1
B3C32:  BIC.W           R0, R0, #7
B3C36:  STR.W           R3, [R7,#var_CC]
B3C3A:  MOV             SP, R3
B3C3C:  SUB.W           R0, SP, R0
B3C40:  STR.W           R0, [R7,#var_64]
B3C44:  MOV             SP, R0
B3C46:  MOVW            R0, #0x1094
B3C4A:  LDR             R0, [R6,R0]
B3C4C:  ASRS            R0, R0, #6
B3C4E:  STR.W           R0, [R7,#var_50]
B3C52:  MOVW            R0, #0x1098
B3C56:  LDR             R1, [R6,R0]
B3C58:  ADD             R0, R6
B3C5A:  STR.W           R1, [R7,#var_F0]
B3C5E:  ASRS            R1, R1, #6
B3C60:  STR.W           R1, [R7,#var_EC]
B3C64:  STR.W           R1, [R7,#var_4C]
B3C68:  MOVW            R1, #0x105A
B3C6C:  ADDS            R4, R6, R1
B3C6E:  LDR.W           R1, [R6,#0x948]
B3C72:  STR.W           R0, [R7,#var_6C]
B3C76:  CBZ             R1, loc_B3C8A
B3C78:  MOVS            R0, #0
B3C7A:  STR             R0, [R4,#0x1C]
B3C7C:  STR             R0, [R4,#0x18]
B3C7E:  STR             R0, [R4,#0x14]
B3C80:  STR             R0, [R4,#0x10]
B3C82:  STR             R0, [R4,#0xC]
B3C84:  STR             R0, [R4,#8]
B3C86:  STR             R0, [R4,#4]
B3C88:  STR             R0, [R4]
B3C8A:  LDR.W           R0, [R6,#0x914]
B3C8E:  LDR.W           R1, [R6,#0x91C]
B3C92:  SUB             SP, SP, #0x10
B3C94:  SUB.W           R2, R7, #-var_50
B3C98:  ADDS            R3, R6, #4
B3C9A:  STR.W           R3, [R7,#var_7C]
B3C9E:  STRD.W          R3, R2, [SP,#0x100+var_100]
B3CA2:  SUB.W           R2, R7, #-var_60
B3CA6:  STRD.W          R1, R0, [SP,#0x100+var_F8]
B3CAA:  SUB.W           R0, R7, #-var_5C
B3CAE:  SUB.W           R1, R7, #-var_54
B3CB2:  SUB.W           R3, R7, #-var_58
B3CB6:  BL              sub_B46A0
B3CBA:  ADD             SP, SP, #0x10
B3CBC:  MOVW            R0, #0x1084
B3CC0:  MOVW            R2, #0xFD71
B3CC4:  LDRH            R0, [R6,R0]
B3CC6:  STR.W           R0, [R7,#var_84]
B3CCA:  MOVW            R0, #0x10A4
B3CCE:  LDR.W           R9, [R7,#var_54]
B3CD2:  LDR             R0, [R6,R0]
B3CD4:  STR.W           R0, [R7,#var_74]
B3CD8:  MOV.W           R0, #0x10A0
B3CDC:  LDR             R5, [R6,R0]
B3CDE:  MOV.W           R0, #0x1040
B3CE2:  LDR.W           R10, [R6,R0]
B3CE6:  MOVW            R0, #0x1044
B3CEA:  LDR             R0, [R6,R0]
B3CEC:  STR.W           R0, [R7,#var_70]
B3CF0:  LDR.W           R1, [R6,#0x924]
B3CF4:  LDR.W           R0, [R7,#var_58]
B3CF8:  STR.W           R0, [R7,#var_78]
B3CFC:  MOV             R0, R4
B3CFE:  STR.W           R6, [R7,#var_A0]
B3D02:  LDRD.W          R11, R8, [R7,#var_60]
B3D06:  BLX             j_silk_bwexpander
B3D0A:  LDR.W           R0, [R7,#var_A0]
B3D0E:  MOV             R1, R4; src
B3D10:  LDR.W           R6, [R0,#0x924]
B3D14:  SUB.W           R0, R7, #-dest; dest
B3D18:  LSLS            R2, R6, #1; n
B3D1A:  BLX             j_memcpy
B3D1E:  LDR.W           R1, [R7,#var_78]
B3D22:  ASR.W           R0, R11, R9
B3D26:  MOV.W           R11, #1
B3D2A:  ASR.W           R1, R8, R1
B3D2E:  CMP             R1, R0
B3D30:  LDR.W           R8, [R7,#var_A0]
B3D34:  IT LT
B3D36:  SUBLT           R5, #1
B3D38:  LDR.W           R0, [R7,#var_74]
B3D3C:  ADR.W           R1, dword_B4520
B3D40:  MULS            R0, R5
B3D42:  SUBS            R0, #0x80
B3D44:  CMP             R0, #0
B3D46:  IT LE
B3D48:  MOVLE           R0, #0
B3D4A:  LDR.W           R2, [R7,#var_70]
B3D4E:  STR.W           R0, [R7,#var_74]
B3D52:  ADR.W           R0, dword_B451C
B3D56:  CMP             R2, #2
B3D58:  IT NE
B3D5A:  MOVNE           R1, R0
B3D5C:  CMP.W           R10, #1
B3D60:  IT GE
B3D62:  MOVGE           R10, R11
B3D64:  MOVW            R0, #0x1050
B3D68:  ADD.W           R3, R8, R0
B3D6C:  STR.W           R10, [R7,#var_70]
B3D70:  MOV.W           R0, #0x1040
B3D74:  LDRSH.W         R5, [R1,R10,LSL#1]
B3D78:  LDR.W           R0, [R8,R0]
B3D7C:  STR.W           R3, [R7,#var_D0]
B3D80:  CBZ             R0, loc_B3D88
B3D82:  STR.W           R5, [R7,#var_78]
B3D86:  B               loc_B3E22
B3D88:  MOVW            R0, #0x1044
B3D8C:  ADD             R0, R8
B3D8E:  LDR             R0, [R0]
B3D90:  CMP             R0, #2
B3D92:  BNE             loc_B3DE8
B3D94:  STR.W           R5, [R7,#var_78]
B3D98:  MOVW            R1, #0x1052
B3D9C:  LDRH            R3, [R3]
B3D9E:  MOVW            R5, #0x1054
B3DA2:  LDRH.W          R1, [R8,R1]
B3DA6:  MOVW            R0, #0x1056
B3DAA:  RSB.W           R3, R3, #0x4000
B3DAE:  LDRH.W          R5, [R8,R5]
B3DB2:  SUBS            R1, R3, R1
B3DB4:  LDRH.W          R0, [R8,R0]
B3DB8:  SUBS            R1, R1, R5
B3DBA:  MOVW            R2, #0x1058
B3DBE:  SUBS            R0, R1, R0
B3DC0:  LDRH.W          R2, [R8,R2]
B3DC4:  MOV             R4, R6
B3DC6:  UXTH            R0, R0
B3DC8:  MOVW            R6, #0x1090
B3DCC:  SUBS            R0, R0, R2
B3DCE:  LDRSH.W         R6, [R8,R6]
B3DD2:  MOVW            R2, #0xCCD
B3DD6:  SXTH            R1, R0
B3DD8:  CMP             R1, R2
B3DDA:  IT GT
B3DDC:  UXTHGT          R2, R0
B3DDE:  MUL.W           R0, R2, R6
B3DE2:  MOV             R6, R4
B3DE4:  LSRS            R0, R0, #0xE
B3DE6:  B               loc_B3E1E
B3DE8:  MOV             R0, R4
B3DEA:  MOV             R1, R6
B3DEC:  BLX             j_silk_LPC_inverse_pred_gain_c
B3DF0:  CMP.W           R0, #0x8000000
B3DF4:  IT GE
B3DF6:  MOVGE.W         R0, #0x8000000
B3DFA:  CMP.W           R0, #0x400000
B3DFE:  IT LE
B3E00:  MOVLE.W         R0, #0x400000
B3E04:  LDR.W           R6, [R8,#0x924]
B3E08:  LSLS            R0, R0, #3
B3E0A:  UXTH            R1, R0
B3E0C:  MULS            R1, R5
B3E0E:  ASRS            R1, R1, #0x10
B3E10:  SMLATB.W        R0, R0, R5, R1
B3E14:  ASRS            R0, R0, #0xE
B3E16:  STR.W           R0, [R7,#var_78]
B3E1A:  MOV.W           R0, #0x4000
B3E1E:  STR.W           R0, [R7,#var_84]
B3E22:  MOV.W           R0, #0x1080
B3E26:  LDR.W           R0, [R8,R0]
B3E2A:  STR.W           R0, [R7,#var_9C]
B3E2E:  MOVW            R0, #0x104C
B3E32:  LDR.W           R2, [R8,#0x920]
B3E36:  LDR.W           R0, [R8,R0]
B3E3A:  SUB             SP, SP, #8
B3E3C:  ADD.W           R10, R11, R0,ASR#7
B3E40:  SUBS            R0, R2, #2
B3E42:  SUBS            R0, R0, R6
B3E44:  LDR.W           R1, [R7,#var_68]
B3E48:  SUB.W           R5, R0, R10,ASR#1
B3E4C:  LDR.W           R0, [R7,#var_64]
B3E50:  STR             R6, [SP,#0xF8+var_F8]
B3E52:  MOV             R9, R2
B3E54:  STR             R1, [SP,#0xF8+var_F4]
B3E56:  ADD.W           R1, R8, R5,LSL#1
B3E5A:  SUBS            R3, R2, R5
B3E5C:  ADD.W           R0, R0, R5,LSL#1
B3E60:  ADDW            R1, R1, #0x544
B3E64:  SUB.W           R2, R7, #-dest
B3E68:  STR.W           R6, [R7,#var_68]
B3E6C:  BLX             j_silk_LPC_analysis_filter
B3E70:  ADD             SP, SP, #8
B3E72:  LDR.W           R0, [R7,#var_6C]
B3E76:  LDR             R0, [R0]
B3E78:  CMP             R0, #0
B3E7A:  MOV             R1, R0
B3E7C:  IT MI
B3E7E:  NEGMI           R1, R0
B3E80:  CLZ.W           R4, R1
B3E84:  SUBS            R1, R4, #1
B3E86:  LSL.W           R6, R0, R1
B3E8A:  MOV             R0, #0x1FFFFFFF
B3E8E:  ASRS            R1, R6, #0x10
B3E90:  BLX             sub_108848
B3E94:  UXTH            R1, R6
B3E96:  SXTH            R2, R0
B3E98:  MULS            R1, R2
B3E9A:  ADD.W           R3, R11, R0,ASR#15
B3E9E:  ASRS            R3, R3, #1
B3EA0:  ASRS            R1, R1, #0x10
B3EA2:  SMLABT.W        R1, R0, R6, R1
B3EA6:  NEGS            R1, R1
B3EA8:  LSLS            R1, R1, #3
B3EAA:  MULS            R3, R1
B3EAC:  ADD.W           R3, R3, R0,LSL#16
B3EB0:  SMLATB.W        R0, R1, R0, R3
B3EB4:  UXTH            R1, R1
B3EB6:  MULS            R1, R2
B3EB8:  RSB.W           R2, R4, #0x3E ; '>'
B3EBC:  CMP             R2, #0x2E ; '.'
B3EBE:  ADD.W           R0, R0, R1,ASR#16
B3EC2:  BGT             loc_B3EEC
B3EC4:  RSB.W           R1, R2, #0x2E ; '.'
B3EC8:  LDR.W           R12, [R7,#var_84]
B3ECC:  MOV             R2, #0x7FFFFFFF
B3ED0:  MOV.W           R3, #0x80000000
B3ED4:  LSRS            R2, R1
B3ED6:  ASRS            R3, R1
B3ED8:  CMP             R3, R2
B3EDA:  MOV             LR, R9
B3EDC:  BLE             loc_B3F02
B3EDE:  CMP             R0, R3
B3EE0:  MOV             R4, R3
B3EE2:  BGT             loc_B3F10
B3EE4:  CMP             R0, R2
B3EE6:  IT LT
B3EE8:  MOVLT           R0, R2
B3EEA:  B               loc_B3F0E
B3EEC:  SUB.W           R3, R2, #0x2E ; '.'
B3EF0:  MOVS            R1, #0
B3EF2:  CMP             R2, #0x4E ; 'N'
B3EF4:  MOV             LR, R9
B3EF6:  IT LT
B3EF8:  ASRLT.W         R1, R0, R3
B3EFC:  LDR.W           R12, [R7,#var_84]
B3F00:  B               loc_B3F14
B3F02:  CMP             R0, R2
B3F04:  MOV             R4, R2
B3F06:  BGT             loc_B3F10
B3F08:  CMP             R0, R3
B3F0A:  IT LT
B3F0C:  MOVLT           R0, R3
B3F0E:  MOV             R4, R0
B3F10:  LSL.W           R1, R4, R1
B3F14:  LDR.W           R2, [R8,#0x924]
B3F18:  MOV             R4, #0x3FFFFFFF
B3F1C:  LDR.W           R6, [R8,#0x920]
B3F20:  CMP             R1, R4
B3F22:  IT LT
B3F24:  MOVLT           R4, R1
B3F26:  MOV.W           R10, R10,ASR#1
B3F2A:  MOV             R0, R2
B3F2C:  STR.W           R0, [R7,#var_B8]
B3F30:  ADDS            R0, R2, R5
B3F32:  CMP             R0, R6
B3F34:  BGE             loc_B3F8A
B3F36:  LDR.W           R1, [R7,#var_68]
B3F3A:  UXTH.W          R9, R4
B3F3E:  LDR.W           R5, [R7,#var_CC]
B3F42:  ADD.W           R2, R1, R10
B3F46:  LDR.W           R1, [R7,#var_B8]
B3F4A:  ADD.W           R3, LR, R1
B3F4E:  MOV             R1, #0xFFFFFFF8
B3F52:  ADD.W           R1, R1, R3,LSL#2
B3F56:  SUB.W           R1, R1, R2,LSL#2
B3F5A:  ADD             R1, R5
B3F5C:  MOV             R5, #0xFFFFFFFC
B3F60:  ADD.W           R3, R5, R3,LSL#1
B3F64:  SUB.W           R2, R3, R2,LSL#1
B3F68:  LDR.W           R3, [R7,#var_64]
B3F6C:  ADD             R2, R3
B3F6E:  ASRS            R3, R4, #0x10
B3F70:  LDRSH.W         R5, [R2],#2
B3F74:  ADDS            R0, #1
B3F76:  CMP             R0, R6
B3F78:  MUL.W           R4, R9, R5
B3F7C:  SMULBB.W        R5, R3, R5
B3F80:  ADD.W           R5, R5, R4,ASR#16
B3F84:  STR.W           R5, [R1],#4
B3F88:  BLT             loc_B3F70
B3F8A:  MOVW            R0, #0x1084
B3F8E:  STR.W           R6, [R7,#var_E8]
B3F92:  ADD             R0, R8
B3F94:  STR.W           R0, [R7,#var_E0]
B3F98:  ADD.W           R0, R8, #0x1080
B3F9C:  STR.W           R0, [R7,#var_E4]
B3FA0:  LDR.W           R1, [R8,#0x914]
B3FA4:  CMP             R1, #1
B3FA6:  MOV             R0, R1
B3FA8:  STR.W           R0, [R7,#var_C0]
B3FAC:  BLT.W           loc_B4236
B3FB0:  MOVW            R1, #0x104C
B3FB4:  LDR.W           R2, [R7,#var_74]
B3FB8:  ADD             R1, R8
B3FBA:  STR.W           R1, [R7,#var_C4]
B3FBE:  LDR.W           R1, [R7,#var_7C]
B3FC2:  ADR.W           R0, dword_B4524
B3FC6:  STR.W           LR, [R7,#var_8C]
B3FCA:  MOVS            R6, #0
B3FCC:  ADD.W           R1, R1, R2,LSL#2
B3FD0:  STR.W           R1, [R7,#var_80]
B3FD4:  LDR.W           R1, [R7,#var_70]
B3FD8:  LDRSH.W         R0, [R0,R1,LSL#1]
B3FDC:  LDR.W           R1, [R7,#var_D0]
B3FE0:  STR.W           R0, [R7,#var_C8]
B3FE4:  MOVW            R0, #0x1058
B3FE8:  ADD.W           R9, R8, R0
B3FEC:  MOVW            R0, #0x1056
B3FF0:  ADD.W           LR, R8, R0
B3FF4:  MOVW            R0, #0x1054
B3FF8:  ADD.W           R2, R8, R0
B3FFC:  MOVW            R0, #0x1052
B4000:  ADD.W           R4, R8, R0
B4004:  LDR.W           R0, [R7,#var_78]
B4008:  LDR.W           R5, [R8,#0x91C]
B400C:  STR.W           LR, [R7,#var_90]
B4010:  SXTH            R0, R0
B4012:  STR.W           R0, [R7,#var_D8]
B4016:  STRD.W          R4, R2, [R7,#var_98]
B401A:  STR.W           R9, [R7,#var_D4]
B401E:  STR.W           R5, [R7,#var_64]
B4022:  CMP             R5, #0
B4024:  STR.W           R6, [R7,#var_88]
B4028:  STR.W           R12, [R7,#var_84]
B402C:  BLE.W           loc_B416E
B4030:  LDR.W           R6, [R7,#var_8C]
B4034:  MOV             R3, R12
B4036:  LDR.W           R0, [R7,#var_CC]
B403A:  MOV.W           R12, #0
B403E:  SUB.W           R5, R12, R10,LSL#2
B4042:  LDR.W           R10, [R7,#var_9C]
B4046:  ADD.W           R8, R0, R6,LSL#2
B404A:  SXTH            R0, R3
B404C:  STR.W           R0, [R7,#var_68]
B4050:  LDRSH.W         R0, [R9]
B4054:  LDRSH.W         R3, [LR]
B4058:  LDRSH.W         R2, [R2]
B405C:  LDRSH.W         R4, [R4]
B4060:  LDRSH.W         R1, [R1]
B4064:  STR.W           R0, [R7,#var_7C]
B4068:  UXTH            R0, R0
B406A:  STR.W           R0, [R7,#var_A4]
B406E:  UXTH            R0, R3
B4070:  STR.W           R0, [R7,#var_AC]
B4074:  UXTH            R0, R2
B4076:  STR.W           R0, [R7,#var_A8]
B407A:  UXTH            R0, R4
B407C:  STR.W           R0, [R7,#var_B0]
B4080:  UXTH            R0, R1
B4082:  STR.W           R3, [R7,#var_74]
B4086:  STR.W           R2, [R7,#var_78]
B408A:  STR.W           R4, [R7,#var_6C]
B408E:  STR.W           R1, [R7,#var_70]
B4092:  STR.W           R0, [R7,#var_B4]
B4096:  MOVW            R0, #0x636B
B409A:  MOVW            R1, #0x8435
B409E:  MOVT            R0, #0x3619
B40A2:  MOVT            R1, #0xBB3
B40A6:  MLA.W           R10, R10, R1, R0
B40AA:  LDR.W           R1, [R7,#var_80]
B40AE:  ADD.W           R2, R8, R5
B40B2:  LDR.W           R11, [R7,#var_68]
B40B6:  MOV.W           R0, R10,LSR#25
B40BA:  LDR.W           R0, [R1,R0,LSL#2]
B40BE:  LDRD.W          R6, R1, [R2,#4]
B40C2:  LDR.W           R3, [R7,#var_70]
B40C6:  UXTH            R4, R1
B40C8:  LDR.W           R9, [R7,#var_6C]
B40CC:  UXTH.W          LR, R0
B40D0:  MUL.W           LR, LR, R11
B40D4:  MULS            R4, R3
B40D6:  ASRS            R4, R4, #0x10
B40D8:  SMLABT.W        R1, R3, R1, R4
B40DC:  UXTH            R4, R6
B40DE:  MUL.W           R4, R4, R9
B40E2:  LDR.W           R3, [R7,#var_78]
B40E6:  SMLATB.W        R1, R6, R9, R1
B40EA:  ADD.W           R1, R1, R4,ASR#16
B40EE:  LDR.W           R4, [R8,R5]
B40F2:  ADDS            R5, #4
B40F4:  SMLATB.W        R1, R4, R3, R1
B40F8:  UXTH            R4, R4
B40FA:  MULS            R4, R3
B40FC:  ADD.W           R1, R1, R4,ASR#16
B4100:  LDRD.W          R4, R2, [R2,#-8]
B4104:  LDR.W           R3, [R7,#var_74]
B4108:  SMLATB.W        R1, R2, R3, R1
B410C:  UXTH            R2, R2
B410E:  MULS            R2, R3
B4110:  LDR.W           R3, [R7,#var_7C]
B4114:  ADD.W           R1, R1, R2,ASR#16
B4118:  UXTH            R2, R4
B411A:  MULS            R2, R3
B411C:  SMLATB.W        R1, R4, R3, R1
B4120:  ADD.W           R1, R1, R2,ASR#16
B4124:  SMLATB.W        R0, R0, R11, R1
B4128:  MOVS            R1, #8
B412A:  ADD.W           R0, R0, LR,ASR#16
B412E:  ADD.W           R0, R1, R0,LSL#2
B4132:  STR.W           R0, [R8,R12,LSL#2]
B4136:  ADD.W           R12, R12, #1
B413A:  LDR.W           R0, [R7,#var_64]
B413E:  CMP             R12, R0
B4140:  BLT             loc_B4096
B4142:  LDR.W           R0, [R7,#var_8C]
B4146:  SUB.W           LR, R7, #-var_98
B414A:  SUB.W           R11, R7, #-var_AC
B414E:  STR.W           R10, [R7,#var_9C]
B4152:  ADD             R0, R12
B4154:  STR.W           R0, [R7,#var_8C]
B4158:  LDR.W           R8, [R7,#var_A0]
B415C:  LDRD.W          R9, R12, [R7,#var_D4]
B4160:  LDM.W           LR, {R4,R10,LR}
B4164:  LDM.W           R11, {R0,R6,R11}
B4168:  LDRD.W          R5, R3, [R7,#var_B4]
B416C:  B               loc_B4180
B416E:  LDRH.W          R11, [R9]
B4172:  MOV             R12, R1
B4174:  LDRH.W          R0, [LR]
B4178:  MOV             R10, R2
B417A:  LDRH            R6, [R2]
B417C:  LDRH            R3, [R4]
B417E:  LDRH            R5, [R1]
B4180:  LDR.W           R2, [R7,#var_C8]
B4184:  SXTH            R1, R3
B4186:  SXTH            R3, R5
B4188:  SXTH            R0, R0
B418A:  SXTH            R6, R6
B418C:  SXTH.W          R5, R11
B4190:  SMULBB.W        R3, R3, R2
B4194:  MOV             R11, R12
B4196:  SMULBB.W        R1, R1, R2
B419A:  SMULBB.W        R0, R0, R2
B419E:  SMULBB.W        R6, R6, R2
B41A2:  SMULBB.W        R5, R5, R2
B41A6:  LSRS            R3, R3, #0xF
B41A8:  LSRS            R1, R1, #0xF
B41AA:  STRH.W          R3, [R12]
B41AE:  STRH            R1, [R4]
B41B0:  LSRS            R0, R0, #0xF
B41B2:  LSRS            R1, R6, #0xF
B41B4:  STRH.W          R1, [R10]
B41B8:  STRH.W          R0, [LR]
B41BC:  LSRS            R0, R5, #0xF
B41BE:  STRH.W          R0, [R9]
B41C2:  LDRB.W          R0, [R8,#0xACD]
B41C6:  CBZ             R0, loc_B41E4
B41C8:  LDR.W           R0, [R7,#var_84]
B41CC:  LDR.W           R1, [R7,#var_D8]
B41D0:  LDR.W           R5, [R7,#var_64]
B41D4:  SXTH            R0, R0
B41D6:  LDR.W           R6, [R7,#var_88]
B41DA:  SMULBB.W        R0, R1, R0
B41DE:  MOV.W           R12, R0,LSR#15
B41E2:  B               loc_B41EC
B41E4:  LDR.W           R5, [R7,#var_64]
B41E8:  LDRD.W          R6, R12, [R7,#var_88]
B41EC:  LDR.W           R0, [R7,#var_C4]
B41F0:  MOVW            R2, #0x28F
B41F4:  ADDS            R6, #1
B41F6:  MOV             R3, R0
B41F8:  LDR             R0, [R3]
B41FA:  UXTH            R1, R0
B41FC:  SMLABT.W        R0, R2, R0, R0
B4200:  MULS            R1, R2
B4202:  LDRSH.W         R2, [R8,#0x90C]
B4206:  ADD.W           R0, R0, R1,LSR#16
B420A:  ADD.W           R1, R2, R2,LSL#3
B420E:  CMP.W           R0, R1,LSL#9
B4212:  IT GE
B4214:  LSLGE           R0, R1, #9
B4216:  MOVS            R1, #1
B4218:  STR             R0, [R3]
B421A:  ADD.W           R0, R1, R0,ASR#7
B421E:  LDR.W           LR, [R7,#var_90]
B4222:  MOV             R1, R11
B4224:  MOV.W           R10, R0,ASR#1
B4228:  LDR.W           R0, [R7,#var_C0]
B422C:  LDRD.W          R4, R2, [R7,#var_98]
B4230:  CMP             R6, R0
B4232:  BLT.W           loc_B4022
B4236:  LDR.W           R1, [R7,#var_E8]
B423A:  ADDW            R2, R8, #0x504
B423E:  LDR.W           R0, [R7,#var_CC]
B4242:  STR.W           R12, [R7,#var_84]
B4246:  ADD.W           R12, R0, R1,LSL#2
B424A:  STR.W           R10, [R7,#var_C0]
B424E:  SUB.W           R9, R12, #0x40 ; '@'
B4252:  STR.W           R2, [R7,#var_C4]
B4256:  LDM             R2!, {R0,R3-R6}
B4258:  MOV             LR, R9
B425A:  STM.W           LR!, {R0,R3-R6}
B425E:  LDM             R2!, {R0,R3-R6}
B4260:  STM.W           LR!, {R0,R3-R6}
B4264:  LDM.W           R2, {R0,R1,R3-R6}
B4268:  STM.W           LR, {R0,R1,R3-R6}
B426C:  MOV             R6, R9
B426E:  LDR.W           R1, [R8,#0x918]
B4272:  CMP             R1, #1
B4274:  MOV             R0, R1
B4276:  STR.W           R0, [R7,#var_70]
B427A:  BLT.W           loc_B44B4
B427E:  LDR.W           R0, [R7,#var_F0]
B4282:  MOVS            R1, #1
B4284:  LDR.W           R11, [R6,#0x1C]
B4288:  SUB.W           LR, R12, #0x2C ; ','
B428C:  LDR.W           R10, [R6,#0x24]
B4290:  MOV.W           R12, #0
B4294:  ADD.W           R0, R1, R0,ASR#21
B4298:  LDR             R3, [R6,#0x2C]
B429A:  LDR.W           R9, [R6,#0x34]
B429E:  ASRS            R0, R0, #1
B42A0:  LDR             R5, [R6,#0x3C]
B42A2:  STR.W           R0, [R7,#var_78]
B42A6:  LDR.W           R0, [R7,#var_EC]
B42AA:  STR.W           R6, [R7,#var_74]
B42AE:  SXTH            R0, R0
B42B0:  STR.W           R0, [R7,#var_7C]
B42B4:  LDR.W           R0, [R7,#var_B8]
B42B8:  ASRS            R0, R0, #1
B42BA:  STR.W           R0, [R7,#var_80]
B42BE:  LDRSH.W         R0, [R7,#var_36]
B42C2:  STR.W           R0, [R7,#var_88]
B42C6:  LDRSH.W         R0, [R7,#var_38]
B42CA:  STR.W           R0, [R7,#var_8C]
B42CE:  LDRSH.W         R0, [R7,#var_3A]
B42D2:  STR.W           R0, [R7,#var_90]
B42D6:  LDRSH.W         R0, [R7,#var_3C]
B42DA:  STR.W           R0, [R7,#var_94]
B42DE:  LDRSH.W         R0, [R7,#var_3E]
B42E2:  STR.W           R0, [R7,#var_98]
B42E6:  LDRSH.W         R0, [R7,#var_40]
B42EA:  STR.W           R0, [R7,#var_A4]
B42EE:  LDRSH.W         R0, [R7,#dest]
B42F2:  STR.W           R0, [R7,#var_A8]
B42F6:  LDRSH.W         R0, [R7,#var_46]
B42FA:  STR.W           R0, [R7,#var_AC]
B42FE:  LDRSH.W         R0, [R7,#var_44]
B4302:  STR.W           R0, [R7,#var_B0]
B4306:  LDRSH.W         R0, [R7,#var_42]
B430A:  STR.W           R0, [R7,#var_B4]
B430E:  LDR.W           R2, [R7,#var_A8]
B4312:  UXTH            R0, R5
B4314:  ADD.W           R6, R6, R12,LSL#2
B4318:  LDR.W           R1, [R7,#var_80]
B431C:  MULS            R0, R2
B431E:  LDR             R4, [R6,#0x38]
B4320:  STR.W           R4, [R7,#var_64]
B4324:  SMLABT.W        R2, R2, R5, R1
B4328:  LDR.W           R1, [R7,#var_AC]
B432C:  UXTH            R5, R4
B432E:  LDR.W           R8, [R6,#0x28]
B4332:  MULS            R5, R1
B4334:  ADD.W           R0, R2, R0,ASR#16
B4338:  SMLATB.W        R0, R4, R1, R0
B433C:  LDR.W           R1, [R7,#var_B0]
B4340:  LDR             R4, [R6,#0x20]
B4342:  LDR             R2, [R6,#0x30]
B4344:  STR.W           R2, [R7,#var_68]
B4348:  ADD.W           R0, R0, R5,ASR#16
B434C:  LDR             R5, [R6,#0x18]
B434E:  UXTH.W          R6, R9
B4352:  SMLATB.W        R0, R9, R1, R0
B4356:  MULS            R6, R1
B4358:  LDR.W           R1, [R7,#var_B4]
B435C:  ADD.W           R9, R12, #0x10
B4360:  STR.W           R4, [R7,#var_6C]
B4364:  ADD.W           R0, R0, R6,ASR#16
B4368:  UXTH            R6, R2
B436A:  MULS            R6, R1
B436C:  SMLATB.W        R0, R2, R1, R0
B4370:  LDR.W           R1, [R7,#var_A4]
B4374:  ADD.W           R0, R0, R6,ASR#16
B4378:  SMLATB.W        R0, R3, R1, R0
B437C:  UXTH            R3, R3
B437E:  MULS            R3, R1
B4380:  LDR.W           R1, [R7,#var_98]
B4384:  ADD.W           R0, R0, R3,ASR#16
B4388:  UXTH.W          R3, R8
B438C:  MULS            R3, R1
B438E:  SMLATB.W        R0, R8, R1, R0
B4392:  LDR.W           R1, [R7,#var_94]
B4396:  ADD.W           R0, R0, R3,ASR#16
B439A:  UXTH.W          R3, R10
B439E:  MULS            R3, R1
B43A0:  SMLATB.W        R0, R10, R1, R0
B43A4:  LDR.W           R1, [R7,#var_90]
B43A8:  ADD.W           R0, R0, R3,ASR#16
B43AC:  UXTH            R3, R4
B43AE:  MULS            R3, R1
B43B0:  SMLATB.W        R0, R4, R1, R0
B43B4:  LDR.W           R1, [R7,#var_8C]
B43B8:  ADD.W           R0, R0, R3,ASR#16
B43BC:  UXTH.W          R3, R11
B43C0:  MULS            R3, R1
B43C2:  SMLATB.W        R0, R11, R1, R0
B43C6:  LDR.W           R1, [R7,#var_88]
B43CA:  ADD.W           R0, R0, R3,ASR#16
B43CE:  UXTH            R3, R5
B43D0:  MULS            R3, R1
B43D2:  SMLATB.W        R0, R5, R1, R0
B43D6:  ADD.W           R3, R0, R3,ASR#16
B43DA:  LDR.W           R0, [R7,#var_B8]
B43DE:  CMP             R0, #0xB
B43E0:  BLT             loc_B440E
B43E2:  LDR.W           R0, [R7,#var_A0]
B43E6:  SUB.W           R10, R7, #-dest
B43EA:  MOV             R6, LR
B43EC:  LDR.W           R5, [R0,#0x924]
B43F0:  MOVS            R0, #0xA
B43F2:  LDR.W           R2, [R6],#-4
B43F6:  LDRSH.W         R4, [R10,R0,LSL#1]
B43FA:  ADDS            R0, #1
B43FC:  CMP             R0, R5
B43FE:  UXTH            R1, R2
B4400:  MUL.W           R1, R4, R1
B4404:  SMLABT.W        R2, R4, R2, R3
B4408:  ADD.W           R3, R2, R1,ASR#16
B440C:  BLT             loc_B43F2
B440E:  LDR.W           R6, [R7,#var_74]
B4412:  CMP.W           R3, #0xF8000000
B4416:  MOV             R1, #0x7FFFFFF
B441A:  LDR.W           R0, [R6,R9,LSL#2]
B441E:  IT LE
B4420:  MOVLE.W         R3, #0xF8000000
B4424:  CMP             R3, R1
B4426:  IT GE
B4428:  MOVGE           R3, R1
B442A:  ADD.W           R5, R0, R3,LSL#4
B442E:  LSLS            R3, R3, #4
B4430:  CMP             R5, #0
B4432:  BLT             loc_B4440
B4434:  ANDS            R0, R3
B4436:  CMP             R0, #0
B4438:  IT LT
B443A:  MOVLT.W         R5, #0x80000000
B443E:  B               loc_B444C
B4440:  ORRS            R0, R3
B4442:  CMP.W           R0, #0xFFFFFFFF
B4446:  IT GT
B4448:  MOVGT           R5, #0x7FFFFFFF
B444C:  LDRD.W          R11, R3, [R7,#var_6C]
B4450:  UXTH            R0, R5
B4452:  LDR.W           R1, [R7,#var_7C]
B4456:  MOV             R2, #0xFFFF8000
B445E:  STR.W           R5, [R6,R9,LSL#2]
B4462:  ADD.W           LR, LR, #4
B4466:  MULS            R0, R1
B4468:  MOV             R10, R8
B446A:  ASRS            R0, R0, #0x10
B446C:  SMLABT.W        R0, R1, R5, R0
B4470:  LDR.W           R1, [R7,#var_78]
B4474:  MLA.W           R0, R1, R5, R0
B4478:  MOVS            R1, #1
B447A:  ADD.W           R0, R1, R0,ASR#7
B447E:  ASRS            R1, R0, #1
B4480:  CMP             R1, R2
B4482:  IT GT
B4484:  ASRGT           R2, R0, #1
B4486:  CMP.W           R2, #0x8000
B448A:  IT GE
B448C:  MOVWGE          R2, #0x7FFF
B4490:  CMP.W           R1, #0x8000
B4494:  IT GE
B4496:  MOVWGE          R2, #0x7FFF
B449A:  LDR.W           R0, [R7,#var_BC]
B449E:  STRH.W          R2, [R0,R12,LSL#1]
B44A2:  ADD.W           R12, R12, #1
B44A6:  LDR.W           R0, [R7,#var_70]
B44AA:  LDR.W           R9, [R7,#var_64]
B44AE:  CMP             R12, R0
B44B0:  BLT.W           loc_B430E
B44B4:  LDR.W           R0, [R7,#var_70]
B44B8:  LDR.W           R12, [R7,#var_C4]
B44BC:  ADD.W           R0, R6, R0,LSL#2
B44C0:  LDM             R0!, {R1-R3,R5,R6}
B44C2:  STM.W           R12!, {R1-R3,R5,R6}
B44C6:  LDM             R0!, {R1-R3,R5,R6}
B44C8:  STM.W           R12!, {R1-R3,R5,R6}
B44CC:  LDM.W           R0, {R1-R6}
B44D0:  STM.W           R12, {R1-R6}
B44D4:  LDR.W           R1, [R7,#var_E4]
B44D8:  LDR.W           R0, [R7,#var_9C]
B44DC:  STR             R0, [R1]
B44DE:  LDR.W           R1, [R7,#var_E0]
B44E2:  LDR.W           R0, [R7,#var_84]
B44E6:  STRH            R0, [R1]
B44E8:  LDR.W           R0, [R7,#var_DC]
B44EC:  LDR.W           R1, [R7,#var_C0]
B44F0:  STRD.W          R1, R1, [R0]
B44F4:  STRD.W          R1, R1, [R0,#8]
B44F8:  LDR             R0, =(__stack_chk_guard_ptr - 0xB4502)
B44FA:  LDR.W           R1, [R7,#var_24]
B44FE:  ADD             R0, PC; __stack_chk_guard_ptr
B4500:  LDR             R0, [R0]; __stack_chk_guard
B4502:  LDR             R0, [R0]
B4504:  SUBS            R0, R0, R1
B4506:  ITTTT EQ
B4508:  SUBEQ.W         R4, R7, #-var_1C
B450C:  MOVEQ           SP, R4
B450E:  POPEQ.W         {R8-R11}
B4512:  POPEQ           {R4-R7,PC}
B4514:  BLX             __stack_chk_fail
