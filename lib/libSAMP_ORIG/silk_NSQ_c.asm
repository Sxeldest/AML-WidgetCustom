; =========================================================
; Game Engine Function: silk_NSQ_c
; Address            : 0xD5E6C - 0xD6DBA
; =========================================================

D5E6C:  PUSH            {R4-R7,LR}
D5E6E:  ADD             R7, SP, #0xC
D5E70:  PUSH.W          {R8-R11}
D5E74:  SUB             SP, SP, #0x10C
D5E76:  MOV             R11, R1
D5E78:  LDR.W           R1, =(__stack_chk_guard_ptr - 0xD5E88)
D5E7C:  STR.W           R3, [R7,#var_E8]
D5E80:  MOVW            R3, #0x10F4
D5E84:  ADD             R1, PC; __stack_chk_guard_ptr
D5E86:  MOVW            R10, #0x11E8
D5E8A:  MOVS            R4, #7
D5E8C:  LDR             R1, [R1]; __stack_chk_guard
D5E8E:  LDR             R1, [R1]
D5E90:  STR.W           R1, [R7,#var_24]
D5E94:  LDRSB.W         R1, [R2,#0x22]
D5E98:  STR.W           R1, [R11,R3]
D5E9C:  MOVW            R1, #0x11F0
D5EA0:  LDR.W           LR, [R0,R1]
D5EA4:  LDR.W           R8, [R0,R10]
D5EA8:  LDRSB.W         R6, [R2,#0x1E]
D5EAC:  ADD.W           R1, R8, LR
D5EB0:  ADD.W           R3, R4, R1,LSL#2
D5EB4:  ADD.W           R1, R4, R1,LSL#1
D5EB8:  BIC.W           R5, R3, #7
D5EBC:  LDRB            R3, [R2,#0x1F]
D5EBE:  STR.W           R6, [R7,#var_28]
D5EC2:  BIC.W           R1, R1, #7
D5EC6:  STR.W           R2, [R7,#var_F0]
D5ECA:  LDRSB.W         R9, [R2,#0x1D]
D5ECE:  MOVW            R2, #0x10E8
D5ED2:  LDR.W           R6, [R11,R2]
D5ED6:  STR.W           R6, [R7,#var_70]
D5EDA:  SUB.W           R6, SP, R5
D5EDE:  STR.W           R6, [R7,#var_5C]
D5EE2:  MOV             SP, R6
D5EE4:  SUB.W           R1, SP, R1
D5EE8:  STR.W           R1, [R7,#var_EC]
D5EEC:  MOV             SP, R1
D5EEE:  MOVW            R1, #0x11EC
D5EF2:  LDR             R1, [R0,R1]
D5EF4:  ADD.W           R5, R4, R1,LSL#2
D5EF8:  BIC.W           R5, R5, #7
D5EFC:  SUB.W           R6, SP, R5
D5F00:  STR.W           R6, [R7,#var_38]
D5F04:  MOV             SP, R6
D5F06:  SUB.W           R6, R7, #-var_100
D5F0A:  MOVW            R12, #0x10EC
D5F0E:  MOVW            R4, #0x10F0
D5F12:  STR.W           LR, [R11,R12]
D5F16:  ADD.W           R5, R0, R10
D5F1A:  STR.W           LR, [R11,R4]
D5F1E:  MOVW            R10, #0x11E4
D5F22:  CMP             R3, #4
D5F24:  STR.W           R5, [R6,#-0x24]
D5F28:  MOVW            R4, #0x11F0
D5F2C:  STR.W           R11, [R7,#dest]
D5F30:  ADD.W           R5, R0, R4
D5F34:  LDR.W           R6, [R0,R10]
D5F38:  MOV.W           R3, #0
D5F3C:  ADD             R2, R11
D5F3E:  IT NE
D5F40:  MOVNE           R3, #1
D5F42:  CMP             R6, #1
D5F44:  BLT.W           loc_D6D62
D5F48:  SUB.W           R11, R7, #-var_100
D5F4C:  SUB.W           R8, R7, #-var_100
D5F50:  LDR.W           R4, [R7,#dest]
D5F54:  MOV             R6, #0xFFFFFFFC
D5F58:  STR.W           R5, [R11,#-0xC]
D5F5C:  AND.W           R6, R6, R9,LSL#1
D5F60:  LDR.W           R5, =(silk_Quantization_Offsets_Q10_ptr - 0xD5F74)
D5F64:  SUB.W           R11, R7, #-var_100
D5F68:  STR.W           R2, [R8,#-0x28]
D5F6C:  ADD.W           R2, R4, R12
D5F70:  ADD             R5, PC; silk_Quantization_Offsets_Q10_ptr
D5F72:  STR.W           R2, [R7,#var_6C]
D5F76:  LDR.W           R2, [R7,#var_28]
D5F7A:  MOVW            R12, #0x10F4
D5F7E:  LDR             R5, [R5]; silk_Quantization_Offsets_Q10
D5F80:  ADD             R6, R5
D5F82:  MOV             R5, R9
D5F84:  LDRSH.W         R2, [R6,R2,LSL#1]
D5F88:  MOVW            R6, #0x10F0
D5F8C:  ADD.W           R9, R4, R6
D5F90:  MOVW            R6, #0x11EC
D5F94:  ADD             R6, R0
D5F96:  STR.W           R6, [R7,#var_E4]
D5F9A:  ADD.W           R6, R4, R12
D5F9E:  STR.W           R6, [R7,#var_3C]
D5FA2:  ADD.W           R6, R0, R10
D5FA6:  STR.W           R6, [R7,#var_FC]
D5FAA:  UXTB.W          R10, R5
D5FAE:  LDR             R5, [R7,#arg_0]
D5FB0:  LDRD.W          R8, R6, [R7,#arg_24]
D5FB4:  STR.W           R5, [R7,#var_64]
D5FB8:  MOVW            R5, #0x1088
D5FBC:  ADD             R5, R4
D5FBE:  STR.W           R5, [R7,#var_CC]
D5FC2:  MOV.W           R5, #0x200
D5FC6:  SXTH            R6, R6
D5FC8:  SUB.W           R5, R5, R8,LSR#1
D5FCC:  STR.W           R5, [R7,#var_DC]
D5FD0:  MOVW            R5, #0xFE00
D5FD4:  STR.W           R2, [R7,#var_50]
D5FD8:  MOVT            R5, #0xFFFF
D5FDC:  LDR.W           R12, [R7,#arg_C]
D5FE0:  ADD.W           R5, R5, R8,LSR#1
D5FE4:  STR.W           R5, [R7,#var_AC]
D5FE8:  MOVW            R5, #0x10E4
D5FEC:  STR.W           R9, [R7,#var_34]
D5FF0:  ADD             R5, R4
D5FF2:  STR.W           R5, [R7,#var_44]
D5FF6:  MOVW            R5, #0x121C
D5FFA:  ADD             R5, R0
D5FFC:  STR.W           R5, [R11,#-0x10]
D6000:  MOVW            R5, #0x10F8
D6004:  SUB.W           R11, R7, #-var_100
D6008:  ADD             R5, R4
D600A:  STR.W           R5, [R7,#var_F4]
D600E:  MOVW            R5, #0x13E4
D6012:  ADD             R5, R0
D6014:  STR.W           R5, [R11,#-0x20]
D6018:  MOVS            R5, #3
D601A:  SUB.W           R11, R7, #-var_100
D601E:  EOR.W           R5, R5, R3,LSL#1
D6022:  ADD.W           R0, R0, #0x1220
D6026:  STR.W           R5, [R11,#-0x18]
D602A:  MOVW            R5, #0x10FC
D602E:  ADD             R5, R4
D6030:  STR.W           R5, [R7,#var_F8]
D6034:  ADD.W           R5, R4, LR,LSL#1
D6038:  SUB.W           LR, R7, #-var_100
D603C:  LDR.W           R11, [R7,#var_E8]
D6040:  STR.W           R6, [LR,#-0x1C]
D6044:  SXTH.W          R6, R8
D6048:  STR.W           R6, [R7,#var_B0]
D604C:  RSB.W           R6, R2, #0x3B0
D6050:  STR.W           R6, [R7,#var_D4]
D6054:  SUB.W           R6, R2, #0x3B0
D6058:  STR.W           R6, [R7,#var_D8]
D605C:  ADD.W           R6, R2, #0x3B0
D6060:  SUBS            R2, #0x50 ; 'P'
D6062:  STR.W           R2, [R7,#var_C4]
D6066:  ADD.W           R2, R4, #0x10E0
D606A:  SUB.W           LR, R7, #-var_100
D606E:  STR.W           R2, [R7,#var_48]
D6072:  ADD.W           R2, R4, #0x1080
D6076:  STR.W           R2, [R7,#var_A8]
D607A:  ADDW            R2, R4, #0xF3C
D607E:  STR.W           R2, [LR,#-0x14]
D6082:  SUB.W           LR, R7, #-var_100
D6086:  ADD.W           R2, R4, #0xF00
D608A:  MOV.W           R8, #1
D608E:  STR.W           R2, [LR]
D6092:  SUB.W           LR, R7, #-var_100
D6096:  MOVS            R4, #0
D6098:  STR.W           R5, [R7,#var_68]
D609C:  STR.W           R0, [LR,#-8]
D60A0:  SUB.W           LR, R7, #-var_100
D60A4:  EOR.W           R0, R3, #1
D60A8:  STR.W           R6, [R7,#var_D0]
D60AC:  STR.W           R0, [LR,#-4]
D60B0:  MOV             R0, R12
D60B2:  B               loc_D611E
D60B4:  LDR.W           R0, [R7,#dest]
D60B8:  SUB.W           LR, R7, #-var_100
D60BC:  ADD.W           R0, R0, R2,LSL#2
D60C0:  LDR.W           R1, [LR]
D60C4:  ADD.W           R12, R0, #0xF00
D60C8:  LDM.W           R12!, {R2-R6}
D60CC:  STM             R1!, {R2-R6}
D60CE:  LDM.W           R12!, {R2-R6}
D60D2:  STM             R1!, {R2-R6}
D60D4:  LDM.W           R12, {R0,R2-R6}
D60D8:  STM             R1!, {R0,R2-R6}
D60DA:  LDR.W           R0, [R7,#var_FC]
D60DE:  LDR.W           R4, [R7,#var_E0]
D60E2:  LDR             R6, [R0]
D60E4:  ADDS            R4, #1
D60E6:  CMP             R4, R6
D60E8:  BGE.W           loc_D6D40
D60EC:  LDR.W           R0, [R7,#var_E4]
D60F0:  LDR.W           R11, [R7,#var_E8]
D60F4:  LDR             R1, [R0]
D60F6:  LDR.W           R0, [R7,#var_64]
D60FA:  ADD             R0, R1
D60FC:  STR.W           R0, [R7,#var_64]
D6100:  LDR.W           R0, [R7,#var_68]
D6104:  ADD.W           R11, R11, R1,LSL#1
D6108:  ADD.W           R0, R0, R1,LSL#1
D610C:  STR.W           R0, [R7,#var_68]
D6110:  LDR.W           R0, [R7,#var_F0]
D6114:  LDRB.W          R10, [R0,#0x1D]
D6118:  LDR.W           R0, [R7,#var_C0]
D611C:  ADDS            R0, #0x30 ; '0'
D611E:  STR.W           R0, [R7,#var_C0]
D6122:  MOVS            R3, #0
D6124:  LDR             R0, [R7,#arg_10]
D6126:  SUB.W           LR, R7, #-var_100
D612A:  LDR             R2, [R7,#arg_4]
D612C:  LDR.W           R0, [R0,R4,LSL#2]
D6130:  STR.W           R0, [R7,#var_40]
D6134:  LDR.W           R0, [R7,#var_F8]
D6138:  STR             R3, [R0]
D613A:  LDR.W           R0, [LR,#-4]
D613E:  LDR.W           R5, [R7,#var_EC]
D6142:  ORR.W           R0, R0, R4,LSR#1
D6146:  STR.W           R4, [R7,#var_E0]
D614A:  ADD.W           R0, R2, R0,LSL#5
D614E:  STR.W           R0, [R7,#var_54]
D6152:  UXTB.W          R0, R10
D6156:  CMP             R0, #2
D6158:  BNE             loc_D61E2
D615A:  LDR             R0, [R7,#arg_20]
D615C:  SUB.W           LR, R7, #-var_100
D6160:  LDR.W           R2, [LR,#-0x18]
D6164:  LDR.W           R0, [R0,R4,LSL#2]
D6168:  TST             R4, R2
D616A:  STR.W           R0, [R7,#var_70]
D616E:  BEQ             loc_D6178
D6170:  MOV.W           R10, #2
D6174:  MOVS            R3, #0
D6176:  B               loc_D61E2
D6178:  SUB.W           R9, R7, #-var_100
D617C:  MOV             R2, #0xFFFFFFFE
D6180:  SUBS            R0, R2, R0
D6182:  LDR.W           R4, [R9,#-0xC]
D6186:  SUB.W           R9, R7, #-var_100
D618A:  LDR.W           R3, [R9,#-8]
D618E:  SUB.W           R9, R7, #-var_100
D6192:  LDR             R2, [R4]
D6194:  LDR.W           R6, [R9,#-0x20]
D6198:  LDR             R3, [R3]
D619A:  ADD             R0, R2
D619C:  LDR.W           R12, [R6]
D61A0:  SUBS            R0, R0, R3
D61A2:  LDR.W           R6, [R7,#var_E0]
D61A6:  MLA.W           R1, R1, R6, R0
D61AA:  STRD.W          R3, R12, [SP,#0x128+var_130]!
D61AE:  SUBS            R3, R2, R0
D61B0:  LDR.W           R2, [R7,#dest]
D61B4:  ADD.W           R0, R5, R0,LSL#1
D61B8:  ADD.W           R1, R2, R1,LSL#1
D61BC:  LDR.W           R2, [R7,#var_54]
D61C0:  BLX             j_silk_LPC_analysis_filter
D61C4:  ADD             SP, SP, #8
D61C6:  LDR.W           R0, [R7,#var_F8]
D61CA:  MOVS            R3, #1
D61CC:  STR             R3, [R0]
D61CE:  LDR.W           R1, [R7,#var_6C]
D61D2:  LDR             R0, [R4]
D61D4:  LDR.W           R4, [R7,#var_E0]
D61D8:  STR             R0, [R1]
D61DA:  LDR.W           R0, [R7,#var_F0]
D61DE:  LDRB.W          R10, [R0,#0x1D]
D61E2:  LDR             R0, [R7,#arg_1C]
D61E4:  STR.W           R3, [R7,#var_28]
D61E8:  LDR.W           R9, [R0,R4,LSL#2]
D61EC:  MOVS            R0, #1
D61EE:  CMP.W           R9, #1
D61F2:  IT GT
D61F4:  MOVGT           R0, R9
D61F6:  CMP             R0, #0
D61F8:  MOV             R1, R0
D61FA:  IT MI
D61FC:  NEGMI           R1, R0
D61FE:  CLZ.W           R6, R1
D6202:  SUBS            R1, R6, #1
D6204:  LSL.W           R5, R0, R1
D6208:  MOV             R0, #0x1FFFFFFF
D620C:  ASRS            R1, R5, #0x10
D620E:  BLX             sub_108848
D6212:  UXTH            R1, R5
D6214:  SXTH            R2, R0
D6216:  MULS            R1, R2
D6218:  ADD.W           R3, R8, R0,ASR#15
D621C:  ASRS            R3, R3, #1
D621E:  ASRS            R1, R1, #0x10
D6220:  SMLABT.W        R1, R0, R5, R1
D6224:  NEGS            R1, R1
D6226:  LSLS            R1, R1, #3
D6228:  MULS            R3, R1
D622A:  UXTH            R5, R1
D622C:  MULS            R2, R5
D622E:  ADD.W           R3, R3, R0,LSL#16
D6232:  SMLATB.W        R0, R1, R0, R3
D6236:  LDR             R1, [R7,#arg_20]
D6238:  LDR.W           R1, [R1,R4,LSL#2]
D623C:  STR.W           R1, [R7,#var_2C]
D6240:  ADD.W           R1, R0, R2,ASR#16
D6244:  RSB.W           R0, R6, #0x3E ; '>'
D6248:  CMP             R0, #0x2F ; '/'
D624A:  STR.W           R10, [R7,#var_4C]
D624E:  BGT             loc_D627E
D6250:  RSB.W           R5, R0, #0x2F ; '/'
D6254:  MOV             R0, #0x7FFFFFFF
D6258:  LSR.W           R2, R0, R5
D625C:  MOV.W           R0, #0x80000000
D6260:  ASR.W           R3, R0, R5
D6264:  LDR.W           R0, [R7,#var_38]
D6268:  CMP             R3, R2
D626A:  BLE             loc_D6298
D626C:  LDR.W           R12, [R7,#var_EC]
D6270:  CMP             R1, R3
D6272:  MOV             R6, R3
D6274:  BGT             loc_D62AA
D6276:  CMP             R1, R2
D6278:  IT LT
D627A:  MOVLT           R1, R2
D627C:  B               loc_D62A8
D627E:  SUB.W           R2, R0, #0x2F ; '/'
D6282:  CMP             R0, #0x4F ; 'O'
D6284:  MOV.W           LR, #0
D6288:  IT LT
D628A:  ASRLT.W         LR, R1, R2
D628E:  LDR.W           R12, [R7,#var_EC]
D6292:  LDR.W           R0, [R7,#var_38]
D6296:  B               loc_D62AE
D6298:  LDR.W           R12, [R7,#var_EC]
D629C:  CMP             R1, R2
D629E:  MOV             R6, R2
D62A0:  BGT             loc_D62AA
D62A2:  CMP             R1, R3
D62A4:  IT LT
D62A6:  MOVLT           R1, R3
D62A8:  MOV             R6, R1
D62AA:  LSL.W           LR, R6, R5
D62AE:  LDR.W           R1, [R7,#var_E4]
D62B2:  LDR.W           R10, [R1]
D62B6:  CMP.W           R10, #1
D62BA:  BLT             loc_D62F0
D62BC:  MOVS            R1, #1
D62BE:  ADD.W           R2, R1, LR,ASR#4
D62C2:  MOV.W           R8, #1
D62C6:  MOVS            R3, #0
D62C8:  ADD.W           R1, R1, R2,ASR#16
D62CC:  SBFX.W          R2, R2, #1, #0x10
D62D0:  ASRS            R1, R1, #1
D62D2:  LDRSH.W         R6, [R11,R3,LSL#1]
D62D6:  UXTH            R5, R6
D62D8:  SMULBB.W        R4, R1, R6
D62DC:  MULS            R5, R2
D62DE:  SMLABT.W        R6, R2, R6, R4
D62E2:  ADD.W           R6, R6, R5,ASR#16
D62E6:  STR.W           R6, [R0,R3,LSL#2]
D62EA:  ADDS            R3, #1
D62EC:  CMP             R3, R10
D62EE:  BLT             loc_D62D2
D62F0:  STR.W           R10, [R7,#var_60]
D62F4:  LDR.W           R0, [R7,#var_28]
D62F8:  LDR.W           R10, [R7,#var_5C]
D62FC:  CBZ             R0, loc_D6354
D62FE:  LDR.W           R0, [R7,#var_E0]
D6302:  CBNZ            R0, loc_D631C
D6304:  SUB.W           R2, R7, #-var_100
D6308:  UXTH.W          R1, LR
D630C:  LDR.W           R0, [R2,#-0x1C]
D6310:  MULS            R1, R0
D6312:  ASRS            R1, R1, #0x10
D6314:  SMLATB.W        R0, LR, R0, R1
D6318:  MOV.W           LR, R0,LSL#2
D631C:  LDR.W           R0, [R7,#var_6C]
D6320:  LDR.W           R2, [R7,#var_2C]
D6324:  LDR             R1, [R0]
D6326:  MOV             R0, #0xFFFFFFFE
D632A:  SUBS            R2, R0, R2
D632C:  ADD             R2, R1
D632E:  CMP             R2, R1
D6330:  BGE             loc_D6354
D6332:  UXTH.W          R3, LR
D6336:  MOV.W           R0, LR,ASR#16
D633A:  LDRSH.W         R6, [R12,R2,LSL#1]
D633E:  MUL.W           R5, R3, R6
D6342:  SMULBB.W        R6, R0, R6
D6346:  ADD.W           R6, R6, R5,ASR#16
D634A:  STR.W           R6, [R10,R2,LSL#2]
D634E:  ADDS            R2, #1
D6350:  CMP             R2, R1
D6352:  BLT             loc_D633A
D6354:  LDR.W           R0, [R7,#var_F4]
D6358:  LDR             R0, [R0]
D635A:  STR.W           R11, [R7,#var_E8]
D635E:  CMP             R9, R0
D6360:  BNE             loc_D636E
D6362:  LDR.W           R2, [R7,#var_60]
D6366:  CMP             R2, #1
D6368:  BGE.W           loc_D672E
D636C:  B               loc_D60B4
D636E:  CMP             R0, #0
D6370:  MOV             R1, R0
D6372:  IT MI
D6374:  NEGMI           R1, R0
D6376:  CMP.W           R9, #0
D637A:  CLZ.W           R10, R1
D637E:  SUB.W           R1, R10, #1
D6382:  LSL.W           R6, R0, R1
D6386:  MOV             R0, R9
D6388:  IT MI
D638A:  RSBMI.W         R0, R9, #0
D638E:  CLZ.W           R4, R0
D6392:  SUBS            R0, R4, #1
D6394:  LSL.W           R5, R9, R0
D6398:  MOV             R0, #0x1FFFFFFF
D639C:  ASRS            R1, R5, #0x10
D639E:  BLX             sub_108848
D63A2:  UXTH            R1, R6
D63A4:  SXTH            R2, R0
D63A6:  MULS            R1, R2
D63A8:  ASRS            R1, R1, #0x10
D63AA:  SMLABT.W        R1, R0, R6, R1
D63AE:  SMMUL.W         R3, R1, R5
D63B2:  SUB.W           R3, R6, R3,LSL#3
D63B6:  UXTH            R6, R3
D63B8:  SMLABT.W        R0, R0, R3, R1
D63BC:  MULS            R2, R6
D63BE:  ADD.W           R1, R0, R2,ASR#16
D63C2:  RSB.W           R0, R4, #1
D63C6:  ADD             R0, R10
D63C8:  ADDS            R0, #0x1C
D63CA:  CMP             R0, #0xF
D63CC:  BGT             loc_D63FC
D63CE:  RSB.W           R0, R0, #0x10
D63D2:  LDR.W           LR, [R7,#var_34]
D63D6:  LDR.W           R8, [R7,#var_A8]
D63DA:  MOV             R2, #0x7FFFFFFF
D63DE:  LDR.W           R10, [R7,#var_4C]
D63E2:  MOV.W           R3, #0x80000000
D63E6:  LSRS            R2, R0
D63E8:  ASRS            R3, R0
D63EA:  CMP             R3, R2
D63EC:  BLE             loc_D641A
D63EE:  CMP             R1, R3
D63F0:  MOV             R6, R3
D63F2:  BGT             loc_D6428
D63F4:  CMP             R1, R2
D63F6:  IT LT
D63F8:  MOVLT           R1, R2
D63FA:  B               loc_D6426
D63FC:  SUB.W           R2, R0, #0x10
D6400:  CMP             R0, #0x30 ; '0'
D6402:  MOV.W           R12, #0
D6406:  IT LT
D6408:  ASRLT.W         R12, R1, R2
D640C:  LDR.W           LR, [R7,#var_34]
D6410:  LDR.W           R8, [R7,#var_A8]
D6414:  LDR.W           R10, [R7,#var_4C]
D6418:  B               loc_D642C
D641A:  CMP             R1, R2
D641C:  MOV             R6, R2
D641E:  BGT             loc_D6428
D6420:  CMP             R1, R3
D6422:  IT LT
D6424:  MOVLT           R1, R3
D6426:  MOV             R6, R1
D6428:  LSL.W           R12, R6, R0
D642C:  SUB.W           R2, R7, #-var_100
D6430:  MOV.W           R9, #1
D6434:  LDR.W           R0, [R2,#-0xC]
D6438:  LDR             R1, [R0]
D643A:  CMP             R1, #1
D643C:  BLT             loc_D647E
D643E:  LDR.W           R2, [LR]
D6442:  MOV.W           R3, R12,ASR#16
D6446:  SUBS            R1, R2, R1
D6448:  UXTH.W          R2, R12
D644C:  LDR.W           R0, [R7,#dest]
D6450:  ADD.W           R6, R0, R1,LSL#2
D6454:  ADDS            R1, #1
D6456:  LDR.W           R5, [R6,#0x500]
D645A:  SXTH            R4, R5
D645C:  ADD.W           R5, R9, R5,ASR#15
D6460:  MUL.W           R0, R4, R2
D6464:  ASRS            R5, R5, #1
D6466:  SMULBB.W        R4, R4, R3
D646A:  ADD.W           R0, R4, R0,ASR#16
D646E:  MLA.W           R0, R5, R12, R0
D6472:  STR.W           R0, [R6,#0x500]
D6476:  LDR.W           R0, [LR]
D647A:  CMP             R1, R0
D647C:  BLT             loc_D644C
D647E:  UXTB.W          R0, R10
D6482:  LDR.W           R10, [R7,#var_5C]
D6486:  CMP             R0, #2
D6488:  MOV.W           LR, #1
D648C:  BNE             loc_D64DE
D648E:  LDR.W           R0, [R7,#var_F8]
D6492:  LDR             R0, [R0]
D6494:  CBNZ            R0, loc_D64DE
D6496:  LDR.W           R0, [R7,#var_6C]
D649A:  LDR.W           R2, [R7,#var_2C]
D649E:  LDR             R1, [R0]
D64A0:  MOV             R0, #0xFFFFFFFE
D64A4:  SUBS            R0, R0, R2
D64A6:  ADDS            R2, R1, R0
D64A8:  CMP             R2, R1
D64AA:  BGE             loc_D64DE
D64AC:  UXTH.W          R3, R12
D64B0:  MOV.W           R6, R12,ASR#16
D64B4:  LDR.W           R0, [R10,R2,LSL#2]
D64B8:  LDR.W           R10, [R7,#var_5C]
D64BC:  SXTH            R5, R0
D64BE:  ADD.W           R0, LR, R0,ASR#15
D64C2:  MUL.W           R4, R5, R3
D64C6:  ASRS            R0, R0, #1
D64C8:  SMULBB.W        R5, R5, R6
D64CC:  ADD.W           R5, R5, R4,ASR#16
D64D0:  MLA.W           R0, R0, R12, R5
D64D4:  STR.W           R0, [R10,R2,LSL#2]
D64D8:  ADDS            R2, #1
D64DA:  CMP             R2, R1
D64DC:  BLT             loc_D64B4
D64DE:  LDR.W           R0, [R7,#var_48]
D64E2:  UXTH.W          R1, R12
D64E6:  MOV             R3, R0
D64E8:  LDR             R0, [R3]
D64EA:  SXTH            R2, R0
D64EC:  MULS            R2, R1
D64EE:  ASRS            R2, R2, #0x10
D64F0:  SMLABT.W        R2, R0, R12, R2
D64F4:  ADD.W           R0, LR, R0,ASR#15
D64F8:  ASRS            R0, R0, #1
D64FA:  MLA.W           R0, R0, R12, R2
D64FE:  STR             R0, [R3]
D6500:  LDR.W           R0, [R7,#var_44]
D6504:  MOV             R3, R0
D6506:  LDR             R0, [R3]
D6508:  SXTH            R2, R0
D650A:  MULS            R2, R1
D650C:  ASRS            R2, R2, #0x10
D650E:  SMLABT.W        R2, R0, R12, R2
D6512:  ADD.W           R0, LR, R0,ASR#15
D6516:  ASRS            R0, R0, #1
D6518:  MLA.W           R0, R0, R12, R2
D651C:  STR             R0, [R3]
D651E:  LDR.W           R4, [R7,#dest]
D6522:  ADD.W           R6, R4, #0xF00
D6526:  LDM             R6, {R0,R2,R6}
D6528:  LDR.W           R3, [R4,#0xF0C]
D652C:  SXTH            R5, R0
D652E:  MULS            R5, R1
D6530:  ASRS            R5, R5, #0x10
D6532:  SMLABT.W        R5, R0, R12, R5
D6536:  ADD.W           R0, LR, R0,ASR#15
D653A:  ASRS            R0, R0, #1
D653C:  MLA.W           R0, R0, R12, R5
D6540:  STR.W           R0, [R4,#0xF00]
D6544:  SXTH            R0, R2
D6546:  MULS            R0, R1
D6548:  ASRS            R0, R0, #0x10
D654A:  SMLABT.W        R0, R2, R12, R0
D654E:  ADD.W           R2, LR, R2,ASR#15
D6552:  ASRS            R2, R2, #1
D6554:  MLA.W           R0, R2, R12, R0
D6558:  ADD.W           R2, LR, R6,ASR#15
D655C:  ASRS            R2, R2, #1
D655E:  STR.W           R0, [R4,#0xF04]
D6562:  SXTH            R0, R6
D6564:  MULS            R0, R1
D6566:  ASRS            R0, R0, #0x10
D6568:  SMLABT.W        R0, R6, R12, R0
D656C:  MLA.W           R0, R2, R12, R0
D6570:  STR.W           R0, [R4,#0xF08]
D6574:  LDR.W           R0, [R4,#0xF24]
D6578:  SXTH            R2, R0
D657A:  MULS            R2, R1
D657C:  ASRS            R2, R2, #0x10
D657E:  SMLABT.W        R2, R0, R12, R2
D6582:  ADD.W           R0, LR, R0,ASR#15
D6586:  ASRS            R0, R0, #1
D6588:  MLA.W           R2, R0, R12, R2
D658C:  LDR.W           R0, [R4,#0xF20]
D6590:  SXTH            R6, R0
D6592:  MULS            R6, R1
D6594:  ASRS            R6, R6, #0x10
D6596:  SMLABT.W        R6, R0, R12, R6
D659A:  ADD.W           R0, LR, R0,ASR#15
D659E:  ASRS            R0, R0, #1
D65A0:  MLA.W           R5, R0, R12, R6
D65A4:  LDR.W           R0, [R4,#0xF1C]
D65A8:  SXTH            R6, R0
D65AA:  MULS            R6, R1
D65AC:  ASRS            R6, R6, #0x10
D65AE:  SMLABT.W        R6, R0, R12, R6
D65B2:  ADD.W           R0, LR, R0,ASR#15
D65B6:  ASRS            R0, R0, #1
D65B8:  MLA.W           R6, R0, R12, R6
D65BC:  SXTH            R0, R3
D65BE:  MULS            R0, R1
D65C0:  ASRS            R0, R0, #0x10
D65C2:  SMLABT.W        R0, R3, R12, R0
D65C6:  ADD.W           R3, LR, R3,ASR#15
D65CA:  ASRS            R3, R3, #1
D65CC:  MLA.W           R0, R3, R12, R0
D65D0:  STR.W           R0, [R4,#0xF0C]
D65D4:  LDR.W           R0, [R4,#0xF10]
D65D8:  SXTH            R3, R0
D65DA:  MULS            R3, R1
D65DC:  ASRS            R3, R3, #0x10
D65DE:  SMLABT.W        R3, R0, R12, R3
D65E2:  ADD.W           R0, LR, R0,ASR#15
D65E6:  ASRS            R0, R0, #1
D65E8:  MLA.W           R0, R0, R12, R3
D65EC:  STR.W           R0, [R4,#0xF10]
D65F0:  LDR.W           R0, [R4,#0xF14]
D65F4:  SXTH            R3, R0
D65F6:  MULS            R3, R1
D65F8:  ASRS            R3, R3, #0x10
D65FA:  SMLABT.W        R3, R0, R12, R3
D65FE:  ADD.W           R0, LR, R0,ASR#15
D6602:  ASRS            R0, R0, #1
D6604:  MLA.W           R0, R0, R12, R3
D6608:  STR.W           R0, [R4,#0xF14]
D660C:  LDR.W           R0, [R4,#0xF18]
D6610:  SXTH            R3, R0
D6612:  MULS            R3, R1
D6614:  ASRS            R3, R3, #0x10
D6616:  SMLABT.W        R3, R0, R12, R3
D661A:  ADD.W           R0, LR, R0,ASR#15
D661E:  ASRS            R0, R0, #1
D6620:  MLA.W           R0, R0, R12, R3
D6624:  MOVS            R3, #0
D6626:  STR.W           R0, [R4,#0xF18]
D662A:  STR.W           R6, [R4,#0xF1C]
D662E:  STR.W           R5, [R4,#0xF20]
D6632:  STR.W           R2, [R4,#0xF24]
D6636:  LDR.W           R0, [R4,#0xF28]
D663A:  SXTH            R2, R0
D663C:  MULS            R2, R1
D663E:  ASRS            R2, R2, #0x10
D6640:  SMLABT.W        R2, R0, R12, R2
D6644:  ADD.W           R0, LR, R0,ASR#15
D6648:  ASRS            R0, R0, #1
D664A:  MLA.W           R0, R0, R12, R2
D664E:  STR.W           R0, [R4,#0xF28]
D6652:  LDR.W           R0, [R4,#0xF2C]
D6656:  SXTH            R2, R0
D6658:  MULS            R2, R1
D665A:  ASRS            R2, R2, #0x10
D665C:  SMLABT.W        R2, R0, R12, R2
D6660:  ADD.W           R0, LR, R0,ASR#15
D6664:  ASRS            R0, R0, #1
D6666:  MLA.W           R0, R0, R12, R2
D666A:  STR.W           R0, [R4,#0xF2C]
D666E:  LDR.W           R0, [R4,#0xF30]
D6672:  SXTH            R2, R0
D6674:  MULS            R2, R1
D6676:  ASRS            R2, R2, #0x10
D6678:  SMLABT.W        R2, R0, R12, R2
D667C:  ADD.W           R0, LR, R0,ASR#15
D6680:  ASRS            R0, R0, #1
D6682:  MLA.W           R0, R0, R12, R2
D6686:  STR.W           R0, [R4,#0xF30]
D668A:  LDR.W           R0, [R4,#0xF34]
D668E:  SXTH            R2, R0
D6690:  MULS            R2, R1
D6692:  ASRS            R2, R2, #0x10
D6694:  SMLABT.W        R2, R0, R12, R2
D6698:  ADD.W           R0, LR, R0,ASR#15
D669C:  ASRS            R0, R0, #1
D669E:  MLA.W           R0, R0, R12, R2
D66A2:  STR.W           R0, [R4,#0xF34]
D66A6:  LDR.W           R0, [R4,#0xF38]
D66AA:  SXTH            R2, R0
D66AC:  MULS            R2, R1
D66AE:  ASRS            R2, R2, #0x10
D66B0:  SMLABT.W        R2, R0, R12, R2
D66B4:  ADD.W           R0, LR, R0,ASR#15
D66B8:  ASRS            R0, R0, #1
D66BA:  MLA.W           R0, R0, R12, R2
D66BE:  STR.W           R0, [R4,#0xF38]
D66C2:  LDR.W           R0, [R4,#0xF3C]
D66C6:  SXTH            R2, R0
D66C8:  MULS            R2, R1
D66CA:  ASRS            R2, R2, #0x10
D66CC:  SMLABT.W        R2, R0, R12, R2
D66D0:  ADD.W           R0, LR, R0,ASR#15
D66D4:  ASRS            R0, R0, #1
D66D6:  MLA.W           R0, R0, R12, R2
D66DA:  MOV.W           R2, R12,ASR#16
D66DE:  STR.W           R0, [R4,#0xF3C]
D66E2:  LDR.W           R0, [R8,R3,LSL#2]
D66E6:  SXTH            R6, R0
D66E8:  ADD.W           R0, LR, R0,ASR#15
D66EC:  MUL.W           R5, R6, R1
D66F0:  ASRS            R0, R0, #1
D66F2:  SMULBB.W        R6, R6, R2
D66F6:  ADD.W           R6, R6, R5,ASR#16
D66FA:  MLA.W           R0, R0, R12, R6
D66FE:  STR.W           R0, [R8,R3,LSL#2]
D6702:  ADDS            R3, #1
D6704:  CMP             R3, #0x18
D6706:  BNE             loc_D66E2
D6708:  LDR             R0, [R7,#arg_1C]
D670A:  MOV.W           R8, #1
D670E:  LDR.W           R3, [R7,#var_E0]
D6712:  LDR.W           R2, [R7,#var_F4]
D6716:  MOV             R1, R0
D6718:  LDR.W           R0, [R1,R3,LSL#2]
D671C:  STR             R0, [R2]
D671E:  LDR.W           R0, [R7,#var_E4]
D6722:  LDR.W           R9, [R1,R3,LSL#2]
D6726:  LDR             R2, [R0]
D6728:  CMP             R2, #1
D672A:  BLT.W           loc_D60B4
D672E:  LDR.W           R5, [R7,#var_E0]
D6732:  SUB.W           R4, R7, #-var_100
D6736:  LDR             R3, [R7,#arg_8]
D6738:  LDR.W           R6, [R7,#var_40]
D673C:  ADD.W           R0, R5, R5,LSL#2
D6740:  ADD.W           R1, R5, R5,LSL#1
D6744:  ADD.W           R0, R3, R0,LSL#1
D6748:  LDR             R3, [R7,#arg_C]
D674A:  STR.W           R0, [R7,#var_C8]
D674E:  MOV.W           R12, R6,ASR#2
D6752:  ADD.W           R1, R3, R1,LSL#4
D6756:  STR.W           R1, [R7,#var_40]
D675A:  LDR             R1, [R7,#arg_18]
D675C:  ORR.W           LR, R12, R6,LSL#15
D6760:  LDR             R3, [R7,#arg_14]
D6762:  LDR.W           R6, [R1,R5,LSL#2]
D6766:  LDR.W           R1, [R4,#-8]
D676A:  SUB.W           R4, R7, #-var_100
D676E:  LDRSH.W         R3, [R3,R5,LSL#2]
D6772:  LDR.W           R11, [R1]
D6776:  LDR.W           R1, [R4,#-0x10]
D677A:  LDR.W           R4, [R7,#var_70]
D677E:  LDR             R0, [R1]
D6780:  RSB.W           R5, R4, #2
D6784:  LDR.W           R1, [R7,#var_6C]
D6788:  LDR             R1, [R1]
D678A:  STR.W           R3, [R7,#var_7C]
D678E:  ADD             R1, R5
D6790:  LDR.W           R3, [R7,#dest]
D6794:  RSB.W           R5, R4, #1
D6798:  LDR.W           R4, [R7,#var_3C]
D679C:  ADD.W           R1, R10, R1,LSL#2
D67A0:  STR.W           R1, [R7,#var_80]
D67A4:  ADD.W           R1, R8, R9,ASR#21
D67A8:  MOV.W           R10, #0
D67AC:  ASRS            R1, R1, #1
D67AE:  STR.W           R1, [R7,#var_84]
D67B2:  SUBS            R1, R0, #1
D67B4:  STR.W           R1, [R7,#var_88]
D67B8:  ADD.W           R1, R3, R1,LSL#2
D67BC:  ADD.W           R1, R1, #0x1080
D67C0:  STR.W           R1, [R7,#var_8C]
D67C4:  LDR.W           R1, [R7,#var_34]
D67C8:  LDR             R1, [R1]
D67CA:  ADD             R1, R5
D67CC:  ADD.W           R1, R3, R1,LSL#2
D67D0:  ADD.W           R1, R1, #0x500
D67D4:  STR.W           R1, [R7,#var_58]
D67D8:  LDR             R1, [R4]
D67DA:  SBFX.W          R3, R9, #6, #0x10
D67DE:  STR.W           R3, [R7,#var_90]
D67E2:  MOV.W           R3, LR,ASR#16
D67E6:  STR.W           R0, [R7,#var_78]
D67EA:  ASRS            R0, R0, #1
D67EC:  STR.W           R3, [R7,#var_B8]
D67F0:  SXTH.W          R3, R12
D67F4:  STR.W           R0, [R7,#var_9C]
D67F8:  MOV.W           R0, R11,ASR#1
D67FC:  SUB.W           LR, R7, #-var_100
D6800:  STR.W           R3, [R7,#var_BC]
D6804:  ASRS            R3, R6, #0x10
D6806:  STR.W           R0, [R7,#var_A0]
D680A:  LDR.W           R0, [R7,#var_F0]
D680E:  STR.W           R3, [R7,#var_94]
D6812:  SXTH            R3, R6
D6814:  STR.W           R11, [R7,#var_74]
D6818:  LDR.W           R11, [LR,#-0x14]
D681C:  STR.W           R3, [R7,#var_98]
D6820:  LDRB            R0, [R0,#0x1D]
D6822:  STR.W           R0, [R7,#var_A4]
D6826:  STR.W           R2, [R7,#var_60]
D682A:  MOVW            R0, #0x636B
D682E:  MOVW            R2, #0x8435
D6832:  MOVT            R0, #0x3619
D6836:  MOVT            R2, #0xBB3
D683A:  MLA.W           R0, R1, R2, R0
D683E:  STR             R0, [R4]
D6840:  LDR.W           R5, [R7,#var_54]
D6844:  LDR.W           R3, [R11]
D6848:  LDR.W           R2, [R7,#var_A0]
D684C:  LDRSH.W         R0, [R5]
D6850:  LDR.W           R4, [R11,#-4]
D6854:  LDRSH.W         R1, [R5,#2]
D6858:  SMLABT.W        R2, R0, R3, R2
D685C:  UXTH            R3, R3
D685E:  MULS            R0, R3
D6860:  LDRSH.W         R6, [R5,#4]
D6864:  LDR.W           R3, [R11,#-0xC]
D6868:  LDRSH.W         LR, [R5,#6]
D686C:  ADD.W           R0, R2, R0,ASR#16
D6870:  UXTH            R2, R4
D6872:  SMLATB.W        R0, R4, R1, R0
D6876:  LDR.W           R4, [R11,#-0x14]
D687A:  MULS            R1, R2
D687C:  ADD.W           R0, R0, R1,ASR#16
D6880:  LDR.W           R1, [R11,#-8]
D6884:  UXTH            R2, R1
D6886:  SMLATB.W        R0, R1, R6, R0
D688A:  MULS            R2, R6
D688C:  UXTH            R1, R3
D688E:  LDR.W           R6, [R11,#-0x10]
D6892:  MUL.W           R1, R1, LR
D6896:  ADD.W           R0, R0, R2,ASR#16
D689A:  LDRSH.W         R2, [R5,#8]
D689E:  SMLATB.W        R0, R3, LR, R0
D68A2:  UXTH            R3, R6
D68A4:  MULS            R3, R2
D68A6:  ADD.W           R0, R0, R1,ASR#16
D68AA:  LDRSH.W         R1, [R5,#0xA]
D68AE:  SMLATB.W        R0, R6, R2, R0
D68B2:  UXTH            R2, R4
D68B4:  MULS            R2, R1
D68B6:  ADD.W           R0, R0, R3,ASR#16
D68BA:  LDRD.W          LR, R3, [R11,#-0x24]
D68BE:  SMLATB.W        R0, R4, R1, R0
D68C2:  LDRD.W          R6, R1, [R11,#-0x1C]
D68C6:  LDRSH.W         R4, [R5,#0xC]
D68CA:  ADD.W           R0, R0, R2,ASR#16
D68CE:  UXTH            R2, R1
D68D0:  MULS            R2, R4
D68D2:  SMLATB.W        R0, R1, R4, R0
D68D6:  LDRSH.W         R1, [R5,#0xE]
D68DA:  UXTH            R4, R3
D68DC:  ADD.W           R0, R0, R2,ASR#16
D68E0:  LDRSH.W         R2, [R5,#0x10]
D68E4:  SMLATB.W        R0, R6, R1, R0
D68E8:  UXTH            R6, R6
D68EA:  MULS            R6, R1
D68EC:  LDRSH.W         R5, [R5,#0x12]
D68F0:  MULS            R4, R2
D68F2:  ADD.W           R0, R0, R6,ASR#16
D68F6:  SMLATB.W        R0, R3, R2, R0
D68FA:  UXTH.W          R2, LR
D68FE:  MULS            R2, R5
D6900:  ADD.W           R0, R0, R4,ASR#16
D6904:  SMLATB.W        R0, LR, R5, R0
D6908:  ADD.W           R0, R0, R2,ASR#16
D690C:  STR.W           R0, [R7,#var_28]
D6910:  LDR.W           R0, [R7,#var_74]
D6914:  CMP             R0, #0x10
D6916:  BNE             loc_D69AC
D6918:  LDR.W           R12, [R7,#var_54]
D691C:  MOV             LR, R10
D691E:  LDR.W           R0, [R11,#-0x3C]
D6922:  LDRSH.W         R1, [R12,#0x14]
D6926:  LDRSH.W         R2, [R12,#0x16]
D692A:  LDRSH.W         R6, [R12,#0x18]
D692E:  LDRSH.W         R9, [R12,#0x1A]
D6932:  STR.W           R0, [R7,#var_2C]
D6936:  LDR.W           R0, [R11,#-0x38]
D693A:  STR.W           R0, [R7,#var_B4]
D693E:  LDRD.W          R8, R0, [R11,#-0x34]
D6942:  LDRD.W          R4, R5, [R11,#-0x2C]
D6946:  LDR.W           R3, [R7,#var_28]
D694A:  SMLABT.W        R10, R1, R5, R3
D694E:  UXTH            R5, R5
D6950:  MULS            R1, R5
D6952:  UXTH.W          R3, R8
D6956:  MUL.W           R3, R3, R9
D695A:  ADD.W           R1, R10, R1,ASR#16
D695E:  MOV             R10, LR
D6960:  SMLATB.W        R1, R4, R2, R1
D6964:  UXTH            R4, R4
D6966:  MULS            R2, R4
D6968:  LDRSH.W         R4, [R12,#0x1E]
D696C:  ADD.W           R1, R1, R2,ASR#16
D6970:  SMLATB.W        R1, R0, R6, R1
D6974:  UXTH            R0, R0
D6976:  MULS            R0, R6
D6978:  LDR.W           R6, [R7,#var_B4]
D697C:  UXTH            R2, R6
D697E:  ADD.W           R0, R1, R0,ASR#16
D6982:  LDRSH.W         R1, [R12,#0x1C]
D6986:  SMLATB.W        R0, R8, R9, R0
D698A:  MULS            R2, R1
D698C:  ADD.W           R0, R0, R3,ASR#16
D6990:  LDR.W           R3, [R7,#var_2C]
D6994:  SMLATB.W        R0, R6, R1, R0
D6998:  UXTH            R1, R3
D699A:  MULS            R1, R4
D699C:  ADD.W           R0, R0, R2,ASR#16
D69A0:  SMLATB.W        R0, R3, R4, R0
D69A4:  ADD.W           R0, R0, R1,ASR#16
D69A8:  STR.W           R0, [R7,#var_28]
D69AC:  LDR.W           R0, [R7,#var_A4]
D69B0:  STR.W           R10, [R7,#var_4C]
D69B4:  CMP             R0, #2
D69B6:  BNE             loc_D6A30
D69B8:  LDR.W           R10, [R7,#var_80]
D69BC:  LDRD.W          LR, R8, [R10,#-0x10]
D69C0:  LDRD.W          R12, R3, [R10,#-8]
D69C4:  LDR.W           R0, [R7,#var_C8]
D69C8:  LDR.W           R6, [R10]
D69CC:  ADD.W           R10, R10, #4
D69D0:  MOV             R4, R0
D69D2:  LDRSH.W         R5, [R4]
D69D6:  UXTH            R1, R6
D69D8:  LDRSH.W         R2, [R4,#2]
D69DC:  LDRSH.W         R0, [R4,#4]
D69E0:  MULS            R1, R5
D69E2:  LDRSH.W         R9, [R4,#6]
D69E6:  ASRS            R1, R1, #0x10
D69E8:  SMLABT.W        R1, R5, R6, R1
D69EC:  SMLATB.W        R1, R3, R2, R1
D69F0:  UXTH            R3, R3
D69F2:  MULS            R3, R2
D69F4:  UXTH.W          R2, R12
D69F8:  ADD.W           R1, R1, R3,ASR#16
D69FC:  UXTH.W          R3, LR
D6A00:  SMLATB.W        R1, R12, R0, R1
D6A04:  MULS            R0, R2
D6A06:  LDRSH.W         R2, [R4,#8]
D6A0A:  STR.W           R10, [R7,#var_80]
D6A0E:  MULS            R3, R2
D6A10:  ADD.W           R0, R1, R0,ASR#16
D6A14:  UXTH.W          R1, R8
D6A18:  MUL.W           R1, R1, R9
D6A1C:  SMLATB.W        R0, R8, R9, R0
D6A20:  ADD.W           R0, R0, R1,ASR#16
D6A24:  SMLATB.W        R0, LR, R2, R0
D6A28:  ADD.W           R0, R0, R3,ASR#16
D6A2C:  ADDS            R0, #2
D6A2E:  B               loc_D6A32
D6A30:  MOVS            R0, #0
D6A32:  STR.W           R0, [R7,#var_2C]
D6A36:  LDR.W           R0, [R7,#var_44]
D6A3A:  LDR.W           R1, [R7,#var_A8]
D6A3E:  LDR             R0, [R0]
D6A40:  LDR             R5, [R1]
D6A42:  STR             R0, [R1]
D6A44:  LDR.W           R1, [R7,#var_40]
D6A48:  UXTH            R2, R0
D6A4A:  LDR.W           R3, [R7,#var_9C]
D6A4E:  LDR.W           R12, [R7,#var_78]
D6A52:  LDRSH.W         R1, [R1]
D6A56:  CMP.W           R12, #3
D6A5A:  MUL.W           R2, R1, R2
D6A5E:  SMLABT.W        R0, R1, R0, R3
D6A62:  ADD.W           LR, R0, R2,ASR#16
D6A66:  BLT             loc_D6AB4
D6A68:  LDR.W           R0, [R7,#var_CC]
D6A6C:  MOVS            R4, #0
D6A6E:  LDR.W           R10, [R7,#var_C0]
D6A72:  ADD.W           R3, R10, R4,LSL#1
D6A76:  LDR.W           R2, [R0,#-4]
D6A7A:  LDR.W           R8, [R0]
D6A7E:  STR.W           R5, [R0,#-4]
D6A82:  LDRSH.W         R1, [R3,#2]
D6A86:  UXTH            R6, R2
D6A88:  STR             R2, [R0]
D6A8A:  ADDS            R0, #8
D6A8C:  LDRSH.W         R3, [R3,#4]
D6A90:  MUL.W           R9, R6, R3
D6A94:  SMLABT.W        R6, R1, R5, LR
D6A98:  UXTH            R5, R5
D6A9A:  MULS            R1, R5
D6A9C:  MOV             R5, R8
D6A9E:  ADD.W           R1, R6, R1,ASR#16
D6AA2:  SMLATB.W        R1, R2, R3, R1
D6AA6:  ADD.W           LR, R1, R9,ASR#16
D6AAA:  ADDS            R1, R4, #4
D6AAC:  ADDS            R4, #2
D6AAE:  CMP             R1, R12
D6AB0:  BLT             loc_D6A72
D6AB2:  B               loc_D6AB6
D6AB4:  MOV             R8, R5
D6AB6:  LDR.W           R0, [R7,#var_8C]
D6ABA:  STR.W           R8, [R0]
D6ABE:  LDR.W           R0, [R7,#var_34]
D6AC2:  LDR.W           R1, [R7,#var_40]
D6AC6:  LDR.W           R2, [R7,#var_88]
D6ACA:  LDR             R0, [R0]
D6ACC:  LDR.W           R3, [R7,#var_48]
D6AD0:  LDRSH.W         R1, [R1,R2,LSL#1]
D6AD4:  LDR.W           R2, [R7,#dest]
D6AD8:  LDR.W           R10, [R7,#var_98]
D6ADC:  ADD.W           R0, R2, R0,LSL#2
D6AE0:  UXTH.W          R2, R8
D6AE4:  LDR             R3, [R3]
D6AE6:  MUL.W           R12, R2, R1
D6AEA:  LDR.W           R0, [R0,#0x4FC]
D6AEE:  LDR.W           R2, [R7,#var_7C]
D6AF2:  SMLABT.W        R1, R1, R8, LR
D6AF6:  UXTH            R5, R3
D6AF8:  UXTH            R4, R0
D6AFA:  MUL.W           R9, R4, R10
D6AFE:  LDR.W           R4, [R7,#var_94]
D6B02:  MUL.W           R6, R5, R2
D6B06:  MULS            R5, R4
D6B08:  ASRS            R6, R6, #0x10
D6B0A:  ASRS            R5, R5, #0x10
D6B0C:  SMLATB.W        R5, R3, R4, R5
D6B10:  SMLATB.W        R0, R0, R10, R5
D6B14:  SMLATB.W        R3, R3, R2, R6
D6B18:  ADD.W           LR, R0, R9,ASR#16
D6B1C:  ADD.W           R0, R1, R12,ASR#16
D6B20:  LDR.W           R1, [R7,#var_70]
D6B24:  ADD.W           R9, R3, R0,LSL#1
D6B28:  LDR.W           R0, [R7,#var_28]
D6B2C:  CMP             R1, #1
D6B2E:  RSB.W           R0, R9, R0,LSL#2
D6B32:  SUB.W           R0, R0, LR
D6B36:  BLT             loc_D6B7C
D6B38:  LDR.W           R6, [R7,#var_58]
D6B3C:  LDRD.W          R1, R2, [R6,#-8]
D6B40:  LDR             R3, [R6]
D6B42:  ADDS            R6, #4
D6B44:  LDR.W           R4, [R7,#var_BC]
D6B48:  ADD             R1, R3
D6B4A:  LDR.W           R5, [R7,#var_B8]
D6B4E:  STR.W           R6, [R7,#var_58]
D6B52:  UXTH            R3, R1
D6B54:  MUL.W           R12, R3, R4
D6B58:  SMULTB.W        R3, R2, R5
D6B5C:  UXTH            R2, R2
D6B5E:  MULS            R2, R5
D6B60:  SMLATB.W        R1, R1, R4, R3
D6B64:  ADD.W           R1, R1, R12,ASR#16
D6B68:  ADD.W           R1, R1, R2,ASR#16
D6B6C:  LDR.W           R2, [R7,#var_2C]
D6B70:  ADD.W           R0, R2, R0,LSL#1
D6B74:  SUB.W           R0, R0, R1,LSL#1
D6B78:  ASRS            R0, R0, #2
D6B7A:  B               loc_D6B7E
D6B7C:  ASRS            R0, R0, #1
D6B7E:  LDR.W           R10, [R7,#var_4C]
D6B82:  ADDS            R0, #1
D6B84:  LDR.W           R3, [R7,#var_AC]
D6B88:  LDRD.W          R2, R1, [R7,#var_3C]
D6B8C:  LDR.W           R1, [R1,R10,LSL#2]
D6B90:  LDR             R2, [R2]
D6B92:  SUB.W           R8, R1, R0,ASR#1
D6B96:  MOVW            R0, #0x8000
D6B9A:  LDR             R1, [R7,#arg_24]
D6B9C:  MOVT            R0, #0xFFFF
D6BA0:  CMP             R2, #0
D6BA2:  IT LT
D6BA4:  RSBLT.W         R8, R8, #0
D6BA8:  ADD.W           R0, R0, #0x400
D6BAC:  CMP             R8, R0
D6BAE:  IT LE
D6BB0:  MOVLE           R8, R0
D6BB2:  CMP.W           R8, #0x7800
D6BB6:  IT GE
D6BB8:  MOVGE.W         R8, #0x7800
D6BBC:  LDR.W           R0, [R7,#var_50]
D6BC0:  CMP.W           R1, #0x800
D6BC4:  SUB.W           R0, R8, R0
D6BC8:  BLE             loc_D6BDC
D6BCA:  CMP             R0, R3
D6BCC:  BLE             loc_D6BD2
D6BCE:  SUBS            R0, R0, R3
D6BD0:  B               loc_D6BDC
D6BD2:  LDR.W           R1, [R7,#var_DC]
D6BD6:  CMP             R0, R1
D6BD8:  BGE             loc_D6BF4
D6BDA:  ADD             R0, R3
D6BDC:  ASRS            R5, R0, #0xA
D6BDE:  CMP             R5, #1
D6BE0:  BLT             loc_D6BF6
D6BE2:  LDR.W           R0, [R7,#var_C4]
D6BE6:  ADD.W           R1, R0, R5,LSL#10
D6BEA:  ADD.W           R0, R1, #0x400
D6BEE:  MOV             R6, R1
D6BF0:  MOV             R4, R0
D6BF2:  B               loc_D6C34
D6BF4:  ASRS            R5, R0, #0x1F
D6BF6:  LDR.W           R0, [R7,#var_D0]
D6BFA:  CMP             R5, #0
D6BFC:  LDR.W           R1, [R7,#var_50]
D6C00:  MOV             R3, R0
D6C02:  MOV             R2, R1
D6C04:  MOV             R4, R3
D6C06:  MOV             R6, R2
D6C08:  BEQ             loc_D6C34
D6C0A:  ADDS            R0, R5, #1
D6C0C:  LDR.W           R1, [R7,#var_D8]
D6C10:  LDR.W           R0, [R7,#var_50]
D6C14:  LDR.W           R6, [R7,#var_D4]
D6C18:  MOV             R2, R0
D6C1A:  MOV             R4, R2
D6C1C:  BEQ             loc_D6C34
D6C1E:  MOVS            R0, #0x50 ; 'P'
D6C20:  LDR.W           R1, [R7,#var_50]
D6C24:  ORR.W           R0, R0, R5,LSL#10
D6C28:  ADD             R1, R0
D6C2A:  RSB.W           R0, R1, #0xFC00
D6C2E:  NEGS            R6, R1
D6C30:  ADD.W           R4, R1, #0x400
D6C34:  LDR.W           R5, [R7,#var_B0]
D6C38:  SXTH            R3, R6
D6C3A:  SUB.W           R2, R8, R1
D6C3E:  SXTH            R0, R0
D6C40:  MOV.W           R12, #1
D6C44:  SMULBB.W        R3, R3, R5
D6C48:  SMLABB.W        R2, R2, R2, R3
D6C4C:  SUB.W           R3, R8, R4
D6C50:  SMULBB.W        R0, R0, R5
D6C54:  MOV.W           R8, #1
D6C58:  SMLABB.W        R0, R3, R3, R0
D6C5C:  CMP             R0, R2
D6C5E:  IT LT
D6C60:  MOVLT           R1, R4
D6C62:  LDR.W           R5, [R7,#var_64]
D6C66:  ADD.W           R0, R12, R1,LSR#9
D6C6A:  LSLS            R2, R1, #4
D6C6C:  LSRS            R0, R0, #1
D6C6E:  STRB.W          R0, [R5,R10]
D6C72:  LDR.W           R4, [R7,#var_3C]
D6C76:  LDR             R0, [R4]
D6C78:  CMP             R0, #0
D6C7A:  MOV.W           R0, #0
D6C7E:  IT LT
D6C80:  SUBLT.W         R2, R0, R1,LSL#4
D6C84:  LDR.W           R0, [R7,#var_2C]
D6C88:  LDR.W           R1, [R7,#var_28]
D6C8C:  LDR.W           R6, [R7,#var_90]
D6C90:  ADD.W           R0, R2, R0,LSL#1
D6C94:  LDR.W           R2, [R7,#var_84]
D6C98:  ADD.W           R1, R0, R1,LSL#4
D6C9C:  LSLS            R0, R0, #1
D6C9E:  UXTH            R3, R1
D6CA0:  MULS            R2, R1
D6CA2:  MULS            R3, R6
D6CA4:  SMLABT.W        R2, R6, R1, R2
D6CA8:  MOV             R6, #0xFFFF8000
D6CB0:  ADD.W           R2, R2, R3,ASR#16
D6CB4:  ADD.W           R2, R12, R2,ASR#7
D6CB8:  ASRS            R3, R2, #1
D6CBA:  CMP             R3, R6
D6CBC:  MOV             R3, R6
D6CBE:  IT GT
D6CC0:  ASRGT           R3, R2, #1
D6CC2:  MOVW            R2, #0x7FFF
D6CC6:  CMP             R3, R2
D6CC8:  IT GE
D6CCA:  MOVGE           R3, R2
D6CCC:  LDR.W           R2, [R7,#var_68]
D6CD0:  STRH.W          R3, [R2,R10,LSL#1]
D6CD4:  STR.W           R1, [R11,#4]!
D6CD8:  LDR.W           R2, [R7,#var_38]
D6CDC:  LDR.W           R2, [R2,R10,LSL#2]
D6CE0:  SUB.W           R1, R1, R2,LSL#4
D6CE4:  LDR.W           R2, [R7,#var_44]
D6CE8:  STR             R1, [R2]
D6CEA:  SUB.W           R1, R1, R9,LSL#2
D6CEE:  LDR.W           R2, [R7,#var_48]
D6CF2:  STR             R1, [R2]
D6CF4:  SUB.W           R1, R1, LR,LSL#2
D6CF8:  LDR.W           R6, [R7,#var_34]
D6CFC:  LDR.W           R3, [R7,#dest]
D6D00:  LDR             R2, [R6]
D6D02:  ADD.W           R2, R3, R2,LSL#2
D6D06:  STR.W           R1, [R2,#0x500]
D6D0A:  LDR.W           R1, [R7,#var_6C]
D6D0E:  LDR.W           R2, [R7,#var_5C]
D6D12:  MOV             R3, R1
D6D14:  LDR             R1, [R3]
D6D16:  STR.W           R0, [R2,R1,LSL#2]
D6D1A:  LDR             R0, [R6]
D6D1C:  ADDS            R0, #1
D6D1E:  STR             R0, [R6]
D6D20:  ADDS            R0, R1, #1
D6D22:  STR             R0, [R3]
D6D24:  LDRSB.W         R0, [R5,R10]
D6D28:  ADD.W           R10, R10, #1
D6D2C:  LDR             R1, [R4]
D6D2E:  ADD             R1, R0
D6D30:  STR             R1, [R4]
D6D32:  LDR.W           R2, [R7,#var_60]
D6D36:  CMP             R10, R2
D6D38:  BNE.W           loc_D682A
D6D3C:  B.W             loc_D60B4
D6D40:  SUB.W           R0, R7, #-var_100
D6D44:  LDR.W           R5, [R0,#-0xC]
D6D48:  SUB.W           R0, R7, #-var_100
D6D4C:  LDR.W           R4, [R0,#-0x24]
D6D50:  SUB.W           R0, R7, #-var_100
D6D54:  LDR.W           LR, [R5]
D6D58:  LDR.W           R2, [R0,#-0x28]
D6D5C:  LDR.W           R8, [R4]
D6D60:  B               loc_D6D6A
D6D62:  SUB.W           R0, R7, #-var_100
D6D66:  LDR.W           R4, [R0,#-0x24]
D6D6A:  LDR             R0, [R7,#arg_20]
D6D6C:  ADD.W           R0, R0, R6,LSL#2
D6D70:  LDR.W           R0, [R0,#-4]
D6D74:  STR             R0, [R2]
D6D76:  MOV.W           R2, LR,LSL#1; n
D6D7A:  LDR.W           R6, [R7,#dest]
D6D7E:  ADD.W           R1, R6, R8,LSL#1; src
D6D82:  MOV             R0, R6; dest
D6D84:  BLX             j_memmove
D6D88:  LDR             R1, [R4]
D6D8A:  ADD.W           R0, R6, #0x500; dest
D6D8E:  LDR             R2, [R5]
D6D90:  ADD.W           R1, R0, R1,LSL#2; src
D6D94:  LSLS            R2, R2, #2; n
D6D96:  BLX             j_memmove
D6D9A:  LDR             R0, =(__stack_chk_guard_ptr - 0xD6DA4)
D6D9C:  LDR.W           R1, [R7,#var_24]
D6DA0:  ADD             R0, PC; __stack_chk_guard_ptr
D6DA2:  LDR             R0, [R0]; __stack_chk_guard
D6DA4:  LDR             R0, [R0]
D6DA6:  SUBS            R0, R0, R1
D6DA8:  ITTTT EQ
D6DAA:  SUBEQ.W         R4, R7, #-var_1C
D6DAE:  MOVEQ           SP, R4
D6DB0:  POPEQ.W         {R8-R11}
D6DB4:  POPEQ           {R4-R7,PC}
D6DB6:  BLX             __stack_chk_fail
