; =========================================================
; Game Engine Function: sub_8C628
; Address            : 0x8C628 - 0x8C7A2
; =========================================================

8C628:  PUSH            {R4-R7,LR}
8C62A:  ADD             R7, SP, #0xC
8C62C:  PUSH.W          {R8}
8C630:  MOV             R4, R0
8C632:  LDR             R0, =(dword_1ACF68 - 0x8C640)
8C634:  MOVW            R1, #0x1AB4
8C638:  MOVW            R2, #0x19D0
8C63C:  ADD             R0, PC; dword_1ACF68
8C63E:  MOV             R8, R0
8C640:  LDR             R0, [R0]
8C642:  ADDS            R6, R0, R2
8C644:  LDR             R1, [R0,R1]
8C646:  CMP             R1, R4
8C648:  BEQ             loc_8C67E
8C64A:  STR.W           R4, [R6,#0xE4]
8C64E:  CBZ             R4, loc_8C66A
8C650:  LDRB.W          R0, [R6,#0x147]
8C654:  MOVS            R1, #0
8C656:  CMP             R0, #0
8C658:  ITT NE
8C65A:  MOVNE           R0, #1
8C65C:  STRBNE.W        R0, [R6,#0x145]
8C660:  LDR.W           R0, [R4,#0x30C]
8C664:  STRB.W          R1, [R6,#0x149]
8C668:  B               loc_8C670
8C66A:  MOVS            R0, #0
8C66C:  STRB.W          R0, [R6,#0x149]
8C670:  MOVS            R1, #0
8C672:  STR.W           R0, [R6,#0xE8]
8C676:  STRB.W          R1, [R6,#0x144]
8C67A:  STR.W           R1, [R6,#0x13C]
8C67E:  MOV             R0, R4
8C680:  MOVS            R1, #0
8C682:  BL              sub_8CC0C
8C686:  CMP             R4, #0
8C688:  BEQ             loc_8C760
8C68A:  LDR.W           R5, [R4,#0x2FC]
8C68E:  CMP             R5, #0
8C690:  IT EQ
8C692:  MOVEQ           R5, R4
8C694:  LDR.W           R12, [R5,#8]
8C698:  MOVS.W          R1, R12,LSL#5
8C69C:  BPL             loc_8C6DC
8C69E:  LDR             R1, [R6]
8C6A0:  CBZ             R1, loc_8C6DC
8C6A2:  LDR             R1, [R6,#0x24]
8C6A4:  CMP             R1, #0
8C6A6:  ITT NE
8C6A8:  LDRNE.W         R1, [R1,#0x2FC]
8C6AC:  CMPNE           R1, R5
8C6AE:  BEQ             loc_8C6DC
8C6B0:  LDR.W           R1, [R8]
8C6B4:  MOVW            R2, #0x19D0
8C6B8:  MOV             R0, R8
8C6BA:  LDR             R3, [R1,R2]
8C6BC:  ADD             R1, R2
8C6BE:  CMP             R3, #0
8C6C0:  IT NE
8C6C2:  MOVNE           R3, #1
8C6C4:  STRB            R3, [R1,#0xC]
8C6C6:  ITTT NE
8C6C8:  MOVNE           R2, #0
8C6CA:  STRHNE          R2, [R1,#0xE]
8C6CC:  STRNE           R2, [R1,#8]
8C6CE:  MOVS            R2, #0
8C6D0:  STRD.W          R2, R2, [R1,#0x14]
8C6D4:  STR             R2, [R1]
8C6D6:  STR             R2, [R1,#0x24]
8C6D8:  STRB            R2, [R1,#0xD]
8C6DA:  STRB            R2, [R1,#0x10]
8C6DC:  LDR.W           R1, [R8]
8C6E0:  MOVW            R3, #0x1978
8C6E4:  MOV             R0, R8
8C6E6:  ADDS            R4, R1, R3
8C6E8:  LDR             R2, [R1,R3]
8C6EA:  LDR             R1, [R4,#8]
8C6EC:  ADD.W           R1, R1, R2,LSL#2
8C6F0:  LDR.W           R3, [R1,#-4]
8C6F4:  CMP             R3, R5
8C6F6:  BEQ             loc_8C712
8C6F8:  CMP             R2, #2
8C6FA:  BLT             loc_8C712
8C6FC:  SUBS            R3, R2, #1
8C6FE:  MOVS            R2, #0
8C700:  ADDS            R6, R1, R2
8C702:  LDR.W           R0, [R6,#-8]
8C706:  CMP             R0, R5
8C708:  BEQ             loc_8C71A
8C70A:  SUBS            R3, #1
8C70C:  SUBS            R2, #4
8C70E:  CMP             R3, #0
8C710:  BGT             loc_8C700
8C712:  MOVS.W          R0, R12,LSL#18
8C716:  BPL             loc_8C73E
8C718:  B               loc_8C760
8C71A:  SUB.W           R0, R6, #8; dest
8C71E:  SUBS            R1, R6, #4; src
8C720:  RSB.W           R2, R2, #4; n
8C724:  BLX             j_memmove
8C728:  LDR             R0, [R4]
8C72A:  LDR             R1, [R4,#8]
8C72C:  LDR.W           R12, [R5,#8]
8C730:  ADD.W           R0, R1, R0,LSL#2
8C734:  STR.W           R5, [R0,#-4]
8C738:  MOVS.W          R0, R12,LSL#18
8C73C:  BMI             loc_8C760
8C73E:  LDR.W           R0, [R8]
8C742:  MOVW            R2, #0x196C
8C746:  ADDS            R4, R0, R2
8C748:  LDR             R1, [R0,R2]
8C74A:  LDR             R0, [R4,#8]
8C74C:  ADD.W           R0, R0, R1,LSL#2
8C750:  LDR.W           R2, [R0,#-4]
8C754:  CMP             R2, R5
8C756:  ITT NE
8C758:  LDRNE.W         R2, [R2,#0x2FC]
8C75C:  CMPNE           R2, R5
8C75E:  BNE             loc_8C766
8C760:  POP.W           {R8}
8C764:  POP             {R4-R7,PC}
8C766:  CMP             R1, #2
8C768:  BLT             loc_8C760
8C76A:  SUBS            R1, #1
8C76C:  MOVS            R2, #0
8C76E:  ADDS            R3, R0, R2
8C770:  LDR.W           R6, [R3,#-8]
8C774:  CMP             R6, R5
8C776:  BEQ             loc_8C782
8C778:  SUBS            R1, #1
8C77A:  SUBS            R2, #4
8C77C:  CMP             R1, #0
8C77E:  BGT             loc_8C76E
8C780:  B               loc_8C760
8C782:  SUB.W           R0, R3, #8; dest
8C786:  SUBS            R1, R3, #4; src
8C788:  RSB.W           R2, R2, #4; n
8C78C:  BLX             j_memmove
8C790:  LDR             R0, [R4]
8C792:  LDR             R1, [R4,#8]
8C794:  ADD.W           R0, R1, R0,LSL#2
8C798:  STR.W           R5, [R0,#-4]
8C79C:  POP.W           {R8}
8C7A0:  POP             {R4-R7,PC}
