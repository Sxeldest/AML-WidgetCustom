; =========================================================
; Game Engine Function: _ZN11CWaterLevel29MarkQuadsAndPolysToBeRenderedEiib
; Address            : 0x5943B8 - 0x594592
; =========================================================

5943B8:  PUSH            {R4-R7,LR}
5943BA:  ADD             R7, SP, #0xC
5943BC:  PUSH.W          {R8-R10}
5943C0:  LDR             R3, =(_ZN11CWaterLevel30m_QuadsAndTrianglesInEachBlockE_ptr - 0x5943CA)
5943C2:  ADD.W           R0, R0, R0,LSL#1
5943C6:  ADD             R3, PC; _ZN11CWaterLevel30m_QuadsAndTrianglesInEachBlockE_ptr
5943C8:  LDR             R3, [R3]; CWaterLevel::m_QuadsAndTrianglesInEachBlock ...
5943CA:  ADD.W           R0, R3, R0,LSL#3
5943CE:  LDRH.W          R1, [R0,R1,LSL#1]
5943D2:  MOVS            R0, #3
5943D4:  CMP.W           R0, R1,LSR#14
5943D8:  BEQ             loc_594442
5943DA:  LSRS            R0, R1, #0xE
5943DC:  CMP             R0, #2
5943DE:  BEQ.W           loc_594534
5943E2:  CMP             R0, #1
5943E4:  BNE.W           loc_594580
5943E8:  LDR             R0, =(_ZN11CWaterLevel8m_aQuadsE_ptr - 0x5943F2)
5943EA:  BFC.W           R1, #0xE, #0x12
5943EE:  ADD             R0, PC; _ZN11CWaterLevel8m_aQuadsE_ptr
5943F0:  ADD.W           R3, R1, R1,LSL#2
5943F4:  LDR             R0, [R0]; CWaterLevel::m_aQuads ...
5943F6:  ADD.W           R0, R0, R3,LSL#1
5943FA:  LDRB.W          R1, [R0,#8]!
5943FE:  TST.W           R1, #2
594402:  BNE.W           loc_594580
594406:  LDR             R6, =(_ZN11CWaterLevel8m_aQuadsE_ptr - 0x59440E)
594408:  LDR             R5, =(_ZN11CWaterLevel11m_aVerticesE_ptr - 0x594414)
59440A:  ADD             R6, PC; _ZN11CWaterLevel8m_aQuadsE_ptr
59440C:  VLDR            S0, =950.0
594410:  ADD             R5, PC; _ZN11CWaterLevel11m_aVerticesE_ptr
594412:  LDR             R6, [R6]; CWaterLevel::m_aQuads ...
594414:  LDRSH.W         R3, [R6,R3,LSL#1]
594418:  LDR             R6, [R5]; CWaterLevel::m_aVertices ...
59441A:  ADD.W           R3, R3, R3,LSL#2
59441E:  ADD.W           R3, R6, R3,LSL#2
594422:  VLDR            S2, [R3,#4]
594426:  MOVS            R3, #0
594428:  VCMPE.F32       S2, S0
59442C:  VMRS            APSR_nzcv, FPSCR
594430:  IT GT
594432:  MOVGT           R3, #1
594434:  TEQ.W           R3, R2
594438:  BNE.W           loc_594580
59443C:  ORR.W           R1, R1, #1
594440:  B               loc_59458A
594442:  LDR             R0, =(_ZN11CWaterLevel23m_QuadsAndTrianglesListE_ptr - 0x59444C)
594444:  BFC.W           R1, #0xE, #0x12
594448:  ADD             R0, PC; _ZN11CWaterLevel23m_QuadsAndTrianglesListE_ptr
59444A:  LDR             R0, [R0]; CWaterLevel::m_QuadsAndTrianglesList ...
59444C:  LDRH.W          R5, [R0,R1,LSL#1]
594450:  MOVS            R0, #0
594452:  CMP.W           R0, R5,LSR#14
594456:  BEQ.W           loc_594580
59445A:  LDR             R3, =(_ZN11CWaterLevel23m_QuadsAndTrianglesListE_ptr - 0x594466)
59445C:  LSRS            R6, R5, #0xE
59445E:  LDR.W           R9, =(_ZN11CWaterLevel11m_aVerticesE_ptr - 0x59446C)
594462:  ADD             R3, PC; _ZN11CWaterLevel23m_QuadsAndTrianglesListE_ptr
594464:  VLDR            S0, =950.0
594468:  ADD             R9, PC; _ZN11CWaterLevel11m_aVerticesE_ptr
59446A:  LDR             R3, [R3]; CWaterLevel::m_QuadsAndTrianglesList ...
59446C:  LDR.W           R9, [R9]; CWaterLevel::m_aVertices ...
594470:  ADD.W           R1, R3, R1,LSL#1
594474:  LDR             R3, =(_ZN11CWaterLevel12m_aTrianglesE_ptr - 0x59447C)
594476:  ADDS            R1, #2
594478:  ADD             R3, PC; _ZN11CWaterLevel12m_aTrianglesE_ptr
59447A:  LDR.W           R10, [R3]; CWaterLevel::m_aTriangles ...
59447E:  LDR             R3, =(_ZN11CWaterLevel12m_aTrianglesE_ptr - 0x594484)
594480:  ADD             R3, PC; _ZN11CWaterLevel12m_aTrianglesE_ptr
594482:  LDR.W           R12, [R3]; CWaterLevel::m_aTriangles ...
594486:  LDR             R3, =(_ZN11CWaterLevel11m_aVerticesE_ptr - 0x59448C)
594488:  ADD             R3, PC; _ZN11CWaterLevel11m_aVerticesE_ptr
59448A:  LDR.W           LR, [R3]; CWaterLevel::m_aVertices ...
59448E:  LDR             R3, =(_ZN11CWaterLevel8m_aQuadsE_ptr - 0x594494)
594490:  ADD             R3, PC; _ZN11CWaterLevel8m_aQuadsE_ptr
594492:  LDR             R4, [R3]; CWaterLevel::m_aQuads ...
594494:  LDR             R3, =(_ZN11CWaterLevel8m_aQuadsE_ptr - 0x59449A)
594496:  ADD             R3, PC; _ZN11CWaterLevel8m_aQuadsE_ptr
594498:  LDR.W           R8, [R3]; CWaterLevel::m_aQuads ...
59449C:  AND.W           R3, R6, #3
5944A0:  CMP             R3, #2
5944A2:  BEQ             loc_5944EA
5944A4:  CMP             R3, #1
5944A6:  BNE             loc_594526
5944A8:  BFC.W           R5, #0xE, #0x12
5944AC:  ADD.W           R6, R5, R5,LSL#2
5944B0:  ADD.W           R5, R4, R6,LSL#1
5944B4:  LDRB.W          R3, [R5,#8]!
5944B8:  TST.W           R3, #2
5944BC:  BNE             loc_594526
5944BE:  LDRSH.W         R6, [R8,R6,LSL#1]
5944C2:  ADD.W           R6, R6, R6,LSL#2
5944C6:  ADD.W           R6, R9, R6,LSL#2
5944CA:  VLDR            S2, [R6,#4]
5944CE:  MOVS            R6, #0
5944D0:  VCMPE.F32       S2, S0
5944D4:  VMRS            APSR_nzcv, FPSCR
5944D8:  IT GT
5944DA:  MOVGT           R6, #1
5944DC:  TEQ.W           R6, R2
5944E0:  ITT EQ
5944E2:  ORREQ.W         R3, R3, #1
5944E6:  STRBEQ          R3, [R5]
5944E8:  B               loc_594526
5944EA:  BFC.W           R5, #0xE, #0x12
5944EE:  ADD.W           R6, R10, R5,LSL#3
5944F2:  LDRB.W          R3, [R6,#6]!
5944F6:  TST.W           R3, #2
5944FA:  BNE             loc_594526
5944FC:  LDRSH.W         R5, [R12,R5,LSL#3]
594500:  ADD.W           R5, R5, R5,LSL#2
594504:  ADD.W           R5, LR, R5,LSL#2
594508:  VLDR            S2, [R5,#4]
59450C:  MOVS            R5, #0
59450E:  VCMPE.F32       S2, S0
594512:  VMRS            APSR_nzcv, FPSCR
594516:  IT GT
594518:  MOVGT           R5, #1
59451A:  TEQ.W           R5, R2
59451E:  ITT EQ
594520:  ORREQ.W         R3, R3, #1
594524:  STRBEQ          R3, [R6]
594526:  LDRH.W          R5, [R1],#2
59452A:  LSRS            R6, R5, #0xE
59452C:  CMP.W           R0, R5,LSR#14
594530:  BNE             loc_59449C
594532:  B               loc_594580
594534:  LDR             R0, =(_ZN11CWaterLevel12m_aTrianglesE_ptr - 0x59453E)
594536:  BFC.W           R1, #0xE, #0x12
59453A:  ADD             R0, PC; _ZN11CWaterLevel12m_aTrianglesE_ptr
59453C:  LDR             R0, [R0]; CWaterLevel::m_aTriangles ...
59453E:  ADD.W           R0, R0, R1,LSL#3
594542:  LDRB.W          R3, [R0,#6]!
594546:  TST.W           R3, #2
59454A:  BNE             loc_594580
59454C:  LDR             R6, =(_ZN11CWaterLevel12m_aTrianglesE_ptr - 0x594554)
59454E:  LDR             R5, =(_ZN11CWaterLevel11m_aVerticesE_ptr - 0x59455A)
594550:  ADD             R6, PC; _ZN11CWaterLevel12m_aTrianglesE_ptr
594552:  VLDR            S0, =950.0
594556:  ADD             R5, PC; _ZN11CWaterLevel11m_aVerticesE_ptr
594558:  LDR             R6, [R6]; CWaterLevel::m_aTriangles ...
59455A:  LDRSH.W         R1, [R6,R1,LSL#3]
59455E:  LDR             R6, [R5]; CWaterLevel::m_aVertices ...
594560:  ADD.W           R1, R1, R1,LSL#2
594564:  ADD.W           R1, R6, R1,LSL#2
594568:  VLDR            S2, [R1,#4]
59456C:  MOVS            R1, #0
59456E:  VCMPE.F32       S2, S0
594572:  VMRS            APSR_nzcv, FPSCR
594576:  IT GT
594578:  MOVGT           R1, #1
59457A:  TEQ.W           R1, R2
59457E:  BEQ             loc_594586
594580:  POP.W           {R8-R10}
594584:  POP             {R4-R7,PC}
594586:  ORR.W           R1, R3, #1
59458A:  STRB            R1, [R0]
59458C:  POP.W           {R8-R10}
594590:  POP             {R4-R7,PC}
