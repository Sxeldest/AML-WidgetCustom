; =========================================================
; Game Engine Function: sub_157528
; Address            : 0x157528 - 0x15764A
; =========================================================

157528:  PUSH            {R4-R7,LR}
15752A:  ADD             R7, SP, #0xC
15752C:  PUSH.W          {R8}
157530:  MOV             R4, R0
157532:  LDR             R0, [R7,#arg_0]
157534:  ADDS            R6, R2, R1
157536:  MOV             R5, R1
157538:  CMP             R2, #0
15753A:  BMI             loc_157556
15753C:  CMP             R6, R0
15753E:  BGT             loc_157556
157540:  ADDS            R0, R4, R5; int
157542:  MOV             R1, R2; n
157544:  MOVS            R2, #0x30 ; '0'; c
157546:  BLX             sub_22177C
15754A:  ADDS            R0, R4, R6
15754C:  MOVW            R1, #0x302E
157550:  STRH.W          R1, [R0],#2
157554:  B               loc_157644
157556:  CMP             R6, #1
157558:  BLT             loc_157572
15755A:  CMP             R6, R0
15755C:  BGT             loc_157572
15755E:  ADDS            R1, R4, R6; src
157560:  NEGS            R2, R2; n
157562:  ADDS            R0, R1, #1; dest
157564:  BLX             j_memmove
157568:  MOVS            R0, #0x2E ; '.'
15756A:  STRB            R0, [R4,R6]
15756C:  ADDS            R0, R5, R4
15756E:  ADDS            R0, #1
157570:  B               loc_157644
157572:  CMP             R6, R3
157574:  BLE             loc_1575A4
157576:  CMP             R6, #0
157578:  BGT             loc_1575A4
15757A:  RSB.W           R8, R6, #2
15757E:  MOV             R1, R4; src
157580:  ADD.W           R0, R4, R8; dest
157584:  MOV             R2, R5; n
157586:  BLX             j_memmove
15758A:  MOVW            R1, #0x2E30
15758E:  MOV             R0, R4
157590:  STRH.W          R1, [R0],#2; int
157594:  NEGS            R1, R6; n
157596:  MOVS            R2, #0x30 ; '0'; c
157598:  BLX             sub_22177C
15759C:  ADD.W           R0, R8, R5
1575A0:  ADD             R0, R4
1575A2:  B               loc_157644
1575A4:  SUBS            R2, R5, #1; n
1575A6:  BEQ             loc_1575B8
1575A8:  ADDS            R0, R4, #2; dest
1575AA:  ADDS            R1, R4, #1; src
1575AC:  BLX             j_memmove
1575B0:  MOVS            R0, #0x2E ; '.'
1575B2:  STRB            R0, [R4,#1]
1575B4:  ADDS            R0, R5, #1
1575B6:  B               loc_1575BA
1575B8:  MOVS            R0, #1
1575BA:  MOVS            R1, #0x65 ; 'e'
1575BC:  CMP             R6, #1
1575BE:  STRB            R1, [R4,R0]
1575C0:  MOV.W           R1, #0x2B ; '+'
1575C4:  ADD             R0, R4
1575C6:  IT LT
1575C8:  MOVLT           R1, #0x2D ; '-'
1575CA:  STRB            R1, [R0,#1]
1575CC:  SUB.W           R1, R6, #1
1575D0:  IT LT
1575D2:  RSBLT.W         R1, R6, #1
1575D6:  CMP             R1, #9
1575D8:  BHI             loc_1575E4
1575DA:  ADDS            R1, #0x30 ; '0'
1575DC:  STRB            R1, [R0,#3]
1575DE:  MOVS            R1, #0x30 ; '0'
1575E0:  STRB            R1, [R0,#2]
1575E2:  B               loc_157606
1575E4:  CMP             R1, #0x63 ; 'c'
1575E6:  BHI             loc_15760A
1575E8:  UXTB            R2, R1
1575EA:  MOVS            R3, #0xCD
1575EC:  MULS            R2, R3
1575EE:  MOVS            R3, #0x30 ; '0'
1575F0:  ADD.W           R3, R3, R2,LSR#11
1575F4:  LSRS            R2, R2, #0xB
1575F6:  ADD.W           R2, R2, R2,LSL#2
1575FA:  STRB            R3, [R0,#2]
1575FC:  SUB.W           R1, R1, R2,LSL#1
157600:  ORR.W           R1, R1, #0x30 ; '0'
157604:  STRB            R1, [R0,#3]
157606:  ADDS            R0, #4
157608:  B               loc_157644
15760A:  MOVW            R2, #0x851F
15760E:  MOVS            R6, #0x64 ; 'd'
157610:  MOVT            R2, #0x51EB
157614:  UMULL.W         R2, R3, R1, R2
157618:  LSRS            R2, R3, #5
15761A:  MLS.W           R1, R2, R6, R1
15761E:  MOVS            R6, #0xCD
157620:  UXTB            R2, R1
157622:  MULS            R2, R6
157624:  MOVS            R6, #0x30 ; '0'
157626:  ADD.W           R3, R6, R3,LSR#5
15762A:  STRB            R3, [R0,#2]
15762C:  ORR.W           R3, R6, R2,LSR#11
157630:  LSRS            R2, R2, #0xB
157632:  ADD.W           R2, R2, R2,LSL#2
157636:  STRB            R3, [R0,#3]
157638:  SUB.W           R1, R1, R2,LSL#1
15763C:  ORR.W           R1, R1, #0x30 ; '0'
157640:  STRB            R1, [R0,#4]
157642:  ADDS            R0, #5
157644:  POP.W           {R8}
157648:  POP             {R4-R7,PC}
