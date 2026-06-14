; =========================================================
; Game Engine Function: sub_2085FC
; Address            : 0x2085FC - 0x208770
; =========================================================

2085FC:  PUSH            {R4-R7,LR}
2085FE:  ADD             R7, SP, #0xC
208600:  PUSH.W          {R8-R11}
208604:  SUBS            R4, R1, R0
208606:  MOV             R11, R0
208608:  CMP             R4, #3
20860A:  BLT             loc_208632
20860C:  LDR             R4, [R7,#arg_0]
20860E:  MOV             R11, R0
208610:  ANDS.W          R4, R4, #4
208614:  BEQ             loc_208632
208616:  LDRB            R4, [R0]
208618:  MOV             R11, R0
20861A:  CMP             R4, #0xEF
20861C:  BNE             loc_208632
20861E:  LDRB            R4, [R0,#1]
208620:  MOV             R11, R0
208622:  CMP             R4, #0xBB
208624:  BNE             loc_208632
208626:  LDRB            R4, [R0,#2]
208628:  MOV             R11, R0
20862A:  CMP             R4, #0xBF
20862C:  IT EQ
20862E:  ADDEQ.W         R11, R11, #3
208632:  MOV.W           R10, #0
208636:  MOV.W           R12, #0x1C0000
20863A:  B               loc_20875C
20863C:  LDRB.W          R6, [R11]
208640:  CMP             R6, R3
208642:  BHI.W           loc_208766
208646:  SXTB            R5, R6
208648:  CMP             R5, #0
20864A:  BMI             loc_208652
20864C:  ADD.W           R11, R11, #1
208650:  B               loc_208758
208652:  CMP             R6, #0xC2
208654:  BCC.W           loc_208766
208658:  CMP             R6, #0xDF
20865A:  BHI             loc_208688
20865C:  SUB.W           R5, R1, R11
208660:  CMP             R5, #2
208662:  BLT.W           loc_208766
208666:  LDRB.W          R5, [R11,#1]
20866A:  AND.W           R4, R5, #0xC0
20866E:  CMP             R4, #0x80
208670:  BNE             loc_208766
208672:  AND.W           R4, R6, #0x1F
208676:  AND.W           R5, R5, #0x3F ; '?'
20867A:  ORR.W           R4, R5, R4,LSL#6
20867E:  CMP             R4, R3
208680:  BHI             loc_208766
208682:  ADD.W           R11, R11, #2
208686:  B               loc_208758
208688:  CMP             R6, #0xEF
20868A:  BHI             loc_2086AE
20868C:  SUB.W           R4, R1, R11
208690:  CMP             R4, #3
208692:  BLT             loc_208766
208694:  LDRB.W          R8, [R11,#1]
208698:  CMP             R6, #0xED
20869A:  LDRB.W          LR, [R11,#2]
20869E:  BEQ             loc_2086E2
2086A0:  CMP             R6, #0xE0
2086A2:  BNE             loc_2086E8
2086A4:  AND.W           R4, R8, #0xE0
2086A8:  CMP             R4, #0xA0
2086AA:  BEQ             loc_2086F0
2086AC:  B               loc_208766
2086AE:  CMP             R6, #0xF4
2086B0:  BHI             loc_208766
2086B2:  SUB.W           R4, R1, R11
2086B6:  CMP             R4, #4
2086B8:  BLT             loc_208766
2086BA:  SUB.W           R4, R2, R10
2086BE:  CMP             R4, #2
2086C0:  BCC             loc_208766
2086C2:  LDRB.W          R9, [R11,#1]
2086C6:  CMP             R6, #0xF4
2086C8:  LDRB.W          R8, [R11,#2]
2086CC:  LDRB.W          LR, [R11,#3]
2086D0:  BEQ             loc_208714
2086D2:  CMP             R6, #0xF0
2086D4:  BNE             loc_20871A
2086D6:  ADD.W           R4, R9, #0x70 ; 'p'
2086DA:  UXTB            R4, R4
2086DC:  CMP             R4, #0x30 ; '0'
2086DE:  BCC             loc_208722
2086E0:  B               loc_208766
2086E2:  AND.W           R4, R8, #0xE0
2086E6:  B               loc_2086EC
2086E8:  AND.W           R4, R8, #0xC0
2086EC:  CMP             R4, #0x80
2086EE:  BNE             loc_208766
2086F0:  AND.W           R4, LR, #0xC0
2086F4:  CMP             R4, #0x80
2086F6:  BNE             loc_208766
2086F8:  LSLS            R5, R6, #0xC
2086FA:  AND.W           R4, R8, #0x3F ; '?'
2086FE:  UXTH            R5, R5
208700:  ORR.W           R4, R5, R4,LSL#6
208704:  AND.W           R5, LR, #0x3F ; '?'
208708:  ADD             R4, R5
20870A:  CMP             R4, R3
20870C:  BHI             loc_208766
20870E:  ADD.W           R11, R11, #3
208712:  B               loc_208758
208714:  AND.W           R4, R9, #0xF0
208718:  B               loc_20871E
20871A:  AND.W           R4, R9, #0xC0
20871E:  CMP             R4, #0x80
208720:  BNE             loc_208766
208722:  AND.W           R4, R8, #0xC0
208726:  CMP             R4, #0x80
208728:  ITT EQ
20872A:  ANDEQ.W         R4, LR, #0xC0
20872E:  CMPEQ           R4, #0x80
208730:  BNE             loc_208766
208732:  AND.W           R5, R9, #0x3F ; '?'
208736:  AND.W           R4, R12, R6,LSL#18
20873A:  ORR.W           R4, R4, R5,LSL#12
20873E:  AND.W           R5, R8, #0x3F ; '?'
208742:  ORR.W           R4, R4, R5,LSL#6
208746:  AND.W           R5, LR, #0x3F ; '?'
20874A:  ADD             R4, R5
20874C:  CMP             R4, R3
20874E:  BHI             loc_208766
208750:  ADD.W           R11, R11, #4
208754:  ADD.W           R10, R10, #1
208758:  ADD.W           R10, R10, #1
20875C:  CMP             R11, R1
20875E:  IT CC
208760:  CMPCC           R10, R2
208762:  BCC.W           loc_20863C
208766:  SUB.W           R0, R11, R0
20876A:  POP.W           {R8-R11}
20876E:  POP             {R4-R7,PC}
