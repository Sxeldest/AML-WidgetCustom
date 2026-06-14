; =========================================================
; Game Engine Function: sub_F08F0
; Address            : 0xF08F0 - 0xF09EE
; =========================================================

F08F0:  PUSH            {R4-R7,LR}
F08F2:  ADD             R7, SP, #0xC
F08F4:  PUSH.W          {R8-R11}
F08F8:  STR             R0, [R2]
F08FA:  LDRB            R0, [R7,#arg_C]
F08FC:  LDR             R4, [R7,#arg_4]
F08FE:  LDR.W           R11, [R7,#arg_0]
F0902:  LSLS            R0, R0, #0x1E
F0904:  STR             R3, [R4]
F0906:  BPL             loc_F0930
F0908:  SUB.W           R0, R11, R3
F090C:  CMP             R0, #3
F090E:  BGE             loc_F0914
F0910:  MOVS            R0, #1
F0912:  B               loc_F09E8
F0914:  ADDS            R0, R3, #1
F0916:  STR             R0, [R4]
F0918:  MOVS            R0, #0xEF
F091A:  STRB            R0, [R3]
F091C:  LDR             R0, [R4]
F091E:  ADDS            R3, R0, #1
F0920:  STR             R3, [R4]
F0922:  MOVS            R3, #0xBB
F0924:  STRB            R3, [R0]
F0926:  LDR             R0, [R4]
F0928:  ADDS            R3, R0, #1
F092A:  STR             R3, [R4]
F092C:  MOVS            R3, #0xBF
F092E:  STRB            R3, [R0]
F0930:  LDR.W           R10, [R7,#arg_8]
F0934:  MOVW            R6, #0x7FF
F0938:  LDR             R0, [R2]
F093A:  MOV.W           R12, #0
F093E:  MOV.W           LR, #0xC0
F0942:  MOV.W           R8, #2
F0946:  CMP             R0, R1
F0948:  BCS             loc_F09E6
F094A:  LDR             R5, [R0]
F094C:  MOVS            R0, #2
F094E:  BIC.W           R3, R5, R6
F0952:  CMP.W           R3, #0xD800
F0956:  BEQ             loc_F09E8
F0958:  CMP             R5, R10
F095A:  BHI             loc_F09E8
F095C:  CMP             R5, #0x7F
F095E:  BHI             loc_F096C
F0960:  LDR             R0, [R4]
F0962:  SUB.W           R3, R11, R0
F0966:  CMP             R3, #1
F0968:  BGE             loc_F09D8
F096A:  B               loc_F0910
F096C:  CMP.W           R12, R5,LSR#11
F0970:  BNE             loc_F0986
F0972:  LDR             R0, [R4]
F0974:  SUB.W           R3, R11, R0
F0978:  CMP             R3, #2
F097A:  BLT             loc_F0910
F097C:  ADDS            R3, R0, #1
F097E:  STR             R3, [R4]
F0980:  ORR.W           R3, LR, R5,LSR#6
F0984:  B               loc_F09D0
F0986:  LDR             R0, [R4]
F0988:  CMP.W           R12, R5,LSR#16
F098C:  SUB.W           R9, R11, R0
F0990:  BNE             loc_F09A4
F0992:  CMP.W           R9, #3
F0996:  BLT             loc_F0910
F0998:  ADDS            R3, R0, #1
F099A:  STR             R3, [R4]
F099C:  MOVS            R3, #0xE0
F099E:  ORR.W           R3, R3, R5,LSR#12
F09A2:  B               loc_F09C2
F09A4:  CMP.W           R9, #4
F09A8:  BLT             loc_F0910
F09AA:  ADDS            R3, R0, #1
F09AC:  STR             R3, [R4]
F09AE:  MOVS            R3, #0xF0
F09B0:  ORR.W           R3, R3, R5,LSR#18
F09B4:  STRB            R3, [R0]
F09B6:  LDR             R0, [R4]
F09B8:  ADDS            R3, R0, #1
F09BA:  STR             R3, [R4]
F09BC:  LSRS            R3, R5, #0xC
F09BE:  BFI.W           R3, R8, #6, #0x1A
F09C2:  STRB            R3, [R0]
F09C4:  LDR             R0, [R4]
F09C6:  ADDS            R3, R0, #1
F09C8:  STR             R3, [R4]
F09CA:  LSRS            R3, R5, #6
F09CC:  BFI.W           R3, R8, #6, #0x1A
F09D0:  STRB            R3, [R0]
F09D2:  BFI.W           R5, R8, #6, #0x1A
F09D6:  LDR             R0, [R4]
F09D8:  ADDS            R3, R0, #1
F09DA:  STR             R3, [R4]
F09DC:  STRB            R5, [R0]
F09DE:  LDR             R0, [R2]
F09E0:  ADDS            R0, #4
F09E2:  STR             R0, [R2]
F09E4:  B               loc_F0946
F09E6:  MOVS            R0, #0
F09E8:  POP.W           {R8-R11}
F09EC:  POP             {R4-R7,PC}
