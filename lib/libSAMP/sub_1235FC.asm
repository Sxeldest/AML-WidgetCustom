; =========================================================
; Game Engine Function: sub_1235FC
; Address            : 0x1235FC - 0x12369C
; =========================================================

1235FC:  PUSH            {R4-R7,LR}
1235FE:  ADD             R7, SP, #0xC
123600:  PUSH.W          {R11}
123604:  SUB             SP, SP, #0x10
123606:  CMP             R1, R0
123608:  BEQ             loc_123694
12360A:  MOV             R5, R0
12360C:  LDR             R0, [R0,#0x10]
12360E:  MOV             R4, R1
123610:  CMP             R0, R5
123612:  BEQ             loc_123620
123614:  LDR             R1, [R4,#0x10]
123616:  CMP             R4, R1
123618:  BEQ             loc_12363C
12361A:  STR             R1, [R5,#0x10]
12361C:  STR             R0, [R4,#0x10]
12361E:  B               loc_123694
123620:  LDR             R1, [R4,#0x10]
123622:  CMP             R1, R4
123624:  BEQ             loc_123656
123626:  LDR             R1, [R0]
123628:  LDR             R2, [R1,#0xC]
12362A:  MOV             R1, R4
12362C:  BLX             R2
12362E:  LDR             R0, [R5,#0x10]
123630:  LDR             R1, [R0]
123632:  LDR             R1, [R1,#0x10]
123634:  BLX             R1
123636:  LDR             R0, [R4,#0x10]
123638:  STR             R0, [R5,#0x10]
12363A:  B               loc_123692
12363C:  LDR             R0, [R1]
12363E:  LDR             R2, [R0,#0xC]
123640:  MOV             R0, R1
123642:  MOV             R1, R5
123644:  BLX             R2
123646:  LDR             R0, [R4,#0x10]
123648:  LDR             R1, [R0]
12364A:  LDR             R1, [R1,#0x10]
12364C:  BLX             R1
12364E:  LDR             R0, [R5,#0x10]
123650:  STR             R0, [R4,#0x10]
123652:  STR             R5, [R5,#0x10]
123654:  B               loc_123694
123656:  LDR             R1, [R0]
123658:  LDR             R2, [R1,#0xC]
12365A:  MOV             R1, SP
12365C:  BLX             R2
12365E:  LDR             R0, [R5,#0x10]
123660:  LDR             R1, [R0]
123662:  LDR             R1, [R1,#0x10]
123664:  BLX             R1
123666:  MOVS            R6, #0
123668:  STR             R6, [R5,#0x10]
12366A:  LDR             R0, [R4,#0x10]
12366C:  LDR             R1, [R0]
12366E:  LDR             R2, [R1,#0xC]
123670:  MOV             R1, R5
123672:  BLX             R2
123674:  LDR             R0, [R4,#0x10]
123676:  LDR             R1, [R0]
123678:  LDR             R1, [R1,#0x10]
12367A:  BLX             R1
12367C:  LDR             R0, [SP,#0x20+var_20]
12367E:  STR             R6, [R4,#0x10]
123680:  STR             R5, [R5,#0x10]
123682:  LDR             R2, [R0,#0xC]
123684:  MOV             R0, SP
123686:  MOV             R1, R4
123688:  BLX             R2
12368A:  LDR             R0, [SP,#0x20+var_20]
12368C:  LDR             R1, [R0,#0x10]
12368E:  MOV             R0, SP
123690:  BLX             R1
123692:  STR             R4, [R4,#0x10]
123694:  ADD             SP, SP, #0x10
123696:  POP.W           {R11}
12369A:  POP             {R4-R7,PC}
