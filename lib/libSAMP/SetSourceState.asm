; =========================================================
; Game Engine Function: SetSourceState
; Address            : 0x1CD6C4 - 0x1CD880
; =========================================================

1CD6C4:  PUSH            {R4-R7,R11,LR}
1CD6C8:  ADD             R11, SP, #0x10
1CD6CC:  MOV             R4, R0
1CD6D0:  MOVW            R0, #0x1011
1CD6D4:  SUB             R0, R2, R0
1CD6D8:  MOV             R5, R1
1CD6DC:  CMP             R0, #3; switch 4 cases
1CD6E0:  BHI             def_1CD6F0; jumptable 001CD6F0 default case
1CD6E4:  ADR             R1, jpt_1CD6F0
1CD6E8:  MOV             R0, R0,LSL#2
1CD6EC:  LDR             R0, [R0,R1]
1CD6F0:  ADD             PC, R0, R1; switch jump
1CD6F4:  DCD loc_1CD704 - 0x1CD6F4; jump table for switch statement
1CD6F8:  DCD loc_1CD734 - 0x1CD6F4; jumptable 001CD6F0 case 1
1CD6FC:  DCD loc_1CD838 - 0x1CD6F4; jumptable 001CD6F0 case 2
1CD700:  DCD loc_1CD800 - 0x1CD6F4; jumptable 001CD6F0 case 3
1CD704:  LDR             R1, [R4,#0x5C]; jumptable 001CD6F0 case 0
1CD708:  MOVW            R0, #0x1011
1CD70C:  CMP             R1, R0
1CD710:  BEQ             loc_1CD82C
1CD714:  MOV             R1, #0
1CD718:  STR             R0, [R4,#0x5C]
1CD71C:  STR             R1, [R4,#0x64]
1CD720:  STR             R1, [R4,#0x68]
1CD724:  STR             R1, [R4,#0x74]
1CD728:  STRB            R1, [R4,#0xD8]
1CD72C:  STR             R1, [R4,#0xDC]
1CD730:  B               loc_1CD82C
1CD734:  LDR             R0, [R4,#0x6C]; jumptable 001CD6F0 case 1
1CD738:  MOV             R6, #0
1CD73C:  CMP             R0, #0
1CD740:  BNE             loc_1CD754
1CD744:  B               loc_1CD76C
1CD748:  LDR             R0, [R0,#4]
1CD74C:  CMP             R0, #0
1CD750:  BEQ             loc_1CD76C
1CD754:  LDR             R1, [R0]
1CD758:  CMP             R1, #0
1CD75C:  LDRNE           R1, [R1,#0xC]
1CD760:  CMPNE           R1, #0
1CD764:  BEQ             loc_1CD748
1CD768:  MOV             R6, #1
1CD76C:  LDR             R0, [R4,#0x5C]
1CD770:  MOVW            R7, #0x1012
1CD774:  CMP             R0, R7
1CD778:  BEQ             loc_1CD788
1CD77C:  ADD             R0, R4, #0xE0; int
1CD780:  MOV             R1, #0x1200; n
1CD784:  BL              sub_22178C
1CD788:  LDR             R0, [R4,#0x5C]
1CD78C:  MOVW            R1, #0x1013
1CD790:  STR             R7, [R4,#0x5C]
1CD794:  CMP             R0, R1
1CD798:  MOVNE           R0, #0
1CD79C:  STRNE           R0, [R4,#0x64]
1CD7A0:  STRNE           R0, [R4,#0x68]
1CD7A4:  STRNE           R0, [R4,#0x74]
1CD7A8:  LDR             R0, [R4,#0xC4]
1CD7AC:  CMN             R0, #1
1CD7B0:  MOVNE           R0, R4
1CD7B4:  BLNE            j_ApplyOffset
1CD7B8:  CMP             R6, #1
1CD7BC:  BNE             loc_1CD800; jumptable 001CD6F0 case 3
1CD7C0:  LDR             R0, [R5,#0xFC]
1CD7C4:  LDRB            R0, [R0,#4]
1CD7C8:  CMP             R0, #0
1CD7CC:  BEQ             loc_1CD800; jumptable 001CD6F0 case 3
1CD7D0:  LDR             R0, [R5,#0xE8]
1CD7D4:  CMP             R0, #1
1CD7D8:  BLT             loc_1CD860
1CD7DC:  LDR             R2, [R5,#0xE4]
1CD7E0:  MOV             R1, #0
1CD7E4:  LDR             R3, [R2,R1,LSL#2]
1CD7E8:  CMP             R3, R4
1CD7EC:  BEQ             loc_1CD864
1CD7F0:  ADD             R1, R1, #1
1CD7F4:  CMP             R1, R0
1CD7F8:  BLT             loc_1CD7E4
1CD7FC:  B               loc_1CD864
1CD800:  LDR             R0, [R4,#0x5C]; jumptable 001CD6F0 case 3
1CD804:  MOVW            R1, #0x1011
1CD808:  CMP             R0, R1
1CD80C:  BEQ             loc_1CD82C
1CD810:  MOVW            R0, #0x1014
1CD814:  MOV             R1, #0
1CD818:  STR             R0, [R4,#0x5C]
1CD81C:  LDR             R0, [R4,#0x70]
1CD820:  STRB            R1, [R4,#0xD8]
1CD824:  STR             R1, [R4,#0xDC]
1CD828:  STR             R0, [R4,#0x74]
1CD82C:  MOV             R0, #0xFFFFFFFF
1CD830:  STR             R0, [R4,#0xC4]
1CD834:  POP             {R4-R7,R11,PC}
1CD838:  LDR             R0, [R4,#0x5C]; jumptable 001CD6F0 case 2
1CD83C:  MOVW            R1, #0x1012
1CD840:  CMP             R0, R1
1CD844:  POPNE           {R4-R7,R11,PC}
1CD848:  MOV             R0, #0
1CD84C:  MOVW            R1, #0x1013
1CD850:  STRB            R0, [R4,#0xD8]
1CD854:  STR             R1, [R4,#0x5C]
1CD858:  STR             R0, [R4,#0xDC]
1CD85C:  POP             {R4-R7,R11,PC}
1CD860:  MOV             R1, #0
1CD864:  CMP             R1, R0
1CD868:  BNE             def_1CD6F0; jumptable 001CD6F0 default case
1CD86C:  LDR             R1, [R5,#0xE4]
1CD870:  ADD             R2, R0, #1
1CD874:  STR             R2, [R5,#0xE8]
1CD878:  STR             R4, [R1,R0,LSL#2]
1CD87C:  POP             {R4-R7,R11,PC}; jumptable 001CD6F0 default case
