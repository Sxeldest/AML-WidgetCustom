; =========================================================
; Game Engine Function: sub_10C718
; Address            : 0x10C718 - 0x10C84E
; =========================================================

10C718:  PUSH            {R4-R7,LR}
10C71A:  ADD             R7, SP, #0xC
10C71C:  PUSH.W          {R8-R11}
10C720:  SUB             SP, SP, #0xC
10C722:  LDR             R6, [R1,#4]
10C724:  MOV             R5, R2
10C726:  MOV             R2, R0
10C728:  MOV.W           R0, #0x55555555
10C72C:  MOV             R9, R1
10C72E:  MOV.W           R1, #0x33333333
10C732:  AND.W           R0, R0, R6,LSR#1
10C736:  LDR.W           R10, [R5,#4]
10C73A:  SUBS            R0, R6, R0
10C73C:  AND.W           R1, R1, R0,LSR#2
10C740:  BIC.W           R0, R0, #0xCCCCCCCC
10C744:  ADD             R0, R1
10C746:  MOV.W           R1, #0x1010101
10C74A:  ADD.W           R0, R0, R0,LSR#4
10C74E:  BIC.W           R0, R0, #0xF0F0F0F0
10C752:  MULS            R0, R1
10C754:  MOV.W           R8, R0,LSR#24
10C758:  CMP.W           R8, #1
10C75C:  BHI             loc_10C766
10C75E:  SUBS            R0, R6, #1
10C760:  AND.W           R10, R10, R0
10C764:  B               loc_10C778
10C766:  CMP             R10, R6
10C768:  BCC             loc_10C778
10C76A:  MOV             R0, R10
10C76C:  MOV             R1, R6
10C76E:  MOV             R4, R2
10C770:  BLX             sub_221798
10C774:  MOV             R2, R4
10C776:  MOV             R10, R1
10C778:  LDR.W           R11, [R9]
10C77C:  LDR.W           R0, [R11,R10,LSL#2]
10C780:  MOV             R4, R0
10C782:  LDR             R0, [R0]
10C784:  CMP             R0, R5
10C786:  BNE             loc_10C780
10C788:  ADD.W           R12, R9, #8
10C78C:  CMP             R4, R12
10C78E:  BEQ             loc_10C7B6
10C790:  LDR             R0, [R4,#4]
10C792:  CMP.W           R8, #1
10C796:  BHI             loc_10C79E
10C798:  SUBS            R1, R6, #1
10C79A:  ANDS            R0, R1
10C79C:  B               loc_10C7B2
10C79E:  CMP             R0, R6
10C7A0:  BCC             loc_10C7B2
10C7A2:  MOV             R1, R6
10C7A4:  STRD.W          R12, R2, [SP,#0x28+var_24]
10C7A8:  BLX             sub_221798
10C7AC:  LDRD.W          R12, R2, [SP,#0x28+var_24]
10C7B0:  MOV             R0, R1
10C7B2:  CMP             R0, R10
10C7B4:  BEQ             loc_10C7E6
10C7B6:  LDR             R0, [R5]
10C7B8:  CBZ             R0, loc_10C7E0
10C7BA:  LDR             R0, [R0,#4]
10C7BC:  CMP.W           R8, #1
10C7C0:  BHI             loc_10C7C8
10C7C2:  SUBS            R1, R6, #1
10C7C4:  ANDS            R0, R1
10C7C6:  B               loc_10C7DC
10C7C8:  CMP             R0, R6
10C7CA:  BCC             loc_10C7DC
10C7CC:  MOV             R1, R6
10C7CE:  STRD.W          R12, R2, [SP,#0x28+var_24]
10C7D2:  BLX             sub_221798
10C7D6:  LDRD.W          R12, R2, [SP,#0x28+var_24]
10C7DA:  MOV             R0, R1
10C7DC:  CMP             R0, R10
10C7DE:  BEQ             loc_10C7E6
10C7E0:  MOVS            R0, #0
10C7E2:  STR.W           R0, [R11,R10,LSL#2]
10C7E6:  LDR.W           R11, [R5]
10C7EA:  MOVS            R3, #0
10C7EC:  CMP.W           R11, #0
10C7F0:  BEQ             loc_10C802
10C7F2:  LDR.W           R0, [R11,#4]
10C7F6:  CMP.W           R8, #1
10C7FA:  BHI             loc_10C808
10C7FC:  SUBS            R1, R6, #1
10C7FE:  ANDS            R0, R1
10C800:  B               loc_10C81E
10C802:  MOV.W           R11, #0
10C806:  B               loc_10C82E
10C808:  CMP             R0, R6
10C80A:  BCC             loc_10C81E
10C80C:  MOV             R1, R6
10C80E:  MOV             R8, R2
10C810:  MOV             R6, R12
10C812:  BLX             sub_221798
10C816:  MOVS            R3, #0
10C818:  MOV             R12, R6
10C81A:  MOV             R2, R8
10C81C:  MOV             R0, R1
10C81E:  CMP             R0, R10
10C820:  ITTT NE
10C822:  LDRNE.W         R1, [R9]
10C826:  STRNE.W         R4, [R1,R0,LSL#2]
10C82A:  LDRNE.W         R11, [R5]
10C82E:  MOVS            R0, #1
10C830:  STR.W           R11, [R4]
10C834:  STRB            R0, [R2,#8]
10C836:  LDR.W           R0, [R9,#0xC]
10C83A:  STRD.W          R5, R12, [R2]
10C83E:  SUBS            R0, #1
10C840:  STR             R3, [R5]
10C842:  STR.W           R0, [R9,#0xC]
10C846:  ADD             SP, SP, #0xC
10C848:  POP.W           {R8-R11}
10C84C:  POP             {R4-R7,PC}
