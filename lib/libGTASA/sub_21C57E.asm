; =========================================================
; Game Engine Function: sub_21C57E
; Address            : 0x21C57E - 0x21C796
; =========================================================

21C57E:  PUSH            {R4-R7,LR}
21C580:  ADD             R7, SP, #0xC
21C582:  PUSH.W          {R8-R11}
21C586:  SUB             SP, SP, #0xC
21C588:  LDRD.W          R11, LR, [R7,#arg_4]
21C58C:  STR             R0, [R1]
21C58E:  LDR.W           R8, [R0,#0x18]
21C592:  CMP.W           R8, #0
21C596:  BEQ             loc_21C5C4
21C598:  ADD.W           R9, R0, #0x1C
21C59C:  MOVS            R6, #0
21C59E:  LDR.W           R4, [R9,R6,LSL#2]
21C5A2:  LDR             R5, [R4,#0x1C]
21C5A4:  CMP             R5, #0
21C5A6:  ITTT NE
21C5A8:  MOVNE           R5, R4
21C5AA:  LDRNE.W         R10, [R5,#0x10]!
21C5AE:  CMPNE.W         R10, #0
21C5B2:  BEQ             loc_21C5BE
21C5B4:  LDR.W           R12, [R4,#0x14]!
21C5B8:  CMP.W           R12, #0
21C5BC:  BNE             loc_21C5F0
21C5BE:  ADDS            R6, #1
21C5C0:  CMP             R6, R8
21C5C2:  BCC             loc_21C59E
21C5C4:  MOVS            R0, #0
21C5C6:  STR             R0, [R2]
21C5C8:  LDR.W           R10, [R1]
21C5CC:  LDR             R2, [R7,#arg_0]
21C5CE:  LDRH.W          R0, [R10,#0x28]
21C5D2:  STRH            R0, [R2]
21C5D4:  LDR             R0, [R1]
21C5D6:  LDRH            R0, [R0,#0x2A]
21C5D8:  STRH.W          R0, [R11]
21C5DC:  LDR             R0, [R1]
21C5DE:  LDRH            R0, [R0,#0x2C]
21C5E0:  STRH.W          R0, [LR]
21C5E4:  MOVS            R0, #0
21C5E6:  STR             R0, [R3]
21C5E8:  ADD             SP, SP, #0xC
21C5EA:  POP.W           {R8-R11}
21C5EE:  POP             {R4-R7,PC}
21C5F0:  CMP             R10, R0
21C5F2:  IT EQ
21C5F4:  MOVEQ           R5, R4
21C5F6:  LDR.W           R9, [R5]
21C5FA:  STR.W           R9, [R2]
21C5FE:  LDR.W           R10, [R1]
21C602:  CMP.W           R9, #0
21C606:  BEQ             loc_21C5CC
21C608:  LDR.W           R8, [R9,#0x18]
21C60C:  CMP.W           R8, #0
21C610:  BEQ             loc_21C638
21C612:  MOVS            R6, #0
21C614:  ADD.W           R0, R9, R6,LSL#2
21C618:  LDR             R4, [R0,#0x1C]
21C61A:  LDR             R0, [R4,#0x1C]
21C61C:  CMP             R0, #0
21C61E:  ITTT NE
21C620:  MOVNE           R5, R4
21C622:  LDRNE.W         R12, [R5,#0x10]!
21C626:  CMPNE           R12, R10
21C628:  BEQ             loc_21C632
21C62A:  LDR.W           R0, [R4,#0x14]!
21C62E:  CMP             R0, R10
21C630:  BNE             loc_21C686
21C632:  ADDS            R6, #1
21C634:  CMP             R6, R8
21C636:  BCC             loc_21C614
21C638:  MOVS            R0, #0
21C63A:  STR             R0, [R3]
21C63C:  LDR             R3, [R2]
21C63E:  LDR.W           R9, [R1]
21C642:  LDR.W           R8, [R9,#0x18]
21C646:  CMP.W           R8, #0
21C64A:  BEQ             loc_21C67C
21C64C:  LDR             R6, [R3,#0x18]
21C64E:  ADD.W           R4, R3, #0x28 ; '('
21C652:  MOV.W           R12, #0
21C656:  CBZ             R6, loc_21C66E
21C658:  ADD.W           R0, R9, R12,LSL#1
21C65C:  MOVS            R5, #0
21C65E:  LDRH            R0, [R0,#0x28]
21C660:  LDRH.W          R3, [R4,R5,LSL#1]
21C664:  CMP             R0, R3
21C666:  BEQ             loc_21C676
21C668:  ADDS            R5, #1
21C66A:  CMP             R5, R6
21C66C:  BCC             loc_21C660
21C66E:  ADD.W           R12, R12, #1
21C672:  CMP             R12, R8
21C674:  BCC             loc_21C656
21C676:  ADD.W           R0, R9, R12,LSL#1
21C67A:  B               loc_21C70C
21C67C:  MOV.W           R12, #0
21C680:  ADD.W           R0, R9, R12,LSL#1
21C684:  B               loc_21C70C
21C686:  CMP             R12, R9
21C688:  IT EQ
21C68A:  MOVEQ           R5, R4
21C68C:  LDR             R0, [R5]
21C68E:  STR             R0, [R3]
21C690:  LDR             R3, [R2]
21C692:  CMP             R0, #0
21C694:  LDR.W           R9, [R1]
21C698:  STR             R0, [SP,#0x28+var_20]
21C69A:  BEQ             loc_21C642
21C69C:  LDR.W           R4, [R9,#0x18]
21C6A0:  CMP             R4, #0
21C6A2:  MOV             R0, R4
21C6A4:  STR             R0, [SP,#0x28+var_28]
21C6A6:  BEQ             loc_21C706
21C6A8:  LDR             R0, [SP,#0x28+var_20]
21C6AA:  LDR.W           R12, [R3,#0x18]
21C6AE:  ADD.W           R6, R0, #0x28 ; '('
21C6B2:  MOVS            R0, #0
21C6B4:  CMP.W           R12, #0
21C6B8:  STR             R0, [SP,#0x28+var_24]
21C6BA:  BEQ             loc_21C6F6
21C6BC:  LDR             R0, [SP,#0x28+var_24]
21C6BE:  MOV.W           R8, #0
21C6C2:  ADD.W           R0, R9, R0,LSL#1
21C6C6:  LDRH            R4, [R0,#0x28]
21C6C8:  ADD.W           R0, R3, R8,LSL#1
21C6CC:  LDRH            R0, [R0,#0x28]
21C6CE:  CMP             R4, R0
21C6D0:  BNE             loc_21C6EE
21C6D2:  LDR             R0, [SP,#0x28+var_20]
21C6D4:  LDR.W           R10, [R0,#0x18]
21C6D8:  CMP.W           R10, #0
21C6DC:  BEQ             loc_21C6EE
21C6DE:  MOVS            R0, #0
21C6E0:  LDRH.W          R5, [R6,R0,LSL#1]
21C6E4:  CMP             R4, R5
21C6E6:  BEQ             loc_21C702
21C6E8:  ADDS            R0, #1
21C6EA:  CMP             R0, R10
21C6EC:  BCC             loc_21C6E0
21C6EE:  ADD.W           R8, R8, #1
21C6F2:  CMP             R8, R12
21C6F4:  BCC             loc_21C6C8
21C6F6:  LDR             R0, [SP,#0x28+var_24]
21C6F8:  LDR             R4, [SP,#0x28+var_28]
21C6FA:  ADDS            R0, #1
21C6FC:  CMP             R0, R4
21C6FE:  BCC             loc_21C6B4
21C700:  B               loc_21C708
21C702:  LDR             R0, [SP,#0x28+var_24]
21C704:  B               loc_21C708
21C706:  MOVS            R0, #0
21C708:  ADD.W           R0, R9, R0,LSL#1
21C70C:  ADDS            R0, #0x28 ; '('
21C70E:  LDRH.W          R10, [R0]
21C712:  STRH.W          R10, [LR]
21C716:  LDR.W           R12, [R1]
21C71A:  LDR.W           R9, [R12,#0x18]
21C71E:  CMP.W           R9, #0
21C722:  BEQ             loc_21C758
21C724:  LDR.W           R8, [R2]
21C728:  MOVS            R2, #0
21C72A:  ADD.W           R4, R8, #0x28 ; '('
21C72E:  ADD.W           R3, R12, R2,LSL#1
21C732:  LDRH            R6, [R3,#0x28]
21C734:  CMP             R6, R10
21C736:  ITT NE
21C738:  LDRNE.W         R5, [R8,#0x18]
21C73C:  CMPNE           R5, #0
21C73E:  BEQ             loc_21C750
21C740:  MOVS            R3, #0
21C742:  LDRH.W          R0, [R4,R3,LSL#1]
21C746:  CMP             R6, R0
21C748:  BEQ             loc_21C75A
21C74A:  ADDS            R3, #1
21C74C:  CMP             R3, R5
21C74E:  BCC             loc_21C742
21C750:  ADDS            R2, #1
21C752:  CMP             R2, R9
21C754:  BCC             loc_21C72E
21C756:  B               loc_21C75A
21C758:  MOVS            R2, #0
21C75A:  ADD.W           R0, R12, R2,LSL#1
21C75E:  LDRH            R2, [R0,#0x28]
21C760:  STRH.W          R2, [R11]
21C764:  LDR             R0, [R1]
21C766:  LDR             R3, [R0,#0x18]
21C768:  CBZ             R3, loc_21C788
21C76A:  LDRH.W          R6, [LR]
21C76E:  ADD.W           R5, R0, #0x28 ; '('
21C772:  MOVS            R1, #0
21C774:  LDRH.W          R4, [R5,R1,LSL#1]
21C778:  CMP             R4, R2
21C77A:  IT NE
21C77C:  CMPNE           R4, R6
21C77E:  BNE             loc_21C78A
21C780:  ADDS            R1, #1
21C782:  CMP             R1, R3
21C784:  BCC             loc_21C774
21C786:  B               loc_21C78A
21C788:  MOVS            R1, #0
21C78A:  ADD.W           R0, R0, R1,LSL#1
21C78E:  LDR             R1, [R7,#arg_0]
21C790:  LDRH            R0, [R0,#0x28]
21C792:  STRH            R0, [R1]
21C794:  B               loc_21C5E8
