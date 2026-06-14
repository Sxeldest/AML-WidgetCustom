; =========================================================
; Game Engine Function: sub_B0F5C
; Address            : 0xB0F5C - 0xB1C86
; =========================================================

B0F5C:  PUSH            {R4-R7,LR}
B0F5E:  ADD             R7, SP, #0xC
B0F60:  PUSH.W          {R8-R11}
B0F64:  SUB             SP, SP, #0x9C
B0F66:  MOV             R11, R0
B0F68:  LDR.W           R0, =(__stack_chk_guard_ptr - 0xB0F76)
B0F6C:  MOV             R4, R2
B0F6E:  MOVW            R2, #0x851F
B0F72:  ADD             R0, PC; __stack_chk_guard_ptr
B0F74:  MOVT            R2, #0x51EB
B0F78:  LDR             R0, [R0]; __stack_chk_guard
B0F7A:  LDR             R0, [R0]
B0F7C:  STR.W           R0, [R7,#var_24]
B0F80:  MOVS            R0, #0
B0F82:  STR.W           R0, [R7,#var_60]
B0F86:  LDR.W           R0, [R11,#0xC]
B0F8A:  SMMUL.W         R5, R0, R2
B0F8E:  LDR             R0, [R7,#arg_0]
B0F90:  ASRS            R2, R5, #4
B0F92:  ADD.W           R10, R2, R5,LSR#31
B0F96:  MOV.W           R8, R10,ASR#3
B0F9A:  CMP             R8, R0
B0F9C:  BLE             loc_B0FA4
B0F9E:  MOV             R9, #0xFFFFFFFE
B0FA2:  B               loc_B158C
B0FA4:  ASRS            R2, R5, #3
B0FA6:  STR.W           R3, [R7,#var_68]
B0FAA:  ADD.W           R2, R2, R5,LSR#31
B0FAE:  LDRD.W          R3, R6, [R11]
B0FB2:  MOV.W           R12, R10,ASR#2
B0FB6:  MOV.W           LR, R10,ASR#1
B0FBA:  ADD.W           R5, R2, R2,LSL#1
B0FBE:  CMP             R5, R0
B0FC0:  IT GT
B0FC2:  MOVGT           R5, R0
B0FC4:  CMP             R4, #1
B0FC6:  BGT             loc_B0FD4
B0FC8:  LDR.W           R9, [R11,#0x40]
B0FCC:  CMP             R5, R9
B0FCE:  IT LT
B0FD0:  MOVLT           R9, R5
B0FD2:  B               loc_B10D0
B0FD4:  CMP             R1, #0
B0FD6:  BEQ             loc_B10CE
B0FD8:  STR.W           R10, [R7,#var_8C]
B0FDC:  MOV             R2, R1
B0FDE:  STR.W           R6, [R7,#var_84]
B0FE2:  MOV             R10, R12
B0FE4:  STR.W           R3, [R7,#var_78]
B0FE8:  LDR.W           R0, [R11,#0x34]
B0FEC:  STR.W           R0, [R7,#var_74]
B0FF0:  SUB.W           R0, R7, #-var_58
B0FF4:  LDR.W           R6, [R11,#0x38]
B0FF8:  LDR.W           R9, [R11,#0x40]
B0FFC:  STR.W           R2, [R7,#var_7C]
B1000:  MOV             R2, R4
B1002:  STR.W           LR, [R7,#var_6C]
B1006:  BLX             j_ec_dec_init
B100A:  LDR.W           R0, [R7,#var_6C]
B100E:  MOV             R2, R6
B1010:  MOVS            R6, #0
B1012:  MOV.W           R12, #0
B1016:  CMP             R5, R0
B1018:  MOVW            R1, #0x3EA
B101C:  IT GE
B101E:  MOVGE           R6, #1
B1020:  CMP             R2, R1
B1022:  IT NE
B1024:  MOVNE.W         R12, #1
B1028:  LDR.W           R0, [R11,#0x3C]
B102C:  AND.W           R3, R6, R12
B1030:  STR.W           R4, [R7,#var_70]
B1034:  CMP             R0, #1
B1036:  STR.W           R3, [R7,#var_88]
B103A:  BLT.W           loc_B119C
B103E:  CMP             R0, R1
B1040:  BEQ             loc_B1052
B1042:  MOVW            R1, #0x3EA
B1046:  CMP             R2, R1
B1048:  ITT EQ
B104A:  LDREQ.W         R1, [R11,#0x44]
B104E:  CMPEQ           R1, #0
B1050:  BEQ             loc_B1066
B1052:  MOVW            R1, #0x3EA
B1056:  CMP             R2, R1
B1058:  BEQ.W           loc_B11AA
B105C:  MOV.W           R12, #1
B1060:  CMP             R0, R1
B1062:  BNE.W           loc_B11BC
B1066:  LDR.W           R0, [R11,#8]
B106A:  MOV             R6, R10
B106C:  MOVW            R1, #0x3EA
B1070:  CMP             R2, R1
B1072:  MUL.W           LR, R0, R6
B1076:  MOV.W           R0, #7
B107A:  IT EQ
B107C:  ADDEQ.W         R0, R0, LR,LSL#1
B1080:  BIC.W           R0, R0, #7
B1084:  SUB.W           R3, SP, R0
B1088:  MOV             SP, R3
B108A:  MOVS            R0, #0
B108C:  CMP             R2, R1
B108E:  BNE.W           loc_B12BA
B1092:  SUB             SP, SP, #8
B1094:  CMP             R6, R9
B1096:  MOV             R1, R9
B1098:  IT LT
B109A:  MOVLT           R1, R6
B109C:  MOVS            R2, #0
B109E:  STRD.W          R1, R0, [SP,#0xC0+var_C0]
B10A2:  MOV             R6, R3
B10A4:  MOV             R0, R11
B10A6:  MOVS            R1, #0
B10A8:  MOV             R4, R9
B10AA:  STR.W           R6, [R7,#var_80]
B10AE:  MOV             R9, R12
B10B0:  BL              sub_B0F5C
B10B4:  MOV             R12, R9
B10B6:  ADD             SP, SP, #8
B10B8:  LDR.W           R6, [R7,#var_88]
B10BC:  MOVW            R2, #0x3EA
B10C0:  MOVS            R0, #1
B10C2:  MOV.W           LR, #0
B10C6:  MOVS            R3, #1
B10C8:  MOVS            R1, #1
B10CA:  MOV             R9, R5
B10CC:  B               loc_B11DC
B10CE:  MOV             R9, R5
B10D0:  LDR.W           R2, [R11,#0x3C]
B10D4:  CBZ             R2, loc_B1116
B10D6:  CMP             R9, R10
B10D8:  BLE             loc_B1130
B10DA:  LDR.W           R4, [R7,#var_68]
B10DE:  MOVS            R5, #0
B10E0:  MOV             R6, R9
B10E2:  SUB             SP, SP, #8
B10E4:  CMP             R6, R10
B10E6:  MOV             R0, R10
B10E8:  IT LT
B10EA:  MOVLT           R0, R6
B10EC:  MOVS            R1, #0
B10EE:  STRD.W          R0, R5, [SP,#0xC0+var_C0]
B10F2:  MOV             R0, R11
B10F4:  MOVS            R2, #0
B10F6:  MOV             R3, R4
B10F8:  BL              sub_B0F5C
B10FC:  ADD             SP, SP, #8
B10FE:  CMP             R0, #0
B1100:  BLT             loc_B11A6
B1102:  LDR.W           R1, [R11,#8]
B1106:  SUBS            R6, R6, R0
B1108:  CMP             R6, #0
B110A:  MUL.W           R1, R0, R1
B110E:  ADD.W           R4, R4, R1,LSL#1
B1112:  BGT             loc_B10E2
B1114:  B               loc_B158C
B1116:  LDR.W           R0, [R11,#8]
B111A:  MUL.W           R0, R0, R9
B111E:  CMP             R0, #1
B1120:  BLT.W           loc_B158C
B1124:  LSLS            R1, R0, #1; n
B1126:  LDR.W           R0, [R7,#var_68]; int
B112A:  BLX             sub_10967C
B112E:  B               loc_B158C
B1130:  STR.W           R4, [R7,#var_70]
B1134:  MOV             R4, R9
B1136:  STR.W           R6, [R7,#var_84]
B113A:  STR.W           R3, [R7,#var_78]
B113E:  STR.W           R10, [R7,#var_8C]
B1142:  BGE             loc_B1162
B1144:  CMP             R9, LR
B1146:  MOV             R4, LR
B1148:  BGT             loc_B1162
B114A:  CMP.W           R2, #0x3E8
B114E:  MOV             R0, R9
B1150:  IT NE
B1152:  MOVNE           R0, R12
B1154:  CMP             R9, R12
B1156:  IT LE
B1158:  MOVLE           R0, R9
B115A:  CMP             R9, LR
B115C:  IT GE
B115E:  MOVGE           R0, R9
B1160:  MOV             R4, R0
B1162:  MOVS            R0, #0
B1164:  MOV             R10, R12
B1166:  STR.W           R0, [R7,#var_74]
B116A:  MOVW            R0, #0x3EA
B116E:  CMP             R2, R0
B1170:  MOV.W           R12, #0
B1174:  IT NE
B1176:  MOVNE.W         R12, #1
B117A:  CMP             R9, LR
B117C:  MOV.W           R0, #0
B1180:  STR.W           LR, [R7,#var_6C]
B1184:  IT GE
B1186:  MOVGE           R0, #1
B1188:  MOVS            R1, #0
B118A:  AND.W           R0, R0, R12
B118E:  STR.W           R0, [R7,#var_88]
B1192:  MOV             R6, R0
B1194:  MOVS            R0, #0
B1196:  STR.W           R0, [R7,#var_7C]
B119A:  B               loc_B11C2
B119C:  MOV             R4, R9
B119E:  MOVS            R1, #1
B11A0:  MOV             R6, R3
B11A2:  MOV             R9, R5
B11A4:  B               loc_B11C2
B11A6:  MOV             R9, R0
B11A8:  B               loc_B158C
B11AA:  MOV             R4, R9
B11AC:  MOVS            R1, #1
B11AE:  MOVS            R6, #0
B11B0:  MOV.W           R12, #0
B11B4:  MOVW            R2, #0x3EA
B11B8:  MOV             R9, R5
B11BA:  B               loc_B11C2
B11BC:  MOV             R4, R9
B11BE:  MOV             R9, R5
B11C0:  MOVS            R1, #1
B11C2:  MOVW            R0, #0x3EA
B11C6:  CMP             R2, R0
B11C8:  MOV.W           R0, #0
B11CC:  MOV.W           LR, #0
B11D0:  IT EQ
B11D2:  MOVEQ           R0, #1
B11D4:  MOVS            R3, #0
B11D6:  MOVS            R5, #0
B11D8:  STR.W           R5, [R7,#var_80]
B11DC:  CMP             R4, R9
B11DE:  MOV             R9, R4
B11E0:  BLE             loc_B11E8
B11E2:  MOV.W           R9, #0xFFFFFFFF
B11E6:  B               loc_B158C
B11E8:  ORRS            R0, R6
B11EA:  STR.W           R2, [R7,#var_98]
B11EE:  STRD.W          R0, R8, [R7,#var_A4]
B11F2:  STR.W           R1, [R7,#var_90]
B11F6:  BEQ             loc_B11FC
B11F8:  MOVS            R0, #0
B11FA:  B               loc_B120C
B11FC:  LDR.W           R1, [R7,#var_6C]
B1200:  LDR.W           R0, [R11,#8]
B1204:  CMP             R1, R9
B1206:  IT LE
B1208:  MOVLE           R1, R9
B120A:  MULS            R0, R1
B120C:  MOVS            R4, #7
B120E:  ADD.W           R0, R4, R0,LSL#1
B1212:  BIC.W           R0, R0, #7
B1216:  LDR.W           R2, [R7,#var_68]
B121A:  SUB.W           R8, SP, R0
B121E:  MOV             SP, R8
B1220:  MOVS            R5, #0
B1222:  CMP.W           R12, #1
B1226:  STR.W           R6, [R7,#var_A8]
B122A:  STR.W           R10, [R7,#var_94]
B122E:  STR.W           R8, [R7,#var_9C]
B1232:  BNE             loc_B12AA
B1234:  STRD.W          LR, R3, [R7,#var_B4]
B1238:  CMP             R6, #0
B123A:  LDR.W           R0, [R7,#var_84]
B123E:  MOVW            R1, #0x3EA
B1242:  STR.W           R12, [R7,#var_AC]
B1246:  ADD.W           R4, R11, R0
B124A:  LDR.W           R0, [R11,#0x3C]
B124E:  IT NE
B1250:  MOVNE           R8, R2
B1252:  CMP             R0, R1
B1254:  ITT EQ
B1256:  MOVEQ           R0, R4
B1258:  BLXEQ           j_silk_InitDecoder
B125C:  MOV.W           R0, #0x3E8
B1260:  LDR.W           R1, [R11,#0xC]
B1264:  MUL.W           R0, R9, R0
B1268:  BLX             sub_108848
B126C:  CMP             R0, #0xA
B126E:  IT LE
B1270:  MOVLE           R0, #0xA
B1272:  STR.W           R0, [R11,#0x20]
B1276:  LDR.W           R0, [R7,#var_90]
B127A:  STR.W           R11, [R7,#var_6C]
B127E:  ADD.W           R11, R11, #0x10
B1282:  CMP             R0, #1
B1284:  BNE             loc_B12E4
B1286:  LDR.W           R1, [R7,#var_6C]
B128A:  LDR             R0, [R1,#0x30]
B128C:  STR             R0, [R1,#0x14]
B128E:  LDR.W           R0, [R7,#var_98]
B1292:  CMP.W           R0, #0x3E8
B1296:  BNE             loc_B12C8
B1298:  LDR.W           R2, [R7,#var_74]
B129C:  MOVW            R0, #0x44D
B12A0:  CMP             R2, R0
B12A2:  BNE             loc_B12CE
B12A4:  MOV.W           R0, #0x1F40
B12A8:  B               loc_B12DE
B12AA:  MOVS            R0, #0
B12AC:  MOVS            R6, #0
B12AE:  STR.W           R0, [R7,#var_90]
B12B2:  MOVS            R0, #0
B12B4:  STR.W           R0, [R7,#var_84]
B12B8:  B               loc_B14C0
B12BA:  MOV             R4, R9
B12BC:  MOVS            R3, #1
B12BE:  MOVS            R1, #1
B12C0:  MOV             R9, R5
B12C2:  LDR.W           R6, [R7,#var_88]
B12C6:  B               loc_B11D6
B12C8:  MOV.W           R0, #0x3E80
B12CC:  B               loc_B12DE
B12CE:  MOVW            R1, #0x44E
B12D2:  MOV.W           R0, #0x3E80
B12D6:  CMP             R2, R1
B12D8:  IT EQ
B12DA:  MOVWEQ          R0, #0x2EE0
B12DE:  LDR.W           R1, [R7,#var_6C]
B12E2:  STR             R0, [R1,#0x1C]
B12E4:  LDR             R0, [R7,#arg_4]
B12E6:  MOVS            R5, #0
B12E8:  MOV.W           R10, R0,LSL#1
B12EC:  LDR.W           R0, [R7,#var_7C]
B12F0:  CMP             R0, #0
B12F2:  IT EQ
B12F4:  MOVEQ.W         R10, #1
B12F8:  CMP.W           R10, #0
B12FC:  BEQ             loc_B135A
B12FE:  LDR.W           R6, [R7,#var_6C]
B1302:  LDR             R0, [R6,#0x2C]
B1304:  SUB             SP, SP, #0x10
B1306:  SUB.W           R1, R7, #-var_58
B130A:  STRD.W          R1, R8, [SP,#0xC8+var_C8]; int
B130E:  SUB.W           R1, R7, #-var_5C
B1312:  CMP             R5, #0
B1314:  MOV.W           R3, #0
B1318:  STRD.W          R1, R0, [SP,#0xC8+var_C0]; int
B131C:  IT EQ
B131E:  MOVEQ           R3, #1; int
B1320:  MOV             R0, R4; int
B1322:  MOV             R1, R11; int
B1324:  MOV             R2, R10; int
B1326:  BLX             j_silk_Decode
B132A:  ADD             SP, SP, #0x10
B132C:  CBZ             R0, loc_B1344
B132E:  STR.W           R9, [R7,#var_5C]
B1332:  LDR             R0, [R6,#8]
B1334:  MUL.W           R0, R0, R9
B1338:  CMP             R0, #1
B133A:  ITTT GE
B133C:  LSLGE           R1, R0, #1; n
B133E:  MOVGE           R0, R8; int
B1340:  BLXGE           sub_10967C
B1344:  LDR.W           R0, [R7,#var_5C]
B1348:  LDR             R1, [R6,#8]
B134A:  ADD             R5, R0
B134C:  CMP             R5, R9
B134E:  MUL.W           R1, R0, R1
B1352:  ADD.W           R8, R8, R1,LSL#1
B1356:  BLT             loc_B1302
B1358:  B               loc_B13A6
B135A:  LDR.W           R10, [R7,#var_6C]
B135E:  SUB.W           R6, R7, #-var_58
B1362:  LDR.W           R0, [R10,#0x2C]
B1366:  SUB             SP, SP, #0x10
B1368:  SUB.W           R1, R7, #-var_5C
B136C:  CMP             R5, #0
B136E:  MOV.W           R3, #0
B1372:  STRD.W          R6, R8, [SP,#0xC8+var_C8]; int
B1376:  STRD.W          R1, R0, [SP,#0xC8+var_C0]; int
B137A:  IT EQ
B137C:  MOVEQ           R3, #1; int
B137E:  MOV             R0, R4; int
B1380:  MOV             R1, R11; int
B1382:  MOVS            R2, #0; int
B1384:  BLX             j_silk_Decode
B1388:  ADD             SP, SP, #0x10
B138A:  CMP             R0, #0
B138C:  BNE.W           loc_B1588
B1390:  LDR.W           R0, [R7,#var_5C]
B1394:  LDR.W           R1, [R10,#8]
B1398:  ADD             R5, R0
B139A:  CMP             R5, R9
B139C:  MUL.W           R1, R0, R1
B13A0:  ADD.W           R8, R8, R1,LSL#1
B13A4:  BLT             loc_B1362
B13A6:  LDR             R0, [R7,#arg_4]
B13A8:  MOVS            R6, #0
B13AA:  CMP             R0, #0
B13AC:  MOV.W           R0, #0
B13B0:  IT EQ
B13B2:  MOVEQ           R0, #1
B13B4:  LDR.W           R1, [R7,#var_90]
B13B8:  ANDS            R0, R1
B13BA:  CMP             R0, #1
B13BC:  BNE             loc_B1406
B13BE:  LDR.W           R11, [R7,#var_6C]
B13C2:  MOVS            R5, #0
B13C4:  LDR.W           R1, [R7,#var_3C]
B13C8:  LDR.W           R0, [R7,#var_44]
B13CC:  CLZ.W           R1, R1
B13D0:  LDR.W           R2, [R11,#0x38]
B13D4:  ADD             R1, R0
B13D6:  MOVW            R0, #0x3E9
B13DA:  SUB.W           R3, R1, #0xF
B13DE:  CMP             R2, R0
B13E0:  IT EQ
B13E2:  ADDEQ           R3, R1, #5
B13E4:  LDR.W           R4, [R7,#var_70]
B13E8:  CMP.W           R3, R4,LSL#3
B13EC:  LDRD.W          R3, R12, [R7,#var_B0]
B13F0:  BLE             loc_B141A
B13F2:  MOVS            R0, #0
B13F4:  MOVS            R6, #0
B13F6:  STR.W           R0, [R7,#var_90]
B13FA:  MOVS            R0, #0
B13FC:  STR.W           R0, [R7,#var_84]
B1400:  LDR.W           LR, [R7,#var_B4]
B1404:  B               loc_B14BE
B1406:  MOVS            R0, #0
B1408:  LDR.W           R11, [R7,#var_6C]
B140C:  STR.W           R0, [R7,#var_90]
B1410:  MOVS            R0, #0
B1412:  STR.W           R0, [R7,#var_84]
B1416:  MOVS            R5, #0
B1418:  B               loc_B14B6
B141A:  LDR.W           R1, [R7,#var_98]
B141E:  CMP             R1, R0
B1420:  BNE             loc_B145E
B1422:  SUB.W           R0, R7, #-var_58
B1426:  MOVS            R1, #0xC
B1428:  BLX             j_ec_dec_bit_logp
B142C:  MOV             R8, R0
B142E:  CMP             R0, #0
B1430:  BEQ.W           loc_B1958
B1434:  MOV             R6, R4
B1436:  SUB.W           R4, R7, #-var_58
B143A:  MOVS            R1, #1
B143C:  MOV             R0, R4
B143E:  BLX             j_ec_dec_bit_logp
B1442:  STR.W           R0, [R7,#var_84]
B1446:  MOV             R0, R4
B1448:  MOV.W           R1, #0x100
B144C:  MOV             R4, R6
B144E:  BLX             j_ec_dec_uint
B1452:  LDR.W           R1, [R7,#var_44]
B1456:  ADDS            R3, R0, #2
B1458:  LDR.W           R2, [R7,#var_3C]
B145C:  B               loc_B1484
B145E:  SUB.W           R0, R7, #-var_58
B1462:  MOVS            R1, #1
B1464:  MOV.W           R8, #1
B1468:  BLX             j_ec_dec_bit_logp
B146C:  LDR.W           R2, [R7,#var_3C]
B1470:  LDR.W           R1, [R7,#var_44]
B1474:  STR.W           R0, [R7,#var_84]
B1478:  CLZ.W           R0, R2
B147C:  ADD             R0, R1
B147E:  SUBS            R0, #0x19
B1480:  SUB.W           R3, R4, R0,ASR#3
B1484:  CLZ.W           R2, R2
B1488:  SUBS            R4, R4, R3
B148A:  ADD             R1, R2
B148C:  LDR.W           R0, [R7,#var_54]
B1490:  SUBS            R1, #0x20 ; ' '
B1492:  LSLS            R2, R4, #3
B1494:  CMP             R2, R1
B1496:  IT LT
B1498:  MOVLT           R3, #0
B149A:  SUB.W           R0, R0, R3
B149E:  STR.W           R3, [R7,#var_90]
B14A2:  STR.W           R0, [R7,#var_54]
B14A6:  IT LT
B14A8:  MOVLT           R4, #0
B14AA:  STR.W           R4, [R7,#var_70]
B14AE:  IT LT
B14B0:  MOVLT.W         R8, #0
B14B4:  MOV             R6, R8
B14B6:  LDR.W           R12, [R7,#var_AC]
B14BA:  LDRD.W          LR, R3, [R7,#var_B4]
B14BE:  MOVS            R4, #7
B14C0:  LDR.W           R0, [R7,#var_78]
B14C4:  CMP             R6, #0
B14C6:  ADD.W           R8, R11, R0
B14CA:  ADD.W           R0, R4, LR,LSL#1
B14CE:  IT NE
B14D0:  MOVNE           R0, #7
B14D2:  CMP             R6, #0
B14D4:  BIC.W           R0, R0, #7
B14D8:  IT EQ
B14DA:  MOVEQ           R5, #1
B14DC:  CMP             R3, #0
B14DE:  SUB.W           R4, SP, R0
B14E2:  IT NE
B14E4:  MOVNE           R3, #1
B14E6:  AND.W           R0, R3, R5
B14EA:  STR.W           R0, [R7,#var_78]
B14EE:  AND.W           R0, R0, R12
B14F2:  MOV             SP, R4
B14F4:  CMP.W           R12, #0
B14F8:  IT NE
B14FA:  MOVNE.W         R12, #0x11
B14FE:  CMP             R0, #1
B1500:  BNE             loc_B152C
B1502:  SUB             SP, SP, #8
B1504:  LDR.W           R2, [R7,#var_94]
B1508:  MOV             R1, R9
B150A:  MOVS            R0, #0
B150C:  MOV             R3, R4
B150E:  CMP             R2, R9
B1510:  MOV             R5, R12
B1512:  IT LT
B1514:  MOVLT           R1, R2
B1516:  MOVS            R2, #0
B1518:  STRD.W          R1, R0, [SP,#0xC0+var_C0]
B151C:  MOV             R0, R11
B151E:  MOVS            R1, #0
B1520:  BL              sub_B0F5C
B1524:  MOV             R12, R5
B1526:  ADD             SP, SP, #8
B1528:  STR.W           R4, [R7,#var_80]
B152C:  LDR.W           R1, [R7,#var_74]
B1530:  MOVW            R0, #0x44D
B1534:  MOVS            R2, #0x15
B1536:  CMP             R1, R0
B1538:  BLE             loc_B154C
B153A:  SUBW            R0, R1, #0x44E
B153E:  MOV             R5, R12
B1540:  CMP             R0, #2
B1542:  BCS             loc_B1560
B1544:  MOVS            R2, #0x11
B1546:  LDR.W           R4, [R7,#var_70]
B154A:  B               loc_B156C
B154C:  LDR.W           R4, [R7,#var_70]
B1550:  MOV             R5, R12
B1552:  CBZ             R1, loc_B1578
B1554:  MOVW            R0, #0x44D
B1558:  CMP             R1, R0
B155A:  IT EQ
B155C:  MOVEQ           R2, #0xD
B155E:  B               loc_B156C
B1560:  LDR.W           R4, [R7,#var_70]
B1564:  CMP.W           R1, #0x450
B1568:  IT EQ
B156A:  MOVEQ           R2, #0x13
B156C:  MOV             R0, R8
B156E:  MOVW            R1, #0x271C
B1572:  BLX             j_opus_custom_decoder_ctl
B1576:  CBNZ            R0, loc_B1588
B1578:  LDR.W           R2, [R11,#0x30]
B157C:  MOV             R0, R8
B157E:  MOVW            R1, #0x2718
B1582:  BLX             j_opus_custom_decoder_ctl
B1586:  CBZ             R0, loc_B15B2
B1588:  MOV             R9, #0xFFFFFFFD
B158C:  LDR.W           R0, =(__stack_chk_guard_ptr - 0xB1598)
B1590:  LDR.W           R1, [R7,#var_24]
B1594:  ADD             R0, PC; __stack_chk_guard_ptr
B1596:  LDR             R0, [R0]; __stack_chk_guard
B1598:  LDR             R0, [R0]
B159A:  SUBS            R0, R0, R1
B159C:  ITTTT EQ
B159E:  MOVEQ           R0, R9
B15A0:  SUBEQ.W         R4, R7, #-var_1C
B15A4:  MOVEQ           SP, R4
B15A6:  POPEQ.W         {R8-R11}
B15AA:  IT EQ
B15AC:  POPEQ           {R4-R7,PC}
B15AE:  BLX             __stack_chk_fail
B15B2:  CBZ             R6, loc_B162C
B15B4:  LDR.W           R0, [R11,#8]
B15B8:  LDR.W           R1, [R7,#var_94]
B15BC:  MULS            R0, R1
B15BE:  MOVS            R1, #7
B15C0:  ADD.W           R0, R1, R0,LSL#1
B15C4:  BIC.W           R0, R0, #7
B15C8:  SUB.W           R0, SP, R0
B15CC:  STR.W           R0, [R7,#var_74]
B15D0:  MOV             SP, R0
B15D2:  LDR.W           R0, [R7,#var_84]
B15D6:  CBZ             R0, loc_B164A
B15D8:  MOV             R0, R8
B15DA:  MOVW            R1, #0x271A
B15DE:  MOVS            R2, #0
B15E0:  MOVS            R4, #0
B15E2:  BLX             j_opus_custom_decoder_ctl
B15E6:  CMP             R0, #0
B15E8:  BNE             loc_B1588
B15EA:  SUB             SP, SP, #0x10
B15EC:  LDR.W           R0, [R7,#var_94]
B15F0:  STRD.W          R0, R4, [SP,#0xC8+var_C8]
B15F4:  STR             R4, [SP,#0xC8+var_C0]
B15F6:  LDR.W           R4, [R7,#var_70]
B15FA:  LDR.W           R0, [R7,#var_7C]
B15FE:  LDR.W           R2, [R7,#var_90]
B1602:  LDR.W           R3, [R7,#var_74]
B1606:  ADDS            R1, R0, R4
B1608:  MOV             R0, R8
B160A:  BLX             j_celt_decode_with_ec
B160E:  ADD             SP, SP, #0x10
B1610:  SUB.W           R2, R7, #-var_60
B1614:  MOV             R0, R8
B1616:  MOVW            R1, #0xFBF
B161A:  BLX             j_opus_custom_decoder_ctl
B161E:  CMP             R0, #0
B1620:  BNE             loc_B1588
B1622:  MOVS            R0, #1
B1624:  STR.W           R0, [R7,#var_AC]
B1628:  MOVS            R0, #1
B162A:  B               loc_B1652
B162C:  LDR.W           R0, [R7,#var_84]
B1630:  CMP             R0, #0
B1632:  IT NE
B1634:  MOVNE           R0, #1
B1636:  STR.W           R0, [R7,#var_84]
B163A:  MOVS            R0, #0
B163C:  STR.W           R0, [R7,#var_AC]
B1640:  SUB.W           R0, R7, #-var_28
B1644:  STR.W           R0, [R7,#var_74]
B1648:  B               loc_B1656
B164A:  MOVS            R0, #0
B164C:  STR.W           R0, [R7,#var_AC]
B1650:  MOVS            R0, #0
B1652:  STR.W           R0, [R7,#var_84]
B1656:  MOV             R0, R8
B1658:  MOVW            R1, #0x271A
B165C:  MOV             R2, R5
B165E:  BLX             j_opus_custom_decoder_ctl
B1662:  CMP             R0, #0
B1664:  BNE             loc_B1588
B1666:  LDR.W           R1, [R7,#var_98]
B166A:  CMP.W           R1, #0x3E8
B166E:  BNE             loc_B16E8
B1670:  MOVW            R0, #0xFFFF
B1674:  STRH.W          R0, [R7,#var_64]
B1678:  LDR.W           R0, [R7,#var_A8]
B167C:  CBNZ            R0, loc_B1694
B167E:  LDR.W           R0, [R11,#8]
B1682:  MUL.W           R0, R0, R9
B1686:  CMP             R0, #1
B1688:  ITTT GE
B168A:  LSLGE           R1, R0, #1; n
B168C:  LDRGE.W         R0, [R7,#var_68]; int
B1690:  BLXGE           sub_10967C
B1694:  LDR.W           R0, [R11,#0x3C]
B1698:  MOVW            R1, #0x3E9
B169C:  CMP             R0, R1
B169E:  BNE             loc_B16E4
B16A0:  LDR.W           R0, [R7,#var_AC]
B16A4:  CMP             R0, #1
B16A6:  BNE             loc_B16AE
B16A8:  LDR.W           R0, [R11,#0x44]
B16AC:  CBNZ            R0, loc_B16E4
B16AE:  MOV             R0, R8
B16B0:  MOVW            R1, #0x271A
B16B4:  MOVS            R2, #0
B16B6:  MOVS            R4, #0
B16B8:  BLX             j_opus_custom_decoder_ctl
B16BC:  CMP             R0, #0
B16BE:  BNE.W           loc_B1588
B16C2:  SUB             SP, SP, #0x10
B16C4:  LDR.W           R0, [R7,#var_A0]
B16C8:  SUB.W           R1, R7, #-var_64
B16CC:  STRD.W          R0, R4, [SP,#0xC8+var_C8]
B16D0:  MOVS            R2, #2
B16D2:  LDR.W           R3, [R7,#var_68]
B16D6:  LDR.W           R0, [R7,#var_88]
B16DA:  STR             R0, [SP,#0xC8+var_C0]
B16DC:  MOV             R0, R8
B16DE:  BLX             j_celt_decode_with_ec
B16E2:  ADD             SP, SP, #0x10
B16E4:  MOVS            R5, #0
B16E6:  B               loc_B173C
B16E8:  LDR.W           R2, [R7,#var_8C]
B16EC:  LDR.W           R0, [R11,#0x3C]
B16F0:  CMP             R2, R9
B16F2:  IT GE
B16F4:  MOVGE           R2, R9
B16F6:  CMP             R1, R0
B16F8:  STR.W           R2, [R7,#var_8C]
B16FC:  BEQ             loc_B170C
B16FE:  CMP             R0, #1
B1700:  BLT             loc_B170C
B1702:  LDR.W           R0, [R11,#0x44]
B1706:  CMP             R0, #0
B1708:  BEQ.W           loc_B1A9E
B170C:  SUB             SP, SP, #0x10
B170E:  SUB.W           R0, R7, #-var_58
B1712:  LDR.W           R1, [R7,#var_8C]
B1716:  MOV             R2, R4
B1718:  STRD.W          R1, R0, [SP,#0xC8+var_C8]
B171C:  LDR.W           R0, [R7,#var_88]
B1720:  STR             R0, [SP,#0xC8+var_C0]
B1722:  LDR             R0, [R7,#arg_4]
B1724:  LDR.W           R1, [R7,#var_7C]
B1728:  CMP             R0, #0
B172A:  MOV             R0, R8
B172C:  IT NE
B172E:  MOVNE           R1, #0
B1730:  LDR.W           R3, [R7,#var_68]
B1734:  BLX             j_celt_decode_with_ec
B1738:  ADD             SP, SP, #0x10
B173A:  MOV             R5, R0
B173C:  LDR.W           R0, [R7,#var_A4]
B1740:  MOVW            R4, #0x8000
B1744:  LDR.W           R2, [R7,#var_68]
B1748:  MOVT            R4, #0xFFFF
B174C:  CBNZ            R0, loc_B178C
B174E:  LDR.W           R0, [R11,#8]
B1752:  MUL.W           R0, R0, R9
B1756:  CMP             R0, #1
B1758:  BLT             loc_B178C
B175A:  MOVS            R1, #0
B175C:  LDR.W           R3, [R7,#var_9C]
B1760:  LDRSH.W         R2, [R2,R1,LSL#1]
B1764:  LDRSH.W         R3, [R3,R1,LSL#1]
B1768:  ADD             R2, R3
B176A:  CMP.W           R2, #0x8000
B176E:  BLT             loc_B1776
B1770:  MOVW            R2, #0x7FFF
B1774:  B               loc_B177C
B1776:  CMP             R2, R4
B1778:  IT LE
B177A:  MOVLE           R2, R4
B177C:  LDR.W           R3, [R7,#var_68]
B1780:  STRH.W          R2, [R3,R1,LSL#1]
B1784:  ADDS            R1, #1
B1786:  MOV             R2, R3
B1788:  CMP             R1, R0
B178A:  BLT             loc_B175C
B178C:  SUB.W           R2, R7, #-var_64
B1790:  MOV             R0, R8
B1792:  MOVW            R1, #0x271F
B1796:  BLX             j_opus_custom_decoder_ctl
B179A:  CMP             R0, #0
B179C:  BNE.W           loc_B1588
B17A0:  LDR.W           R0, [R7,#var_64]
B17A4:  MOVS            R1, #0
B17A6:  CMP             R6, #0
B17A8:  IT EQ
B17AA:  MOVEQ           R1, #1
B17AC:  LDR             R0, [R0,#0x34]
B17AE:  STR.W           R0, [R7,#var_88]
B17B2:  LDR.W           R0, [R7,#var_84]
B17B6:  ORRS            R0, R1
B17B8:  BEQ.W           loc_B1970
B17BC:  STR.W           R6, [R7,#var_B0]
B17C0:  LDR.W           R0, [R7,#var_AC]
B17C4:  LDR.W           R6, [R7,#var_A0]
B17C8:  LDR.W           R8, [R7,#var_74]
B17CC:  CMP             R0, #1
B17CE:  STR.W           R5, [R7,#var_8C]
B17D2:  STR.W           R11, [R7,#var_6C]
B17D6:  BNE             loc_B18A6
B17D8:  LDR.W           R12, [R7,#var_6C]
B17DC:  LDR.W           R3, [R7,#var_68]
B17E0:  LDR.W           R11, [R12,#8]
B17E4:  CMP.W           R11, #1
B17E8:  ITT GE
B17EA:  LDRGE.W         R0, [R7,#var_A0]
B17EE:  CMPGE           R0, #1
B17F0:  BLT             loc_B1814
B17F2:  MOV.W           R0, R11,LSL#1
B17F6:  MOVS            R1, #0
B17F8:  MOV             R2, R8
B17FA:  LDR.W           R5, [R7,#var_A0]
B17FE:  MOVS            R6, #0
B1800:  LDRH            R4, [R2,R6]
B1802:  SUBS            R5, #1
B1804:  STRH            R4, [R3,R6]
B1806:  ADD             R6, R0
B1808:  BNE             loc_B1800
B180A:  ADDS            R1, #1
B180C:  ADDS            R2, #2
B180E:  ADDS            R3, #2
B1810:  CMP             R1, R11
B1812:  BLT             loc_B17FA
B1814:  LDR.W           R1, [R12,#0xC]
B1818:  MOVW            R0, #0xBB80
B181C:  BLX             sub_108848
B1820:  LDR.W           R6, [R7,#var_A0]
B1824:  CMP             R6, #1
B1826:  IT GE
B1828:  CMPGE.W         R11, #1
B182C:  BLT             loc_B18A6
B182E:  MUL.W           R2, R11, R6
B1832:  LDR.W           R1, [R7,#var_68]
B1836:  MOV.W           R10, R0,LSL#1
B183A:  MOV.W           LR, R11,LSL#1
B183E:  MOVS            R0, #0
B1840:  MOVW            R3, #0x7FFF
B1844:  STR.W           R11, [R7,#var_7C]
B1848:  ADD.W           R1, R1, R2,LSL#1
B184C:  ADD.W           R2, R8, R2,LSL#1
B1850:  LDR.W           R4, [R7,#var_88]
B1854:  MOVS            R5, #0
B1856:  STR.W           R0, [R7,#var_74]
B185A:  LDRSH.W         R0, [R4]
B185E:  ADD             R4, R10
B1860:  LDRSH.W         R11, [R2,R5]
B1864:  SUBS            R6, #1
B1866:  LDRSH.W         R8, [R1,R5]
B186A:  SMULBB.W        R0, R0, R0
B186E:  MOV.W           R0, R0,LSL#1
B1872:  SUB.W           R12, R3, R0,ASR#16
B1876:  SXTH.W          R3, R12
B187A:  SMULBB.W        R3, R3, R11
B187E:  SMLATB.W        R0, R0, R8, R3
B1882:  MOVW            R3, #0x7FFF
B1886:  MOV.W           R0, R0,LSR#15
B188A:  STRH            R0, [R1,R5]
B188C:  ADD             R5, LR
B188E:  BNE             loc_B185A
B1890:  LDR.W           R0, [R7,#var_74]
B1894:  ADDS            R1, #2
B1896:  LDR.W           R11, [R7,#var_7C]
B189A:  ADDS            R2, #2
B189C:  LDR.W           R6, [R7,#var_A0]
B18A0:  ADDS            R0, #1
B18A2:  CMP             R0, R11
B18A4:  BNE             loc_B1850
B18A6:  LDR.W           R0, [R7,#var_78]
B18AA:  CMP             R0, #1
B18AC:  BNE.W           loc_B1B62
B18B0:  LDR.W           R2, [R7,#var_6C]
B18B4:  MOV             R4, R6
B18B6:  LDR.W           R0, [R7,#var_94]
B18BA:  LDR             R1, [R2,#8]
B18BC:  CMP             R9, R0
B18BE:  STR.W           R1, [R7,#var_74]
B18C2:  BGE.W           loc_B1AB0
B18C6:  LDR             R1, [R2,#0xC]
B18C8:  MOVW            R0, #0xBB80
B18CC:  BLX             sub_108848
B18D0:  LDR.W           R1, [R7,#var_74]
B18D4:  CMP             R4, #1
B18D6:  IT GE
B18D8:  CMPGE           R1, #1
B18DA:  BLT.W           loc_B1B62
B18DE:  LDR.W           R11, [R7,#var_68]
B18E2:  MOV.W           R8, R0,LSL#1
B18E6:  MOVS            R0, #0
B18E8:  MOV.W           R10, R1,LSL#1
B18EC:  MOVW            LR, #0x7FFF
B18F0:  STR.W           R0, [R7,#var_78]
B18F4:  LDR.W           R2, [R7,#var_88]
B18F8:  MOVS            R5, #0
B18FA:  LDR.W           R12, [R7,#var_80]
B18FE:  LDRSH.W         R3, [R2]
B1902:  ADD             R2, R8
B1904:  LDRSH.W         R1, [R12,R5]
B1908:  SUBS            R4, #1
B190A:  LDRSH.W         R0, [R11,R5]
B190E:  SMULBB.W        R3, R3, R3
B1912:  MOV.W           R3, R3,LSL#1
B1916:  SUB.W           R6, LR, R3,ASR#16
B191A:  SXTH            R6, R6
B191C:  SMULBB.W        R1, R6, R1
B1920:  SMLATB.W        R0, R3, R0, R1
B1924:  MOV.W           R0, R0,LSR#15
B1928:  STRH.W          R0, [R11,R5]
B192C:  ADD             R5, R10
B192E:  BNE             loc_B18FE
B1930:  LDR.W           R0, [R7,#var_78]
B1934:  ADD.W           R11, R11, #2
B1938:  LDR.W           R4, [R7,#var_A0]
B193C:  ADD.W           R12, R12, #2
B1940:  STR.W           R12, [R7,#var_80]
B1944:  MOV             R2, R0
B1946:  LDR.W           R0, [R7,#var_74]
B194A:  ADDS            R2, #1
B194C:  CMP             R2, R0
B194E:  MOV             R1, R2
B1950:  STR.W           R1, [R7,#var_78]
B1954:  BNE             loc_B18F4
B1956:  B               loc_B1B62
B1958:  MOVW            R0, #0x3E9
B195C:  MOVS            R6, #0
B195E:  STR.W           R0, [R7,#var_98]
B1962:  MOVS            R0, #0
B1964:  STR.W           R0, [R7,#var_90]
B1968:  MOVS            R0, #0
B196A:  STR.W           R0, [R7,#var_84]
B196E:  B               loc_B14B6
B1970:  MOV             R0, R8
B1972:  MOVW            R1, #0xFBC
B1976:  BLX             j_opus_custom_decoder_ctl
B197A:  CMP             R0, #0
B197C:  BNE.W           loc_B1588
B1980:  MOV             R0, R8
B1982:  MOVW            R1, #0x271A
B1986:  MOVS            R2, #0
B1988:  MOVS            R4, #0
B198A:  BLX             j_opus_custom_decoder_ctl
B198E:  CMP             R0, #0
B1990:  BNE.W           loc_B1588
B1994:  SUB             SP, SP, #0x10
B1996:  LDR.W           R0, [R7,#var_94]
B199A:  STRD.W          R0, R4, [SP,#0xC8+var_C8]
B199E:  LDR.W           R0, [R7,#var_70]
B19A2:  LDR.W           R1, [R7,#var_7C]
B19A6:  LDR.W           R2, [R7,#var_90]
B19AA:  LDR.W           R3, [R7,#var_74]
B19AE:  ADD             R1, R0
B19B0:  MOV             R0, R8
B19B2:  STR             R4, [SP,#0xC8+var_C0]
B19B4:  BLX             j_celt_decode_with_ec
B19B8:  ADD             SP, SP, #0x10
B19BA:  SUB.W           R2, R7, #-var_60
B19BE:  MOV             R0, R8
B19C0:  MOVW            R1, #0xFBF
B19C4:  BLX             j_opus_custom_decoder_ctl
B19C8:  CMP             R0, #0
B19CA:  BNE.W           loc_B1588
B19CE:  LDR.W           R0, [R11,#8]
B19D2:  STR.W           R0, [R7,#var_7C]
B19D6:  MOVW            R0, #0xBB80
B19DA:  LDR.W           R1, [R11,#0xC]
B19DE:  BLX             sub_108848
B19E2:  LDR.W           R1, [R7,#var_A0]
B19E6:  CMP             R1, #1
B19E8:  ITT GE
B19EA:  LDRGE.W         R1, [R7,#var_7C]
B19EE:  CMPGE           R1, #1
B19F0:  BLT.W           loc_B17BC
B19F4:  LDR.W           R2, [R7,#var_A0]
B19F8:  LSLS            R0, R0, #1
B19FA:  LDR.W           R4, [R7,#var_7C]
B19FE:  LDR.W           R3, [R7,#var_74]
B1A02:  STR.W           R0, [R7,#var_90]
B1A06:  MUL.W           R1, R4, R2
B1A0A:  SUB.W           R2, R9, R2
B1A0E:  LSLS            R0, R4, #1
B1A10:  MULS            R2, R4
B1A12:  STR.W           R0, [R7,#var_9C]
B1A16:  LDR.W           R12, [R7,#var_90]
B1A1A:  LDR.W           LR, [R7,#var_9C]
B1A1E:  MOVS            R0, #0
B1A20:  STR.W           R0, [R7,#var_6C]
B1A24:  ADD.W           R3, R3, R1,LSL#1
B1A28:  LDR.W           R1, [R7,#var_68]
B1A2C:  STR.W           R6, [R7,#var_B0]
B1A30:  ADD.W           R10, R1, R2,LSL#1
B1A34:  STR.W           R5, [R7,#var_8C]
B1A38:  LDR.W           R6, [R7,#var_A0]
B1A3C:  MOVS            R4, #0
B1A3E:  LDR.W           R5, [R7,#var_88]
B1A42:  LDRSH.W         R8, [R5]
B1A46:  MOVW            R2, #0x7FFF
B1A4A:  LDRSH.W         R1, [R10,R4]
B1A4E:  ADD             R5, R12
B1A50:  SUBS            R6, #1
B1A52:  SMULBB.W        R0, R8, R8
B1A56:  LDRSH.W         R8, [R3,R4]
B1A5A:  MOV.W           R0, R0,LSL#1
B1A5E:  SUB.W           R2, R2, R0,ASR#16
B1A62:  SXTH            R2, R2
B1A64:  SMULBB.W        R1, R2, R1
B1A68:  SMLATB.W        R0, R0, R8, R1
B1A6C:  MOV.W           R0, R0,LSR#15
B1A70:  STRH.W          R0, [R10,R4]
B1A74:  ADD             R4, LR
B1A76:  BNE             loc_B1A42
B1A78:  LDR.W           R0, [R7,#var_6C]
B1A7C:  ADDS            R3, #2
B1A7E:  LDR.W           R6, [R7,#var_B0]
B1A82:  ADD.W           R10, R10, #2
B1A86:  LDR.W           R5, [R7,#var_8C]
B1A8A:  MOV             R2, R0
B1A8C:  LDR.W           R0, [R7,#var_7C]
B1A90:  ADDS            R2, #1
B1A92:  CMP             R2, R0
B1A94:  MOV             R1, R2
B1A96:  STR.W           R1, [R7,#var_6C]
B1A9A:  BNE             loc_B1A38
B1A9C:  B               loc_B17BC
B1A9E:  MOV             R0, R8
B1AA0:  MOVW            R1, #0xFBC
B1AA4:  BLX             j_opus_custom_decoder_ctl
B1AA8:  CMP             R0, #0
B1AAA:  BNE.W           loc_B1588
B1AAE:  B               loc_B170C
B1AB0:  MOV             R5, R4
B1AB2:  LDR.W           R3, [R7,#var_68]
B1AB6:  MUL.W           R4, R1, R5
B1ABA:  LDR.W           R6, [R7,#var_80]
B1ABE:  CMP             R4, #1
B1AC0:  BLT             loc_B1AD2
B1AC2:  MOVS            R0, #0
B1AC4:  LDRH.W          R1, [R6,R0,LSL#1]
B1AC8:  STRH.W          R1, [R3,R0,LSL#1]
B1ACC:  ADDS            R0, #1
B1ACE:  CMP             R0, R4
B1AD0:  BLT             loc_B1AC4
B1AD2:  LDR             R1, [R2,#0xC]
B1AD4:  MOVW            R0, #0xBB80
B1AD8:  BLX             sub_108848
B1ADC:  LDR.W           R3, [R7,#var_74]
B1AE0:  CMP             R5, #1
B1AE2:  MOV             R6, R5
B1AE4:  IT GE
B1AE6:  CMPGE           R3, #1
B1AE8:  BLT             loc_B1B62
B1AEA:  LDR.W           R1, [R7,#var_68]
B1AEE:  MOV.W           R10, R0,LSL#1
B1AF2:  LDR.W           R2, [R7,#var_80]
B1AF6:  MOVS            R0, #0
B1AF8:  ADD.W           R1, R1, R4,LSL#1
B1AFC:  MOV.W           R11, R3,LSL#1
B1B00:  ADD.W           LR, R2, R4,LSL#1
B1B04:  STR.W           R0, [R7,#var_78]
B1B08:  LDR.W           R4, [R7,#var_88]
B1B0C:  MOVS            R5, #0
B1B0E:  LDRSH.W         R0, [R4]
B1B12:  MOVW            R2, #0x7FFF
B1B16:  LDRSH.W         R8, [LR,R5]
B1B1A:  ADD             R4, R10
B1B1C:  LDRSH           R3, [R1,R5]
B1B1E:  SMULBB.W        R0, R0, R0
B1B22:  SUBS            R6, #1
B1B24:  MOV.W           R0, R0,LSL#1
B1B28:  SUB.W           R12, R2, R0,ASR#16
B1B2C:  SXTH.W          R2, R12
B1B30:  SMULBB.W        R2, R2, R8
B1B34:  SMLATB.W        R0, R0, R3, R2
B1B38:  MOV.W           R0, R0,LSR#15
B1B3C:  STRH            R0, [R1,R5]
B1B3E:  ADD             R5, R11
B1B40:  BNE             loc_B1B0E
B1B42:  LDR.W           R0, [R7,#var_78]
B1B46:  ADDS            R1, #2
B1B48:  LDR.W           R6, [R7,#var_A0]
B1B4C:  ADD.W           LR, LR, #2
B1B50:  MOV             R3, R0
B1B52:  LDR.W           R0, [R7,#var_74]
B1B56:  ADDS            R3, #1
B1B58:  CMP             R3, R0
B1B5A:  MOV             R2, R3
B1B5C:  STR.W           R2, [R7,#var_78]
B1B60:  BNE             loc_B1B08
B1B62:  LDR.W           R12, [R7,#var_6C]
B1B66:  LDR.W           LR, [R7,#var_68]
B1B6A:  LDR.W           R0, [R12,#0x28]
B1B6E:  CMP             R0, #0
B1B70:  BEQ             loc_B1C3E
B1B72:  SXTH            R0, R0
B1B74:  MOV.W           R1, #0x4000
B1B78:  MOVW            R2, #0x550B
B1B7C:  SMLABB.W        R1, R0, R2, R1
B1B80:  SBFX.W          R0, R1, #0x19, #6
B1B84:  CMP             R0, #0xE
B1B86:  BLE             loc_B1B8E
B1B88:  MOV.W           R2, #0x7F000000
B1B8C:  B               loc_B1BF2
B1B8E:  CMN.W           R0, #0xF
B1B92:  BGE             loc_B1B98
B1B94:  MOVS            R2, #0
B1B96:  B               loc_B1BF2
B1B98:  MOVW            R2, #0x3FF0
B1B9C:  AND.W           R1, R2, R1,LSR#11
B1BA0:  MOVS            R2, #0
B1BA2:  MOVW            R3, #0x4FB8
B1BA6:  MOVT            R2, #0x39E3
B1BAA:  SMLABB.W        R2, R1, R3, R2
B1BAE:  MOVS            R3, #0x7FFF0000
B1BB4:  LSRS            R2, R2, #0x10
B1BB6:  SMULBB.W        R2, R2, R1
B1BBA:  AND.W           R2, R3, R2,LSL#1
B1BBE:  ADD.W           R2, R2, #0x58000000
B1BC2:  ADD.W           R2, R2, #0x1140000
B1BC6:  SMULTB.W        R1, R2, R1
B1BCA:  MOVW            R2, #0xFFFF
B1BCE:  LSLS            R1, R1, #1
B1BD0:  BICS            R1, R2
B1BD2:  MOV             R2, #0xFFFFFFFE
B1BD6:  ADD.W           R1, R1, #0x3F000000
B1BDA:  SUBS            R0, R2, R0
B1BDC:  ADD.W           R1, R1, #0xFF0000
B1BE0:  NEGS            R2, R0
B1BE2:  CMP             R0, #0
B1BE4:  MOV.W           R1, R1,ASR#16
B1BE8:  LSL.W           R2, R1, R2
B1BEC:  IT GT
B1BEE:  ASRGT.W         R2, R1, R0
B1BF2:  LDR.W           R0, [R12,#8]
B1BF6:  MOV             R8, #0xFFFF8000
B1BFE:  MUL.W           R0, R0, R9
B1C02:  CMP             R0, #1
B1C04:  BLT             loc_B1C3E
B1C06:  UXTH            R1, R2
B1C08:  ASRS            R2, R2, #0x10
B1C0A:  MOVS            R3, #0
B1C0C:  MOVW            R6, #0x7FFF
B1C10:  LDRSH.W         R5, [LR,R3,LSL#1]
B1C14:  MUL.W           R4, R1, R5
B1C18:  SMULBB.W        R5, R2, R5
B1C1C:  ADD.W           R4, R4, #0x8000
B1C20:  ADD.W           R5, R5, R4,ASR#16
B1C24:  ADD.W           R4, R8, #1
B1C28:  CMP             R5, R4
B1C2A:  IT GT
B1C2C:  MOVGT           R4, R5
B1C2E:  CMP             R4, R6
B1C30:  IT GE
B1C32:  MOVGE           R4, R6
B1C34:  STRH.W          R4, [LR,R3,LSL#1]
B1C38:  ADDS            R3, #1
B1C3A:  CMP             R3, R0
B1C3C:  BLT             loc_B1C10
B1C3E:  LDR.W           R0, [R7,#var_70]
B1C42:  CMP             R0, #2
B1C44:  BGE             loc_B1C4A
B1C46:  MOVS            R0, #0
B1C48:  B               loc_B1C54
B1C4A:  LDR.W           R0, [R7,#var_3C]
B1C4E:  LDR.W           R1, [R7,#var_60]
B1C52:  EORS            R0, R1
B1C54:  LDR.W           R2, [R7,#var_B0]
B1C58:  LDR.W           R1, [R7,#var_98]
B1C5C:  CMP             R2, #0
B1C5E:  LDR.W           R3, [R7,#var_8C]
B1C62:  STR.W           R1, [R12,#0x3C]
B1C66:  STR.W           R0, [R12,#0x4C]
B1C6A:  IT NE
B1C6C:  MOVNE           R2, #1
B1C6E:  LDR.W           R0, [R7,#var_84]
B1C72:  CMP             R3, #0
B1C74:  EOR.W           R0, R0, #1
B1C78:  AND.W           R0, R0, R2
B1C7C:  STR.W           R0, [R12,#0x44]
B1C80:  IT LT
B1C82:  MOVLT           R9, R3
B1C84:  B               loc_B158C
