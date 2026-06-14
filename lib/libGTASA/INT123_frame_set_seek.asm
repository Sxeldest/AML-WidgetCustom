; =========================================================
; Game Engine Function: INT123_frame_set_seek
; Address            : 0x22683C - 0x2269FE
; =========================================================

22683C:  PUSH            {R4-R7,LR}
22683E:  ADD             R7, SP, #0xC
226840:  PUSH.W          {R8}
226844:  MOV             R4, R0
226846:  MOVW            R2, #0x92D0
22684A:  LDR             R0, [R4,R2]
22684C:  CMP             R0, #3
22684E:  BCS             loc_226864
226850:  MOVW            R2, #0x92D8
226854:  LDR             R2, [R4,R2]
226856:  CMP             R2, #1
226858:  BEQ             loc_22694A
22685A:  CMP             R2, #2
22685C:  BNE             loc_226950
22685E:  MOV.W           R2, #0x480
226862:  B               loc_22697A
226864:  BNE.W           loc_22698C
226868:  CMP             R1, #0
22686A:  BLE             loc_22695E
22686C:  MOVW            R0, #0x9190
226870:  MOV.W           R5, #0x4000
226874:  LDR             R2, [R4,R0]
226876:  MOVW            R0, #0x92D8
22687A:  LDR             R3, [R4,R0]
22687C:  MOVW            R0, #0x92CC
226880:  ADD.W           R12, R4, R0
226884:  MOVW            R0, #0x92C8
226888:  ADD.W           LR, R4, R0
22688C:  MOVS            R0, #0
22688E:  CMP             R3, #1
226890:  BNE             loc_2268A2
226892:  B               loc_2268C2
226894:  ASRS            R6, R6, #0xF
226896:  SUBS            R1, R1, R6
226898:  SUB.W           R5, R5, R6,LSL#15
22689C:  ADDS            R0, #1
22689E:  CMP             R3, #1
2268A0:  BEQ             loc_2268C2
2268A2:  CMP             R3, #2
2268A4:  BNE             loc_2268AC
2268A6:  MOV.W           R6, #0x480
2268AA:  B               loc_2268C6
2268AC:  LDR.W           R6, [LR]
2268B0:  CMP             R6, #0
2268B2:  ITT EQ
2268B4:  LDREQ.W         R6, [R12]
2268B8:  CMPEQ           R6, #0
2268BA:  BEQ             loc_2268A6
2268BC:  MOV.W           R6, #0x240
2268C0:  B               loc_2268C6
2268C2:  MOV.W           R6, #0x180
2268C6:  MLA.W           R5, R6, R2, R5
2268CA:  ASRS            R6, R5, #0x1F
2268CC:  ADD.W           R6, R5, R6,LSR#17
2268D0:  CMP.W           R1, R6,ASR#15
2268D4:  BGE             loc_226894
2268D6:  MOVW            R1, #0xB2D0
2268DA:  CMP             R0, #1
2268DC:  STR             R0, [R4,R1]
2268DE:  BLT             loc_2269B0
2268E0:  MOVW            R1, #0x9190
2268E4:  MOVS            R5, #0
2268E6:  LDR             R2, [R4,R1]
2268E8:  MOVW            R1, #0x92D8
2268EC:  LDR             R3, [R4,R1]
2268EE:  MOVW            R1, #0x92CC
2268F2:  ADD.W           R12, R4, R1
2268F6:  MOVW            R1, #0x92C8
2268FA:  ADD.W           LR, R4, R1
2268FE:  MOV.W           R1, #0x4000
226902:  MOVW            R8, #0x7FFF
226906:  CMP             R3, #1
226908:  BEQ             loc_226914
22690A:  CMP             R3, #2
22690C:  BNE             loc_22691A
22690E:  MOV.W           R6, #0x480
226912:  B               loc_22692E
226914:  MOV.W           R6, #0x180
226918:  B               loc_22692E
22691A:  LDR.W           R6, [LR]
22691E:  CMP             R6, #0
226920:  ITT EQ
226922:  LDREQ.W         R6, [R12]
226926:  CMPEQ           R6, #0
226928:  BEQ             loc_22690E
22692A:  MOV.W           R6, #0x240
22692E:  MLA.W           R1, R6, R2, R1
226932:  ADDS            R5, #1
226934:  CMP             R5, R0
226936:  MOV.W           R6, R1,ASR#31
22693A:  ADD.W           R6, R1, R6,LSR#17
22693E:  BIC.W           R6, R6, R8
226942:  SUB.W           R1, R1, R6
226946:  BNE             loc_226906
226948:  B               loc_2269B4
22694A:  MOV.W           R2, #0x180
22694E:  B               loc_22697A
226950:  MOVW            R2, #0x92C8
226954:  LDR             R2, [R4,R2]
226956:  CBZ             R2, loc_226968
226958:  MOV.W           R2, #0x240
22695C:  B               loc_22697A
22695E:  MOVW            R1, #0xB2D0
226962:  MOVS            R0, #0
226964:  STR             R0, [R4,R1]
226966:  B               loc_2269B0
226968:  MOVW            R2, #0x92CC
22696C:  LDR             R3, [R4,R2]
22696E:  MOV.W           R2, #0x480
226972:  CMP             R3, #0
226974:  IT NE
226976:  MOVNE.W         R2, #0x240
22697A:  LSRS            R2, R0
22697C:  MOV             R0, R1
22697E:  MOV             R1, R2
226980:  BLX             __aeabi_idiv
226984:  MOVW            R1, #0xB2D0
226988:  STR             R0, [R4,R1]
22698A:  B               loc_2269C0
22698C:  LDR             R0, =(off_677664 - 0x22699A)
22698E:  ADDS            R5, R4, R2
226990:  LDR             R1, =(aCProjectsOswra_6 - 0x22699C); "[C:/Projects/OSWrapper\\MPG123/mpg123-1"...
226992:  MOVW            R2, #0x312
226996:  ADD             R0, PC; off_677664
226998:  ADD             R1, PC; "[C:/Projects/OSWrapper\\MPG123/mpg123-1"...
22699A:  LDR             R0, [R0]
22699C:  LDR             R0, [R0]; stream
22699E:  BLX             fprintf
2269A2:  LDR             R2, [R5]
2269A4:  MOVW            R1, #0xB2D0
2269A8:  MOVS            R0, #0
2269AA:  CMP             R2, #3
2269AC:  STR             R0, [R4,R1]
2269AE:  BNE             loc_2269C0
2269B0:  MOV.W           R1, #0x4000
2269B4:  MOVW            R2, #0x918C
2269B8:  STR             R1, [R4,R2]
2269BA:  MOVW            R2, #0x9188
2269BE:  STR             R1, [R4,R2]
2269C0:  MOVW            R2, #0xB460
2269C4:  MOVW            R1, #0x92D8
2269C8:  LDR             R2, [R4,R2]
2269CA:  MOVW            R3, #0x9384
2269CE:  LDR             R1, [R4,R1]
2269D0:  MOVS            R6, #0
2269D2:  STR             R6, [R4,R3]
2269D4:  CMP             R1, #3
2269D6:  MOV             R3, R2
2269D8:  IT EQ
2269DA:  MOVEQ           R3, #1
2269DC:  CMP             R2, #1
2269DE:  IT GE
2269E0:  MOVGE           R3, R2
2269E2:  CMP             R3, #2
2269E4:  MOV             R2, R3
2269E6:  IT GT
2269E8:  MOVGT           R2, #2
2269EA:  CMP             R1, #3
2269EC:  IT EQ
2269EE:  MOVEQ           R2, R3
2269F0:  MOVW            R1, #0xB2D8
2269F4:  SUBS            R0, R0, R2
2269F6:  STR             R0, [R4,R1]
2269F8:  POP.W           {R8}
2269FC:  POP             {R4-R7,PC}
