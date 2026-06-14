; =========================================================
; Game Engine Function: sub_2087E4
; Address            : 0x2087E4 - 0x2088E2
; =========================================================

2087E4:  PUSH            {R4-R7,LR}
2087E6:  ADD             R7, SP, #0xC
2087E8:  PUSH.W          {R8-R11}
2087EC:  STR             R0, [R2]
2087EE:  LDRB            R0, [R7,#arg_C]
2087F0:  LDR             R4, [R7,#arg_4]
2087F2:  LDR.W           R11, [R7,#arg_0]
2087F6:  LSLS            R0, R0, #0x1E
2087F8:  STR             R3, [R4]
2087FA:  BPL             loc_208824
2087FC:  SUB.W           R0, R11, R3
208800:  CMP             R0, #3
208802:  BGE             loc_208808
208804:  MOVS            R0, #1
208806:  B               loc_2088DC
208808:  ADDS            R0, R3, #1
20880A:  STR             R0, [R4]
20880C:  MOVS            R0, #0xEF
20880E:  STRB            R0, [R3]
208810:  LDR             R0, [R4]
208812:  ADDS            R3, R0, #1
208814:  STR             R3, [R4]
208816:  MOVS            R3, #0xBB
208818:  STRB            R3, [R0]
20881A:  LDR             R0, [R4]
20881C:  ADDS            R3, R0, #1
20881E:  STR             R3, [R4]
208820:  MOVS            R3, #0xBF
208822:  STRB            R3, [R0]
208824:  LDR.W           R10, [R7,#arg_8]
208828:  MOVW            R6, #0x7FF
20882C:  LDR             R0, [R2]
20882E:  MOV.W           R12, #0
208832:  MOV.W           LR, #0xC0
208836:  MOV.W           R8, #2
20883A:  CMP             R0, R1
20883C:  BCS             loc_2088DA
20883E:  LDR             R5, [R0]
208840:  MOVS            R0, #2
208842:  BIC.W           R3, R5, R6
208846:  CMP.W           R3, #0xD800
20884A:  BEQ             loc_2088DC
20884C:  CMP             R5, R10
20884E:  BHI             loc_2088DC
208850:  CMP             R5, #0x7F
208852:  BHI             loc_208860
208854:  LDR             R0, [R4]
208856:  SUB.W           R3, R11, R0
20885A:  CMP             R3, #1
20885C:  BGE             loc_2088CC
20885E:  B               loc_208804
208860:  CMP.W           R12, R5,LSR#11
208864:  BNE             loc_20887A
208866:  LDR             R0, [R4]
208868:  SUB.W           R3, R11, R0
20886C:  CMP             R3, #2
20886E:  BLT             loc_208804
208870:  ADDS            R3, R0, #1
208872:  STR             R3, [R4]
208874:  ORR.W           R3, LR, R5,LSR#6
208878:  B               loc_2088C4
20887A:  LDR             R0, [R4]
20887C:  CMP.W           R12, R5,LSR#16
208880:  SUB.W           R9, R11, R0
208884:  BNE             loc_208898
208886:  CMP.W           R9, #3
20888A:  BLT             loc_208804
20888C:  ADDS            R3, R0, #1
20888E:  STR             R3, [R4]
208890:  MOVS            R3, #0xE0
208892:  ORR.W           R3, R3, R5,LSR#12
208896:  B               loc_2088B6
208898:  CMP.W           R9, #4
20889C:  BLT             loc_208804
20889E:  ADDS            R3, R0, #1
2088A0:  STR             R3, [R4]
2088A2:  MOVS            R3, #0xF0
2088A4:  ORR.W           R3, R3, R5,LSR#18
2088A8:  STRB            R3, [R0]
2088AA:  LDR             R0, [R4]
2088AC:  ADDS            R3, R0, #1
2088AE:  STR             R3, [R4]
2088B0:  LSRS            R3, R5, #0xC
2088B2:  BFI.W           R3, R8, #6, #0x1A
2088B6:  STRB            R3, [R0]
2088B8:  LDR             R0, [R4]
2088BA:  ADDS            R3, R0, #1
2088BC:  STR             R3, [R4]
2088BE:  LSRS            R3, R5, #6
2088C0:  BFI.W           R3, R8, #6, #0x1A
2088C4:  STRB            R3, [R0]
2088C6:  BFI.W           R5, R8, #6, #0x1A
2088CA:  LDR             R0, [R4]
2088CC:  ADDS            R3, R0, #1
2088CE:  STR             R3, [R4]
2088D0:  STRB            R5, [R0]
2088D2:  LDR             R0, [R2]
2088D4:  ADDS            R0, #4
2088D6:  STR             R0, [R2]
2088D8:  B               loc_20883A
2088DA:  MOVS            R0, #0
2088DC:  POP.W           {R8-R11}
2088E0:  POP             {R4-R7,PC}
