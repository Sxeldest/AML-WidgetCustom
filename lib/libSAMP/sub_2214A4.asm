; =========================================================
; Game Engine Function: sub_2214A4
; Address            : 0x2214A4 - 0x221774
; =========================================================

2214A4:  PUSH            {R4-R11,LR}
2214A8:  SUB             SP, SP, #4
2214AC:  LDR             R5, [SP,#0x28+arg_0]
2214B0:  MOV             R8, R3
2214B4:  MOV             R10, R2
2214B8:  MOV             R6, R0
2214BC:  MOV             R4, R0
2214C0:  CMP             R1, #0
2214C4:  BEQ             loc_2214FC
2214C8:  MOV             R9, R1
2214CC:  CMP             R10, #0
2214D0:  BEQ             loc_221528
2214D4:  CMP             R8, #0
2214D8:  BEQ             loc_22157C
2214DC:  CLZ             R0, R9
2214E0:  CLZ             R1, R8
2214E4:  SUB             R2, R1, R0
2214E8:  CMP             R2, #0x20 ; ' '
2214EC:  BCC             loc_2215F4
2214F0:  CMP             R5, #0
2214F4:  STMNE           R5, {R4,R9}
2214F8:  B               loc_221564
2214FC:  CMP             R8, #0
221500:  BEQ             loc_2215D4
221504:  CMP             R5, #0
221508:  BEQ             loc_221564
22150C:  MOV             R9, #0
221510:  STM             R5, {R4,R9}
221514:  MOV             R4, #0
221518:  MOV             R0, R4
22151C:  MOV             R1, R9
221520:  ADD             SP, SP, #4
221524:  POP             {R4-R11,PC}
221528:  CMP             R8, #0
22152C:  BEQ             loc_22160C
221530:  CMP             R6, #0
221534:  BEQ             loc_22164C
221538:  SUB             R0, R8, #1
22153C:  TST             R8, R0
221540:  BNE             loc_221680
221544:  CMP             R5, #0
221548:  ANDNE           R1, R0, R9
22154C:  RBIT            R0, R8
221550:  CLZ             R0, R0
221554:  STRNE           R4, [R5]
221558:  STRNE           R1, [R5,#4]
22155C:  MOV             R4, R9,LSR R0
221560:  B               loc_221568
221564:  MOV             R4, #0
221568:  MOV             R9, #0
22156C:  MOV             R0, R4
221570:  MOV             R1, R9
221574:  ADD             SP, SP, #4
221578:  POP             {R4-R11,PC}
22157C:  SUB             R0, R10, #1
221580:  TST             R10, R0
221584:  BNE             loc_22161C
221588:  CMP             R5, #0
22158C:  MOVNE           R1, #0
221590:  ANDNE           R0, R0, R6
221594:  STRDNE          R0, R1, [R5]
221598:  CMP             R10, #1
22159C:  BEQ             loc_221518
2215A0:  RBIT            R0, R10
2215A4:  MOV             R1, #0x1F
2215A8:  CLZ             R0, R0
2215AC:  MOV             R2, R9,LSL#1
2215B0:  BIC             R1, R1, R0
2215B4:  MOV             R9, R9,LSR R0
2215B8:  MOV             R1, R2,LSL R1
2215BC:  AND             R2, R0, #0x1F
2215C0:  ORR             R4, R1, R6,LSR R2
2215C4:  MOV             R0, R4
2215C8:  MOV             R1, R9
2215CC:  ADD             SP, SP, #4
2215D0:  POP             {R4-R11,PC}
2215D4:  MOV             R0, R6
2215D8:  MOV             R1, R10
2215DC:  BL              sub_220A6C
2215E0:  CMP             R5, #0
2215E4:  MOV             R4, R0
2215E8:  MLSNE           R0, R4, R10, R6
2215EC:  MOVNE           R1, #0
2215F0:  B               loc_221668
2215F4:  ADD             LR, R2, #1
2215F8:  MOV             R1, #0
2215FC:  CMP             LR, #0x20 ; ' '
221600:  BEQ             loc_221638
221604:  RSB             R3, R2, #0x1F
221608:  B               loc_2216C0
22160C:  MOV             R0, R4
221610:  MOV             R1, R9
221614:  ADD             SP, SP, #4
221618:  POP             {R4-R11,PC}
22161C:  CLZ             R0, R9
221620:  CLZ             R1, R10
221624:  SUB             R0, R1, R0
221628:  MOV             R1, #0
22162C:  ADD             LR, R0, #0x21 ; '!'
221630:  CMP             LR, #0x20 ; ' '
221634:  BNE             loc_2216B4
221638:  MOV             LR, #0x20 ; ' '
22163C:  MOV             R2, R9
221640:  MOV             R11, #0
221644:  MOV             R3, R6
221648:  B               loc_2216F0
22164C:  MOV             R0, R9
221650:  MOV             R1, R8
221654:  BL              sub_220A6C
221658:  MOV             R4, R0
22165C:  CMP             R5, #0
221660:  MLSNE           R1, R4, R8, R9
221664:  MOVNE           R0, #0
221668:  MOV             R9, #0
22166C:  STRDNE          R0, R1, [R5]
221670:  MOV             R0, R4
221674:  MOV             R1, R9
221678:  ADD             SP, SP, #4
22167C:  POP             {R4-R11,PC}
221680:  CLZ             R0, R9
221684:  CLZ             R1, R8
221688:  SUB             R0, R1, R0
22168C:  CMP             R0, #0x1F
221690:  BCS             loc_2214F0
221694:  RSB             R1, R0, #0x1F
221698:  ADD             LR, R0, #1
22169C:  MOV             R2, R9,LSL R1
2216A0:  MOV             R3, R6,LSL R1
2216A4:  ORR             R2, R2, R6,LSR LR
2216A8:  MOV             R11, R9,LSR LR
2216AC:  MOV             R1, #0
2216B0:  B               loc_2216F0
2216B4:  CMP             LR, #0x1F
2216B8:  BHI             loc_2216D4
2216BC:  RSB             R3, LR, #0x20 ; ' '
2216C0:  MOV             R2, R9,LSL R3
2216C4:  MOV             R11, R9,LSR LR
2216C8:  ORR             R2, R2, R6,LSR LR
2216CC:  MOV             R3, R6,LSL R3
2216D0:  B               loc_2216F0
2216D4:  RSB             R1, LR, #0x40 ; '@'
2216D8:  SUB             R7, LR, #0x20 ; ' '
2216DC:  MOV             R11, #0
2216E0:  MOV             R2, R9,LSL R1
2216E4:  ORR             R3, R2, R6,LSR R7
2216E8:  MOV             R2, R9,LSR R7
2216EC:  MOV             R1, R6,LSL R1
2216F0:  MOV             R6, #0
2216F4:  MOV             R12, #1
2216F8:  MOV             R7, R11,LSL#1
2216FC:  ORR             R7, R7, R2,LSR#31
221700:  MOV             R2, R2,LSL#1
221704:  ORR             R2, R2, R3,LSR#31
221708:  MVN             R4, R7
22170C:  MVN             R5, R2
221710:  ADDS            R5, R5, R10
221714:  ADC             R5, R4, R8
221718:  AND             R0, R10, R5,ASR#31
22171C:  AND             R4, R8, R5,ASR#31
221720:  SUBS            R2, R2, R0
221724:  MOV             R0, R3,LSL#1
221728:  SBC             R11, R7, R4
22172C:  AND             R7, R12, R5,ASR#31
221730:  ORR             R3, R0, R1,LSR#31
221734:  ORR             R1, R6, R1,LSL#1
221738:  SUBS            LR, LR, #1
22173C:  MOV             R6, R7
221740:  BNE             loc_2216F8
221744:  MOV             R0, R1,LSR#31
221748:  ORR             R9, R0, R3,LSL#1
22174C:  MOV             R0, R1,LSL#1
221750:  LDR             R1, [SP,#0x28+arg_0]
221754:  BIC             R0, R0, #1
221758:  ORR             R4, R0, R7
22175C:  CMP             R1, #0
221760:  STMNE           R1, {R2,R11}
221764:  MOV             R0, R4
221768:  MOV             R1, R9
22176C:  ADD             SP, SP, #4
221770:  POP             {R4-R11,PC}
