; =========================================================
; Game Engine Function: sub_230748
; Address            : 0x230748 - 0x23093E
; =========================================================

230748:  PUSH            {R4-R7,LR}
23074A:  ADD             R7, SP, #0xC
23074C:  PUSH.W          {R8}
230750:  SUB             SP, SP, #8
230752:  MOV             R4, R0
230754:  MOVW            R0, #0x92D0
230758:  LDR             R3, [R4,R0]
23075A:  CMP             R3, #3
23075C:  BCS             loc_230774
23075E:  MOVW            R0, #0x92D8
230762:  LDR             R0, [R4,R0]
230764:  CMP             R0, #1
230766:  BEQ             loc_230790
230768:  CMP             R0, #2
23076A:  BNE             loc_230798
23076C:  MOV.W           R0, #0x480
230770:  LSRS            R0, R3
230772:  B               loc_23080E
230774:  BNE             loc_2307D2
230776:  MOVW            R0, #0x92D8
23077A:  LDR             R1, [R4,R0]
23077C:  MOVW            R0, #0x9188
230780:  LDR             R0, [R4,R0]
230782:  CMP             R1, #1
230784:  BEQ             loc_2307BE
230786:  CMP             R1, #2
230788:  BNE             loc_2307C4
23078A:  MOV.W           R1, #0x480
23078E:  B               loc_2307FC
230790:  MOV.W           R0, #0x180
230794:  LSRS            R0, R3
230796:  B               loc_23080E
230798:  MOVW            R0, #0x92C8
23079C:  LDR             R0, [R4,R0]
23079E:  CBZ             R0, loc_2307A8
2307A0:  MOV.W           R0, #0x240
2307A4:  LSRS            R0, R3
2307A6:  B               loc_23080E
2307A8:  MOVW            R0, #0x92CC
2307AC:  LDR             R1, [R4,R0]
2307AE:  MOV.W           R0, #0x480
2307B2:  CMP             R1, #0
2307B4:  IT NE
2307B6:  MOVNE.W         R0, #0x240
2307BA:  LSRS            R0, R3
2307BC:  B               loc_23080E
2307BE:  MOV.W           R1, #0x180
2307C2:  B               loc_2307FC
2307C4:  MOVW            R1, #0x92C8
2307C8:  LDR             R1, [R4,R1]
2307CA:  CBZ             R1, loc_2307EA
2307CC:  MOV.W           R1, #0x240
2307D0:  B               loc_2307FC
2307D2:  LDR             R0, =(off_677664 - 0x2307DE)
2307D4:  MOVW            R2, #0x2FE
2307D8:  LDR             R1, =(aCProjectsOswra_5 - 0x2307E0); "[C:/Projects/OSWrapper\\MPG123/mpg123-1"...
2307DA:  ADD             R0, PC; off_677664
2307DC:  ADD             R1, PC; "[C:/Projects/OSWrapper\\MPG123/mpg123-1"...
2307DE:  LDR             R0, [R0]
2307E0:  LDR             R0, [R0]; stream
2307E2:  BLX             fprintf
2307E6:  MOVS            R0, #0
2307E8:  B               loc_23080E
2307EA:  MOVW            R1, #0x92CC
2307EE:  LDR             R2, [R4,R1]
2307F0:  MOV.W           R1, #0x480
2307F4:  CMP             R2, #0
2307F6:  IT NE
2307F8:  MOVNE.W         R1, #0x240
2307FC:  MOVW            R2, #0x9190
230800:  LDR             R2, [R4,R2]
230802:  MLA.W           R0, R2, R1, R0
230806:  ASRS            R1, R0, #0x1F
230808:  ADD.W           R0, R0, R1,LSR#17
23080C:  ASRS            R0, R0, #0xF
23080E:  MOVW            R1, #0xB2B1
230812:  LDRB            R1, [R4,R1]
230814:  LSLS            R1, R1, #0x19
230816:  BMI             loc_230822
230818:  MOVW            R1, #0xB2B4
23081C:  LDR             R1, [R4,R1]
23081E:  MULS            R0, R1
230820:  B               loc_230824
230822:  LSLS            R0, R0, #2
230824:  MOVW            R1, #0xB2B8
230828:  MOVW            R2, #0x92DC
23082C:  LDR             R1, [R4,R1]
23082E:  LDR             R2, [R4,R2]
230830:  MUL.W           R5, R1, R0
230834:  MOV             R0, R4
230836:  BLX             R2
230838:  MOVW            R2, #0xB2A8
23083C:  MOVW            R3, #0xB474
230840:  LDR             R1, [R4,R2]
230842:  LDR             R6, [R4,R3]
230844:  CMP             R5, R1
230846:  ADD             R0, R6
230848:  STR             R0, [R4,R3]
23084A:  BLS             loc_230910
23084C:  MOVW            R0, #0xB2B0
230850:  ADDS            R6, R4, R0
230852:  MOVW            R0, #0xB33C
230856:  ADD.W           R8, R4, R2
23085A:  LDRB            R0, [R4,R0]
23085C:  LSLS            R0, R0, #0x1A
23085E:  BMI             loc_23086A
230860:  MOVW            R0, #0xB338
230864:  LDR             R0, [R4,R0]
230866:  CMP             R0, #2
230868:  BGE             loc_230920
23086A:  MOVW            R0, #0xB2A0
23086E:  LDRB            R2, [R6]
230870:  LDR             R0, [R4,R0]
230872:  ADD             R0, R1
230874:  LSLS            R2, R2, #0x1C
230876:  BEQ             loc_230882
230878:  MOVW            R2, #0x4A7C
23087C:  LDR             R2, [R4,R2]
23087E:  LDRB            R2, [R2]
230880:  B               loc_230884
230882:  MOVS            R2, #0
230884:  SUBS            R1, R5, R1
230886:  BLX             j___aeabi_memset8
23088A:  STR.W           R5, [R8]
23088E:  MOVW            R0, #0x9314
230892:  LDR             R2, [R4,R0]
230894:  CMP             R2, #0
230896:  BLT             loc_230900
230898:  MOVW            R0, #0x9190
23089C:  MOVW            R1, #0x92D8
2308A0:  LDR             R0, [R4,R0]
2308A2:  MOVW            R3, #0x92CC
2308A6:  LDR             R1, [R4,R1]
2308A8:  ADD.W           R12, R4, R3
2308AC:  MOVW            R3, #0x92C8
2308B0:  ADD.W           LR, R4, R3
2308B4:  ADDS            R5, R2, #1
2308B6:  MOV.W           R2, #0x4000
2308BA:  MOVW            R3, #0x7FFF
2308BE:  CMP             R1, #1
2308C0:  BEQ             loc_2308CC
2308C2:  CMP             R1, #2
2308C4:  BNE             loc_2308D2
2308C6:  MOV.W           R6, #0x480
2308CA:  B               loc_2308E6
2308CC:  MOV.W           R6, #0x180
2308D0:  B               loc_2308E6
2308D2:  LDR.W           R6, [LR]
2308D6:  CMP             R6, #0
2308D8:  ITT EQ
2308DA:  LDREQ.W         R6, [R12]
2308DE:  CMPEQ           R6, #0
2308E0:  BEQ             loc_2308C6
2308E2:  MOV.W           R6, #0x240
2308E6:  MLA.W           R2, R6, R0, R2
2308EA:  SUBS            R5, #1
2308EC:  MOV.W           R6, R2,ASR#31
2308F0:  ADD.W           R6, R2, R6,LSR#17
2308F4:  BIC.W           R6, R6, R3
2308F8:  SUB.W           R2, R2, R6
2308FC:  BNE             loc_2308BE
2308FE:  B               loc_230904
230900:  MOV.W           R2, #0x4000
230904:  MOVW            R0, #0x918C
230908:  STR             R2, [R4,R0]
23090A:  MOVW            R0, #0x9188
23090E:  STR             R2, [R4,R0]
230910:  MOV             R0, R4
230912:  ADD             SP, SP, #8
230914:  POP.W           {R8}
230918:  POP.W           {R4-R7,LR}
23091C:  B.W             postprocess_buffer
230920:  LDR             R0, =(off_677664 - 0x23092E)
230922:  MOVW            R2, #0x9314
230926:  LDR             R2, [R4,R2]
230928:  SUBS            R3, R5, R1
23092A:  ADD             R0, PC; off_677664
23092C:  LDR             R0, [R0]
23092E:  LDR             R0, [R0]; stream
230930:  STR             R1, [SP,#0x18+var_18]
230932:  ADR             R1, aNoteBrokenFram; "Note: broken frame %li, filling up with"...
230934:  BLX             fprintf
230938:  LDR.W           R1, [R8]
23093C:  B               loc_23086A
