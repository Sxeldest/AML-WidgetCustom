; =========================================================
; Game Engine Function: _ZN16CPedIntelligence10AreFriendsERK4CPedS2_
; Address            : 0x4C13DA - 0x4C1478
; =========================================================

4C13DA:  PUSH            {R4-R7,LR}
4C13DC:  ADD             R7, SP, #0xC
4C13DE:  PUSH.W          {R8-R10}
4C13E2:  MOV             R8, R0
4C13E4:  MOV             R6, R1
4C13E6:  LDR.W           R4, [R8,#0x440]
4C13EA:  MOVS            R1, #0; int
4C13EC:  LDR             R0, [R4]
4C13EE:  ADDW            R0, R0, #0x4EC; this
4C13F2:  BLX             j__ZNK13CAcquaintance16GetAcquaintancesEi; CAcquaintance::GetAcquaintances(int)
4C13F6:  MOV             R10, R0
4C13F8:  LDR             R0, [R4]
4C13FA:  MOVS            R1, #1; int
4C13FC:  MOV.W           R9, #1
4C1400:  ADDW            R0, R0, #0x4EC; this
4C1404:  BLX             j__ZNK13CAcquaintance16GetAcquaintancesEi; CAcquaintance::GetAcquaintances(int)
4C1408:  MOV             R5, R0
4C140A:  LDR.W           R0, [R6,#0x59C]; this
4C140E:  BLX             j__ZN8CPedType10GetPedFlagEi; CPedType::GetPedFlag(int)
4C1412:  ORR.W           R1, R5, R10
4C1416:  TST             R0, R1
4C1418:  BNE             loc_4C1470
4C141A:  LDR             R0, [R4]
4C141C:  LDR.W           R1, [R6,#0x59C]
4C1420:  LDR.W           R0, [R0,#0x59C]
4C1424:  CMP             R0, R1
4C1426:  BEQ             loc_4C1470
4C1428:  LDR.W           R5, [R6,#0x440]
4C142C:  MOVS            R1, #0; int
4C142E:  LDR             R0, [R5]
4C1430:  ADDW            R0, R0, #0x4EC; this
4C1434:  BLX             j__ZNK13CAcquaintance16GetAcquaintancesEi; CAcquaintance::GetAcquaintances(int)
4C1438:  MOV             R4, R0
4C143A:  LDR             R0, [R5]
4C143C:  MOVS            R1, #1; int
4C143E:  MOV.W           R9, #1
4C1442:  ADDW            R0, R0, #0x4EC; this
4C1446:  BLX             j__ZNK13CAcquaintance16GetAcquaintancesEi; CAcquaintance::GetAcquaintances(int)
4C144A:  MOV             R6, R0
4C144C:  LDR.W           R0, [R8,#0x59C]; this
4C1450:  BLX             j__ZN8CPedType10GetPedFlagEi; CPedType::GetPedFlag(int)
4C1454:  TST             R0, R4
4C1456:  BNE             loc_4C1470
4C1458:  LDR             R1, [R5]
4C145A:  LDR.W           R2, [R8,#0x59C]
4C145E:  LDR.W           R1, [R1,#0x59C]
4C1462:  CMP             R1, R2
4C1464:  BEQ             loc_4C1470
4C1466:  ANDS.W          R9, R0, R6
4C146A:  IT NE
4C146C:  MOVNE.W         R9, #1
4C1470:  MOV             R0, R9
4C1472:  POP.W           {R8-R10}
4C1476:  POP             {R4-R7,PC}
