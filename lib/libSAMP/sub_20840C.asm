; =========================================================
; Game Engine Function: sub_20840C
; Address            : 0x20840C - 0x2085D0
; =========================================================

20840C:  PUSH            {R4-R7,LR}
20840E:  ADD             R7, SP, #0xC
208410:  PUSH.W          {R8-R11}
208414:  LDR.W           R10, [R7,#arg_4]
208418:  STR             R0, [R2]
20841A:  STR.W           R3, [R10]
20841E:  LDRB            R3, [R7,#arg_C]
208420:  LSLS            R3, R3, #0x1D
208422:  BPL             loc_20843A
208424:  LDR             R3, [R2]
208426:  SUBS            R4, R1, R3
208428:  CMP             R4, #3
20842A:  BLT             loc_20843A
20842C:  LDRB            R4, [R3]
20842E:  CMP             R4, #0xEF
208430:  ITT EQ
208432:  LDRBEQ          R4, [R3,#1]
208434:  CMPEQ           R4, #0xBB
208436:  BEQ.W           loc_2085C0
20843A:  LDR.W           R8, [R7,#arg_8]
20843E:  MOV.W           R12, #0xC0
208442:  LDR.W           LR, [R7,#arg_0]
208446:  B               loc_20859E
208448:  LDRB            R5, [R4]
20844A:  CMP             R5, R8
20844C:  BHI.W           loc_2085BC
208450:  SXTB            R3, R5
208452:  CMP             R3, #0
208454:  BMI             loc_20845C
208456:  STRH            R5, [R6]
208458:  ADDS            R3, R4, #1
20845A:  B               loc_208592
20845C:  CMP             R5, #0xC2
20845E:  BCC.W           loc_2085BC
208462:  CMP             R5, #0xDF
208464:  BHI             loc_208492
208466:  SUBS            R3, R1, R4
208468:  CMP             R3, #2
20846A:  BLT.W           loc_2085CC
20846E:  LDRB            R3, [R4,#1]
208470:  AND.W           R0, R3, #0xC0
208474:  CMP             R0, #0x80
208476:  BNE.W           loc_2085BC
20847A:  AND.W           R0, R5, #0x1F
20847E:  AND.W           R3, R3, #0x3F ; '?'
208482:  ORR.W           R3, R3, R0,LSL#6
208486:  CMP             R3, R8
208488:  BHI.W           loc_2085BC
20848C:  STRH            R3, [R6]
20848E:  ADDS            R3, R4, #2
208490:  B               loc_208592
208492:  CMP             R5, #0xEF
208494:  BHI             loc_2084B6
208496:  SUBS            R0, R1, R4
208498:  CMP             R0, #3
20849A:  BLT.W           loc_2085CC
20849E:  LDRB            R3, [R4,#1]
2084A0:  CMP             R5, #0xED
2084A2:  LDRB.W          R9, [R4,#2]
2084A6:  BEQ             loc_2084E2
2084A8:  CMP             R5, #0xE0
2084AA:  BNE             loc_2084E8
2084AC:  AND.W           R0, R3, #0xE0
2084B0:  CMP             R0, #0xA0
2084B2:  BEQ             loc_2084F0
2084B4:  B               loc_2085BC
2084B6:  CMP             R5, #0xF4
2084B8:  BHI.W           loc_2085BC
2084BC:  SUBS            R0, R1, R4
2084BE:  CMP             R0, #4
2084C0:  BLT.W           loc_2085CC
2084C4:  LDRB            R3, [R4,#1]
2084C6:  CMP             R5, #0xF4
2084C8:  LDRB.W          R9, [R4,#2]
2084CC:  LDRB.W          R11, [R4,#3]
2084D0:  BEQ             loc_208514
2084D2:  CMP             R5, #0xF0
2084D4:  BNE             loc_20851A
2084D6:  ADD.W           R0, R3, #0x70 ; 'p'
2084DA:  UXTB            R0, R0
2084DC:  CMP             R0, #0x30 ; '0'
2084DE:  BCC             loc_208522
2084E0:  B               loc_2085BC
2084E2:  AND.W           R0, R3, #0xE0
2084E6:  B               loc_2084EC
2084E8:  AND.W           R0, R3, #0xC0
2084EC:  CMP             R0, #0x80
2084EE:  BNE             loc_2085BC
2084F0:  AND.W           R0, R9, #0xC0
2084F4:  CMP             R0, #0x80
2084F6:  BNE             loc_2085BC
2084F8:  AND.W           R0, R3, #0x3F ; '?'
2084FC:  AND.W           R3, R9, #0x3F ; '?'
208500:  LSLS            R0, R0, #6
208502:  ORR.W           R0, R0, R5,LSL#12
208506:  ADD             R3, R0
208508:  UXTH            R0, R3
20850A:  CMP             R0, R8
20850C:  BHI             loc_2085BC
20850E:  STRH            R3, [R6]
208510:  ADDS            R3, R4, #3
208512:  B               loc_208592
208514:  AND.W           R0, R3, #0xF0
208518:  B               loc_20851E
20851A:  AND.W           R0, R3, #0xC0
20851E:  CMP             R0, #0x80
208520:  BNE             loc_2085BC
208522:  AND.W           R0, R9, #0xC0
208526:  CMP             R0, #0x80
208528:  ITT EQ
20852A:  ANDEQ.W         R0, R11, #0xC0
20852E:  CMPEQ           R0, #0x80
208530:  BNE             loc_2085BC
208532:  SUB.W           R0, LR, R6
208536:  CMP             R0, #4
208538:  BLT             loc_2085CC
20853A:  AND.W           R5, R5, #7
20853E:  AND.W           R4, R9, #0x3F ; '?'
208542:  LSLS            R0, R5, #0x12
208544:  BFI.W           R0, R3, #0xC, #6
208548:  ORR.W           R0, R0, R4,LSL#6
20854C:  AND.W           R4, R11, #0x3F ; '?'
208550:  ADD             R0, R4
208552:  CMP             R0, R8
208554:  BHI             loc_2085BC
208556:  MOV.W           R0, R9,LSL#6
20855A:  AND.W           R0, R0, #0x3C0
20855E:  ADD             R0, R4
208560:  MOV             R4, R6
208562:  ADD.W           R0, R0, #0xDC00
208566:  STRH.W          R0, [R4,#2]!
20856A:  AND.W           R0, R12, R3,LSL#2
20856E:  AND.W           R3, R3, #0xF
208572:  ORR.W           R0, R0, R5,LSL#8
208576:  STR.W           R4, [R10]
20857A:  ORR.W           R0, R0, R3,LSL#2
20857E:  UBFX.W          R3, R9, #4, #2
208582:  ADD             R0, R3
208584:  ADD.W           R0, R0, #0x3FC0
208588:  ORR.W           R0, R0, #0xD800
20858C:  STRH            R0, [R6]
20858E:  LDR             R0, [R2]
208590:  ADDS            R3, R0, #4
208592:  STR             R3, [R2]
208594:  LDR.W           R0, [R10]
208598:  ADDS            R0, #2
20859A:  STR.W           R0, [R10]
20859E:  LDR             R4, [R2]
2085A0:  CMP             R4, R1
2085A2:  ITT CC
2085A4:  LDRCC.W         R6, [R10]
2085A8:  CMPCC           R6, LR
2085AA:  BCC.W           loc_208448
2085AE:  MOVS            R0, #0
2085B0:  CMP             R4, R1
2085B2:  IT CC
2085B4:  MOVCC           R0, #1
2085B6:  POP.W           {R8-R11}
2085BA:  POP             {R4-R7,PC}
2085BC:  MOVS            R0, #2
2085BE:  B               loc_2085B6
2085C0:  LDRB            R4, [R3,#2]
2085C2:  CMP             R4, #0xBF
2085C4:  ITT EQ
2085C6:  ADDEQ           R3, #3
2085C8:  STREQ           R3, [R2]
2085CA:  B               loc_20843A
2085CC:  MOVS            R0, #1
2085CE:  B               loc_2085B6
