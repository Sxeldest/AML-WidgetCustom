; =========================================================
; Game Engine Function: InsertUIntMapEntry
; Address            : 0x1C121C - 0x1C1538
; =========================================================

1C121C:  PUSH            {R4-R11,LR}
1C1220:  ADD             R11, SP, #0x1C
1C1224:  SUB             SP, SP, #4
1C1228:  MOV             R9, R0
1C122C:  ADD             R7, R9, #0x14
1C1230:  MOV             R8, R2
1C1234:  MOV             R6, R1
1C1238:  DMB             ISH
1C123C:  LDREX           R0, [R7]
1C1240:  ADD             R1, R0, #1
1C1244:  STREX           R2, R1, [R7]
1C1248:  CMP             R2, #0
1C124C:  BNE             loc_1C123C
1C1250:  CMP             R0, #0
1C1254:  DMB             ISH
1C1258:  BNE             loc_1C12AC
1C125C:  ADD             R4, R9, #0x18
1C1260:  MOV             R1, #1
1C1264:  DMB             ISH
1C1268:  LDREX           R0, [R4]
1C126C:  STREX           R2, R1, [R4]
1C1270:  CMP             R2, #0
1C1274:  BNE             loc_1C1268
1C1278:  CMP             R0, #1
1C127C:  DMB             ISH
1C1280:  BNE             loc_1C12AC
1C1284:  MOV             R5, #1
1C1288:  BL              sched_yield
1C128C:  DMB             ISH
1C1290:  LDREX           R0, [R4]
1C1294:  STREX           R1, R5, [R4]
1C1298:  CMP             R1, #0
1C129C:  BNE             loc_1C1290
1C12A0:  CMP             R0, #1
1C12A4:  DMB             ISH
1C12A8:  BEQ             loc_1C1288
1C12AC:  ADD             R5, R9, #0x20 ; ' '
1C12B0:  MOV             R1, #1
1C12B4:  DMB             ISH
1C12B8:  LDREX           R0, [R5]
1C12BC:  STREX           R2, R1, [R5]
1C12C0:  CMP             R2, #0
1C12C4:  BNE             loc_1C12B8
1C12C8:  CMP             R0, #1
1C12CC:  DMB             ISH
1C12D0:  BNE             loc_1C12FC
1C12D4:  MOV             R4, #1
1C12D8:  BL              sched_yield
1C12DC:  DMB             ISH
1C12E0:  LDREX           R0, [R5]
1C12E4:  STREX           R1, R4, [R5]
1C12E8:  CMP             R1, #0
1C12EC:  BNE             loc_1C12E0
1C12F0:  CMP             R0, #1
1C12F4:  DMB             ISH
1C12F8:  BEQ             loc_1C12D8
1C12FC:  LDR             R12, [R9,#4]
1C1300:  CMP             R12, #1
1C1304:  BLT             loc_1C1318
1C1308:  BNE             loc_1C1328
1C130C:  LDR             R0, [R9]
1C1310:  MOV             R4, #0
1C1314:  B               loc_1C1358
1C1318:  MOV             R4, #0
1C131C:  CMP             R4, R12
1C1320:  BNE             loc_1C136C
1C1324:  B               loc_1C137C
1C1328:  LDR             R0, [R9]
1C132C:  SUB             R2, R12, #1
1C1330:  MOV             R4, #0
1C1334:  SUB             R3, R2, R4
1C1338:  ADD             R3, R3, R3,LSR#31
1C133C:  ADD             R3, R4, R3,ASR#1
1C1340:  LDR             R1, [R0,R3,LSL#3]
1C1344:  CMP             R1, R6
1C1348:  ADDCC           R4, R3, #1
1C134C:  MOVCS           R2, R3
1C1350:  CMP             R2, R4
1C1354:  BGT             loc_1C1334
1C1358:  LDR             R0, [R0,R4,LSL#3]
1C135C:  CMP             R0, R6
1C1360:  ADDCC           R4, R4, #1
1C1364:  CMP             R4, R12
1C1368:  BEQ             loc_1C137C
1C136C:  LDR             R0, [R9]
1C1370:  LDR             R1, [R0,R4,LSL#3]
1C1374:  CMP             R1, R6
1C1378:  BEQ             loc_1C1458
1C137C:  LDR             R0, [R9,#0xC]
1C1380:  CMP             R12, R0
1C1384:  BNE             loc_1C13E8
1C1388:  MOV             R0, #0
1C138C:  DMB             ISH
1C1390:  LDREX           R1, [R5]
1C1394:  STREX           R1, R0, [R5]
1C1398:  CMP             R1, #0
1C139C:  BNE             loc_1C1390
1C13A0:  DMB             ISH
1C13A4:  LDREX           R1, [R7]
1C13A8:  SUB             R0, R1, #1
1C13AC:  STREX           R2, R0, [R7]
1C13B0:  CMP             R2, #0
1C13B4:  BNE             loc_1C13A4
1C13B8:  MOVW            R0, #0xA005
1C13BC:  CMP             R1, #1
1C13C0:  DMB             ISH
1C13C4:  BNE             loc_1C1530
1C13C8:  ADD             R1, R9, #0x18
1C13CC:  MOV             R2, #0
1C13D0:  DMB             ISH
1C13D4:  LDREX           R3, [R1]
1C13D8:  STREX           R3, R2, [R1]
1C13DC:  CMP             R3, #0
1C13E0:  BNE             loc_1C13D4
1C13E4:  B               loc_1C1524
1C13E8:  LDR             R0, [R9,#8]
1C13EC:  CMP             R12, R0
1C13F0:  BNE             loc_1C1428
1C13F4:  MOV             R10, R12,LSL#1
1C13F8:  CMP             R12, #0
1C13FC:  MOVWEQ          R10, #4
1C1400:  CMP             R10, R12
1C1404:  BLT             loc_1C14C8
1C1408:  LDR             R0, [R9]; ptr
1C140C:  MOV             R1, R10,LSL#3; size
1C1410:  BL              realloc
1C1414:  CMP             R0, #0
1C1418:  BEQ             loc_1C14C8
1C141C:  STR             R10, [R9,#8]
1C1420:  LDR             R12, [R9,#4]
1C1424:  STR             R0, [R9]
1C1428:  CMP             R12, R4
1C142C:  BLE             loc_1C144C
1C1430:  SUB             R1, R12, R4
1C1434:  LDR             R0, [R9]
1C1438:  MOV             R2, R1,LSL#3; n
1C143C:  ADD             R1, R0, R4,LSL#3; src
1C1440:  ADD             R0, R1, #8; dest
1C1444:  BL              j_memmove
1C1448:  LDR             R12, [R9,#4]
1C144C:  LDR             R0, [R9]
1C1450:  ADD             R1, R12, #1
1C1454:  STR             R1, [R9,#4]
1C1458:  STR             R6, [R0,R4,LSL#3]!
1C145C:  STR             R8, [R0,#4]
1C1460:  MOV             R0, #0
1C1464:  DMB             ISH
1C1468:  LDREX           R1, [R5]
1C146C:  STREX           R1, R0, [R5]
1C1470:  CMP             R1, #0
1C1474:  BNE             loc_1C1468
1C1478:  DMB             ISH
1C147C:  LDREX           R1, [R7]
1C1480:  SUB             R0, R1, #1
1C1484:  STREX           R2, R0, [R7]
1C1488:  CMP             R2, #0
1C148C:  BNE             loc_1C147C
1C1490:  MOV             R0, #0
1C1494:  CMP             R1, #1
1C1498:  DMB             ISH
1C149C:  BNE             loc_1C1530
1C14A0:  ADD             R0, R9, #0x18
1C14A4:  MOV             R1, #0
1C14A8:  DMB             ISH
1C14AC:  LDREX           R2, [R0]
1C14B0:  STREX           R2, R1, [R0]
1C14B4:  CMP             R2, #0
1C14B8:  BNE             loc_1C14AC
1C14BC:  MOV             R0, #0
1C14C0:  DMB             ISH
1C14C4:  B               loc_1C1530
1C14C8:  MOV             R0, #0
1C14CC:  DMB             ISH
1C14D0:  LDREX           R1, [R5]
1C14D4:  STREX           R1, R0, [R5]
1C14D8:  CMP             R1, #0
1C14DC:  BNE             loc_1C14D0
1C14E0:  DMB             ISH
1C14E4:  LDREX           R1, [R7]
1C14E8:  SUB             R0, R1, #1
1C14EC:  STREX           R2, R0, [R7]
1C14F0:  CMP             R2, #0
1C14F4:  BNE             loc_1C14E4
1C14F8:  MOVW            R0, #0xA005
1C14FC:  CMP             R1, #1
1C1500:  DMB             ISH
1C1504:  BNE             loc_1C1530
1C1508:  ADD             R1, R9, #0x18
1C150C:  MOV             R2, #0
1C1510:  DMB             ISH
1C1514:  LDREX           R3, [R1]
1C1518:  STREX           R3, R2, [R1]
1C151C:  CMP             R3, #0
1C1520:  BNE             loc_1C1514
1C1524:  DMB             ISH
1C1528:  SUB             SP, R11, #0x1C
1C152C:  POP             {R4-R11,PC}
1C1530:  SUB             SP, R11, #0x1C
1C1534:  POP             {R4-R11,PC}
