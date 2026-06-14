; =========================================================
; Game Engine Function: _Z18jpeg_consume_inputP22jpeg_decompress_struct
; Address            : 0x47B81C - 0x47B9A4
; =========================================================

47B81C:  PUSH            {R4,R6,R7,LR}
47B81E:  ADD             R7, SP, #8
47B820:  MOV             R4, R0
47B822:  LDR             R0, [R4,#0x14]
47B824:  SUB.W           R1, R0, #0xC8; switch 11 cases
47B828:  CMP             R1, #0xA
47B82A:  BHI             def_47B82E; jumptable 0047B82E default case, case 209
47B82C:  MOVS            R0, #1
47B82E:  TBB.W           [PC,R1]; switch jump
47B832:  DCB 0xD; jump table for switch statement
47B833:  DCB 0x18
47B834:  DCB 0x36
47B835:  DCB 6
47B836:  DCB 6
47B837:  DCB 6
47B838:  DCB 6
47B839:  DCB 6
47B83A:  DCB 6
47B83B:  DCB 0x2B
47B83C:  DCB 6
47B83D:  ALIGN 2
47B83E:  LDR.W           R0, [R4,#0x190]; jumptable 0047B82E cases 203-208,210
47B842:  LDR             R1, [R0]
47B844:  MOV             R0, R4
47B846:  POP.W           {R4,R6,R7,LR}
47B84A:  BX              R1
47B84C:  LDR.W           R0, [R4,#0x190]; jumptable 0047B82E case 200
47B850:  LDR             R1, [R0,#4]
47B852:  MOV             R0, R4
47B854:  BLX             R1
47B856:  LDR             R0, [R4,#0x18]
47B858:  LDR             R1, [R0,#8]
47B85A:  MOV             R0, R4
47B85C:  BLX             R1
47B85E:  MOVS            R0, #0xC9
47B860:  STR             R0, [R4,#0x14]
47B862:  LDR.W           R0, [R4,#0x190]; jumptable 0047B82E case 201
47B866:  LDR             R1, [R0]
47B868:  MOV             R0, R4
47B86A:  BLX             R1
47B86C:  CMP             R0, #1
47B86E:  IT NE
47B870:  POPNE           {R4,R6,R7,PC}
47B872:  LDR             R0, [R4,#0x24]
47B874:  CMP             R0, #4
47B876:  BEQ             loc_47B8A0
47B878:  CMP             R0, #3
47B87A:  BEQ             loc_47B8B8
47B87C:  CMP             R0, #1
47B87E:  BNE             loc_47B8C6
47B880:  MOV.W           R12, #1
47B884:  MOVS            R2, #1
47B886:  B               loc_47B942
47B888:  LDR             R0, [R4]; jumptable 0047B82E default case, case 209
47B88A:  MOVS            R1, #0x14
47B88C:  STR             R1, [R0,#0x14]
47B88E:  LDR             R0, [R4]
47B890:  LDR             R1, [R4,#0x14]
47B892:  STR             R1, [R0,#0x18]
47B894:  LDR             R0, [R4]
47B896:  LDR             R1, [R0]
47B898:  MOV             R0, R4
47B89A:  BLX             R1
47B89C:  MOVS            R0, #0
47B89E:  POP             {R4,R6,R7,PC}; jumptable 0047B82E case 202
47B8A0:  LDRB.W          R0, [R4,#0x108]
47B8A4:  CMP             R0, #0
47B8A6:  ITT NE
47B8A8:  LDRBNE.W        R0, [R4,#0x109]
47B8AC:  CMPNE           R0, #0
47B8AE:  BNE             loc_47B8CE
47B8B0:  MOV.W           R12, #4
47B8B4:  MOVS            R2, #4
47B8B6:  B               loc_47B942
47B8B8:  LDRB.W          R0, [R4,#0x100]
47B8BC:  CBZ             R0, loc_47B8F4
47B8BE:  MOVS            R2, #2
47B8C0:  MOV.W           R12, #3
47B8C4:  B               loc_47B942
47B8C6:  MOV.W           R12, #0
47B8CA:  MOVS            R2, #0
47B8CC:  B               loc_47B942
47B8CE:  CMP             R0, #2
47B8D0:  BEQ             loc_47B8EC
47B8D2:  LDR             R0, [R4]
47B8D4:  MOVS            R1, #0x72 ; 'r'
47B8D6:  STR             R1, [R0,#0x14]
47B8D8:  LDR             R0, [R4]
47B8DA:  LDRB.W          R1, [R4,#0x109]
47B8DE:  STR             R1, [R0,#0x18]
47B8E0:  MOV.W           R1, #0xFFFFFFFF
47B8E4:  LDR             R0, [R4]
47B8E6:  LDR             R2, [R0,#4]
47B8E8:  MOV             R0, R4
47B8EA:  BLX             R2
47B8EC:  MOVS            R2, #4
47B8EE:  MOV.W           R12, #5
47B8F2:  B               loc_47B942
47B8F4:  LDRB.W          R0, [R4,#0x108]
47B8F8:  CBZ             R0, loc_47B918
47B8FA:  LDRB.W          R0, [R4,#0x109]
47B8FE:  CBZ             R0, loc_47B93C
47B900:  CMP             R0, #1
47B902:  BEQ             loc_47B8BE
47B904:  LDR             R0, [R4]
47B906:  MOVS            R1, #0x72 ; 'r'
47B908:  STR             R1, [R0,#0x14]
47B90A:  LDR             R0, [R4]
47B90C:  LDRB.W          R1, [R4,#0x109]
47B910:  STR             R1, [R0,#0x18]
47B912:  MOV.W           R1, #0xFFFFFFFF
47B916:  B               loc_47B99A
47B918:  LDR.W           R2, [R4,#0xC4]
47B91C:  LDR             R0, [R2]
47B91E:  LDR             R1, [R2,#0x54]
47B920:  LDR.W           R2, [R2,#0xA8]
47B924:  CMP             R0, #1
47B926:  IT EQ
47B928:  CMPEQ           R1, #2
47B92A:  BNE             loc_47B930
47B92C:  CMP             R2, #3
47B92E:  BEQ             loc_47B8BE
47B930:  CMP             R0, #0x52 ; 'R'
47B932:  IT EQ
47B934:  CMPEQ           R1, #0x47 ; 'G'
47B936:  BNE             loc_47B98C
47B938:  CMP             R2, #0x42 ; 'B'
47B93A:  BNE             loc_47B98C
47B93C:  MOV.W           R12, #2
47B940:  MOVS            R2, #2
47B942:  MOVS            R3, #0
47B944:  MOVS            R0, #1
47B946:  STRD.W          R12, R2, [R4,#0x28]
47B94A:  MOVT            R3, #0x3FF0
47B94E:  MOVS            R1, #0
47B950:  MOVW            R2, #0x101
47B954:  STRD.W          R0, R0, [R4,#0x30]
47B958:  STRD.W          R1, R3, [R4,#0x38]
47B95C:  STRH.W          R1, [R4,#0x40]
47B960:  STR             R1, [R4,#0x44]
47B962:  STRH.W          R2, [R4,#0x48]
47B966:  MOVS            R2, #2
47B968:  STRB.W          R1, [R4,#0x4A]
47B96C:  STR             R2, [R4,#0x4C]
47B96E:  MOV.W           R2, #0x100
47B972:  STRB.W          R1, [R4,#0x50]
47B976:  STR             R2, [R4,#0x54]
47B978:  STR             R1, [R4,#0x74]
47B97A:  STRB.W          R1, [R4,#0x58]
47B97E:  STRB.W          R1, [R4,#0x59]
47B982:  STRB.W          R1, [R4,#0x5A]
47B986:  MOVS            R1, #0xCA
47B988:  STR             R1, [R4,#0x14]
47B98A:  POP             {R4,R6,R7,PC}
47B98C:  LDR             R3, [R4]
47B98E:  ADDS            R3, #0x18
47B990:  STM             R3!, {R0-R2}
47B992:  MOVS            R1, #0x6F ; 'o'
47B994:  LDR             R0, [R4]
47B996:  STR             R1, [R0,#0x14]
47B998:  MOVS            R1, #1
47B99A:  LDR             R0, [R4]
47B99C:  LDR             R2, [R0,#4]
47B99E:  MOV             R0, R4
47B9A0:  BLX             R2
47B9A2:  B               loc_47B8BE
