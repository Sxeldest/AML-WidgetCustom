; =========================================================
; Game Engine Function: sub_88448
; Address            : 0x88448 - 0x885C0
; =========================================================

88448:  PUSH            {R7,LR}
8844A:  MOV             R7, SP
8844C:  LDRB.W          R12, [R1]
88450:  MOVS.W          R3, R12,LSL#24
88454:  BMI             loc_88460
88456:  MOVS            R1, #1
88458:  STR.W           R12, [R0]
8845C:  MOV             R0, R1
8845E:  POP             {R7,PC}
88460:  AND.W           R3, R12, #0xE0
88464:  CMP             R3, #0xC0
88466:  BNE             loc_8849A
88468:  MOVW            R3, #0xFFFD
8846C:  STR             R3, [R0]
8846E:  CBZ             R2, loc_8847A
88470:  SUBS            R2, R2, R1
88472:  CMP             R2, #2
88474:  ITT LT
88476:  MOVLT           R0, #1
88478:  POPLT           {R7,PC}
8847A:  LDRB            R2, [R1]
8847C:  CMP             R2, #0xC2
8847E:  BCC             loc_884D0
88480:  LDRB            R1, [R1,#1]
88482:  AND.W           R3, R1, #0xC0
88486:  CMP             R3, #0x80
88488:  BNE             loc_884D0
8848A:  AND.W           R2, R2, #0x1F
8848E:  AND.W           R1, R1, #0x3F ; '?'
88492:  ORR.W           R12, R1, R2,LSL#6
88496:  MOVS            R1, #2
88498:  B               loc_88458
8849A:  AND.W           R3, R12, #0xF0
8849E:  CMP             R3, #0xE0
884A0:  BNE             loc_884D4
884A2:  MOVW            R3, #0xFFFD
884A6:  STR             R3, [R0]
884A8:  CBZ             R2, loc_884B4
884AA:  SUBS            R2, R2, R1
884AC:  CMP             R2, #3
884AE:  ITT LT
884B0:  MOVLT           R0, #1
884B2:  POPLT           {R7,PC}
884B4:  LDRB.W          R12, [R1]
884B8:  CMP.W           R12, #0xE0
884BC:  BEQ             loc_88514
884BE:  CMP.W           R12, #0xED
884C2:  BNE             loc_88526
884C4:  LDRB            R3, [R1,#1]
884C6:  CMP             R3, #0x9F
884C8:  ITT HI
884CA:  MOVHI           R0, #3
884CC:  POPHI           {R7,PC}
884CE:  B               loc_88528
884D0:  MOVS            R0, #2
884D2:  POP             {R7,PC}
884D4:  AND.W           R3, R12, #0xF8
884D8:  CMP             R3, #0xF0
884DA:  BNE             loc_8850C
884DC:  MOVW            R3, #0xFFFD
884E0:  STR             R3, [R0]
884E2:  CBZ             R2, loc_884EE
884E4:  SUBS            R2, R2, R1
884E6:  CMP             R2, #4
884E8:  ITT LT
884EA:  MOVLT           R0, #1
884EC:  POPLT           {R7,PC}
884EE:  LDRB            R2, [R1]
884F0:  CMP             R2, #0xF4
884F2:  BHI             loc_885B0
884F4:  CMP             R2, #0xF0
884F6:  BEQ             loc_88558
884F8:  CMP             R2, #0xF4
884FA:  BNE             loc_8856C
884FC:  LDRB.W          LR, [R1,#1]
88500:  CMP.W           LR, #0x8F
88504:  ITT HI
88506:  MOVHI           R0, #4
88508:  POPHI           {R7,PC}
8850A:  B               loc_88570
8850C:  MOV.W           R12, #0
88510:  MOVS            R1, #0
88512:  B               loc_88458
88514:  LDRB            R3, [R1,#1]
88516:  ADD.W           R2, R3, #0x40 ; '@'
8851A:  UXTB            R2, R2
8851C:  CMP             R2, #0xE0
8851E:  ITT CC
88520:  MOVCC           R0, #3
88522:  POPCC           {R7,PC}
88524:  B               loc_88528
88526:  LDRB            R3, [R1,#1]
88528:  AND.W           R2, R3, #0xC0
8852C:  CMP             R2, #0x80
8852E:  ITT NE
88530:  MOVNE           R0, #3
88532:  POPNE           {R7,PC}
88534:  LDRB            R1, [R1,#2]
88536:  AND.W           R2, R1, #0xC0
8853A:  CMP             R2, #0x80
8853C:  ITT NE
8853E:  MOVNE           R0, #3
88540:  POPNE           {R7,PC}
88542:  AND.W           R2, R12, #0xF
88546:  AND.W           R1, R1, #0x3F ; '?'
8854A:  LSLS            R2, R2, #0xC
8854C:  BFI.W           R2, R3, #6, #6
88550:  ADD.W           R12, R1, R2
88554:  MOVS            R1, #3
88556:  B               loc_88458
88558:  LDRB.W          LR, [R1,#1]
8855C:  ADD.W           R3, LR, #0x40 ; '@'
88560:  UXTB            R3, R3
88562:  CMP             R3, #0xD0
88564:  ITT CC
88566:  MOVCC           R0, #4
88568:  POPCC           {R7,PC}
8856A:  B               loc_88570
8856C:  LDRB.W          LR, [R1,#1]
88570:  AND.W           R3, LR, #0xC0
88574:  CMP             R3, #0x80
88576:  ITT NE
88578:  MOVNE           R0, #4
8857A:  POPNE           {R7,PC}
8857C:  LDRB.W          R12, [R1,#2]
88580:  AND.W           R3, R12, #0xC0
88584:  CMP             R3, #0x80
88586:  BNE             loc_885B0
88588:  LDRB            R1, [R1,#3]
8858A:  AND.W           R3, R1, #0xC0
8858E:  CMP             R3, #0x80
88590:  BNE             loc_885B0
88592:  AND.W           R2, R2, #7
88596:  MOV             R3, #0x1FF800
8859E:  LSLS            R2, R2, #0x12
885A0:  BFI.W           R2, R12, #6, #6
885A4:  BFI.W           R2, LR, #0xC, #6
885A8:  ANDS            R3, R2
885AA:  CMP.W           R3, #0xD800
885AE:  BNE             loc_885B4
885B0:  MOVS            R0, #4
885B2:  POP             {R7,PC}
885B4:  AND.W           R1, R1, #0x3F ; '?'
885B8:  ORR.W           R12, R1, R2
885BC:  MOVS            R1, #4
885BE:  B               loc_88458
