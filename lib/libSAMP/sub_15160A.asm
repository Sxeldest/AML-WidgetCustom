; =========================================================
; Game Engine Function: sub_15160A
; Address            : 0x15160A - 0x151740
; =========================================================

15160A:  PUSH            {R4-R7,LR}
15160C:  ADD             R7, SP, #0xC
15160E:  PUSH.W          {R8-R11}
151612:  SUB             SP, SP, #0xC
151614:  LDR             R6, [R1,#4]
151616:  MOV             R5, R2
151618:  MOV             R2, R0
15161A:  MOV.W           R0, #0x55555555
15161E:  MOV             R9, R1
151620:  MOV.W           R1, #0x33333333
151624:  AND.W           R0, R0, R6,LSR#1
151628:  LDR.W           R10, [R5,#4]
15162C:  SUBS            R0, R6, R0
15162E:  AND.W           R1, R1, R0,LSR#2
151632:  BIC.W           R0, R0, #0xCCCCCCCC
151636:  ADD             R0, R1
151638:  MOV.W           R1, #0x1010101
15163C:  ADD.W           R0, R0, R0,LSR#4
151640:  BIC.W           R0, R0, #0xF0F0F0F0
151644:  MULS            R0, R1
151646:  MOV.W           R8, R0,LSR#24
15164A:  CMP.W           R8, #1
15164E:  BHI             loc_151658
151650:  SUBS            R0, R6, #1
151652:  AND.W           R10, R10, R0
151656:  B               loc_15166A
151658:  CMP             R10, R6
15165A:  BCC             loc_15166A
15165C:  MOV             R0, R10
15165E:  MOV             R1, R6
151660:  MOV             R4, R2
151662:  BLX             sub_221798
151666:  MOV             R2, R4
151668:  MOV             R10, R1
15166A:  LDR.W           R11, [R9]
15166E:  LDR.W           R0, [R11,R10,LSL#2]
151672:  MOV             R4, R0
151674:  LDR             R0, [R0]
151676:  CMP             R0, R5
151678:  BNE             loc_151672
15167A:  ADD.W           R12, R9, #8
15167E:  CMP             R4, R12
151680:  BEQ             loc_1516A8
151682:  LDR             R0, [R4,#4]
151684:  CMP.W           R8, #1
151688:  BHI             loc_151690
15168A:  SUBS            R1, R6, #1
15168C:  ANDS            R0, R1
15168E:  B               loc_1516A4
151690:  CMP             R0, R6
151692:  BCC             loc_1516A4
151694:  MOV             R1, R6
151696:  STRD.W          R12, R2, [SP,#0x28+var_24]
15169A:  BLX             sub_221798
15169E:  LDRD.W          R12, R2, [SP,#0x28+var_24]
1516A2:  MOV             R0, R1
1516A4:  CMP             R0, R10
1516A6:  BEQ             loc_1516D8
1516A8:  LDR             R0, [R5]
1516AA:  CBZ             R0, loc_1516D2
1516AC:  LDR             R0, [R0,#4]
1516AE:  CMP.W           R8, #1
1516B2:  BHI             loc_1516BA
1516B4:  SUBS            R1, R6, #1
1516B6:  ANDS            R0, R1
1516B8:  B               loc_1516CE
1516BA:  CMP             R0, R6
1516BC:  BCC             loc_1516CE
1516BE:  MOV             R1, R6
1516C0:  STRD.W          R12, R2, [SP,#0x28+var_24]
1516C4:  BLX             sub_221798
1516C8:  LDRD.W          R12, R2, [SP,#0x28+var_24]
1516CC:  MOV             R0, R1
1516CE:  CMP             R0, R10
1516D0:  BEQ             loc_1516D8
1516D2:  MOVS            R0, #0
1516D4:  STR.W           R0, [R11,R10,LSL#2]
1516D8:  LDR.W           R11, [R5]
1516DC:  MOVS            R3, #0
1516DE:  CMP.W           R11, #0
1516E2:  BEQ             loc_1516F4
1516E4:  LDR.W           R0, [R11,#4]
1516E8:  CMP.W           R8, #1
1516EC:  BHI             loc_1516FA
1516EE:  SUBS            R1, R6, #1
1516F0:  ANDS            R0, R1
1516F2:  B               loc_151710
1516F4:  MOV.W           R11, #0
1516F8:  B               loc_151720
1516FA:  CMP             R0, R6
1516FC:  BCC             loc_151710
1516FE:  MOV             R1, R6
151700:  MOV             R8, R2
151702:  MOV             R6, R12
151704:  BLX             sub_221798
151708:  MOVS            R3, #0
15170A:  MOV             R12, R6
15170C:  MOV             R2, R8
15170E:  MOV             R0, R1
151710:  CMP             R0, R10
151712:  ITTT NE
151714:  LDRNE.W         R1, [R9]
151718:  STRNE.W         R4, [R1,R0,LSL#2]
15171C:  LDRNE.W         R11, [R5]
151720:  MOVS            R0, #1
151722:  STR.W           R11, [R4]
151726:  STRB            R0, [R2,#8]
151728:  LDR.W           R0, [R9,#0xC]
15172C:  STRD.W          R5, R12, [R2]
151730:  SUBS            R0, #1
151732:  STR             R3, [R5]
151734:  STR.W           R0, [R9,#0xC]
151738:  ADD             SP, SP, #0xC
15173A:  POP.W           {R8-R11}
15173E:  POP             {R4-R7,PC}
