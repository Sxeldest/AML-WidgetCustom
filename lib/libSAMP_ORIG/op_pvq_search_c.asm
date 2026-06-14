; =========================================================
; Game Engine Function: op_pvq_search_c
; Address            : 0xC138C - 0xC15F0
; =========================================================

C138C:  PUSH            {R4-R7,LR}
C138E:  ADD             R7, SP, #0xC
C1390:  PUSH.W          {R8-R11}
C1394:  SUB             SP, SP, #0x2C
C1396:  MOV             R8, R0
C1398:  LDR             R0, =(__stack_chk_guard_ptr - 0xC13A2)
C139A:  MOV             R6, R3
C139C:  MOV             R10, R1
C139E:  ADD             R0, PC; __stack_chk_guard_ptr
C13A0:  MOV             R5, R2
C13A2:  LDR             R0, [R0]; __stack_chk_guard
C13A4:  LDR             R0, [R0]
C13A6:  STR.W           R0, [R7,#var_24]
C13AA:  MOVS            R0, #7
C13AC:  ADD.W           R1, R0, R6,LSL#1
C13B0:  ADD.W           R0, R0, R6,LSL#2
C13B4:  BIC.W           R1, R1, #7
C13B8:  BIC.W           R0, R0, #7
C13BC:  SUB.W           R11, SP, R1
C13C0:  MOV             SP, R11
C13C2:  SUB.W           R4, SP, R0
C13C6:  CMP             R6, #1
C13C8:  MOV             R0, R6
C13CA:  IT LE
C13CC:  MOVLE           R0, #1
C13CE:  LSLS            R1, R0, #1; n
C13D0:  MOV             SP, R4
C13D2:  MOV             R0, R11; int
C13D4:  BLX             sub_10967C
C13D8:  MOVS            R0, #0
C13DA:  MOVS            R1, #0
C13DC:  LDRSH.W         R2, [R8,R1,LSL#1]
C13E0:  CMP             R2, #0
C13E2:  UBFX.W          R3, R2, #0xF, #1
C13E6:  STR.W           R3, [R4,R1,LSL#2]
C13EA:  IT MI
C13EC:  NEGMI           R2, R2
C13EE:  STRH.W          R2, [R8,R1,LSL#1]
C13F2:  STR.W           R0, [R10,R1,LSL#2]
C13F6:  ADDS            R1, #1
C13F8:  CMP             R1, R6
C13FA:  BLT             loc_C13DC
C13FC:  ASRS            R0, R6, #1
C13FE:  CMP             R0, R5
C1400:  STR.W           R4, [R7,#var_44]
C1404:  BGE             loc_C14A2
C1406:  MOVS            R4, #0
C1408:  MOVS            R0, #0
C140A:  LDRSH.W         R1, [R8,R0,LSL#1]
C140E:  ADDS            R0, #1
C1410:  CMP             R0, R6
C1412:  ADD             R4, R1
C1414:  BLT             loc_C140A
C1416:  MOV             R9, R11
C1418:  CMP             R4, R5
C141A:  BGT             loc_C143A
C141C:  MOV.W           R4, #0x4000
C1420:  MOV             R0, R8
C1422:  CMP             R6, #2
C1424:  MOV             R1, R6
C1426:  STRH.W          R4, [R0],#2; int
C142A:  IT LE
C142C:  MOVLE           R1, #2
C142E:  MOV             R2, #0xFFFFFFFE
C1432:  ADD.W           R1, R2, R1,LSL#1; n
C1436:  BLX             sub_10967C
C143A:  MOV             R0, R4
C143C:  BLX             j_celt_rcp
C1440:  MOV             R11, R0
C1442:  MOV             R0, R4
C1444:  BLX             j_celt_rcp
C1448:  PKHBT.W         R0, R0, R11
C144C:  SXTH            R1, R5
C144E:  MOVS            R2, #0
C1450:  MOV.W           LR, #0
C1454:  MULS            R0, R1
C1456:  MOV             R12, R5
C1458:  MOVS            R4, #0
C145A:  MOV             R11, R9
C145C:  STR.W           R5, [R7,#var_2C]
C1460:  ASRS            R0, R0, #0x10
C1462:  STR.W           R0, [R7,#var_28]
C1466:  LDRSH.W         R3, [R8,R4,LSL#1]
C146A:  LDR.W           R0, [R7,#var_28]
C146E:  SMULBB.W        R1, R0, R3
C1472:  MOV             R0, R2
C1474:  ASRS            R2, R1, #0xF
C1476:  SUB.W           R12, R12, R1,ASR#15
C147A:  LSLS            R5, R2, #1
C147C:  STR.W           R2, [R10,R4,LSL#2]
C1480:  STRH.W          R5, [R11,R4,LSL#1]
C1484:  SXTH.W          R5, LR
C1488:  SBFX.W          R9, R1, #0xF, #0x10
C148C:  SMLABB.W        LR, R2, R2, R5
C1490:  MOV             R2, R0
C1492:  SMLABB.W        R2, R9, R3, R2
C1496:  ADDS            R4, #1
C1498:  CMP             R4, R6
C149A:  BLT             loc_C1466
C149C:  LDR.W           R5, [R7,#var_2C]
C14A0:  B               loc_C14AA
C14A2:  MOVS            R2, #0
C14A4:  MOV.W           LR, #0
C14A8:  MOV             R12, R5
C14AA:  ADDS            R1, R6, #3
C14AC:  CMP             R12, R1
C14AE:  BLE             loc_C14CE
C14B0:  LDRSH.W         R0, [R11]
C14B4:  SXTH.W          R1, R12
C14B8:  SXTAH.W         R0, R0, R12
C14BC:  MULS            R0, R1
C14BE:  LDR.W           R1, [R10]
C14C2:  ADD             R1, R12
C14C4:  STR.W           R1, [R10]
C14C8:  UXTAH.W         LR, R0, LR
C14CC:  B               loc_C15AC
C14CE:  CMP.W           R12, #1
C14D2:  BLT             loc_C15AC
C14D4:  STR.W           R8, [R7,#var_34]
C14D8:  ADDS            R1, R5, #1
C14DA:  LDRSH.W         R0, [R8]
C14DE:  MOVS            R5, #0
C14E0:  STR.W           R0, [R7,#var_3C]
C14E4:  SUB.W           R0, R1, R12
C14E8:  STR.W           R0, [R7,#var_40]
C14EC:  STR.W           R10, [R7,#var_30]
C14F0:  STR.W           R12, [R7,#var_38]
C14F4:  LDR.W           R0, [R7,#var_3C]
C14F8:  MOV             R8, R11
C14FA:  STR.W           R2, [R7,#var_28]
C14FE:  MOV.W           R9, #1
C1502:  ADDS            R1, R2, R0
C1504:  LDR.W           R0, [R7,#var_40]
C1508:  STR.W           R5, [R7,#var_2C]
C150C:  ADDS            R2, R0, R5
C150E:  MOV.W           R0, #0x10000
C1512:  CLZ.W           R2, R2
C1516:  RSB.W           R4, R2, #0x20 ; ' '
C151A:  ASRS            R1, R4
C151C:  SXTH            R2, R1
C151E:  LSLS            R1, R1, #0x10
C1520:  ASRS            R1, R1, #0xF
C1522:  MULS            R1, R2
C1524:  LDRH.W          R2, [R11]
C1528:  MOV.W           R12, R1,ASR#16
C152C:  ADD.W           R1, R0, LR,LSL#16
C1530:  LDR.W           R0, [R7,#var_34]
C1534:  MOV.W           LR, #0
C1538:  ADD.W           R11, R2, R1,ASR#16
C153C:  ASRS            R2, R1, #0x10
C153E:  LDRSH.W         R1, [R0,R9,LSL#1]
C1542:  LDR.W           R3, [R7,#var_28]
C1546:  LDRH.W          R5, [R8,R9,LSL#1]
C154A:  ADD             R1, R3
C154C:  ASRS            R1, R4
C154E:  SXTH            R3, R1
C1550:  LSLS            R1, R1, #0x10
C1552:  ASRS            R1, R1, #0xF
C1554:  MULS            R1, R3
C1556:  ADDS            R3, R2, R5
C1558:  SMULBB.W        R5, R3, R12
C155C:  SMULTB.W        R10, R1, R11
C1560:  CMP             R10, R5
C1562:  ITTT GT
C1564:  MOVGT.W         R12, R1,ASR#16
C1568:  MOVGT           R11, R3
C156A:  MOVGT           LR, R9
C156C:  ADD.W           R9, R9, #1
C1570:  CMP             R9, R6
C1572:  BLT             loc_C153E
C1574:  LDRSH.W         R1, [R8,LR,LSL#1]
C1578:  MOV             R11, R8
C157A:  LDR.W           R10, [R7,#var_30]
C157E:  LDRSH.W         R3, [R0,LR,LSL#1]
C1582:  ADDS            R5, R1, #2
C1584:  STRH.W          R5, [R8,LR,LSL#1]
C1588:  LDR.W           R5, [R10,LR,LSL#2]
C158C:  ADDS            R5, #1
C158E:  STR.W           R5, [R10,LR,LSL#2]
C1592:  ADD.W           LR, R2, R1
C1596:  LDR.W           R0, [R7,#var_28]
C159A:  LDR.W           R5, [R7,#var_2C]
C159E:  ADD             R0, R3
C15A0:  LDR.W           R12, [R7,#var_38]
C15A4:  ADDS            R5, #1
C15A6:  CMP             R5, R12
C15A8:  MOV             R2, R0
C15AA:  BNE             loc_C14F4
C15AC:  LDR.W           R5, [R7,#var_44]
C15B0:  MOVS            R0, #0
C15B2:  LDR.W           R1, [R5,R0,LSL#2]
C15B6:  LDR.W           R2, [R10,R0,LSL#2]
C15BA:  NEGS            R3, R1
C15BC:  EORS            R2, R3
C15BE:  ADD             R1, R2
C15C0:  STR.W           R1, [R10,R0,LSL#2]
C15C4:  ADDS            R0, #1
C15C6:  CMP             R0, R6
C15C8:  BLT             loc_C15B2
C15CA:  LDR             R0, =(__stack_chk_guard_ptr - 0xC15D4)
C15CC:  LDR.W           R1, [R7,#var_24]
C15D0:  ADD             R0, PC; __stack_chk_guard_ptr
C15D2:  LDR             R0, [R0]; __stack_chk_guard
C15D4:  LDR             R0, [R0]
C15D6:  SUBS            R0, R0, R1
C15D8:  ITTTT EQ
C15DA:  SXTHEQ.W        R0, LR
C15DE:  SUBEQ.W         R4, R7, #-var_1C
C15E2:  MOVEQ           SP, R4
C15E4:  POPEQ.W         {R8-R11}
C15E8:  IT EQ
C15EA:  POPEQ           {R4-R7,PC}
C15EC:  BLX             __stack_chk_fail
