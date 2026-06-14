; =========================================================
; Game Engine Function: silk_find_LTP_FIX
; Address            : 0xD1194 - 0xD15DE
; =========================================================

D1194:  PUSH            {R4-R7,LR}
D1196:  ADD             R7, SP, #0xC
D1198:  PUSH.W          {R8-R11}
D119C:  SUB             SP, SP, #0x34
D119E:  MOV             R4, R0
D11A0:  LDR.W           R0, =(__stack_chk_guard_ptr - 0xD11AC)
D11A4:  LDR             R5, [R7,#arg_4]
D11A6:  MOV             R6, R3
D11A8:  ADD             R0, PC; __stack_chk_guard_ptr
D11AA:  MOV             R10, R2
D11AC:  MOV             R9, R1
D11AE:  CMP             R5, #1
D11B0:  LDR             R0, [R0]; __stack_chk_guard
D11B2:  LDR             R0, [R0]
D11B4:  STR             R0, [SP,#0x50+var_20]
D11B6:  BLT.W           loc_D15C4
D11BA:  LDR             R1, [R7,#arg_0]
D11BC:  LDR.W           R11, [R7,#arg_8]
D11C0:  LSLS            R0, R1, #1
D11C2:  STR             R0, [SP,#0x50+var_40]
D11C4:  ADDS            R0, R1, #5
D11C6:  STR             R0, [SP,#0x50+var_44]
D11C8:  LDR             R3, [SP,#0x50+var_44]
D11CA:  ADD             R0, SP, #0x50+var_2C
D11CC:  ADD             R1, SP, #0x50+var_24
D11CE:  MOV             R2, R10
D11D0:  LDR.W           R8, [R6]
D11D4:  BLX             j_silk_sum_sqr_shift
D11D8:  ADD             R0, SP, #0x50+var_30
D11DA:  STR             R0, [SP,#0x50+var_50]
D11DC:  ADD             R0, SP, #0x50+var_28
D11DE:  STRD.W          R0, R11, [SP,#0x50+var_4C]
D11E2:  SUB.W           R0, R10, R8,LSL#1
D11E6:  LDR             R1, [R7,#arg_0]
D11E8:  SUB.W           R8, R0, #4
D11EC:  MOVS            R2, #5
D11EE:  MOV             R3, R4
D11F0:  MOV             R0, R8
D11F2:  BLX             j_silk_corrMatrix_FIX
D11F6:  LDRD.W          R2, R12, [SP,#0x50+var_28]
D11FA:  STR             R6, [SP,#0x50+var_34]
D11FC:  SUB.W           R1, R12, R2
D1200:  STR             R5, [SP,#0x50+var_3C]
D1202:  CMP             R1, #1
D1204:  BLT             loc_D12B4
D1206:  LDM.W           R4, {R2,R3,R6}
D120A:  LDRD.W          R5, R0, [R4,#0xC]
D120E:  ASRS            R2, R1
D1210:  LDR.W           LR, [R4,#0x14]
D1214:  STR             R2, [R4]
D1216:  ASR.W           R2, R3, R1
D121A:  LDR             R3, [R4,#0x18]
D121C:  ASRS            R0, R1
D121E:  STR             R2, [R4,#4]
D1220:  ASR.W           R2, R6, R1
D1224:  LDR             R6, [R4,#0x20]
D1226:  STR             R2, [R4,#8]
D1228:  ASR.W           R2, R5, R1
D122C:  LDR             R5, [R4,#0x24]
D122E:  STR             R2, [R4,#0xC]
D1230:  LDR             R2, [R4,#0x1C]
D1232:  STR             R0, [R4,#0x10]
D1234:  ASR.W           R0, LR, R1
D1238:  STR             R0, [R4,#0x14]
D123A:  ASR.W           R0, R3, R1
D123E:  STR             R0, [R4,#0x18]
D1240:  ASR.W           R0, R2, R1
D1244:  STR             R0, [R4,#0x1C]
D1246:  ASR.W           R0, R6, R1
D124A:  STR             R0, [R4,#0x20]
D124C:  ASR.W           R0, R5, R1
D1250:  STR             R0, [R4,#0x24]
D1252:  LDR             R0, [R4,#0x28]
D1254:  ASRS            R0, R1
D1256:  STR             R0, [R4,#0x28]
D1258:  LDR             R0, [R4,#0x2C]
D125A:  ASRS            R0, R1
D125C:  STR             R0, [R4,#0x2C]
D125E:  LDR             R0, [R4,#0x30]
D1260:  ASRS            R0, R1
D1262:  STR             R0, [R4,#0x30]
D1264:  LDR             R0, [R4,#0x34]
D1266:  ASRS            R0, R1
D1268:  STR             R0, [R4,#0x34]
D126A:  LDR             R0, [R4,#0x38]
D126C:  ASRS            R0, R1
D126E:  STR             R0, [R4,#0x38]
D1270:  LDR             R0, [R4,#0x3C]
D1272:  ASRS            R0, R1
D1274:  STR             R0, [R4,#0x3C]
D1276:  LDR             R0, [R4,#0x40]
D1278:  ASRS            R0, R1
D127A:  STR             R0, [R4,#0x40]
D127C:  LDR             R0, [R4,#0x44]
D127E:  ASRS            R0, R1
D1280:  STR             R0, [R4,#0x44]
D1282:  LDR             R0, [R4,#0x48]
D1284:  ASRS            R0, R1
D1286:  STR             R0, [R4,#0x48]
D1288:  LDR             R0, [R4,#0x4C]
D128A:  ASRS            R0, R1
D128C:  STR             R0, [R4,#0x4C]
D128E:  LDR             R0, [R4,#0x50]
D1290:  ASRS            R0, R1
D1292:  STR             R0, [R4,#0x50]
D1294:  LDR             R0, [R4,#0x54]
D1296:  ASRS            R0, R1
D1298:  STR             R0, [R4,#0x54]
D129A:  LDR             R0, [R4,#0x58]
D129C:  ASRS            R0, R1
D129E:  STR             R0, [R4,#0x58]
D12A0:  LDR             R0, [R4,#0x5C]
D12A2:  ASRS            R0, R1
D12A4:  STR             R0, [R4,#0x5C]
D12A6:  LDR             R0, [R4,#0x60]
D12A8:  ASRS            R0, R1
D12AA:  STR             R0, [R4,#0x60]
D12AC:  LDR             R0, [SP,#0x50+var_30]
D12AE:  ASRS            R0, R1
D12B0:  STR             R0, [SP,#0x50+var_30]
D12B2:  B               loc_D12C4
D12B4:  CMP.W           R1, #0xFFFFFFFF
D12B8:  BGT             loc_D12C4
D12BA:  LDR             R0, [SP,#0x50+var_2C]
D12BC:  NEGS            R1, R1
D12BE:  MOV             R12, R2
D12C0:  ASRS            R0, R1
D12C2:  STR             R0, [SP,#0x50+var_2C]
D12C4:  LDR             R2, [R7,#arg_0]
D12C6:  MOV             R0, R8
D12C8:  MOV             R1, R10
D12CA:  MOVS            R3, #5
D12CC:  STRD.W          R9, R12, [SP,#0x50+var_50]
D12D0:  STR.W           R11, [SP,#0x50+var_48]
D12D4:  BLX             j_silk_corrVector_FIX
D12D8:  LDR             R0, [SP,#0x50+var_30]
D12DA:  MOVW            R2, #0x7AE
D12DE:  LDR.W           R11, [SP,#0x50+var_2C]
D12E2:  UXTH            R1, R0
D12E4:  SMULTB.W        R0, R0, R2
D12E8:  MULS            R1, R2
D12EA:  ORR.W           R0, R0, #1
D12EE:  ADD.W           R0, R0, R1,LSR#16
D12F2:  CMP             R0, R11
D12F4:  IT GT
D12F6:  MOVGT           R11, R0
D12F8:  LDM.W           R4, {R0,R6,R8}
D12FC:  MOV             R2, R11
D12FE:  LDR             R5, [R4,#0xC]
D1300:  ASRS            R1, R0, #0x1F
D1302:  STR.W           R10, [SP,#0x50+var_38]
D1306:  LSLS            R1, R1, #0x11
D1308:  MOV.W           R10, R11,ASR#31
D130C:  ORR.W           R1, R1, R0,LSR#15
D1310:  LSLS            R0, R0, #0x11
D1312:  MOV             R3, R10
D1314:  BLX             sub_1092F4
D1318:  STR             R0, [R4]
D131A:  ASRS            R0, R6, #0x1F
D131C:  LSLS            R0, R0, #0x11
D131E:  ORR.W           R1, R0, R6,LSR#15
D1322:  LSLS            R0, R6, #0x11
D1324:  MOV             R2, R11
D1326:  MOV             R3, R10
D1328:  BLX             sub_1092F4
D132C:  STR             R0, [R4,#4]
D132E:  MOV.W           R0, R8,ASR#31
D1332:  LSLS            R0, R0, #0x11
D1334:  ORR.W           R1, R0, R8,LSR#15
D1338:  MOV.W           R0, R8,LSL#17
D133C:  MOV             R2, R11
D133E:  MOV             R3, R10
D1340:  BLX             sub_1092F4
D1344:  STR             R0, [R4,#8]
D1346:  ASRS            R0, R5, #0x1F
D1348:  LSLS            R0, R0, #0x11
D134A:  ORR.W           R1, R0, R5,LSR#15
D134E:  LSLS            R0, R5, #0x11
D1350:  MOV             R2, R11
D1352:  MOV             R3, R10
D1354:  LDR             R5, [R4,#0x10]
D1356:  BLX             sub_1092F4
D135A:  STR             R0, [R4,#0xC]
D135C:  ASRS            R0, R5, #0x1F
D135E:  LSLS            R0, R0, #0x11
D1360:  ORR.W           R1, R0, R5,LSR#15
D1364:  LSLS            R0, R5, #0x11
D1366:  MOV             R2, R11
D1368:  MOV             R3, R10
D136A:  LDR             R5, [R4,#0x14]
D136C:  BLX             sub_1092F4
D1370:  STR             R0, [R4,#0x10]
D1372:  ASRS            R0, R5, #0x1F
D1374:  LSLS            R0, R0, #0x11
D1376:  ORR.W           R1, R0, R5,LSR#15
D137A:  LSLS            R0, R5, #0x11
D137C:  MOV             R2, R11
D137E:  MOV             R3, R10
D1380:  BLX             sub_1092F4
D1384:  MOV             R5, R0
D1386:  LDR             R0, [R4,#0x18]
D1388:  MOV             R2, R11
D138A:  MOV             R3, R10
D138C:  ASRS            R1, R0, #0x1F
D138E:  LSLS            R1, R1, #0x11
D1390:  ORR.W           R1, R1, R0,LSR#15
D1394:  LSLS            R0, R0, #0x11
D1396:  BLX             sub_1092F4
D139A:  LDR             R2, [R4,#0x1C]
D139C:  MOV             R3, R10
D139E:  STRD.W          R5, R0, [R4,#0x14]
D13A2:  ASRS            R0, R2, #0x1F
D13A4:  LSLS            R0, R0, #0x11
D13A6:  ORR.W           R1, R0, R2,LSR#15
D13AA:  LSLS            R0, R2, #0x11
D13AC:  MOV             R2, R11
D13AE:  BLX             sub_1092F4
D13B2:  STR             R0, [R4,#0x1C]
D13B4:  MOV             R2, R11
D13B6:  LDR             R0, [R4,#0x20]
D13B8:  MOV             R3, R10
D13BA:  ASRS            R1, R0, #0x1F
D13BC:  LSLS            R1, R1, #0x11
D13BE:  ORR.W           R1, R1, R0,LSR#15
D13C2:  LSLS            R0, R0, #0x11
D13C4:  BLX             sub_1092F4
D13C8:  STR             R0, [R4,#0x20]
D13CA:  MOV             R2, R11
D13CC:  LDR             R0, [R4,#0x24]
D13CE:  MOV             R3, R10
D13D0:  ASRS            R1, R0, #0x1F
D13D2:  LSLS            R1, R1, #0x11
D13D4:  ORR.W           R1, R1, R0,LSR#15
D13D8:  LSLS            R0, R0, #0x11
D13DA:  BLX             sub_1092F4
D13DE:  STR             R0, [R4,#0x24]
D13E0:  MOV             R2, R11
D13E2:  LDR             R0, [R4,#0x28]
D13E4:  MOV             R3, R10
D13E6:  ASRS            R1, R0, #0x1F
D13E8:  LSLS            R1, R1, #0x11
D13EA:  ORR.W           R1, R1, R0,LSR#15
D13EE:  LSLS            R0, R0, #0x11
D13F0:  BLX             sub_1092F4
D13F4:  STR             R0, [R4,#0x28]
D13F6:  MOV             R2, R11
D13F8:  LDR             R0, [R4,#0x2C]
D13FA:  MOV             R3, R10
D13FC:  ASRS            R1, R0, #0x1F
D13FE:  LSLS            R1, R1, #0x11
D1400:  ORR.W           R1, R1, R0,LSR#15
D1404:  LSLS            R0, R0, #0x11
D1406:  BLX             sub_1092F4
D140A:  STR             R0, [R4,#0x2C]
D140C:  MOV             R2, R11
D140E:  LDR             R0, [R4,#0x30]
D1410:  MOV             R3, R10
D1412:  ASRS            R1, R0, #0x1F
D1414:  LSLS            R1, R1, #0x11
D1416:  ORR.W           R1, R1, R0,LSR#15
D141A:  LSLS            R0, R0, #0x11
D141C:  BLX             sub_1092F4
D1420:  STR             R0, [R4,#0x30]
D1422:  MOV             R2, R11
D1424:  LDR             R0, [R4,#0x34]
D1426:  MOV             R3, R10
D1428:  ASRS            R1, R0, #0x1F
D142A:  LSLS            R1, R1, #0x11
D142C:  ORR.W           R1, R1, R0,LSR#15
D1430:  LSLS            R0, R0, #0x11
D1432:  BLX             sub_1092F4
D1436:  STR             R0, [R4,#0x34]
D1438:  MOV             R2, R11
D143A:  LDR             R0, [R4,#0x38]
D143C:  MOV             R3, R10
D143E:  ASRS            R1, R0, #0x1F
D1440:  LSLS            R1, R1, #0x11
D1442:  ORR.W           R1, R1, R0,LSR#15
D1446:  LSLS            R0, R0, #0x11
D1448:  BLX             sub_1092F4
D144C:  STR             R0, [R4,#0x38]
D144E:  MOV             R2, R11
D1450:  LDR             R0, [R4,#0x3C]
D1452:  MOV             R3, R10
D1454:  ASRS            R1, R0, #0x1F
D1456:  LSLS            R1, R1, #0x11
D1458:  ORR.W           R1, R1, R0,LSR#15
D145C:  LSLS            R0, R0, #0x11
D145E:  BLX             sub_1092F4
D1462:  STR             R0, [R4,#0x3C]
D1464:  MOV             R2, R11
D1466:  LDR             R0, [R4,#0x40]
D1468:  MOV             R3, R10
D146A:  ASRS            R1, R0, #0x1F
D146C:  LSLS            R1, R1, #0x11
D146E:  ORR.W           R1, R1, R0,LSR#15
D1472:  LSLS            R0, R0, #0x11
D1474:  BLX             sub_1092F4
D1478:  STR             R0, [R4,#0x40]
D147A:  MOV             R2, R11
D147C:  LDR             R0, [R4,#0x44]
D147E:  MOV             R3, R10
D1480:  ASRS            R1, R0, #0x1F
D1482:  LSLS            R1, R1, #0x11
D1484:  ORR.W           R1, R1, R0,LSR#15
D1488:  LSLS            R0, R0, #0x11
D148A:  BLX             sub_1092F4
D148E:  STR             R0, [R4,#0x44]
D1490:  MOV             R2, R11
D1492:  LDR             R0, [R4,#0x48]
D1494:  MOV             R3, R10
D1496:  ASRS            R1, R0, #0x1F
D1498:  LSLS            R1, R1, #0x11
D149A:  ORR.W           R1, R1, R0,LSR#15
D149E:  LSLS            R0, R0, #0x11
D14A0:  BLX             sub_1092F4
D14A4:  STR             R0, [R4,#0x48]
D14A6:  MOV             R2, R11
D14A8:  LDR             R0, [R4,#0x4C]
D14AA:  MOV             R3, R10
D14AC:  ASRS            R1, R0, #0x1F
D14AE:  LSLS            R1, R1, #0x11
D14B0:  ORR.W           R1, R1, R0,LSR#15
D14B4:  LSLS            R0, R0, #0x11
D14B6:  BLX             sub_1092F4
D14BA:  STR             R0, [R4,#0x4C]
D14BC:  MOV             R2, R11
D14BE:  LDR             R0, [R4,#0x50]
D14C0:  MOV             R3, R10
D14C2:  ASRS            R1, R0, #0x1F
D14C4:  LSLS            R1, R1, #0x11
D14C6:  ORR.W           R1, R1, R0,LSR#15
D14CA:  LSLS            R0, R0, #0x11
D14CC:  BLX             sub_1092F4
D14D0:  STR             R0, [R4,#0x50]
D14D2:  MOV             R2, R11
D14D4:  LDR             R0, [R4,#0x54]
D14D6:  MOV             R3, R10
D14D8:  ASRS            R1, R0, #0x1F
D14DA:  LSLS            R1, R1, #0x11
D14DC:  ORR.W           R1, R1, R0,LSR#15
D14E0:  LSLS            R0, R0, #0x11
D14E2:  BLX             sub_1092F4
D14E6:  STR             R0, [R4,#0x54]
D14E8:  MOV             R2, R11
D14EA:  LDR             R0, [R4,#0x58]
D14EC:  MOV             R3, R10
D14EE:  ASRS            R1, R0, #0x1F
D14F0:  LSLS            R1, R1, #0x11
D14F2:  ORR.W           R1, R1, R0,LSR#15
D14F6:  LSLS            R0, R0, #0x11
D14F8:  BLX             sub_1092F4
D14FC:  STR             R0, [R4,#0x58]
D14FE:  MOV             R2, R11
D1500:  LDR             R0, [R4,#0x5C]
D1502:  MOV             R3, R10
D1504:  ASRS            R1, R0, #0x1F
D1506:  LSLS            R1, R1, #0x11
D1508:  ORR.W           R1, R1, R0,LSR#15
D150C:  LSLS            R0, R0, #0x11
D150E:  BLX             sub_1092F4
D1512:  STR             R0, [R4,#0x5C]
D1514:  MOV             R2, R11
D1516:  LDR             R0, [R4,#0x60]
D1518:  MOV             R3, R10
D151A:  ASRS            R1, R0, #0x1F
D151C:  LSLS            R1, R1, #0x11
D151E:  ORR.W           R1, R1, R0,LSR#15
D1522:  LSLS            R0, R0, #0x11
D1524:  BLX             sub_1092F4
D1528:  STR             R0, [R4,#0x60]
D152A:  MOV             R2, R11
D152C:  LDM.W           R9, {R0,R5,R6,R8}
D1530:  MOV             R3, R10
D1532:  ASRS            R1, R0, #0x1F
D1534:  LSLS            R1, R1, #0x11
D1536:  ORR.W           R1, R1, R0,LSR#15
D153A:  LSLS            R0, R0, #0x11
D153C:  BLX             sub_1092F4
D1540:  STR.W           R0, [R9]
D1544:  ASRS            R0, R5, #0x1F
D1546:  LSLS            R0, R0, #0x11
D1548:  ORR.W           R1, R0, R5,LSR#15
D154C:  LSLS            R0, R5, #0x11
D154E:  MOV             R2, R11
D1550:  MOV             R3, R10
D1552:  BLX             sub_1092F4
D1556:  STR.W           R0, [R9,#4]
D155A:  ASRS            R0, R6, #0x1F
D155C:  LSLS            R0, R0, #0x11
D155E:  ORR.W           R1, R0, R6,LSR#15
D1562:  LSLS            R0, R6, #0x11
D1564:  MOV             R2, R11
D1566:  MOV             R3, R10
D1568:  BLX             sub_1092F4
D156C:  STR.W           R0, [R9,#8]
D1570:  MOV.W           R0, R8,ASR#31
D1574:  LSLS            R0, R0, #0x11
D1576:  ORR.W           R1, R0, R8,LSR#15
D157A:  MOV.W           R0, R8,LSL#17
D157E:  MOV             R2, R11
D1580:  MOV             R3, R10
D1582:  LDR.W           R5, [R9,#0x10]
D1586:  BLX             sub_1092F4
D158A:  STR.W           R0, [R9,#0xC]
D158E:  ASRS            R0, R5, #0x1F
D1590:  LSLS            R0, R0, #0x11
D1592:  ORR.W           R1, R0, R5,LSR#15
D1596:  MOV             R2, R11
D1598:  MOV             R3, R10
D159A:  LSLS            R0, R5, #0x11
D159C:  LDR.W           R11, [R7,#arg_8]
D15A0:  LDR.W           R10, [SP,#0x50+var_38]
D15A4:  BLX             sub_1092F4
D15A8:  STR.W           R0, [R9,#0x10]
D15AC:  ADD.W           R9, R9, #0x14
D15B0:  LDR             R5, [SP,#0x50+var_3C]
D15B2:  ADDS            R4, #0x64 ; 'd'
D15B4:  LDR             R6, [SP,#0x50+var_34]
D15B6:  LDR             R0, [SP,#0x50+var_40]
D15B8:  SUBS            R5, #1
D15BA:  ADD.W           R6, R6, #4
D15BE:  ADD             R10, R0
D15C0:  BNE.W           loc_D11C8
D15C4:  LDR             R0, =(__stack_chk_guard_ptr - 0xD15CC)
D15C6:  LDR             R1, [SP,#0x50+var_20]
D15C8:  ADD             R0, PC; __stack_chk_guard_ptr
D15CA:  LDR             R0, [R0]; __stack_chk_guard
D15CC:  LDR             R0, [R0]
D15CE:  SUBS            R0, R0, R1
D15D0:  ITTT EQ
D15D2:  ADDEQ           SP, SP, #0x34 ; '4'
D15D4:  POPEQ.W         {R8-R11}
D15D8:  POPEQ           {R4-R7,PC}
D15DA:  BLX             __stack_chk_fail
