; =========================================================
; Game Engine Function: _ZN32CTaskComplexKillPedOnFootStealth17CreateNextSubTaskEP4CPed
; Address            : 0x4E1400 - 0x4E14B0
; =========================================================

4E1400:  PUSH            {R4,R5,R7,LR}
4E1402:  ADD             R7, SP, #8
4E1404:  MOV             R5, R0
4E1406:  MOV             R4, R1
4E1408:  LDR             R0, [R5,#8]
4E140A:  CBZ             R0, loc_4E142C
4E140C:  LDR             R1, [R0]
4E140E:  LDR             R1, [R1,#0x14]
4E1410:  BLX             R1
4E1412:  CMP             R0, #0xF4
4E1414:  BEQ             loc_4E1426
4E1416:  LDR             R0, [R5,#8]
4E1418:  LDR             R1, [R0]
4E141A:  LDR             R1, [R1,#0x14]
4E141C:  BLX             R1
4E141E:  MOVW            R1, #0x3A7
4E1422:  CMP             R0, R1
4E1424:  BNE             loc_4E142C
4E1426:  LDR             R0, [R5,#0x44]
4E1428:  ADDS            R0, #1
4E142A:  BEQ             loc_4E14A4
4E142C:  LDR             R2, [R5,#0x10]
4E142E:  MOV.W           R0, #0xFFFFFFFF
4E1432:  MOV             R12, #0xFFBFFFFF
4E1436:  CBZ             R2, loc_4E144E
4E1438:  VMOV.F32        S0, #1.0
4E143C:  ADDW            R2, R2, #0x544
4E1440:  VLDR            S2, [R2]
4E1444:  VCMPE.F32       S2, S0
4E1448:  VMRS            APSR_nzcv, FPSCR
4E144C:  BGE             loc_4E1476
4E144E:  LDR.W           R2, [R4,#0x484]
4E1452:  LDR.W           R3, [R4,#0x488]
4E1456:  LDR.W           R5, [R4,#0x48C]
4E145A:  ANDS            R2, R0
4E145C:  LDR.W           R1, [R4,#0x490]
4E1460:  ANDS            R3, R0
4E1462:  STR.W           R2, [R4,#0x484]
4E1466:  AND.W           R5, R5, R12
4E146A:  STR.W           R3, [R4,#0x488]
4E146E:  ANDS            R0, R1
4E1470:  STR.W           R5, [R4,#0x48C]
4E1474:  B               loc_4E149C
4E1476:  LDR.W           R1, [R4,#0x484]
4E147A:  LDR.W           R2, [R4,#0x488]
4E147E:  LDR.W           R5, [R4,#0x490]
4E1482:  ANDS            R1, R0
4E1484:  LDR.W           R3, [R4,#0x48C]
4E1488:  ANDS            R2, R0
4E148A:  ANDS            R0, R5
4E148C:  STR.W           R1, [R4,#0x484]
4E1490:  AND.W           R3, R3, R12
4E1494:  STR.W           R2, [R4,#0x488]
4E1498:  STR.W           R3, [R4,#0x48C]
4E149C:  STR.W           R0, [R4,#0x490]
4E14A0:  MOVS            R0, #0
4E14A2:  POP             {R4,R5,R7,PC}
4E14A4:  MOV             R0, R5; this
4E14A6:  MOV             R1, R4; CPed *
4E14A8:  POP.W           {R4,R5,R7,LR}
4E14AC:  B.W             _ZN25CTaskComplexKillPedOnFoot18CreateFirstSubTaskEP4CPed; CTaskComplexKillPedOnFoot::CreateFirstSubTask(CPed *)
