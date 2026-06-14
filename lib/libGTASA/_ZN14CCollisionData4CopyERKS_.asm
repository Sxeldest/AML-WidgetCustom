; =========================================================
; Game Engine Function: _ZN14CCollisionData4CopyERKS_
; Address            : 0x2E11D8 - 0x2E1628
; =========================================================

2E11D8:  PUSH            {R4-R7,LR}
2E11DA:  ADD             R7, SP, #0xC
2E11DC:  PUSH.W          {R8-R10}
2E11E0:  MOV             R9, R1
2E11E2:  MOV             R10, R0
2E11E4:  LDRH.W          R1, [R9]; void *
2E11E8:  CBZ             R1, loc_2E124A
2E11EA:  LDRH.W          R0, [R10]
2E11EE:  CMP             R0, R1
2E11F0:  BEQ             loc_2E121A
2E11F2:  LDR.W           R0, [R10,#8]; this
2E11F6:  STRH.W          R1, [R10]
2E11FA:  CBZ             R0, loc_2E1204
2E11FC:  BLX             j__ZN10CMemoryMgr4FreeEPv; CMemoryMgr::Free(void *)
2E1200:  LDRH.W          R1, [R10]; unsigned int
2E1204:  SXTH            R0, R1
2E1206:  ADD.W           R0, R0, R0,LSL#2
2E120A:  LSLS            R0, R0, #2; byte_count
2E120C:  BLX             j__ZN10CMemoryMgr6MallocEj; CMemoryMgr::Malloc(uint)
2E1210:  LDRH.W          R1, [R10]
2E1214:  STR.W           R0, [R10,#8]
2E1218:  CBZ             R1, loc_2E1260
2E121A:  MOVS            R0, #0
2E121C:  MOVS            R1, #0
2E121E:  LDR.W           R2, [R9,#8]
2E1222:  ADDS            R1, #1
2E1224:  LDR.W           R3, [R10,#8]
2E1228:  ADDS            R6, R2, R0
2E122A:  ADD             R3, R0
2E122C:  ADDS            R0, #0x14
2E122E:  MOV             R2, R6
2E1230:  LDRB            R6, [R6,#0x12]
2E1232:  VLD1.32         {D16-D17}, [R2]!
2E1236:  LDRH            R2, [R2]
2E1238:  STRB            R6, [R3,#0x12]
2E123A:  VST1.32         {D16-D17}, [R3]!
2E123E:  STRH            R2, [R3]
2E1240:  LDRSH.W         R2, [R10]
2E1244:  CMP             R1, R2
2E1246:  BCC             loc_2E121E
2E1248:  B               loc_2E1260
2E124A:  LDR.W           R0, [R10,#8]; this
2E124E:  MOVS            R5, #0
2E1250:  STRH.W          R5, [R10]
2E1254:  CMP             R0, #0
2E1256:  IT NE
2E1258:  BLXNE           j__ZN10CMemoryMgr4FreeEPv; CMemoryMgr::Free(void *)
2E125C:  STR.W           R5, [R10,#8]
2E1260:  LDRB.W          R1, [R9,#6]; void *
2E1264:  CBZ             R1, loc_2E12D8
2E1266:  MOV             R8, R9
2E1268:  LDRB.W          R0, [R10,#6]
2E126C:  LDRB.W          R2, [R8,#7]!
2E1270:  TST.W           R2, #1
2E1274:  BNE             loc_2E12F4
2E1276:  CMP             R0, R1
2E1278:  ITT EQ
2E127A:  LDRBEQ.W        R0, [R10,#7]
2E127E:  MOVSEQ.W        R0, R0,LSL#31
2E1282:  BEQ             loc_2E12AA
2E1284:  LDR.W           R0, [R10,#0x10]; this
2E1288:  STRB.W          R1, [R10,#6]
2E128C:  CBZ             R0, loc_2E1296
2E128E:  BLX             j__ZN10CMemoryMgr4FreeEPv; CMemoryMgr::Free(void *)
2E1292:  LDRB.W          R1, [R10,#6]; unsigned int
2E1296:  SXTB            R0, R1
2E1298:  LSLS            R0, R0, #5; byte_count
2E129A:  BLX             j__ZN10CMemoryMgr6MallocEj; CMemoryMgr::Malloc(uint)
2E129E:  LDRB.W          R1, [R10,#6]
2E12A2:  STR.W           R0, [R10,#0x10]
2E12A6:  CMP             R1, #0
2E12A8:  BEQ             loc_2E135A
2E12AA:  MOVS            R0, #0
2E12AC:  MOVS            R1, #0
2E12AE:  LDR.W           R2, [R9,#0x10]
2E12B2:  ADDS            R1, #1
2E12B4:  LDR.W           R3, [R10,#0x10]
2E12B8:  ADD             R2, R0
2E12BA:  VLD1.32         {D16-D17}, [R2]!
2E12BE:  VLD1.32         {D18-D19}, [R2]
2E12C2:  ADDS            R2, R3, R0
2E12C4:  ADDS            R0, #0x20 ; ' '
2E12C6:  VST1.32         {D16-D17}, [R2]!
2E12CA:  VST1.32         {D18-D19}, [R2]
2E12CE:  LDRSB.W         R2, [R10,#6]
2E12D2:  CMP             R1, R2
2E12D4:  BCC             loc_2E12AE
2E12D6:  B               loc_2E135A
2E12D8:  LDR.W           R0, [R10,#0x10]; this
2E12DC:  MOVS            R5, #0
2E12DE:  STRB.W          R5, [R10,#6]
2E12E2:  CMP             R0, #0
2E12E4:  IT NE
2E12E6:  BLXNE           j__ZN10CMemoryMgr4FreeEPv; CMemoryMgr::Free(void *)
2E12EA:  STR.W           R5, [R10,#0x10]
2E12EE:  ADD.W           R8, R9, #7
2E12F2:  B               loc_2E135A
2E12F4:  CMP             R0, R1
2E12F6:  BNE             loc_2E1300
2E12F8:  LDRB.W          R0, [R10,#7]
2E12FC:  LSLS            R0, R0, #0x1F
2E12FE:  BNE             loc_2E1328
2E1300:  LDR.W           R0, [R10,#0x10]; this
2E1304:  STRB.W          R1, [R10,#6]
2E1308:  CBZ             R0, loc_2E1312
2E130A:  BLX             j__ZN10CMemoryMgr4FreeEPv; CMemoryMgr::Free(void *)
2E130E:  LDRB.W          R1, [R10,#6]; unsigned int
2E1312:  SXTB            R0, R1
2E1314:  ADD.W           R0, R0, R0,LSL#3
2E1318:  LSLS            R0, R0, #2; byte_count
2E131A:  BLX             j__ZN10CMemoryMgr6MallocEj; CMemoryMgr::Malloc(uint)
2E131E:  LDRB.W          R1, [R10,#6]
2E1322:  STR.W           R0, [R10,#0x10]
2E1326:  CBZ             R1, loc_2E135A
2E1328:  MOVS            R0, #0
2E132A:  MOVS            R1, #0
2E132C:  LDR.W           R2, [R9,#0x10]
2E1330:  ADDS            R1, #1
2E1332:  LDR.W           R6, [R10,#0x10]
2E1336:  ADD             R2, R0
2E1338:  MOV             R3, R2
2E133A:  LDR             R2, [R2,#0x20]
2E133C:  VLD1.32         {D16-D17}, [R3]!
2E1340:  VLD1.32         {D18-D19}, [R3]
2E1344:  ADDS            R3, R6, R0
2E1346:  ADDS            R0, #0x24 ; '$'
2E1348:  STR             R2, [R3,#0x20]
2E134A:  VST1.32         {D16-D17}, [R3]!
2E134E:  VST1.32         {D18-D19}, [R3]
2E1352:  LDRSB.W         R2, [R10,#6]
2E1356:  CMP             R1, R2
2E1358:  BCC             loc_2E132C
2E135A:  LDRB.W          R0, [R10,#7]
2E135E:  LDRB.W          R1, [R8]
2E1362:  BFI.W           R0, R1, #0, #1
2E1366:  STRB.W          R0, [R10,#7]
2E136A:  LDRB.W          R1, [R8]
2E136E:  AND.W           R0, R0, #0xFB
2E1372:  AND.W           R1, R1, #4
2E1376:  ORRS            R0, R1
2E1378:  STRB.W          R0, [R10,#7]
2E137C:  LDRH.W          R1, [R9,#2]; void *
2E1380:  CBZ             R1, loc_2E13D4
2E1382:  LDRH.W          R0, [R10,#2]
2E1386:  CMP             R0, R1
2E1388:  BEQ             loc_2E13B2
2E138A:  LDR.W           R0, [R10,#0xC]; this
2E138E:  STRH.W          R1, [R10,#2]
2E1392:  CBZ             R0, loc_2E139C
2E1394:  BLX             j__ZN10CMemoryMgr4FreeEPv; CMemoryMgr::Free(void *)
2E1398:  LDRH.W          R1, [R10,#2]; unsigned int
2E139C:  SXTH            R0, R1
2E139E:  RSB.W           R0, R0, R0,LSL#3
2E13A2:  LSLS            R0, R0, #2; byte_count
2E13A4:  BLX             j__ZN10CMemoryMgr6MallocEj; CMemoryMgr::Malloc(uint)
2E13A8:  LDRH.W          R1, [R10,#2]
2E13AC:  STR.W           R0, [R10,#0xC]
2E13B0:  CBZ             R1, loc_2E13EA
2E13B2:  MOVS            R6, #0
2E13B4:  MOVS            R5, #0
2E13B6:  LDR.W           R0, [R10,#0xC]
2E13BA:  LDR.W           R1, [R9,#0xC]
2E13BE:  ADD             R0, R6
2E13C0:  ADD             R1, R6
2E13C2:  BLX             j__ZN7CColBoxaSERKS_; CColBox::operator=(CColBox const&)
2E13C6:  LDRSH.W         R0, [R10,#2]
2E13CA:  ADDS            R5, #1
2E13CC:  ADDS            R6, #0x1C
2E13CE:  CMP             R5, R0
2E13D0:  BCC             loc_2E13B6
2E13D2:  B               loc_2E13EA
2E13D4:  LDR.W           R0, [R10,#0xC]; this
2E13D8:  MOVS            R5, #0
2E13DA:  STRH.W          R5, [R10,#2]
2E13DE:  CMP             R0, #0
2E13E0:  IT NE
2E13E2:  BLXNE           j__ZN10CMemoryMgr4FreeEPv; CMemoryMgr::Free(void *)
2E13E6:  STR.W           R5, [R10,#0xC]
2E13EA:  LDRSH.W         R12, [R9,#4]
2E13EE:  CMP.W           R12, #0
2E13F2:  BEQ             loc_2E14D6
2E13F4:  LDR.W           R1, [R9,#0x18]
2E13F8:  MOVS            R6, #0
2E13FA:  MOVS            R2, #0
2E13FC:  ADDS            R1, #4
2E13FE:  LDR.W           R3, [R1,#-4]
2E1402:  UXTH            R0, R6
2E1404:  LDRD.W          R5, R4, [R1]
2E1408:  ADDS            R1, #0x10; void *
2E140A:  CMP             R3, R0
2E140C:  ADD.W           R2, R2, #1
2E1410:  IT GT
2E1412:  MOVGT           R6, R3
2E1414:  UXTH            R0, R6
2E1416:  CMP             R5, R0
2E1418:  IT GT
2E141A:  MOVGT           R6, R5
2E141C:  UXTH            R0, R6
2E141E:  CMP             R4, R0
2E1420:  IT GT
2E1422:  MOVGT           R6, R4
2E1424:  CMP             R2, R12
2E1426:  BCC             loc_2E13FE
2E1428:  LDR.W           R0, [R10,#0x14]; this
2E142C:  ADDS            R5, R6, #1
2E142E:  CMP             R0, #0
2E1430:  IT NE
2E1432:  BLXNE           j__ZN10CMemoryMgr4FreeEPv; CMemoryMgr::Free(void *)
2E1436:  UXTH            R5, R5
2E1438:  CBZ             R5, loc_2E1480
2E143A:  ADD.W           R0, R5, R5,LSL#1
2E143E:  LSLS            R0, R0, #2; byte_count
2E1440:  BLX             j__ZN10CMemoryMgr6MallocEj; CMemoryMgr::Malloc(uint)
2E1444:  STR.W           R0, [R10,#0x14]
2E1448:  LDR.W           R1, [R9,#0x14]
2E144C:  VLDR            D16, [R1]
2E1450:  LDR             R1, [R1,#8]
2E1452:  STR             R1, [R0,#8]
2E1454:  VSTR            D16, [R0]
2E1458:  LSLS            R0, R6, #0x10
2E145A:  BEQ             loc_2E1480
2E145C:  SUBS            R0, R5, #1
2E145E:  MOVS            R1, #0xC
2E1460:  LDR.W           R2, [R9,#0x14]
2E1464:  SUBS            R0, #1
2E1466:  LDR.W           R3, [R10,#0x14]
2E146A:  ADD             R2, R1
2E146C:  ADD             R3, R1
2E146E:  ADD.W           R1, R1, #0xC
2E1472:  VLDR            D16, [R2]
2E1476:  LDR             R2, [R2,#8]
2E1478:  STR             R2, [R3,#8]
2E147A:  VSTR            D16, [R3]
2E147E:  BNE             loc_2E1460
2E1480:  LDRH.W          R1, [R9,#4]; void *
2E1484:  LDRH.W          R2, [R10,#4]
2E1488:  CMP             R2, R1
2E148A:  BEQ             loc_2E14AE
2E148C:  LDR.W           R0, [R10,#0x18]; this
2E1490:  STRH.W          R1, [R10,#4]
2E1494:  CBZ             R0, loc_2E149E
2E1496:  BLX             j__ZN10CMemoryMgr4FreeEPv; CMemoryMgr::Free(void *)
2E149A:  LDRH.W          R1, [R10,#4]; unsigned int
2E149E:  SXTH            R0, R1
2E14A0:  LSLS            R0, R0, #4; byte_count
2E14A2:  BLX             j__ZN10CMemoryMgr6MallocEj; CMemoryMgr::Malloc(uint)
2E14A6:  LDRH.W          R2, [R10,#4]
2E14AA:  STR.W           R0, [R10,#0x18]
2E14AE:  CBZ             R2, loc_2E14FE
2E14B0:  MOVS            R0, #0
2E14B2:  MOVS            R1, #0
2E14B4:  LDR.W           R2, [R9,#0x18]
2E14B8:  ADDS            R1, #1
2E14BA:  LDR.W           R3, [R10,#0x18]
2E14BE:  ADD             R2, R0
2E14C0:  VLD1.32         {D16-D17}, [R2]
2E14C4:  ADDS            R2, R3, R0
2E14C6:  ADDS            R0, #0x10
2E14C8:  VST1.32         {D16-D17}, [R2]
2E14CC:  LDRSH.W         R2, [R10,#4]
2E14D0:  CMP             R1, R2
2E14D2:  BCC             loc_2E14B4
2E14D4:  B               loc_2E14FE
2E14D6:  LDR.W           R0, [R10,#0x18]; this
2E14DA:  MOVS            R5, #0
2E14DC:  STRH.W          R5, [R10,#4]
2E14E0:  CMP             R0, #0
2E14E2:  IT NE
2E14E4:  BLXNE           j__ZN10CMemoryMgr4FreeEPv; CMemoryMgr::Free(void *)
2E14E8:  LDR.W           R0, [R10,#0x14]; this
2E14EC:  STR.W           R5, [R10,#0x18]
2E14F0:  CMP             R0, #0
2E14F2:  IT NE
2E14F4:  BLXNE           j__ZN10CMemoryMgr4FreeEPv; CMemoryMgr::Free(void *)
2E14F8:  MOVS            R0, #0
2E14FA:  STR.W           R0, [R10,#0x14]
2E14FE:  LDR.W           R12, [R9,#0x20]
2E1502:  CMP.W           R12, #0
2E1506:  BEQ             loc_2E1510
2E1508:  LDRB.W          R1, [R8]
2E150C:  LSLS            R1, R1, #0x1D; void *
2E150E:  BMI             loc_2E153A
2E1510:  LDR.W           R0, [R10,#0x2C]; this
2E1514:  MOVS            R5, #0
2E1516:  STRD.W          R5, R5, [R10,#0x20]
2E151A:  CMP             R0, #0
2E151C:  IT NE
2E151E:  BLXNE           j__ZN10CMemoryMgr4FreeEPv; CMemoryMgr::Free(void *)
2E1522:  LDR.W           R0, [R10,#0x28]; this
2E1526:  STR.W           R5, [R10,#0x2C]
2E152A:  CMP             R0, #0
2E152C:  IT NE
2E152E:  BLXNE           j__ZN10CMemoryMgr4FreeEPv; CMemoryMgr::Free(void *)
2E1532:  MOVS            R0, #0
2E1534:  STR.W           R0, [R10,#0x28]
2E1538:  B               loc_2E1620
2E153A:  LDR.W           R1, [R9,#0x2C]
2E153E:  MOVS            R6, #0
2E1540:  MOVS            R2, #0
2E1542:  ADDS            R1, #4
2E1544:  LDR.W           R3, [R1,#-4]
2E1548:  UXTH            R0, R6
2E154A:  LDRD.W          R5, R4, [R1]
2E154E:  ADDS            R1, #0x10; void *
2E1550:  CMP             R3, R0
2E1552:  ADD.W           R2, R2, #1
2E1556:  IT GT
2E1558:  MOVGT           R6, R3
2E155A:  UXTH            R0, R6
2E155C:  CMP             R5, R0
2E155E:  IT GT
2E1560:  MOVGT           R6, R5
2E1562:  UXTH            R0, R6
2E1564:  CMP             R4, R0
2E1566:  IT GT
2E1568:  MOVGT           R6, R4
2E156A:  CMP             R2, R12
2E156C:  BCC             loc_2E1544
2E156E:  LDR.W           R0, [R10,#0x28]; this
2E1572:  ADDS            R5, R6, #1
2E1574:  CMP             R0, #0
2E1576:  IT NE
2E1578:  BLXNE           j__ZN10CMemoryMgr4FreeEPv; CMemoryMgr::Free(void *)
2E157C:  UXTH            R5, R5
2E157E:  CBZ             R5, loc_2E15C6
2E1580:  ADD.W           R0, R5, R5,LSL#1
2E1584:  LSLS            R0, R0, #2; byte_count
2E1586:  BLX             j__ZN10CMemoryMgr6MallocEj; CMemoryMgr::Malloc(uint)
2E158A:  STR.W           R0, [R10,#0x28]
2E158E:  LDR.W           R1, [R9,#0x28]
2E1592:  VLDR            D16, [R1]
2E1596:  LDR             R1, [R1,#8]
2E1598:  STR             R1, [R0,#8]
2E159A:  VSTR            D16, [R0]
2E159E:  LSLS            R0, R6, #0x10
2E15A0:  BEQ             loc_2E15C6
2E15A2:  SUBS            R0, R5, #1
2E15A4:  MOVS            R1, #0xC
2E15A6:  LDR.W           R2, [R9,#0x28]
2E15AA:  SUBS            R0, #1
2E15AC:  LDR.W           R3, [R10,#0x28]
2E15B0:  ADD             R2, R1
2E15B2:  ADD             R3, R1
2E15B4:  ADD.W           R1, R1, #0xC
2E15B8:  VLDR            D16, [R2]
2E15BC:  LDR             R2, [R2,#8]
2E15BE:  STR             R2, [R3,#8]
2E15C0:  VSTR            D16, [R3]
2E15C4:  BNE             loc_2E15A6
2E15C6:  LDR.W           R1, [R9,#0x20]; void *
2E15CA:  LDR.W           R2, [R10,#0x20]
2E15CE:  CMP             R2, R1
2E15D0:  BEQ             loc_2E15F2
2E15D2:  LDR.W           R0, [R10,#0x2C]; this
2E15D6:  STR.W           R1, [R10,#0x20]
2E15DA:  CBZ             R0, loc_2E15E4
2E15DC:  BLX             j__ZN10CMemoryMgr4FreeEPv; CMemoryMgr::Free(void *)
2E15E0:  LDR.W           R1, [R10,#0x20]; unsigned int
2E15E4:  LSLS            R0, R1, #4; byte_count
2E15E6:  BLX             j__ZN10CMemoryMgr6MallocEj; CMemoryMgr::Malloc(uint)
2E15EA:  LDR.W           R2, [R10,#0x20]
2E15EE:  STR.W           R0, [R10,#0x2C]
2E15F2:  CBZ             R2, loc_2E1618
2E15F4:  MOVS            R0, #0
2E15F6:  MOVS            R1, #0
2E15F8:  LDR.W           R2, [R9,#0x2C]
2E15FC:  ADDS            R1, #1
2E15FE:  LDR.W           R3, [R10,#0x2C]
2E1602:  ADD             R2, R0
2E1604:  VLD1.32         {D16-D17}, [R2]
2E1608:  ADDS            R2, R3, R0
2E160A:  ADDS            R0, #0x10
2E160C:  VST1.32         {D16-D17}, [R2]
2E1610:  LDR.W           R2, [R10,#0x20]
2E1614:  CMP             R1, R2
2E1616:  BCC             loc_2E15F8
2E1618:  LDR.W           R0, [R9,#0x24]
2E161C:  STR.W           R0, [R10,#0x24]
2E1620:  MOV             R0, R10
2E1622:  POP.W           {R8-R10}
2E1626:  POP             {R4-R7,PC}
