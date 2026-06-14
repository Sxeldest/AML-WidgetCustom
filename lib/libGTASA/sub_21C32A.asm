; =========================================================
; Game Engine Function: sub_21C32A
; Address            : 0x21C32A - 0x21C57E
; =========================================================

21C32A:  PUSH            {R4-R7,LR}
21C32C:  ADD             R7, SP, #0xC
21C32E:  PUSH.W          {R8-R11}
21C332:  SUB             SP, SP, #0x1C
21C334:  MOV             R11, R0
21C336:  MOV.W           R8, #0
21C33A:  CMP             R1, #0
21C33C:  STRD.W          R2, R3, [SP,#0x38+var_30]
21C340:  BEQ.W           loc_21C574
21C344:  MOVS            R0, #0
21C346:  LDR             R2, [R7,#arg_0]
21C348:  STR             R0, [SP,#0x38+var_20]
21C34A:  MOVS            R0, #0
21C34C:  LDR.W           R5, [R11,#4]
21C350:  STR             R0, [SP,#0x38+var_34]
21C352:  B               loc_21C364
21C354:  STRH.W          R5, [R12]
21C358:  LDR.W           R1, [R11,#4]
21C35C:  ADDS            R5, R1, #1
21C35E:  STR.W           R5, [R11,#4]
21C362:  MOV             R1, R0
21C364:  ORN.W           R6, R5, #1
21C368:  LDR.W           R0, [R11]
21C36C:  ADDS            R3, R6, R5
21C36E:  EOR.W           R6, R6, #1
21C372:  LDR             R4, [R1,#4]
21C374:  CMP             R2, #3
21C376:  LDRH.W          R8, [R0,R3,LSL#1]
21C37A:  ADD.W           R3, R6, R5
21C37E:  LDRH.W          R9, [R0,R3,LSL#1]
21C382:  BGT             loc_21C398
21C384:  CBZ             R4, loc_21C38A
21C386:  LDR             R0, [R4,#0x1C]
21C388:  CBZ             R0, loc_21C3AE
21C38A:  LDR             R4, [R1,#8]
21C38C:  CMP             R4, #0
21C38E:  BEQ.W           loc_21C570
21C392:  LDR             R0, [R4,#0x1C]
21C394:  CBZ             R0, loc_21C3AE
21C396:  B               loc_21C570
21C398:  CBZ             R4, loc_21C39E
21C39A:  LDR             R0, [R4,#0x18]
21C39C:  CBZ             R0, loc_21C3AE
21C39E:  LDR             R4, [R1,#8]
21C3A0:  CMP             R4, #0
21C3A2:  BEQ.W           loc_21C570
21C3A6:  LDR             R0, [R4,#0x18]
21C3A8:  CMP             R0, #0
21C3AA:  BNE.W           loc_21C570
21C3AE:  STR             R1, [SP,#0x38+var_24]
21C3B0:  MOV             R0, R4
21C3B2:  LDR             R1, [SP,#0x38+var_30]
21C3B4:  BL              sub_21C24C
21C3B8:  LDRD.W          R0, R3, [R4]
21C3BC:  LDRD.W          R6, LR, [R11]
21C3C0:  LDR             R2, [SP,#0x38+var_2C]
21C3C2:  ADD.W           R0, R0, R0,LSL#1
21C3C6:  ADD.W           R12, R6, LR,LSL#1
21C3CA:  LDRH.W          R1, [R2,R0,LSL#2]
21C3CE:  ADD.W           R0, R2, R0,LSL#2
21C3D2:  CMP             R1, R9
21C3D4:  LDRH            R2, [R0,#4]
21C3D6:  MOV             R5, R1
21C3D8:  IT EQ
21C3DA:  MOVEQ           R5, #0
21C3DC:  LDRH            R0, [R0,#2]
21C3DE:  CMP             R1, R8
21C3E0:  IT EQ
21C3E2:  MOVEQ           R5, #0
21C3E4:  STR             R6, [SP,#0x38+var_28]
21C3E6:  CMP             R0, R9
21C3E8:  MOV             R1, R0
21C3EA:  LDRH.W          R10, [R12,#-2]
21C3EE:  IT EQ
21C3F0:  MOVEQ           R1, R5
21C3F2:  CMP             R0, R8
21C3F4:  IT EQ
21C3F6:  MOVEQ           R1, R5
21C3F8:  CMP             R2, R9
21C3FA:  MOV             R5, R2
21C3FC:  IT EQ
21C3FE:  MOVEQ           R5, R1
21C400:  CMP             R2, R8
21C402:  LDRH            R6, [R3]
21C404:  IT EQ
21C406:  MOVEQ           R5, R1
21C408:  LDR.W           R8, [SP,#0x38+var_20]
21C40C:  CMP             R6, R10
21C40E:  BNE             loc_21C41A
21C410:  LDRH            R0, [R3,#2]
21C412:  UXTH            R1, R5
21C414:  CMP             R0, R1
21C416:  MOV             R0, R3
21C418:  BEQ             loc_21C45A
21C41A:  UXTH            R1, R5
21C41C:  CMP             R6, R1
21C41E:  BNE             loc_21C428
21C420:  LDRH            R0, [R3,#2]
21C422:  CMP             R0, R10
21C424:  MOV             R0, R3
21C426:  BEQ             loc_21C45A
21C428:  LDR             R0, [R4,#8]
21C42A:  LDRH            R6, [R0]
21C42C:  CMP             R6, R10
21C42E:  ITT EQ
21C430:  LDRHEQ          R2, [R0,#2]
21C432:  CMPEQ           R2, R1
21C434:  BEQ             loc_21C45A
21C436:  CMP             R6, R1
21C438:  ITT EQ
21C43A:  LDRHEQ          R2, [R0,#2]
21C43C:  CMPEQ           R2, R10
21C43E:  BEQ             loc_21C45A
21C440:  LDR             R0, [R4,#0xC]
21C442:  LDRH            R6, [R0]
21C444:  CMP             R6, R10
21C446:  ITT EQ
21C448:  LDRHEQ          R2, [R0,#2]
21C44A:  CMPEQ           R2, R1
21C44C:  BEQ             loc_21C45A
21C44E:  CMP             R6, R1
21C450:  ITT EQ
21C452:  LDRHEQ          R1, [R0,#2]
21C454:  CMPEQ           R1, R10
21C456:  BEQ             loc_21C45A
21C458:  MOVS            R0, #0
21C45A:  LDR             R2, [R7,#arg_0]
21C45C:  ADD.W           R8, R8, #1
21C460:  STR.W           R8, [SP,#0x38+var_20]
21C464:  CMP             R2, #3
21C466:  BGT             loc_21C480
21C468:  LDR.W           R9, [SP,#0x38+var_24]
21C46C:  CBZ             R0, loc_21C4C4
21C46E:  LDR             R1, [R0,#4]
21C470:  CBZ             R1, loc_21C498
21C472:  LDR             R1, [R1,#0x1C]
21C474:  CMP             R1, #0
21C476:  MOV.W           R1, #0
21C47A:  IT EQ
21C47C:  MOVEQ           R1, #1
21C47E:  B               loc_21C49A
21C480:  LDR.W           R9, [SP,#0x38+var_24]
21C484:  CBZ             R0, loc_21C4C4
21C486:  LDR             R1, [R0,#4]
21C488:  CBZ             R1, loc_21C4A2
21C48A:  LDR             R1, [R1,#0x18]
21C48C:  CMP             R1, #0
21C48E:  MOV.W           R1, #0
21C492:  IT EQ
21C494:  MOVEQ           R1, #1
21C496:  B               loc_21C4A4
21C498:  MOVS            R1, #0
21C49A:  LDR             R6, [R0,#8]
21C49C:  CBZ             R6, loc_21C4BC
21C49E:  LDR             R6, [R6,#0x1C]
21C4A0:  B               loc_21C4AA
21C4A2:  MOVS            R1, #0
21C4A4:  LDR             R6, [R0,#8]
21C4A6:  CBZ             R6, loc_21C4BC
21C4A8:  LDR             R6, [R6,#0x18]
21C4AA:  CMP             R6, #0
21C4AC:  MOV.W           R6, #0
21C4B0:  IT EQ
21C4B2:  MOVEQ           R6, #1
21C4B4:  CMN             R1, R6
21C4B6:  BNE.W           loc_21C354
21C4BA:  B               loc_21C4C4
21C4BC:  MOVS            R6, #0
21C4BE:  CMN             R1, R6
21C4C0:  BNE.W           loc_21C354
21C4C4:  CMP             R3, R9
21C4C6:  IT NE
21C4C8:  CMPNE           R3, R0
21C4CA:  BNE             loc_21C4E8
21C4CC:  LDR             R3, [R4,#8]
21C4CE:  CMP             R3, R9
21C4D0:  IT NE
21C4D2:  CMPNE           R3, R0
21C4D4:  BNE             loc_21C4E8
21C4D6:  LDR             R1, [R4,#0xC]
21C4D8:  CMP             R1, R0
21C4DA:  LDR             R0, [SP,#0x38+var_34]
21C4DC:  MOV             R3, R1
21C4DE:  IT EQ
21C4E0:  MOVEQ           R3, R0
21C4E2:  CMP             R1, R9
21C4E4:  IT EQ
21C4E6:  MOVEQ           R3, R0
21C4E8:  CMP             R2, #3
21C4EA:  BGT             loc_21C500
21C4EC:  CBZ             R3, loc_21C55E
21C4EE:  LDR             R0, [R3,#4]
21C4F0:  CBZ             R0, loc_21C514
21C4F2:  LDR             R0, [R0,#0x1C]
21C4F4:  CMP             R0, #0
21C4F6:  MOV.W           R0, #0
21C4FA:  IT EQ
21C4FC:  MOVEQ           R0, #1
21C4FE:  B               loc_21C516
21C500:  CBZ             R3, loc_21C55E
21C502:  LDR             R0, [R3,#4]
21C504:  CBZ             R0, loc_21C51E
21C506:  LDR             R0, [R0,#0x18]
21C508:  CMP             R0, #0
21C50A:  MOV.W           R0, #0
21C50E:  IT EQ
21C510:  MOVEQ           R0, #1
21C512:  B               loc_21C520
21C514:  MOVS            R0, #0
21C516:  LDR             R1, [R3,#8]
21C518:  CBZ             R1, loc_21C558
21C51A:  LDR             R1, [R1,#0x1C]
21C51C:  B               loc_21C526
21C51E:  MOVS            R0, #0
21C520:  LDR             R1, [R3,#8]
21C522:  CBZ             R1, loc_21C558
21C524:  LDR             R1, [R1,#0x18]
21C526:  CMP             R1, #0
21C528:  MOV.W           R1, #0
21C52C:  IT EQ
21C52E:  MOVEQ           R1, #1
21C530:  CMN             R0, R1
21C532:  BEQ             loc_21C55E
21C534:  ANDS.W          R0, LR, #1
21C538:  BNE             loc_21C55E
21C53A:  LDR             R1, [SP,#0x38+var_28]
21C53C:  LDRH.W          R0, [R12,#-4]
21C540:  STRH.W          R0, [R1,LR,LSL#1]
21C544:  LDRD.W          R0, R1, [R11]
21C548:  ADDS            R1, #1
21C54A:  STR.W           R1, [R11,#4]
21C54E:  STR             R3, [SP,#0x38+var_34]
21C550:  ADD.W           R12, R0, R1,LSL#1
21C554:  MOV             R0, R3
21C556:  B               loc_21C354
21C558:  MOVS            R1, #0
21C55A:  CMN             R0, R1
21C55C:  BNE             loc_21C534
21C55E:  LDR             R0, [SP,#0x38+var_28]
21C560:  STRH.W          R5, [R0,LR,LSL#1]
21C564:  LDR.W           R0, [R11,#4]
21C568:  ADDS            R0, #1
21C56A:  STR.W           R0, [R11,#4]
21C56E:  B               loc_21C574
21C570:  LDR.W           R8, [SP,#0x38+var_20]
21C574:  MOV             R0, R8
21C576:  ADD             SP, SP, #0x1C
21C578:  POP.W           {R8-R11}
21C57C:  POP             {R4-R7,PC}
