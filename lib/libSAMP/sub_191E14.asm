; =========================================================
; Game Engine Function: sub_191E14
; Address            : 0x191E14 - 0x19273C
; =========================================================

191E14:  PUSH            {R4-R7,LR}
191E16:  ADD             R7, SP, #0xC
191E18:  PUSH.W          {R8-R11}
191E1C:  SUB             SP, SP, #0xD4
191E1E:  MOV             R6, R0
191E20:  LDR.W           R0, =(__stack_chk_guard_ptr - 0x191E2E)
191E24:  STR.W           R2, [R7,#var_BC]
191E28:  MOVS            R2, #7
191E2A:  ADD             R0, PC; __stack_chk_guard_ptr
191E2C:  STR.W           R3, [R7,#var_68]
191E30:  STR.W           R1, [R7,#var_DC]
191E34:  LDR             R0, [R0]; __stack_chk_guard
191E36:  LDR             R0, [R0]
191E38:  STR.W           R0, [R7,#var_24]
191E3C:  LDR.W           R0, [R6,#0x918]
191E40:  LDR.W           R1, [R6,#0x920]
191E44:  ADD             R0, R1
191E46:  ADD.W           R0, R2, R0,LSL#2
191E4A:  BIC.W           R0, R0, #7
191E4E:  SUB.W           R3, SP, R0
191E52:  ADD.W           R0, R2, R1,LSL#1
191E56:  BIC.W           R0, R0, #7
191E5A:  STR.W           R3, [R7,#var_CC]
191E5E:  MOV             SP, R3
191E60:  SUB.W           R0, SP, R0
191E64:  STR.W           R0, [R7,#var_64]
191E68:  MOV             SP, R0
191E6A:  MOVW            R0, #0x1094
191E6E:  LDR             R0, [R6,R0]
191E70:  ASRS            R0, R0, #6
191E72:  STR.W           R0, [R7,#var_50]
191E76:  MOVW            R0, #0x1098
191E7A:  LDR             R1, [R6,R0]
191E7C:  ADD             R0, R6
191E7E:  STR.W           R1, [R7,#var_F0]
191E82:  ASRS            R1, R1, #6
191E84:  STR.W           R1, [R7,#var_EC]
191E88:  STR.W           R1, [R7,#var_4C]
191E8C:  MOVW            R1, #0x105A
191E90:  ADDS            R4, R6, R1
191E92:  LDR.W           R1, [R6,#0x948]
191E96:  STR.W           R0, [R7,#var_6C]
191E9A:  CBZ             R1, loc_191EAE
191E9C:  MOVS            R0, #0
191E9E:  STR             R0, [R4,#0x1C]
191EA0:  STR             R0, [R4,#0x18]
191EA2:  STR             R0, [R4,#0x14]
191EA4:  STR             R0, [R4,#0x10]
191EA6:  STR             R0, [R4,#0xC]
191EA8:  STR             R0, [R4,#8]
191EAA:  STR             R0, [R4,#4]
191EAC:  STR             R0, [R4]
191EAE:  LDR.W           R0, [R6,#0x914]
191EB2:  LDR.W           R1, [R6,#0x91C]
191EB6:  SUB             SP, SP, #0x10
191EB8:  SUB.W           R2, R7, #-var_50
191EBC:  ADDS            R3, R6, #4
191EBE:  STR.W           R3, [R7,#var_7C]
191EC2:  STRD.W          R3, R2, [SP,#0x100+var_100]
191EC6:  SUB.W           R2, R7, #-var_60
191ECA:  STRD.W          R1, R0, [SP,#0x100+var_F8]
191ECE:  SUB.W           R0, R7, #-var_5C
191ED2:  SUB.W           R1, R7, #-var_54
191ED6:  SUB.W           R3, R7, #-var_58
191EDA:  BL              sub_1928C4
191EDE:  ADD             SP, SP, #0x10
191EE0:  MOVW            R0, #0x1084
191EE4:  MOVW            R2, #0xFD71
191EE8:  LDRH            R0, [R6,R0]
191EEA:  STR.W           R0, [R7,#var_84]
191EEE:  MOVW            R0, #0x10A4
191EF2:  LDR.W           R9, [R7,#var_54]
191EF6:  LDR             R0, [R6,R0]
191EF8:  STR.W           R0, [R7,#var_74]
191EFC:  MOV.W           R0, #0x10A0
191F00:  LDR             R5, [R6,R0]
191F02:  MOV.W           R0, #0x1040
191F06:  LDR.W           R10, [R6,R0]
191F0A:  MOVW            R0, #0x1044
191F0E:  LDR             R0, [R6,R0]
191F10:  STR.W           R0, [R7,#var_70]
191F14:  LDR.W           R1, [R6,#0x924]
191F18:  LDR.W           R0, [R7,#var_58]
191F1C:  STR.W           R0, [R7,#var_78]
191F20:  MOV             R0, R4
191F22:  STR.W           R6, [R7,#var_A0]
191F26:  LDRD.W          R11, R8, [R7,#var_60]
191F2A:  BLX             j_silk_bwexpander
191F2E:  LDR.W           R0, [R7,#var_A0]
191F32:  MOV             R1, R4; src
191F34:  LDR.W           R6, [R0,#0x924]
191F38:  SUB.W           R0, R7, #-dest; dest
191F3C:  LSLS            R2, R6, #1; n
191F3E:  BLX             j_memcpy
191F42:  LDR.W           R1, [R7,#var_78]
191F46:  ASR.W           R0, R11, R9
191F4A:  MOV.W           R11, #1
191F4E:  ASR.W           R1, R8, R1
191F52:  CMP             R1, R0
191F54:  LDR.W           R8, [R7,#var_A0]
191F58:  IT LT
191F5A:  SUBLT           R5, #1
191F5C:  LDR.W           R0, [R7,#var_74]
191F60:  ADR.W           R1, dword_192744
191F64:  MULS            R0, R5
191F66:  SUBS            R0, #0x80
191F68:  CMP             R0, #0
191F6A:  IT LE
191F6C:  MOVLE           R0, #0
191F6E:  LDR.W           R2, [R7,#var_70]
191F72:  STR.W           R0, [R7,#var_74]
191F76:  ADR.W           R0, dword_192740
191F7A:  CMP             R2, #2
191F7C:  IT NE
191F7E:  MOVNE           R1, R0
191F80:  CMP.W           R10, #1
191F84:  IT GE
191F86:  MOVGE           R10, R11
191F88:  MOVW            R0, #0x1050
191F8C:  ADD.W           R3, R8, R0
191F90:  STR.W           R10, [R7,#var_70]
191F94:  MOV.W           R0, #0x1040
191F98:  LDRSH.W         R5, [R1,R10,LSL#1]
191F9C:  LDR.W           R0, [R8,R0]
191FA0:  STR.W           R3, [R7,#var_D0]
191FA4:  CBZ             R0, loc_191FAC
191FA6:  STR.W           R5, [R7,#var_78]
191FAA:  B               loc_192046
191FAC:  MOVW            R0, #0x1044
191FB0:  ADD             R0, R8
191FB2:  LDR             R0, [R0]
191FB4:  CMP             R0, #2
191FB6:  BNE             loc_19200C
191FB8:  STR.W           R5, [R7,#var_78]
191FBC:  MOVW            R1, #0x1052
191FC0:  LDRH            R3, [R3]
191FC2:  MOVW            R5, #0x1054
191FC6:  LDRH.W          R1, [R8,R1]
191FCA:  MOVW            R0, #0x1056
191FCE:  RSB.W           R3, R3, #0x4000
191FD2:  LDRH.W          R5, [R8,R5]
191FD6:  SUBS            R1, R3, R1
191FD8:  LDRH.W          R0, [R8,R0]
191FDC:  SUBS            R1, R1, R5
191FDE:  MOVW            R2, #0x1058
191FE2:  SUBS            R0, R1, R0
191FE4:  LDRH.W          R2, [R8,R2]
191FE8:  MOV             R4, R6
191FEA:  UXTH            R0, R0
191FEC:  MOVW            R6, #0x1090
191FF0:  SUBS            R0, R0, R2
191FF2:  LDRSH.W         R6, [R8,R6]
191FF6:  MOVW            R2, #0xCCD
191FFA:  SXTH            R1, R0
191FFC:  CMP             R1, R2
191FFE:  IT GT
192000:  UXTHGT          R2, R0
192002:  MUL.W           R0, R2, R6
192006:  MOV             R6, R4
192008:  LSRS            R0, R0, #0xE
19200A:  B               loc_192042
19200C:  MOV             R0, R4
19200E:  MOV             R1, R6
192010:  BLX             j_silk_LPC_inverse_pred_gain_c
192014:  CMP.W           R0, #0x8000000
192018:  IT GE
19201A:  MOVGE.W         R0, #0x8000000
19201E:  CMP.W           R0, #0x400000
192022:  IT LE
192024:  MOVLE.W         R0, #0x400000
192028:  LDR.W           R6, [R8,#0x924]
19202C:  LSLS            R0, R0, #3
19202E:  UXTH            R1, R0
192030:  MULS            R1, R5
192032:  ASRS            R1, R1, #0x10
192034:  SMLATB.W        R0, R0, R5, R1
192038:  ASRS            R0, R0, #0xE
19203A:  STR.W           R0, [R7,#var_78]
19203E:  MOV.W           R0, #0x4000
192042:  STR.W           R0, [R7,#var_84]
192046:  MOV.W           R0, #0x1080
19204A:  LDR.W           R0, [R8,R0]
19204E:  STR.W           R0, [R7,#var_9C]
192052:  MOVW            R0, #0x104C
192056:  LDR.W           R2, [R8,#0x920]
19205A:  LDR.W           R0, [R8,R0]
19205E:  SUB             SP, SP, #8
192060:  ADD.W           R10, R11, R0,ASR#7
192064:  SUBS            R0, R2, #2
192066:  SUBS            R0, R0, R6
192068:  LDR.W           R1, [R7,#var_68]
19206C:  SUB.W           R5, R0, R10,ASR#1
192070:  LDR.W           R0, [R7,#var_64]
192074:  STR             R6, [SP,#0xF8+var_F8]
192076:  MOV             R9, R2
192078:  STR             R1, [SP,#0xF8+var_F4]
19207A:  ADD.W           R1, R8, R5,LSL#1
19207E:  SUBS            R3, R2, R5
192080:  ADD.W           R0, R0, R5,LSL#1
192084:  ADDW            R1, R1, #0x544
192088:  SUB.W           R2, R7, #-dest
19208C:  STR.W           R6, [R7,#var_68]
192090:  BLX             j_silk_LPC_analysis_filter
192094:  ADD             SP, SP, #8
192096:  LDR.W           R0, [R7,#var_6C]
19209A:  LDR             R0, [R0]
19209C:  CMP             R0, #0
19209E:  MOV             R1, R0
1920A0:  IT MI
1920A2:  NEGMI           R1, R0
1920A4:  CLZ.W           R4, R1
1920A8:  SUBS            R1, R4, #1
1920AA:  LSL.W           R6, R0, R1
1920AE:  MOV             R0, #0x1FFFFFFF
1920B2:  ASRS            R1, R6, #0x10
1920B4:  BLX             sub_220A40
1920B8:  UXTH            R1, R6
1920BA:  SXTH            R2, R0
1920BC:  MULS            R1, R2
1920BE:  ADD.W           R3, R11, R0,ASR#15
1920C2:  ASRS            R3, R3, #1
1920C4:  ASRS            R1, R1, #0x10
1920C6:  SMLABT.W        R1, R0, R6, R1
1920CA:  NEGS            R1, R1
1920CC:  LSLS            R1, R1, #3
1920CE:  MULS            R3, R1
1920D0:  ADD.W           R3, R3, R0,LSL#16
1920D4:  SMLATB.W        R0, R1, R0, R3
1920D8:  UXTH            R1, R1
1920DA:  MULS            R1, R2
1920DC:  RSB.W           R2, R4, #0x3E ; '>'
1920E0:  CMP             R2, #0x2E ; '.'
1920E2:  ADD.W           R0, R0, R1,ASR#16
1920E6:  BGT             loc_192110
1920E8:  RSB.W           R1, R2, #0x2E ; '.'
1920EC:  LDR.W           R12, [R7,#var_84]
1920F0:  MOV             R2, #0x7FFFFFFF
1920F4:  MOV.W           R3, #0x80000000
1920F8:  LSRS            R2, R1
1920FA:  ASRS            R3, R1
1920FC:  CMP             R3, R2
1920FE:  MOV             LR, R9
192100:  BLE             loc_192126
192102:  CMP             R0, R3
192104:  MOV             R4, R3
192106:  BGT             loc_192134
192108:  CMP             R0, R2
19210A:  IT LT
19210C:  MOVLT           R0, R2
19210E:  B               loc_192132
192110:  SUB.W           R3, R2, #0x2E ; '.'
192114:  MOVS            R1, #0
192116:  CMP             R2, #0x4E ; 'N'
192118:  MOV             LR, R9
19211A:  IT LT
19211C:  ASRLT.W         R1, R0, R3
192120:  LDR.W           R12, [R7,#var_84]
192124:  B               loc_192138
192126:  CMP             R0, R2
192128:  MOV             R4, R2
19212A:  BGT             loc_192134
19212C:  CMP             R0, R3
19212E:  IT LT
192130:  MOVLT           R0, R3
192132:  MOV             R4, R0
192134:  LSL.W           R1, R4, R1
192138:  LDR.W           R2, [R8,#0x924]
19213C:  MOV             R4, #0x3FFFFFFF
192140:  LDR.W           R6, [R8,#0x920]
192144:  CMP             R1, R4
192146:  IT LT
192148:  MOVLT           R4, R1
19214A:  MOV.W           R10, R10,ASR#1
19214E:  MOV             R0, R2
192150:  STR.W           R0, [R7,#var_B8]
192154:  ADDS            R0, R2, R5
192156:  CMP             R0, R6
192158:  BGE             loc_1921AE
19215A:  LDR.W           R1, [R7,#var_68]
19215E:  UXTH.W          R9, R4
192162:  LDR.W           R5, [R7,#var_CC]
192166:  ADD.W           R2, R1, R10
19216A:  LDR.W           R1, [R7,#var_B8]
19216E:  ADD.W           R3, LR, R1
192172:  MOV             R1, #0xFFFFFFF8
192176:  ADD.W           R1, R1, R3,LSL#2
19217A:  SUB.W           R1, R1, R2,LSL#2
19217E:  ADD             R1, R5
192180:  MOV             R5, #0xFFFFFFFC
192184:  ADD.W           R3, R5, R3,LSL#1
192188:  SUB.W           R2, R3, R2,LSL#1
19218C:  LDR.W           R3, [R7,#var_64]
192190:  ADD             R2, R3
192192:  ASRS            R3, R4, #0x10
192194:  LDRSH.W         R5, [R2],#2
192198:  ADDS            R0, #1
19219A:  CMP             R0, R6
19219C:  MUL.W           R4, R9, R5
1921A0:  SMULBB.W        R5, R3, R5
1921A4:  ADD.W           R5, R5, R4,ASR#16
1921A8:  STR.W           R5, [R1],#4
1921AC:  BLT             loc_192194
1921AE:  MOVW            R0, #0x1084
1921B2:  STR.W           R6, [R7,#var_E8]
1921B6:  ADD             R0, R8
1921B8:  STR.W           R0, [R7,#var_E0]
1921BC:  ADD.W           R0, R8, #0x1080
1921C0:  STR.W           R0, [R7,#var_E4]
1921C4:  LDR.W           R1, [R8,#0x914]
1921C8:  CMP             R1, #1
1921CA:  MOV             R0, R1
1921CC:  STR.W           R0, [R7,#var_C0]
1921D0:  BLT.W           loc_19245A
1921D4:  MOVW            R1, #0x104C
1921D8:  LDR.W           R2, [R7,#var_74]
1921DC:  ADD             R1, R8
1921DE:  STR.W           R1, [R7,#var_C4]
1921E2:  LDR.W           R1, [R7,#var_7C]
1921E6:  ADR.W           R0, dword_192748
1921EA:  STR.W           LR, [R7,#var_8C]
1921EE:  MOVS            R6, #0
1921F0:  ADD.W           R1, R1, R2,LSL#2
1921F4:  STR.W           R1, [R7,#var_80]
1921F8:  LDR.W           R1, [R7,#var_70]
1921FC:  LDRSH.W         R0, [R0,R1,LSL#1]
192200:  LDR.W           R1, [R7,#var_D0]
192204:  STR.W           R0, [R7,#var_C8]
192208:  MOVW            R0, #0x1058
19220C:  ADD.W           R9, R8, R0
192210:  MOVW            R0, #0x1056
192214:  ADD.W           LR, R8, R0
192218:  MOVW            R0, #0x1054
19221C:  ADD.W           R2, R8, R0
192220:  MOVW            R0, #0x1052
192224:  ADD.W           R4, R8, R0
192228:  LDR.W           R0, [R7,#var_78]
19222C:  LDR.W           R5, [R8,#0x91C]
192230:  STR.W           LR, [R7,#var_90]
192234:  SXTH            R0, R0
192236:  STR.W           R0, [R7,#var_D8]
19223A:  STRD.W          R4, R2, [R7,#var_98]
19223E:  STR.W           R9, [R7,#var_D4]
192242:  STR.W           R5, [R7,#var_64]
192246:  CMP             R5, #0
192248:  STR.W           R6, [R7,#var_88]
19224C:  STR.W           R12, [R7,#var_84]
192250:  BLE.W           loc_192392
192254:  LDR.W           R6, [R7,#var_8C]
192258:  MOV             R3, R12
19225A:  LDR.W           R0, [R7,#var_CC]
19225E:  MOV.W           R12, #0
192262:  SUB.W           R5, R12, R10,LSL#2
192266:  LDR.W           R10, [R7,#var_9C]
19226A:  ADD.W           R8, R0, R6,LSL#2
19226E:  SXTH            R0, R3
192270:  STR.W           R0, [R7,#var_68]
192274:  LDRSH.W         R0, [R9]
192278:  LDRSH.W         R3, [LR]
19227C:  LDRSH.W         R2, [R2]
192280:  LDRSH.W         R4, [R4]
192284:  LDRSH.W         R1, [R1]
192288:  STR.W           R0, [R7,#var_7C]
19228C:  UXTH            R0, R0
19228E:  STR.W           R0, [R7,#var_A4]
192292:  UXTH            R0, R3
192294:  STR.W           R0, [R7,#var_AC]
192298:  UXTH            R0, R2
19229A:  STR.W           R0, [R7,#var_A8]
19229E:  UXTH            R0, R4
1922A0:  STR.W           R0, [R7,#var_B0]
1922A4:  UXTH            R0, R1
1922A6:  STR.W           R3, [R7,#var_74]
1922AA:  STR.W           R2, [R7,#var_78]
1922AE:  STR.W           R4, [R7,#var_6C]
1922B2:  STR.W           R1, [R7,#var_70]
1922B6:  STR.W           R0, [R7,#var_B4]
1922BA:  MOVW            R0, #0x636B
1922BE:  MOVW            R1, #0x8435
1922C2:  MOVT            R0, #0x3619
1922C6:  MOVT            R1, #0xBB3
1922CA:  MLA.W           R10, R10, R1, R0
1922CE:  LDR.W           R1, [R7,#var_80]
1922D2:  ADD.W           R2, R8, R5
1922D6:  LDR.W           R11, [R7,#var_68]
1922DA:  MOV.W           R0, R10,LSR#25
1922DE:  LDR.W           R0, [R1,R0,LSL#2]
1922E2:  LDRD.W          R6, R1, [R2,#4]
1922E6:  LDR.W           R3, [R7,#var_70]
1922EA:  UXTH            R4, R1
1922EC:  LDR.W           R9, [R7,#var_6C]
1922F0:  UXTH.W          LR, R0
1922F4:  MUL.W           LR, LR, R11
1922F8:  MULS            R4, R3
1922FA:  ASRS            R4, R4, #0x10
1922FC:  SMLABT.W        R1, R3, R1, R4
192300:  UXTH            R4, R6
192302:  MUL.W           R4, R4, R9
192306:  LDR.W           R3, [R7,#var_78]
19230A:  SMLATB.W        R1, R6, R9, R1
19230E:  ADD.W           R1, R1, R4,ASR#16
192312:  LDR.W           R4, [R8,R5]
192316:  ADDS            R5, #4
192318:  SMLATB.W        R1, R4, R3, R1
19231C:  UXTH            R4, R4
19231E:  MULS            R4, R3
192320:  ADD.W           R1, R1, R4,ASR#16
192324:  LDRD.W          R4, R2, [R2,#-8]
192328:  LDR.W           R3, [R7,#var_74]
19232C:  SMLATB.W        R1, R2, R3, R1
192330:  UXTH            R2, R2
192332:  MULS            R2, R3
192334:  LDR.W           R3, [R7,#var_7C]
192338:  ADD.W           R1, R1, R2,ASR#16
19233C:  UXTH            R2, R4
19233E:  MULS            R2, R3
192340:  SMLATB.W        R1, R4, R3, R1
192344:  ADD.W           R1, R1, R2,ASR#16
192348:  SMLATB.W        R0, R0, R11, R1
19234C:  MOVS            R1, #8
19234E:  ADD.W           R0, R0, LR,ASR#16
192352:  ADD.W           R0, R1, R0,LSL#2
192356:  STR.W           R0, [R8,R12,LSL#2]
19235A:  ADD.W           R12, R12, #1
19235E:  LDR.W           R0, [R7,#var_64]
192362:  CMP             R12, R0
192364:  BLT             loc_1922BA
192366:  LDR.W           R0, [R7,#var_8C]
19236A:  SUB.W           LR, R7, #-var_98
19236E:  SUB.W           R11, R7, #-var_AC
192372:  STR.W           R10, [R7,#var_9C]
192376:  ADD             R0, R12
192378:  STR.W           R0, [R7,#var_8C]
19237C:  LDR.W           R8, [R7,#var_A0]
192380:  LDRD.W          R9, R12, [R7,#var_D4]
192384:  LDM.W           LR, {R4,R10,LR}
192388:  LDM.W           R11, {R0,R6,R11}
19238C:  LDRD.W          R5, R3, [R7,#var_B4]
192390:  B               loc_1923A4
192392:  LDRH.W          R11, [R9]
192396:  MOV             R12, R1
192398:  LDRH.W          R0, [LR]
19239C:  MOV             R10, R2
19239E:  LDRH            R6, [R2]
1923A0:  LDRH            R3, [R4]
1923A2:  LDRH            R5, [R1]
1923A4:  LDR.W           R2, [R7,#var_C8]
1923A8:  SXTH            R1, R3
1923AA:  SXTH            R3, R5
1923AC:  SXTH            R0, R0
1923AE:  SXTH            R6, R6
1923B0:  SXTH.W          R5, R11
1923B4:  SMULBB.W        R3, R3, R2
1923B8:  MOV             R11, R12
1923BA:  SMULBB.W        R1, R1, R2
1923BE:  SMULBB.W        R0, R0, R2
1923C2:  SMULBB.W        R6, R6, R2
1923C6:  SMULBB.W        R5, R5, R2
1923CA:  LSRS            R3, R3, #0xF
1923CC:  LSRS            R1, R1, #0xF
1923CE:  STRH.W          R3, [R12]
1923D2:  STRH            R1, [R4]
1923D4:  LSRS            R0, R0, #0xF
1923D6:  LSRS            R1, R6, #0xF
1923D8:  STRH.W          R1, [R10]
1923DC:  STRH.W          R0, [LR]
1923E0:  LSRS            R0, R5, #0xF
1923E2:  STRH.W          R0, [R9]
1923E6:  LDRB.W          R0, [R8,#0xACD]
1923EA:  CBZ             R0, loc_192408
1923EC:  LDR.W           R0, [R7,#var_84]
1923F0:  LDR.W           R1, [R7,#var_D8]
1923F4:  LDR.W           R5, [R7,#var_64]
1923F8:  SXTH            R0, R0
1923FA:  LDR.W           R6, [R7,#var_88]
1923FE:  SMULBB.W        R0, R1, R0
192402:  MOV.W           R12, R0,LSR#15
192406:  B               loc_192410
192408:  LDR.W           R5, [R7,#var_64]
19240C:  LDRD.W          R6, R12, [R7,#var_88]
192410:  LDR.W           R0, [R7,#var_C4]
192414:  MOVW            R2, #0x28F
192418:  ADDS            R6, #1
19241A:  MOV             R3, R0
19241C:  LDR             R0, [R3]
19241E:  UXTH            R1, R0
192420:  SMLABT.W        R0, R2, R0, R0
192424:  MULS            R1, R2
192426:  LDRSH.W         R2, [R8,#0x90C]
19242A:  ADD.W           R0, R0, R1,LSR#16
19242E:  ADD.W           R1, R2, R2,LSL#3
192432:  CMP.W           R0, R1,LSL#9
192436:  IT GE
192438:  LSLGE           R0, R1, #9
19243A:  MOVS            R1, #1
19243C:  STR             R0, [R3]
19243E:  ADD.W           R0, R1, R0,ASR#7
192442:  LDR.W           LR, [R7,#var_90]
192446:  MOV             R1, R11
192448:  MOV.W           R10, R0,ASR#1
19244C:  LDR.W           R0, [R7,#var_C0]
192450:  LDRD.W          R4, R2, [R7,#var_98]
192454:  CMP             R6, R0
192456:  BLT.W           loc_192246
19245A:  LDR.W           R1, [R7,#var_E8]
19245E:  ADDW            R2, R8, #0x504
192462:  LDR.W           R0, [R7,#var_CC]
192466:  STR.W           R12, [R7,#var_84]
19246A:  ADD.W           R12, R0, R1,LSL#2
19246E:  STR.W           R10, [R7,#var_C0]
192472:  SUB.W           R9, R12, #0x40 ; '@'
192476:  STR.W           R2, [R7,#var_C4]
19247A:  LDM             R2!, {R0,R3-R6}
19247C:  MOV             LR, R9
19247E:  STM.W           LR!, {R0,R3-R6}
192482:  LDM             R2!, {R0,R3-R6}
192484:  STM.W           LR!, {R0,R3-R6}
192488:  LDM.W           R2, {R0,R1,R3-R6}
19248C:  STM.W           LR, {R0,R1,R3-R6}
192490:  MOV             R6, R9
192492:  LDR.W           R1, [R8,#0x918]
192496:  CMP             R1, #1
192498:  MOV             R0, R1
19249A:  STR.W           R0, [R7,#var_70]
19249E:  BLT.W           loc_1926D8
1924A2:  LDR.W           R0, [R7,#var_F0]
1924A6:  MOVS            R1, #1
1924A8:  LDR.W           R11, [R6,#0x1C]
1924AC:  SUB.W           LR, R12, #0x2C ; ','
1924B0:  LDR.W           R10, [R6,#0x24]
1924B4:  MOV.W           R12, #0
1924B8:  ADD.W           R0, R1, R0,ASR#21
1924BC:  LDR             R3, [R6,#0x2C]
1924BE:  LDR.W           R9, [R6,#0x34]
1924C2:  ASRS            R0, R0, #1
1924C4:  LDR             R5, [R6,#0x3C]
1924C6:  STR.W           R0, [R7,#var_78]
1924CA:  LDR.W           R0, [R7,#var_EC]
1924CE:  STR.W           R6, [R7,#var_74]
1924D2:  SXTH            R0, R0
1924D4:  STR.W           R0, [R7,#var_7C]
1924D8:  LDR.W           R0, [R7,#var_B8]
1924DC:  ASRS            R0, R0, #1
1924DE:  STR.W           R0, [R7,#var_80]
1924E2:  LDRSH.W         R0, [R7,#var_36]
1924E6:  STR.W           R0, [R7,#var_88]
1924EA:  LDRSH.W         R0, [R7,#var_38]
1924EE:  STR.W           R0, [R7,#var_8C]
1924F2:  LDRSH.W         R0, [R7,#var_3A]
1924F6:  STR.W           R0, [R7,#var_90]
1924FA:  LDRSH.W         R0, [R7,#var_3C]
1924FE:  STR.W           R0, [R7,#var_94]
192502:  LDRSH.W         R0, [R7,#var_3E]
192506:  STR.W           R0, [R7,#var_98]
19250A:  LDRSH.W         R0, [R7,#var_40]
19250E:  STR.W           R0, [R7,#var_A4]
192512:  LDRSH.W         R0, [R7,#dest]
192516:  STR.W           R0, [R7,#var_A8]
19251A:  LDRSH.W         R0, [R7,#var_46]
19251E:  STR.W           R0, [R7,#var_AC]
192522:  LDRSH.W         R0, [R7,#var_44]
192526:  STR.W           R0, [R7,#var_B0]
19252A:  LDRSH.W         R0, [R7,#var_42]
19252E:  STR.W           R0, [R7,#var_B4]
192532:  LDR.W           R2, [R7,#var_A8]
192536:  UXTH            R0, R5
192538:  ADD.W           R6, R6, R12,LSL#2
19253C:  LDR.W           R1, [R7,#var_80]
192540:  MULS            R0, R2
192542:  LDR             R4, [R6,#0x38]
192544:  STR.W           R4, [R7,#var_64]
192548:  SMLABT.W        R2, R2, R5, R1
19254C:  LDR.W           R1, [R7,#var_AC]
192550:  UXTH            R5, R4
192552:  LDR.W           R8, [R6,#0x28]
192556:  MULS            R5, R1
192558:  ADD.W           R0, R2, R0,ASR#16
19255C:  SMLATB.W        R0, R4, R1, R0
192560:  LDR.W           R1, [R7,#var_B0]
192564:  LDR             R4, [R6,#0x20]
192566:  LDR             R2, [R6,#0x30]
192568:  STR.W           R2, [R7,#var_68]
19256C:  ADD.W           R0, R0, R5,ASR#16
192570:  LDR             R5, [R6,#0x18]
192572:  UXTH.W          R6, R9
192576:  SMLATB.W        R0, R9, R1, R0
19257A:  MULS            R6, R1
19257C:  LDR.W           R1, [R7,#var_B4]
192580:  ADD.W           R9, R12, #0x10
192584:  STR.W           R4, [R7,#var_6C]
192588:  ADD.W           R0, R0, R6,ASR#16
19258C:  UXTH            R6, R2
19258E:  MULS            R6, R1
192590:  SMLATB.W        R0, R2, R1, R0
192594:  LDR.W           R1, [R7,#var_A4]
192598:  ADD.W           R0, R0, R6,ASR#16
19259C:  SMLATB.W        R0, R3, R1, R0
1925A0:  UXTH            R3, R3
1925A2:  MULS            R3, R1
1925A4:  LDR.W           R1, [R7,#var_98]
1925A8:  ADD.W           R0, R0, R3,ASR#16
1925AC:  UXTH.W          R3, R8
1925B0:  MULS            R3, R1
1925B2:  SMLATB.W        R0, R8, R1, R0
1925B6:  LDR.W           R1, [R7,#var_94]
1925BA:  ADD.W           R0, R0, R3,ASR#16
1925BE:  UXTH.W          R3, R10
1925C2:  MULS            R3, R1
1925C4:  SMLATB.W        R0, R10, R1, R0
1925C8:  LDR.W           R1, [R7,#var_90]
1925CC:  ADD.W           R0, R0, R3,ASR#16
1925D0:  UXTH            R3, R4
1925D2:  MULS            R3, R1
1925D4:  SMLATB.W        R0, R4, R1, R0
1925D8:  LDR.W           R1, [R7,#var_8C]
1925DC:  ADD.W           R0, R0, R3,ASR#16
1925E0:  UXTH.W          R3, R11
1925E4:  MULS            R3, R1
1925E6:  SMLATB.W        R0, R11, R1, R0
1925EA:  LDR.W           R1, [R7,#var_88]
1925EE:  ADD.W           R0, R0, R3,ASR#16
1925F2:  UXTH            R3, R5
1925F4:  MULS            R3, R1
1925F6:  SMLATB.W        R0, R5, R1, R0
1925FA:  ADD.W           R3, R0, R3,ASR#16
1925FE:  LDR.W           R0, [R7,#var_B8]
192602:  CMP             R0, #0xB
192604:  BLT             loc_192632
192606:  LDR.W           R0, [R7,#var_A0]
19260A:  SUB.W           R10, R7, #-dest
19260E:  MOV             R6, LR
192610:  LDR.W           R5, [R0,#0x924]
192614:  MOVS            R0, #0xA
192616:  LDR.W           R2, [R6],#-4
19261A:  LDRSH.W         R4, [R10,R0,LSL#1]
19261E:  ADDS            R0, #1
192620:  CMP             R0, R5
192622:  UXTH            R1, R2
192624:  MUL.W           R1, R4, R1
192628:  SMLABT.W        R2, R4, R2, R3
19262C:  ADD.W           R3, R2, R1,ASR#16
192630:  BLT             loc_192616
192632:  LDR.W           R6, [R7,#var_74]
192636:  CMP.W           R3, #0xF8000000
19263A:  MOV             R1, #0x7FFFFFF
19263E:  LDR.W           R0, [R6,R9,LSL#2]
192642:  IT LE
192644:  MOVLE.W         R3, #0xF8000000
192648:  CMP             R3, R1
19264A:  IT GE
19264C:  MOVGE           R3, R1
19264E:  ADD.W           R5, R0, R3,LSL#4
192652:  LSLS            R3, R3, #4
192654:  CMP             R5, #0
192656:  BLT             loc_192664
192658:  ANDS            R0, R3
19265A:  CMP             R0, #0
19265C:  IT LT
19265E:  MOVLT.W         R5, #0x80000000
192662:  B               loc_192670
192664:  ORRS            R0, R3
192666:  CMP.W           R0, #0xFFFFFFFF
19266A:  IT GT
19266C:  MOVGT           R5, #0x7FFFFFFF
192670:  LDRD.W          R11, R3, [R7,#var_6C]
192674:  UXTH            R0, R5
192676:  LDR.W           R1, [R7,#var_7C]
19267A:  MOV             R2, #0xFFFF8000
192682:  STR.W           R5, [R6,R9,LSL#2]
192686:  ADD.W           LR, LR, #4
19268A:  MULS            R0, R1
19268C:  MOV             R10, R8
19268E:  ASRS            R0, R0, #0x10
192690:  SMLABT.W        R0, R1, R5, R0
192694:  LDR.W           R1, [R7,#var_78]
192698:  MLA.W           R0, R1, R5, R0
19269C:  MOVS            R1, #1
19269E:  ADD.W           R0, R1, R0,ASR#7
1926A2:  ASRS            R1, R0, #1
1926A4:  CMP             R1, R2
1926A6:  IT GT
1926A8:  ASRGT           R2, R0, #1
1926AA:  CMP.W           R2, #0x8000
1926AE:  IT GE
1926B0:  MOVWGE          R2, #0x7FFF
1926B4:  CMP.W           R1, #0x8000
1926B8:  IT GE
1926BA:  MOVWGE          R2, #0x7FFF
1926BE:  LDR.W           R0, [R7,#var_BC]
1926C2:  STRH.W          R2, [R0,R12,LSL#1]
1926C6:  ADD.W           R12, R12, #1
1926CA:  LDR.W           R0, [R7,#var_70]
1926CE:  LDR.W           R9, [R7,#var_64]
1926D2:  CMP             R12, R0
1926D4:  BLT.W           loc_192532
1926D8:  LDR.W           R0, [R7,#var_70]
1926DC:  LDR.W           R12, [R7,#var_C4]
1926E0:  ADD.W           R0, R6, R0,LSL#2
1926E4:  LDM             R0!, {R1-R3,R5,R6}
1926E6:  STM.W           R12!, {R1-R3,R5,R6}
1926EA:  LDM             R0!, {R1-R3,R5,R6}
1926EC:  STM.W           R12!, {R1-R3,R5,R6}
1926F0:  LDM.W           R0, {R1-R6}
1926F4:  STM.W           R12, {R1-R6}
1926F8:  LDR.W           R1, [R7,#var_E4]
1926FC:  LDR.W           R0, [R7,#var_9C]
192700:  STR             R0, [R1]
192702:  LDR.W           R1, [R7,#var_E0]
192706:  LDR.W           R0, [R7,#var_84]
19270A:  STRH            R0, [R1]
19270C:  LDR.W           R0, [R7,#var_DC]
192710:  LDR.W           R1, [R7,#var_C0]
192714:  STRD.W          R1, R1, [R0]
192718:  STRD.W          R1, R1, [R0,#8]
19271C:  LDR             R0, =(__stack_chk_guard_ptr - 0x192726)
19271E:  LDR.W           R1, [R7,#var_24]
192722:  ADD             R0, PC; __stack_chk_guard_ptr
192724:  LDR             R0, [R0]; __stack_chk_guard
192726:  LDR             R0, [R0]
192728:  SUBS            R0, R0, R1
19272A:  ITTTT EQ
19272C:  SUBEQ.W         R4, R7, #-var_1C
192730:  MOVEQ           SP, R4
192732:  POPEQ.W         {R8-R11}
192736:  POPEQ           {R4-R7,PC}
192738:  BLX             __stack_chk_fail
