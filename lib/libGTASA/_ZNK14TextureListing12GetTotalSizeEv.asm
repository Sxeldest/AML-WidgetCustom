; =========================================================
; Game Engine Function: _ZNK14TextureListing12GetTotalSizeEv
; Address            : 0x1E74D0 - 0x1E7692
; =========================================================

1E74D0:  PUSH            {R4-R7,LR}
1E74D2:  ADD             R7, SP, #0xC
1E74D4:  PUSH.W          {R8-R11}
1E74D8:  SUB             SP, SP, #0xC
1E74DA:  LDRSH.W         R6, [R0,#6]
1E74DE:  MOVS            R1, #1
1E74E0:  CMP.W           R6, #0xFFFFFFFF
1E74E4:  BGT             loc_1E752E
1E74E6:  MOV             R4, R6
1E74E8:  LDRH            R5, [R0,#4]
1E74EA:  BFC.W           R4, #0xF, #0x11
1E74EE:  MOVS            R1, #1
1E74F0:  ADDS            R2, R5, R4
1E74F2:  CMP             R2, #3
1E74F4:  BCC             loc_1E752E
1E74F6:  MOV             R12, R6
1E74F8:  MOV.W           R1, #0xFFFFFFFF
1E74FC:  LSRS            R6, R4, #1
1E74FE:  CMP             R6, #1
1E7500:  MOV.W           R3, #1
1E7504:  MOV.W           R6, R5,LSR#1
1E7508:  IT HI
1E750A:  LSRHI           R3, R4, #1
1E750C:  CMP             R6, #1
1E750E:  MOV.W           R2, #1
1E7512:  SUB.W           R1, R1, #1
1E7516:  IT HI
1E7518:  LSRHI           R2, R5, #1
1E751A:  MOV             R4, R3
1E751C:  ADDS            R6, R2, R3
1E751E:  MOV             R5, R2
1E7520:  CMP             R6, #2
1E7522:  BHI             loc_1E74FC
1E7524:  CMP             R1, #0
1E7526:  BEQ.W           loc_1E768E
1E752A:  NEGS            R1, R1
1E752C:  MOV             R6, R12
1E752E:  LDRH.W          R12, [R0,#2]
1E7532:  BFC.W           R6, #0xF, #0x11
1E7536:  LDRH.W          LR, [R0,#4]
1E753A:  MOVW            R0, #0x8033
1E753E:  SUB.W           R0, R12, R0
1E7542:  STR             R0, [SP,#0x28+var_24]
1E7544:  MOVW            R0, #0x83F0
1E7548:  MOVS            R2, #0
1E754A:  SUB.W           R0, R12, R0
1E754E:  STR             R0, [SP,#0x28+var_28]
1E7550:  MOVW            R0, #0x83F2
1E7554:  MOVW            R9, #0x83F1
1E7558:  SUB.W           R0, R12, R0
1E755C:  STR             R0, [SP,#0x28+var_20]
1E755E:  MOVS            R0, #0
1E7560:  MOV             R4, R6
1E7562:  LSR.W           R6, R4, R2
1E7566:  CMP             R6, #1
1E7568:  MOV.W           R11, #1
1E756C:  LSR.W           R5, LR, R2
1E7570:  IT GT
1E7572:  MOVGT           R11, R6
1E7574:  CMP             R5, #1
1E7576:  MOV.W           R8, #1
1E757A:  MOV.W           R10, #0
1E757E:  IT GT
1E7580:  MOVGT           R8, R5
1E7582:  CMP             R12, R9
1E7584:  BGT             loc_1E75A8
1E7586:  MOVW            R3, #0x8032
1E758A:  CMP             R12, R3
1E758C:  BGT             loc_1E75EC
1E758E:  MOVW            R3, #0x1401
1E7592:  CMP             R12, R3
1E7594:  BEQ             loc_1E7638
1E7596:  MOVW            R3, #0x1909
1E759A:  CMP             R12, R3
1E759C:  BEQ             loc_1E7646
1E759E:  MOVW            R3, #0x190A
1E75A2:  CMP             R12, R3
1E75A4:  BEQ             loc_1E7600
1E75A6:  B               loc_1E767C
1E75A8:  SUB.W           R9, R12, #0x8C00; switch 4 cases
1E75AC:  MOV             R3, LR
1E75AE:  MOV             LR, R4
1E75B0:  CMP.W           R9, #3
1E75B4:  BHI             def_1E75B6; jumptable 001E75B6 default case
1E75B6:  TBB.W           [PC,R9]; switch jump
1E75BA:  DCB 2; jump table for switch statement
1E75BB:  DCB 0x2A
1E75BC:  DCB 2
1E75BD:  DCB 0x2A
1E75BE:  CMP.W           R8, #8; jumptable 001E75B6 cases 35840,35842
1E75C2:  MOV.W           R4, #0x20 ; ' '
1E75C6:  IT GT
1E75C8:  LSLGT           R4, R5, #2
1E75CA:  B               loc_1E761A
1E75CC:  LDR             R4, [SP,#0x28+var_20]; jumptable 001E75B6 default case
1E75CE:  CMP             R4, #2
1E75D0:  BCS             loc_1E764C
1E75D2:  CMP.W           R8, #4
1E75D6:  MOV.W           R4, #4
1E75DA:  IT LE
1E75DC:  MOVLE           R5, R4
1E75DE:  CMP.W           R11, #4
1E75E2:  IT LE
1E75E4:  MOVLE           R6, R4
1E75E6:  MUL.W           R10, R6, R5
1E75EA:  B               loc_1E762E
1E75EC:  LDR             R3, [SP,#0x28+var_24]
1E75EE:  CMP             R3, #2
1E75F0:  BCC             loc_1E7600
1E75F2:  LDR             R3, [SP,#0x28+var_28]
1E75F4:  CMP             R3, #2
1E75F6:  BCC             loc_1E765C
1E75F8:  MOVW            R3, #0x8363
1E75FC:  CMP             R12, R3
1E75FE:  BNE             loc_1E767C
1E7600:  MOV             R6, R4
1E7602:  MUL.W           R4, R8, R11
1E7606:  MOV.W           R10, R4,LSL#1
1E760A:  MOV             R4, R6
1E760C:  B               loc_1E767C
1E760E:  CMP.W           R8, #0x10; jumptable 001E75B6 cases 35841,35843
1E7612:  MOV.W           R4, #0x20 ; ' '
1E7616:  IT GT
1E7618:  LSLGT           R4, R5, #1
1E761A:  CMP.W           R11, #8
1E761E:  MOV.W           R5, #8
1E7622:  IT LE
1E7624:  MOVLE           R6, R5
1E7626:  MULS            R4, R6
1E7628:  ADDS            R4, #7
1E762A:  MOV.W           R10, R4,LSR#3
1E762E:  MOV             R4, LR
1E7630:  MOVW            R9, #0x83F1
1E7634:  MOV             LR, R3
1E7636:  B               loc_1E767C
1E7638:  MOV             R6, R4
1E763A:  MUL.W           R4, R8, R11
1E763E:  MOV.W           R10, R4,LSL#2
1E7642:  MOV             R4, R6
1E7644:  B               loc_1E767C
1E7646:  MUL.W           R10, R11, R8
1E764A:  B               loc_1E767C
1E764C:  MOVW            R4, #0x8D64
1E7650:  CMP             R12, R4
1E7652:  MOV             R4, LR
1E7654:  MOVW            R9, #0x83F1
1E7658:  MOV             LR, R3
1E765A:  BNE             loc_1E767C
1E765C:  CMP.W           R8, #4
1E7660:  MOV.W           R3, #4
1E7664:  IT LE
1E7666:  MOVLE           R5, R3
1E7668:  CMP.W           R11, #4
1E766C:  IT LE
1E766E:  MOVLE           R6, R3
1E7670:  MOV             R3, R4
1E7672:  MUL.W           R4, R6, R5
1E7676:  MOV.W           R10, R4,LSR#1
1E767A:  MOV             R4, R3
1E767C:  ADDS            R2, #1
1E767E:  ADD             R0, R10
1E7680:  CMP             R1, R2
1E7682:  BNE.W           loc_1E7562
1E7686:  ADD             SP, SP, #0xC
1E7688:  POP.W           {R8-R11}
1E768C:  POP             {R4-R7,PC}
1E768E:  MOVS            R0, #0
1E7690:  B               loc_1E7686
