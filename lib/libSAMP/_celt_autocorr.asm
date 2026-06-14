; =========================================================
; Game Engine Function: _celt_autocorr
; Address            : 0x1A13FC - 0x1A1624
; =========================================================

1A13FC:  PUSH            {R4-R7,LR}
1A13FE:  ADD             R7, SP, #0xC
1A1400:  PUSH.W          {R8-R11}
1A1404:  SUB             SP, SP, #0x14
1A1406:  MOV             R5, R0
1A1408:  LDR             R0, =(__stack_chk_guard_ptr - 0x1A1412)
1A140A:  LDR             R6, [R7,#arg_4]
1A140C:  MOV             R4, R3
1A140E:  ADD             R0, PC; __stack_chk_guard_ptr
1A1410:  MOV             R8, R2
1A1412:  MOV             R10, R1
1A1414:  LDR             R0, [R0]; __stack_chk_guard
1A1416:  LDR             R0, [R0]
1A1418:  STR.W           R0, [R7,#var_24]
1A141C:  MOVS            R0, #7
1A141E:  ADD.W           R0, R0, R6,LSL#1
1A1422:  BIC.W           R0, R0, #7
1A1426:  SUB.W           R11, SP, R0
1A142A:  MOV             SP, R11
1A142C:  CMP             R4, #0
1A142E:  BEQ             loc_1A147A
1A1430:  CMP             R6, #1
1A1432:  BLT             loc_1A1440
1A1434:  LSLS            R2, R6, #1; n
1A1436:  MOV             R0, R11; dest
1A1438:  MOV             R1, R5; src
1A143A:  BLX             j_memcpy
1A143E:  LDR             R6, [R7,#arg_4]
1A1440:  CMP             R4, #1
1A1442:  BLT             loc_1A1478
1A1444:  MOV             R0, #0xFFFFFFFE
1A1448:  MOVS            R1, #0
1A144A:  ADD.W           R0, R0, R6,LSL#1
1A144E:  LDRSH.W         R2, [R5,R1,LSL#1]
1A1452:  LDRSH.W         R3, [R8,R1,LSL#1]
1A1456:  SMULBB.W        R2, R3, R2
1A145A:  LSRS            R2, R2, #0xF
1A145C:  STRH.W          R2, [R11,R1,LSL#1]
1A1460:  ADDS            R1, #1
1A1462:  CMP             R4, R1
1A1464:  LDRSH           R2, [R5,R0]
1A1466:  SMULBB.W        R2, R3, R2
1A146A:  MOV.W           R2, R2,LSR#15
1A146E:  STRH.W          R2, [R11,R0]
1A1472:  SUB.W           R0, R0, #2
1A1476:  BNE             loc_1A144E
1A1478:  MOV             R5, R11
1A147A:  LDR.W           R8, [R7,#arg_0]
1A147E:  MOVS            R0, #1
1A1480:  ORR.W           R1, R0, R6,LSL#7
1A1484:  TST.W           R6, #1
1A1488:  BNE             loc_1A148E
1A148A:  MOVS            R0, #0
1A148C:  B               loc_1A149C
1A148E:  LDRSH.W         R0, [R5]
1A1492:  SMULBB.W        R0, R0, R0
1A1496:  ADD.W           R1, R1, R0,LSR#9
1A149A:  MOVS            R0, #1
1A149C:  SUB.W           R2, R6, R8
1A14A0:  STR.W           R2, [R7,#var_28]
1A14A4:  CMP             R0, R6
1A14A6:  BGE             loc_1A14CA
1A14A8:  LDRSH.W         R2, [R5,R0,LSL#1]
1A14AC:  ADD.W           R3, R5, R0,LSL#1
1A14B0:  ADDS            R0, #2
1A14B2:  LDRSH.W         R3, [R3,#2]
1A14B6:  SMULBB.W        R2, R2, R2
1A14BA:  SMULBB.W        R3, R3, R3
1A14BE:  ADD.W           R1, R1, R2,LSR#9
1A14C2:  ADD.W           R1, R1, R3,LSR#9
1A14C6:  CMP             R0, R6
1A14C8:  BLT             loc_1A14A8
1A14CA:  CLZ.W           R1, R1
1A14CE:  LDR.W           R12, [R7,#arg_8]
1A14D2:  RSB.W           R2, R1, #0x1F
1A14D6:  CMP             R2, #0x16
1A14D8:  BLT             loc_1A150A
1A14DA:  RSB.W           R1, R1, #0xB
1A14DE:  CMP             R6, #1
1A14E0:  ADD.W           R1, R1, R1,LSR#31
1A14E4:  MOV.W           R1, R1,ASR#1
1A14E8:  BLT             loc_1A1506
1A14EA:  MOVS            R2, #1
1A14EC:  MOV             R3, R6
1A14EE:  LSLS            R2, R1
1A14F0:  MOV             R6, R11
1A14F2:  ASRS            R2, R2, #1
1A14F4:  LDRSH.W         R0, [R5],#2
1A14F8:  SUBS            R3, #1
1A14FA:  ADD             R0, R2
1A14FC:  ASR.W           R0, R0, R1
1A1500:  STRH.W          R0, [R6],#2
1A1504:  BNE             loc_1A14F4
1A1506:  LSLS            R0, R1, #1
1A1508:  B               loc_1A150E
1A150A:  MOVS            R0, #0
1A150C:  MOV             R11, R5
1A150E:  STR.W           R0, [R7,#var_2C]
1A1512:  SUB             SP, SP, #8
1A1514:  ADD.W           R9, R8, #1
1A1518:  STRD.W          R9, R12, [SP,#0x38+var_38]
1A151C:  LDR.W           R3, [R7,#var_28]
1A1520:  MOV             R0, R11
1A1522:  MOV             R1, R11
1A1524:  MOV             R2, R10
1A1526:  BLX             j_celt_pitch_xcorr_c
1A152A:  ADD             SP, SP, #8
1A152C:  LDR.W           LR, [R7,#arg_4]
1A1530:  CMP.W           R8, #0
1A1534:  BLT             loc_1A1574
1A1536:  ADD.W           R0, R11, LR,LSL#1
1A153A:  RSB.W           R12, R8, #0
1A153E:  MOVS            R2, #0
1A1540:  MOV             R3, R0
1A1542:  LDR.W           R1, [R7,#var_28]
1A1546:  MOVS            R6, #0
1A1548:  ADD             R1, R2
1A154A:  CMP             R1, LR
1A154C:  BGE             loc_1A1562
1A154E:  MOV             R1, R12
1A1550:  LDRSH.W         R4, [R3,R1,LSL#1]
1A1554:  LDRSH.W         R5, [R0,R1,LSL#1]
1A1558:  ADDS            R1, #1
1A155A:  SMLABB.W        R6, R5, R4, R6
1A155E:  ADDS            R5, R2, R1
1A1560:  BNE             loc_1A1550
1A1562:  LDR.W           R1, [R10,R2,LSL#2]
1A1566:  ADDS            R3, #2
1A1568:  ADD             R1, R6
1A156A:  STR.W           R1, [R10,R2,LSL#2]
1A156E:  ADDS            R2, #1
1A1570:  CMP             R2, R9
1A1572:  BNE             loc_1A1542
1A1574:  LDR.W           R0, [R7,#var_2C]
1A1578:  CMP             R0, #0
1A157A:  BLE             loc_1A15B6
1A157C:  LDR.W           R1, [R10]
1A1580:  CMP.W           R1, #0x10000000
1A1584:  BGE             loc_1A15CE
1A1586:  CLZ.W           R2, R1
1A158A:  CMP.W           R8, #0
1A158E:  SUB.W           R3, R2, #3
1A1592:  BLT             loc_1A15B2
1A1594:  LSL.W           R1, R1, R3
1A1598:  STR.W           R1, [R10]
1A159C:  BEQ             loc_1A15B2
1A159E:  ADD.W           R1, R10, #4
1A15A2:  LDR             R2, [R1]
1A15A4:  SUBS.W          R8, R8, #1
1A15A8:  LSL.W           R2, R2, R3
1A15AC:  STR.W           R2, [R1],#4
1A15B0:  BNE             loc_1A15A2
1A15B2:  SUBS            R0, R0, R3
1A15B4:  B               loc_1A1604
1A15B6:  NEGS            R1, R0
1A15B8:  MOVS            R2, #1
1A15BA:  LDR.W           R3, [R10]
1A15BE:  LSL.W           R1, R2, R1
1A15C2:  ADD             R1, R3
1A15C4:  STR.W           R1, [R10]
1A15C8:  CMP.W           R1, #0x10000000
1A15CC:  BLT             loc_1A1586
1A15CE:  CMP.W           R1, #0x20000000
1A15D2:  BLT             loc_1A1604
1A15D4:  MOVS            R3, #1
1A15D6:  CMP.W           R1, #0x40000000
1A15DA:  IT GE
1A15DC:  MOVGE           R3, #2
1A15DE:  CMP.W           R8, #0
1A15E2:  BLT             loc_1A1602
1A15E4:  ASR.W           R1, R1, R3
1A15E8:  STR.W           R1, [R10]
1A15EC:  BEQ             loc_1A1602
1A15EE:  ADD.W           R1, R10, #4
1A15F2:  LDR             R2, [R1]
1A15F4:  SUBS.W          R8, R8, #1
1A15F8:  ASR.W           R2, R2, R3
1A15FC:  STR.W           R2, [R1],#4
1A1600:  BNE             loc_1A15F2
1A1602:  ADD             R0, R3
1A1604:  LDR             R1, =(__stack_chk_guard_ptr - 0x1A160A)
1A1606:  ADD             R1, PC; __stack_chk_guard_ptr
1A1608:  LDR             R2, [R1]; __stack_chk_guard
1A160A:  LDR.W           R1, [R7,#var_24]
1A160E:  LDR             R2, [R2]
1A1610:  SUBS            R1, R2, R1
1A1612:  ITTTT EQ
1A1614:  SUBEQ.W         R4, R7, #-var_1C
1A1618:  MOVEQ           SP, R4
1A161A:  POPEQ.W         {R8-R11}
1A161E:  POPEQ           {R4-R7,PC}
1A1620:  BLX             __stack_chk_fail
