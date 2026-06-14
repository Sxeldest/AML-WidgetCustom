; =========================================================
; Game Engine Function: exp_rotation
; Address            : 0xC1010 - 0xC1380
; =========================================================

C1010:  PUSH            {R4-R7,LR}
C1012:  ADD             R7, SP, #0xC
C1014:  PUSH.W          {R8-R11}
C1018:  SUB             SP, SP, #0x34
C101A:  STR             R0, [SP,#0x50+var_30]
C101C:  MOV             R4, R3
C101E:  LDR             R0, [R7,#arg_0]
C1020:  MOV             R11, R1
C1022:  STR             R2, [SP,#0x50+var_2C]
C1024:  LSLS            R1, R0, #1
C1026:  CMP             R1, R11
C1028:  BGE.W           loc_C1378
C102C:  LDR             R1, [R7,#arg_4]
C102E:  CMP             R1, #0
C1030:  BEQ.W           loc_C1378
C1034:  ADR             R2, dword_C1380
C1036:  ADD.W           R1, R2, R1,LSL#2
C103A:  LDR.W           R1, [R1,#-4]
C103E:  MLA.W           R5, R1, R0, R11
C1042:  MOV             R0, R5
C1044:  BLX             j_celt_rcp
C1048:  SXTH.W          R1, R11
C104C:  MOV             R9, R4
C104E:  RSB.W           R4, R1, R1,LSL#15
C1052:  LSRS            R0, R0, #0x10
C1054:  ASRS            R6, R4, #0x10
C1056:  MUL.W           R8, R6, R0
C105A:  MOV             R0, R5
C105C:  BLX             j_celt_rcp
C1060:  UXTH            R0, R0
C1062:  MULS            R6, R0
C1064:  MOV             R0, R5
C1066:  BLX             j_celt_rcp
C106A:  ASRS            R0, R0, #0x10
C106C:  UXTH            R1, R4
C106E:  MULS            R0, R1
C1070:  LSRS            R1, R6, #0xF
C1072:  ADD.W           R1, R1, R8,LSL#1
C1076:  ADD.W           R0, R1, R0,LSR#15
C107A:  SMULBB.W        R4, R0, R0
C107E:  LSRS            R0, R4, #0x10
C1080:  BLX             j_celt_cos_norm
C1084:  MOV             R5, R0
C1086:  MOVW            R0, #0x7FFF
C108A:  EOR.W           R0, R0, R4,LSR#16
C108E:  MOV             R4, R9
C1090:  BLX             j_celt_cos_norm
C1094:  MOV             R8, R0
C1096:  LSLS            R0, R4, #3
C1098:  CMP             R0, R11
C109A:  BLE             loc_C10A2
C109C:  MOV.W           R9, #0
C10A0:  B               loc_C10B8
C10A2:  ASRS            R0, R4, #2
C10A4:  MOV.W           R9, #0
C10A8:  ADD.W           R9, R9, #1
C10AC:  MLA.W           R1, R9, R9, R9
C10B0:  MLA.W           R1, R1, R4, R0
C10B4:  CMP             R1, R11
C10B6:  BLT             loc_C10A8
C10B8:  MOV             R0, R11
C10BA:  MOV             R1, R4
C10BC:  BLX             sub_108874
C10C0:  MOV             R3, R0
C10C2:  CMP             R4, #1
C10C4:  BLT.W           loc_C1378
C10C8:  SUB.W           R0, R3, R9
C10CC:  STR             R0, [SP,#0x50+var_3C]
C10CE:  SUBS            R0, R3, #3
C10D0:  STR             R0, [SP,#0x50+var_44]
C10D2:  NEGS            R0, R5
C10D4:  SUB.W           R10, R3, #1
C10D8:  SUB.W           R1, R3, R9,LSL#1
C10DC:  MOVS            R2, #0
C10DE:  SXTH.W          R11, R0
C10E2:  RSB.W           R0, R11, #0
C10E6:  STR             R1, [SP,#0x50+var_40]
C10E8:  SXTH            R0, R0
C10EA:  STR             R3, [SP,#0x50+var_24]
C10EC:  STR             R0, [SP,#0x50+var_38]
C10EE:  RSB.W           R0, R8, #0
C10F2:  STR             R4, [SP,#0x50+var_34]
C10F4:  SXTH.W          R12, R0
C10F8:  RSB.W           R0, R12, #0
C10FC:  SXTH.W          LR, R0
C1100:  SUBS            R0, R1, #1
C1102:  STRD.W          R0, R10, [SP,#0x50+var_4C]
C1106:  MUL.W           R0, R2, R3
C110A:  LDR             R1, [SP,#0x50+var_30]
C110C:  STR             R2, [SP,#0x50+var_28]
C110E:  ADD.W           R0, R1, R0,LSL#1
C1112:  STR             R0, [SP,#0x50+var_20]
C1114:  LDR             R0, [SP,#0x50+var_2C]
C1116:  CMP.W           R0, #0xFFFFFFFF
C111A:  BLE.W           loc_C1246
C111E:  CMP             R3, #2
C1120:  BLT             loc_C115C
C1122:  LDR             R0, [SP,#0x50+var_20]
C1124:  MOVS            R1, #0
C1126:  LDRH            R2, [R0]
C1128:  MOV             R3, R0
C112A:  LDRSH.W         R4, [R0,#2]!
C112E:  SXTH            R2, R2
C1130:  SMULBB.W        R6, R2, R5
C1134:  ADDS            R1, #1
C1136:  SMULBB.W        R2, R12, R2
C113A:  CMP             R1, R10
C113C:  SMLABB.W        R6, LR, R4, R6
C1140:  SMLABB.W        R2, R4, R5, R2
C1144:  ADD.W           R4, R6, #0x4000
C1148:  ADD.W           R2, R2, #0x4000
C114C:  MOV.W           R4, R4,LSR#15
C1150:  STRH            R4, [R3]
C1152:  MOV.W           R2, R2,LSR#15
C1156:  MOV             R3, R0
C1158:  STRH            R2, [R0]
C115A:  BNE             loc_C112A
C115C:  LDR             R0, [SP,#0x50+var_24]
C115E:  CMP             R0, #3
C1160:  BLT             loc_C11A4
C1162:  LDR             R0, [SP,#0x50+var_44]
C1164:  LDR             R1, [SP,#0x50+var_20]
C1166:  ADD.W           R1, R1, R0,LSL#1
C116A:  LDRSH.W         R2, [R1]
C116E:  CMP             R0, #0
C1170:  LDRSH.W         R3, [R1,#2]
C1174:  SMULBB.W        R4, R12, R2
C1178:  SMULBB.W        R2, R2, R5
C117C:  SMLABB.W        R2, LR, R3, R2
C1180:  SMLABB.W        R4, R3, R5, R4
C1184:  ADD.W           R2, R2, #0x4000
C1188:  ADD.W           R3, R4, #0x4000
C118C:  MOV.W           R2, R2,LSR#15
C1190:  MOV.W           R3, R3,LSR#15
C1194:  STRH            R3, [R1,#2]
C1196:  STRH            R2, [R1]
C1198:  SUB.W           R2, R0, #1
C119C:  SUB.W           R1, R1, #2
C11A0:  MOV             R0, R2
C11A2:  BGT             loc_C116A
C11A4:  LDR             R6, [SP,#0x50+var_38]
C11A6:  CMP.W           R9, #0
C11AA:  BEQ.W           loc_C136A
C11AE:  LDR.W           R10, [SP,#0x50+var_3C]
C11B2:  CMP.W           R10, #1
C11B6:  BLT             loc_C11F4
C11B8:  LDR             R0, [SP,#0x50+var_20]
C11BA:  MOVS            R1, #0
C11BC:  LDRSH.W         R3, [R0]
C11C0:  ADDS            R1, #1
C11C2:  LDRSH.W         R2, [R0,R9,LSL#1]
C11C6:  CMP             R1, R10
C11C8:  SMULBB.W        R4, R11, R3
C11CC:  SMULBB.W        R3, R3, R8
C11D0:  SMLABB.W        R4, R2, R8, R4
C11D4:  SMLABB.W        R2, R6, R2, R3
C11D8:  ADD.W           R3, R4, #0x4000
C11DC:  ADD.W           R2, R2, #0x4000
C11E0:  MOV.W           R3, R3,LSR#15
C11E4:  MOV.W           R2, R2,LSR#15
C11E8:  STRH.W          R3, [R0,R9,LSL#1]
C11EC:  STRH            R2, [R0]
C11EE:  ADD.W           R0, R0, #2
C11F2:  BNE             loc_C11BC
C11F4:  LDR             R0, [SP,#0x50+var_40]
C11F6:  LDR.W           R10, [SP,#0x50+var_48]
C11FA:  CMP             R0, #1
C11FC:  BLT.W           loc_C136A
C1200:  LDR             R1, [SP,#0x50+var_4C]
C1202:  LDR             R0, [SP,#0x50+var_20]
C1204:  ADD.W           R0, R0, R1,LSL#1
C1208:  LDRSH.W         R3, [R0]
C120C:  CMP             R1, #0
C120E:  LDRSH.W         R2, [R0,R9,LSL#1]
C1212:  SMULBB.W        R4, R11, R3
C1216:  SMULBB.W        R3, R3, R8
C121A:  SMLABB.W        R4, R2, R8, R4
C121E:  SMLABB.W        R2, R6, R2, R3
C1222:  ADD.W           R3, R4, #0x4000
C1226:  ADD.W           R2, R2, #0x4000
C122A:  MOV.W           R3, R3,LSR#15
C122E:  MOV.W           R2, R2,LSR#15
C1232:  STRH.W          R3, [R0,R9,LSL#1]
C1236:  STRH            R2, [R0]
C1238:  SUB.W           R2, R1, #1
C123C:  SUB.W           R0, R0, #2
C1240:  MOV             R1, R2
C1242:  BGT             loc_C1208
C1244:  B               loc_C136A
C1246:  CMP.W           R9, #0
C124A:  BEQ             loc_C12D8
C124C:  LDR             R6, [SP,#0x50+var_3C]
C124E:  CMP             R6, #1
C1250:  BLT             loc_C128E
C1252:  LDR             R0, [SP,#0x50+var_20]
C1254:  MOVS            R1, #0
C1256:  LDRSH.W         R3, [R0]
C125A:  ADDS            R1, #1
C125C:  LDRSH.W         R2, [R0,R9,LSL#1]
C1260:  CMP             R1, R6
C1262:  SMULBB.W        R4, R3, R5
C1266:  SMULBB.W        R3, R3, R8
C126A:  SMLABB.W        R4, R2, R8, R4
C126E:  SMLABB.W        R2, R11, R2, R3
C1272:  ADD.W           R3, R4, #0x4000
C1276:  ADD.W           R2, R2, #0x4000
C127A:  MOV.W           R3, R3,LSR#15
C127E:  MOV.W           R2, R2,LSR#15
C1282:  STRH.W          R3, [R0,R9,LSL#1]
C1286:  STRH            R2, [R0]
C1288:  ADD.W           R0, R0, #2
C128C:  BNE             loc_C1256
C128E:  LDR             R0, [SP,#0x50+var_40]
C1290:  CMP             R0, #1
C1292:  BLT             loc_C12D8
C1294:  LDR             R0, [SP,#0x50+var_4C]
C1296:  LDR             R1, [SP,#0x50+var_20]
C1298:  ADD.W           R1, R1, R0,LSL#1
C129C:  LDRSH.W         R3, [R1]
C12A0:  CMP             R0, #0
C12A2:  LDRSH.W         R2, [R1,R9,LSL#1]
C12A6:  SMULBB.W        R4, R3, R5
C12AA:  SMULBB.W        R3, R3, R8
C12AE:  SMLABB.W        R4, R2, R8, R4
C12B2:  SMLABB.W        R2, R11, R2, R3
C12B6:  ADD.W           R3, R4, #0x4000
C12BA:  ADD.W           R2, R2, #0x4000
C12BE:  MOV.W           R3, R3,LSR#15
C12C2:  MOV.W           R2, R2,LSR#15
C12C6:  STRH.W          R3, [R1,R9,LSL#1]
C12CA:  STRH            R2, [R1]
C12CC:  SUB.W           R2, R0, #1
C12D0:  SUB.W           R1, R1, #2
C12D4:  MOV             R0, R2
C12D6:  BGT             loc_C129C
C12D8:  LDR             R0, [SP,#0x50+var_24]
C12DA:  MOV             R6, R10
C12DC:  CMP             R0, #2
C12DE:  BLT             loc_C1320
C12E0:  LDR             R0, [SP,#0x50+var_20]
C12E2:  MOV.W           R10, #0
C12E6:  MOV             R1, R0
C12E8:  LDRH            R0, [R1]
C12EA:  MOV             R2, R1
C12EC:  LDRSH.W         R3, [R1,#2]!
C12F0:  SXTH            R0, R0
C12F2:  SMULBB.W        R4, R0, R5
C12F6:  ADD.W           R10, R10, #1
C12FA:  SMULBB.W        R0, R0, R8
C12FE:  CMP             R10, R6
C1300:  SMLABB.W        R4, R12, R3, R4
C1304:  SMLABB.W        R0, R3, R5, R0
C1308:  ADD.W           R3, R4, #0x4000
C130C:  ADD.W           R0, R0, #0x4000
C1310:  MOV.W           R3, R3,LSR#15
C1314:  STRH            R3, [R2]
C1316:  MOV.W           R0, R0,LSR#15
C131A:  MOV             R2, R1
C131C:  STRH            R0, [R1]
C131E:  BNE             loc_C12EC
C1320:  LDR             R0, [SP,#0x50+var_24]
C1322:  MOV             R10, R6
C1324:  CMP             R0, #3
C1326:  BLT             loc_C136A
C1328:  LDR             R1, [SP,#0x50+var_44]
C132A:  LDR             R0, [SP,#0x50+var_20]
C132C:  ADD.W           R0, R0, R1,LSL#1
C1330:  LDRSH.W         R2, [R0]
C1334:  CMP             R1, #0
C1336:  LDRSH.W         R3, [R0,#2]
C133A:  SMULBB.W        R4, R2, R8
C133E:  SMULBB.W        R2, R2, R5
C1342:  SMLABB.W        R2, R12, R3, R2
C1346:  SMLABB.W        R4, R3, R5, R4
C134A:  ADD.W           R2, R2, #0x4000
C134E:  ADD.W           R3, R4, #0x4000
C1352:  MOV.W           R2, R2,LSR#15
C1356:  MOV.W           R3, R3,LSR#15
C135A:  STRH            R3, [R0,#2]
C135C:  STRH            R2, [R0]
C135E:  SUB.W           R2, R1, #1
C1362:  SUB.W           R0, R0, #2
C1366:  MOV             R1, R2
C1368:  BGT             loc_C1330
C136A:  LDR             R2, [SP,#0x50+var_28]
C136C:  LDR             R4, [SP,#0x50+var_34]
C136E:  LDR             R3, [SP,#0x50+var_24]
C1370:  ADDS            R2, #1
C1372:  CMP             R2, R4
C1374:  BNE.W           loc_C1106
C1378:  ADD             SP, SP, #0x34 ; '4'
C137A:  POP.W           {R8-R11}
C137E:  POP             {R4-R7,PC}
