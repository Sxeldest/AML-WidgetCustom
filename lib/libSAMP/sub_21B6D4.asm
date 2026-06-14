; =========================================================
; Game Engine Function: sub_21B6D4
; Address            : 0x21B6D4 - 0x21BEBE
; =========================================================

21B6D4:  PUSH            {R4-R7,LR}
21B6D6:  ADD             R7, SP, #0xC
21B6D8:  PUSH.W          {R8}
21B6DC:  SUB             SP, SP, #0x10
21B6DE:  MOV             R4, R0
21B6E0:  LDR.W           R0, =(__stack_chk_guard_ptr - 0x21B6EA)
21B6E4:  MOV             R5, R1
21B6E6:  ADD             R0, PC; __stack_chk_guard_ptr
21B6E8:  LDR             R0, [R0]; __stack_chk_guard
21B6EA:  LDR             R0, [R0]
21B6EC:  STR             R0, [SP,#0x20+var_14]
21B6EE:  LDRD.W          R1, R0, [R4]
21B6F2:  SUBS            R2, R0, R1
21B6F4:  BEQ.W           loc_21BD6A
21B6F8:  LDRB            R0, [R1]
21B6FA:  SUB.W           R3, R0, #0x61 ; 'a'; switch 22 cases
21B6FE:  MOVS            R0, #0
21B700:  CMP             R3, #0x15
21B702:  BHI.W           def_21B706; jumptable 0021B706 default case, cases 98,102,104,106,107,116,117
21B706:  TBH.W           [PC,R3,LSL#1]; switch jump
21B70A:  DCW 0x16; jump table for switch statement
21B70C:  DCW 0x331
21B70E:  DCW 0xDB
21B710:  DCW 0x33
21B712:  DCW 0xFA
21B714:  DCW 0x331
21B716:  DCW 0x115
21B718:  DCW 0x331
21B71A:  DCW 0x5B
21B71C:  DCW 0x331
21B71E:  DCW 0x331
21B720:  DCW 0x12D
21B722:  DCW 0x14E
21B724:  DCW 0x160
21B726:  DCW 0x187
21B728:  DCW 0x70
21B72A:  DCW 0x93
21B72C:  DCW 0xA8
21B72E:  DCW 0xC6
21B730:  DCW 0x331
21B732:  DCW 0x331
21B734:  DCW 0x1A2
21B736:  CMP             R2, #2; jumptable 0021B706 case 97
21B738:  BCC.W           loc_21BD6A
21B73C:  LDRB            R0, [R1,#1]
21B73E:  CMP             R0, #0x4E ; 'N'
21B740:  BEQ.W           loc_21BC8C
21B744:  CMP             R0, #0x53 ; 'S'
21B746:  BEQ.W           loc_21BCA4
21B74A:  CMP             R0, #0x6E ; 'n'
21B74C:  IT NE
21B74E:  CMPNE           R0, #0x64 ; 'd'
21B750:  BNE.W           loc_21BB88
21B754:  ADDS            R0, R1, #2
21B756:  STR             R0, [R4]
21B758:  LDR             R0, [SP,#0x20+var_14]
21B75A:  LDR.W           R1, =(__stack_chk_guard_ptr - 0x21B762)
21B75E:  ADD             R1, PC; __stack_chk_guard_ptr
21B760:  LDR             R1, [R1]; __stack_chk_guard
21B762:  LDR             R1, [R1]
21B764:  CMP             R1, R0
21B766:  BNE.W           loc_21BD82
21B76A:  LDR             R1, =(aOperator - 0x21B770); "operator&" ...
21B76C:  ADD             R1, PC; "operator&"
21B76E:  B               loc_21BE3A
21B770:  CMP             R2, #2; jumptable 0021B706 case 100
21B772:  BCC.W           loc_21BD6A
21B776:  LDRB            R0, [R1,#1]
21B778:  CMP             R0, #0x56 ; 'V'
21B77A:  BEQ.W           loc_21BCBC
21B77E:  CMP             R0, #0x76 ; 'v'
21B780:  BEQ.W           loc_21BCD4
21B784:  CMP             R0, #0x65 ; 'e'
21B786:  BEQ.W           loc_21BA98
21B78A:  CMP             R0, #0x6C ; 'l'
21B78C:  BEQ.W           loc_21BCEC
21B790:  CMP             R0, #0x61 ; 'a'
21B792:  BNE.W           loc_21BD6A
21B796:  ADDS            R0, R1, #2
21B798:  STR             R0, [R4]
21B79A:  LDR             R0, [SP,#0x20+var_14]
21B79C:  LDR.W           R1, =(__stack_chk_guard_ptr - 0x21B7A4)
21B7A0:  ADD             R1, PC; __stack_chk_guard_ptr
21B7A2:  LDR             R1, [R1]; __stack_chk_guard
21B7A4:  LDR             R1, [R1]
21B7A6:  CMP             R1, R0
21B7A8:  BNE.W           loc_21BD82
21B7AC:  LDR             R1, =(aOperatorDelete - 0x21B7B4); "operator delete[]" ...
21B7AE:  MOV             R0, R4
21B7B0:  ADD             R1, PC; "operator delete[]"
21B7B2:  ADD             SP, SP, #0x10
21B7B4:  POP.W           {R8}
21B7B8:  POP.W           {R4-R7,LR}
21B7BC:  B.W             sub_21C0BC
21B7C0:  CMP             R2, #2; jumptable 0021B706 case 105
21B7C2:  BCC.W           loc_21BD6A
21B7C6:  LDRB            R0, [R1,#1]
21B7C8:  CMP             R0, #0x78 ; 'x'
21B7CA:  BNE.W           loc_21BD6A
21B7CE:  ADDS            R0, R1, #2
21B7D0:  STR             R0, [R4]
21B7D2:  LDR             R0, [SP,#0x20+var_14]
21B7D4:  LDR.W           R1, =(__stack_chk_guard_ptr - 0x21B7DC)
21B7D8:  ADD             R1, PC; __stack_chk_guard_ptr
21B7DA:  LDR             R1, [R1]; __stack_chk_guard
21B7DC:  LDR             R1, [R1]
21B7DE:  CMP             R1, R0
21B7E0:  BNE.W           loc_21BD82
21B7E4:  LDR             R1, =(aOperator_0 - 0x21B7EA); "operator[]" ...
21B7E6:  ADD             R1, PC; "operator[]"
21B7E8:  B               loc_21BEA2
21B7EA:  CMP             R2, #2; jumptable 0021B706 case 112
21B7EC:  BCC.W           loc_21BD6A
21B7F0:  LDRB            R3, [R1,#1]
21B7F2:  MOVS            R0, #0
21B7F4:  SUB.W           R2, R3, #0x6C ; 'l'; switch 9 cases
21B7F8:  CMP             R2, #8
21B7FA:  BHI.W           def_21B7FE; jumptable 0021B7FE default case
21B7FE:  TBH.W           [PC,R2,LSL#1]; switch jump
21B802:  DCW 9; jump table for switch statement
21B804:  DCW 0x324
21B806:  DCW 0x2B5
21B808:  DCW 0x2B5
21B80A:  DCW 0x337
21B80C:  DCW 0x2B5
21B80E:  DCW 0x2B5
21B810:  DCW 9
21B812:  DCW 0x344
21B814:  ADDS            R0, R1, #2; jumptable 0021B7FE cases 108,115
21B816:  STR             R0, [R4]
21B818:  LDR             R0, [SP,#0x20+var_14]
21B81A:  LDR.W           R1, =(__stack_chk_guard_ptr - 0x21B822)
21B81E:  ADD             R1, PC; __stack_chk_guard_ptr
21B820:  LDR             R1, [R1]; __stack_chk_guard
21B822:  LDR             R1, [R1]
21B824:  CMP             R1, R0
21B826:  BNE.W           loc_21BD82
21B82A:  LDR             R1, =(aOperator_1 - 0x21B830); "operator+" ...
21B82C:  ADD             R1, PC; "operator+"
21B82E:  B               loc_21BE3A
21B830:  CMP             R2, #2; jumptable 0021B706 case 113
21B832:  BCC.W           loc_21BD6A
21B836:  LDRB            R0, [R1,#1]
21B838:  CMP             R0, #0x75 ; 'u'
21B83A:  BNE.W           loc_21BD6A
21B83E:  ADDS            R0, R1, #2
21B840:  STR             R0, [R4]
21B842:  LDR             R0, [SP,#0x20+var_14]
21B844:  LDR.W           R1, =(__stack_chk_guard_ptr - 0x21B84C)
21B848:  ADD             R1, PC; __stack_chk_guard_ptr
21B84A:  LDR             R1, [R1]; __stack_chk_guard
21B84C:  LDR             R1, [R1]
21B84E:  CMP             R1, R0
21B850:  BNE.W           loc_21BD82
21B854:  LDR             R1, =(aOperator_2 - 0x21B85A); "operator?" ...
21B856:  ADD             R1, PC; "operator?"
21B858:  B               loc_21BE3A
21B85A:  CMP             R2, #2; jumptable 0021B706 case 114
21B85C:  BCC.W           loc_21BD6A
21B860:  LDRB            R0, [R1,#1]
21B862:  CMP             R0, #0x4D ; 'M'
21B864:  BEQ.W           loc_21BBCA
21B868:  CMP             R0, #0x53 ; 'S'
21B86A:  BEQ.W           loc_21BBE6
21B86E:  CMP             R0, #0x73 ; 's'
21B870:  BEQ.W           loc_21BC02
21B874:  CMP             R0, #0x6D ; 'm'
21B876:  BNE.W           loc_21BD6A
21B87A:  ADDS            R0, R1, #2
21B87C:  STR             R0, [R4]
21B87E:  LDR             R0, [SP,#0x20+var_14]
21B880:  LDR.W           R1, =(__stack_chk_guard_ptr - 0x21B888)
21B884:  ADD             R1, PC; __stack_chk_guard_ptr
21B886:  LDR             R1, [R1]; __stack_chk_guard
21B888:  LDR             R1, [R1]
21B88A:  CMP             R1, R0
21B88C:  BNE.W           loc_21BD82
21B890:  LDR             R1, =(aOperator_3 - 0x21B896); "operator%" ...
21B892:  ADD             R1, PC; "operator%"
21B894:  B               loc_21BE3A
21B896:  CMP             R2, #2; jumptable 0021B706 case 115
21B898:  BCC.W           loc_21BD6A
21B89C:  LDRB            R0, [R1,#1]
21B89E:  CMP             R0, #0x73 ; 's'
21B8A0:  BNE.W           loc_21BD6A
21B8A4:  ADDS            R0, R1, #2
21B8A6:  STR             R0, [R4]
21B8A8:  LDR             R0, [SP,#0x20+var_14]
21B8AA:  LDR.W           R1, =(__stack_chk_guard_ptr - 0x21B8B2)
21B8AE:  ADD             R1, PC; __stack_chk_guard_ptr
21B8B0:  LDR             R1, [R1]; __stack_chk_guard
21B8B2:  LDR             R1, [R1]
21B8B4:  CMP             R1, R0
21B8B6:  BNE.W           loc_21BD82
21B8BA:  LDR             R1, =(aOperator_4 - 0x21B8C0); "operator<=>" ...
21B8BC:  ADD             R1, PC; "operator<=>"
21B8BE:  B               loc_21BE60
21B8C0:  CMP             R2, #2; jumptable 0021B706 case 99
21B8C2:  BCC.W           loc_21BD6A
21B8C6:  LDRB            R2, [R1,#1]
21B8C8:  MOVS            R0, #0
21B8CA:  CMP             R2, #0x76 ; 'v'
21B8CC:  BEQ.W           loc_21BC52
21B8D0:  CMP             R2, #0x6D ; 'm'
21B8D2:  BEQ.W           loc_21BC1E
21B8D6:  CMP             R2, #0x6F ; 'o'
21B8D8:  BEQ.W           loc_21BC38
21B8DC:  CMP             R2, #0x6C ; 'l'
21B8DE:  BNE.W           def_21B706; jumptable 0021B706 default case, cases 98,102,104,106,107,116,117
21B8E2:  ADDS            R0, R1, #2
21B8E4:  STR             R0, [R4]
21B8E6:  LDR             R0, [SP,#0x20+var_14]
21B8E8:  LDR.W           R1, =(__stack_chk_guard_ptr - 0x21B8F0)
21B8EC:  ADD             R1, PC; __stack_chk_guard_ptr
21B8EE:  LDR             R1, [R1]; __stack_chk_guard
21B8F0:  LDR             R1, [R1]
21B8F2:  CMP             R1, R0
21B8F4:  BNE.W           loc_21BD82
21B8F8:  LDR             R1, =(aOperator_5 - 0x21B8FE); "operator()" ...
21B8FA:  ADD             R1, PC; "operator()"
21B8FC:  B               loc_21BEA2
21B8FE:  CMP             R2, #2; jumptable 0021B706 case 101
21B900:  BCC.W           loc_21BD6A
21B904:  LDRB            R0, [R1,#1]
21B906:  CMP             R0, #0x4F ; 'O'
21B908:  BEQ.W           loc_21BAD0
21B90C:  CMP             R0, #0x71 ; 'q'
21B90E:  BEQ.W           loc_21BAEC
21B912:  CMP             R0, #0x6F ; 'o'
21B914:  BNE.W           loc_21BD6A
21B918:  ADDS            R0, R1, #2
21B91A:  STR             R0, [R4]
21B91C:  LDR             R0, [SP,#0x20+var_14]
21B91E:  LDR.W           R1, =(__stack_chk_guard_ptr - 0x21B926)
21B922:  ADD             R1, PC; __stack_chk_guard_ptr
21B924:  LDR             R1, [R1]; __stack_chk_guard
21B926:  LDR             R1, [R1]
21B928:  CMP             R1, R0
21B92A:  BNE.W           loc_21BD82
21B92E:  LDR             R1, =(aOperator_6 - 0x21B934); "operator^" ...
21B930:  ADD             R1, PC; "operator^"
21B932:  B               loc_21BE3A
21B934:  CMP             R2, #2; jumptable 0021B706 case 103
21B936:  BCC.W           loc_21BD6A
21B93A:  LDRB            R0, [R1,#1]
21B93C:  CMP             R0, #0x74 ; 't'
21B93E:  BEQ.W           loc_21BA7C
21B942:  CMP             R0, #0x65 ; 'e'
21B944:  BNE.W           loc_21BD6A
21B948:  ADDS            R0, R1, #2
21B94A:  STR             R0, [R4]
21B94C:  LDR             R0, [SP,#0x20+var_14]
21B94E:  LDR.W           R1, =(__stack_chk_guard_ptr - 0x21B956)
21B952:  ADD             R1, PC; __stack_chk_guard_ptr
21B954:  LDR             R1, [R1]; __stack_chk_guard
21B956:  LDR             R1, [R1]
21B958:  CMP             R1, R0
21B95A:  BNE.W           loc_21BD82
21B95E:  LDR             R1, =(aOperator_7 - 0x21B964); "operator>=" ...
21B960:  ADD             R1, PC; "operator>="
21B962:  B               loc_21BEA2
21B964:  CMP             R2, #2; jumptable 0021B706 case 108
21B966:  BCC.W           loc_21BD6A
21B96A:  LDRB            R0, [R1,#1]
21B96C:  CMP             R0, #0x53 ; 'S'
21B96E:  BEQ.W           loc_21BD12
21B972:  CMP             R0, #0x74 ; 't'
21B974:  BEQ.W           loc_21BD2A
21B978:  CMP             R0, #0x69 ; 'i'
21B97A:  BEQ.W           loc_21BD42
21B97E:  CMP             R0, #0x73 ; 's'
21B980:  BEQ.W           loc_21BD86
21B984:  CMP             R0, #0x65 ; 'e'
21B986:  BNE.W           loc_21BD6A
21B98A:  ADDS            R0, R1, #2
21B98C:  STR             R0, [R4]
21B98E:  LDR             R0, [SP,#0x20+var_14]
21B990:  LDR.W           R1, =(__stack_chk_guard_ptr - 0x21B998)
21B994:  ADD             R1, PC; __stack_chk_guard_ptr
21B996:  LDR             R1, [R1]; __stack_chk_guard
21B998:  LDR             R1, [R1]
21B99A:  CMP             R1, R0
21B99C:  BNE.W           loc_21BD82
21B9A0:  LDR             R1, =(aOperator_8 - 0x21B9A6); "operator<=" ...
21B9A2:  ADD             R1, PC; "operator<="
21B9A4:  B               loc_21BEA2
21B9A6:  CMP             R2, #2; jumptable 0021B706 case 109
21B9A8:  BCC.W           loc_21BD6A
21B9AC:  LDRB            R0, [R1,#1]
21B9AE:  CMP             R0, #0x49 ; 'I'
21B9B0:  BEQ.W           loc_21BD9E
21B9B4:  CMP             R0, #0x4C ; 'L'
21B9B6:  BEQ.W           loc_21BDB6
21B9BA:  CMP             R0, #0x6D ; 'm'
21B9BC:  BEQ.W           loc_21BDCE
21B9C0:  CMP             R0, #0x6C ; 'l'
21B9C2:  BEQ             loc_21BA98
21B9C4:  CMP             R0, #0x69 ; 'i'
21B9C6:  BEQ             loc_21BAB4
21B9C8:  B               loc_21BD6A
21B9CA:  CMP             R2, #2; jumptable 0021B706 case 110
21B9CC:  BCC.W           loc_21BD6A
21B9D0:  LDRB            R0, [R1,#1]
21B9D2:  CMP             R0, #0x77 ; 'w'
21B9D4:  BEQ.W           loc_21BDE6
21B9D8:  CMP             R0, #0x65 ; 'e'
21B9DA:  BEQ.W           loc_21BE0C
21B9DE:  CMP             R0, #0x67 ; 'g'
21B9E0:  BEQ             loc_21BAB4
21B9E2:  CMP             R0, #0x74 ; 't'
21B9E4:  BEQ.W           loc_21BE24
21B9E8:  CMP             R0, #0x61 ; 'a'
21B9EA:  BNE.W           loc_21BD6A
21B9EE:  ADDS            R0, R1, #2
21B9F0:  STR             R0, [R4]
21B9F2:  LDR             R0, [SP,#0x20+var_14]
21B9F4:  LDR.W           R1, =(__stack_chk_guard_ptr - 0x21B9FC)
21B9F8:  ADD             R1, PC; __stack_chk_guard_ptr
21B9FA:  LDR             R1, [R1]; __stack_chk_guard
21B9FC:  LDR             R1, [R1]
21B9FE:  CMP             R1, R0
21BA00:  BNE.W           loc_21BD82
21BA04:  LDR             R1, =(aOperatorNew - 0x21BA0C); "operator new[]" ...
21BA06:  MOV             R0, R4
21BA08:  ADD             R1, PC; "operator new[]"
21BA0A:  ADD             SP, SP, #0x10
21BA0C:  POP.W           {R8}
21BA10:  POP.W           {R4-R7,LR}
21BA14:  B.W             sub_21C12C
21BA18:  CMP             R2, #2; jumptable 0021B706 case 111
21BA1A:  BCC.W           loc_21BD6A
21BA1E:  LDRB            R0, [R1,#1]
21BA20:  CMP             R0, #0x52 ; 'R'
21BA22:  BEQ.W           loc_21BB50
21BA26:  CMP             R0, #0x72 ; 'r'
21BA28:  BEQ.W           loc_21BB6C
21BA2C:  CMP             R0, #0x6F ; 'o'
21BA2E:  BNE.W           loc_21BD6A
21BA32:  ADDS            R0, R1, #2
21BA34:  STR             R0, [R4]
21BA36:  LDR             R0, [SP,#0x20+var_14]
21BA38:  LDR.W           R1, =(__stack_chk_guard_ptr - 0x21BA40)
21BA3C:  ADD             R1, PC; __stack_chk_guard_ptr
21BA3E:  LDR             R1, [R1]; __stack_chk_guard
21BA40:  LDR             R1, [R1]
21BA42:  CMP             R1, R0
21BA44:  BNE.W           loc_21BD82
21BA48:  LDR             R1, =(aOperator_9 - 0x21BA4E); "operator||" ...
21BA4A:  ADD             R1, PC; "operator||"
21BA4C:  B               loc_21BEA2
21BA4E:  CMP             R2, #2; jumptable 0021B706 case 118
21BA50:  BCC.W           loc_21BD6A
21BA54:  LDRB            R0, [R1,#1]
21BA56:  SUBS            R0, #0x3A ; ':'
21BA58:  CMN.W           R0, #0xA
21BA5C:  BCC.W           loc_21BD6A
21BA60:  ADDS            R0, R1, #2
21BA62:  STR             R0, [R4]
21BA64:  MOV             R0, R4
21BA66:  BL              sub_21B5BC
21BA6A:  CMP             R0, #0
21BA6C:  STR             R0, [SP,#0x20+var_1C]
21BA6E:  BEQ.W           loc_21BD6A
21BA72:  ADD             R1, SP, #0x20+var_1C
21BA74:  MOV             R0, R4
21BA76:  BL              sub_21C090
21BA7A:  B               def_21B706; jumptable 0021B706 default case, cases 98,102,104,106,107,116,117
21BA7C:  ADDS            R0, R1, #2
21BA7E:  STR             R0, [R4]
21BA80:  LDR             R0, [SP,#0x20+var_14]
21BA82:  LDR.W           R1, =(__stack_chk_guard_ptr - 0x21BA8A)
21BA86:  ADD             R1, PC; __stack_chk_guard_ptr
21BA88:  LDR             R1, [R1]; __stack_chk_guard
21BA8A:  LDR             R1, [R1]
21BA8C:  CMP             R1, R0
21BA8E:  BNE.W           loc_21BD82
21BA92:  LDR             R1, =(aOperator_10 - 0x21BA98); "operator>" ...
21BA94:  ADD             R1, PC; "operator>"
21BA96:  B               loc_21BE3A
21BA98:  ADDS            R0, R1, #2
21BA9A:  STR             R0, [R4]
21BA9C:  LDR             R0, [SP,#0x20+var_14]
21BA9E:  LDR.W           R1, =(__stack_chk_guard_ptr - 0x21BAA6)
21BAA2:  ADD             R1, PC; __stack_chk_guard_ptr
21BAA4:  LDR             R1, [R1]; __stack_chk_guard
21BAA6:  LDR             R1, [R1]
21BAA8:  CMP             R1, R0
21BAAA:  BNE.W           loc_21BD82
21BAAE:  LDR             R1, =(aOperator_11 - 0x21BAB4); "operator*" ...
21BAB0:  ADD             R1, PC; "operator*"
21BAB2:  B               loc_21BE3A
21BAB4:  ADDS            R0, R1, #2
21BAB6:  STR             R0, [R4]
21BAB8:  LDR             R0, [SP,#0x20+var_14]
21BABA:  LDR.W           R1, =(__stack_chk_guard_ptr - 0x21BAC2)
21BABE:  ADD             R1, PC; __stack_chk_guard_ptr
21BAC0:  LDR             R1, [R1]; __stack_chk_guard
21BAC2:  LDR             R1, [R1]
21BAC4:  CMP             R1, R0
21BAC6:  BNE.W           loc_21BD82
21BACA:  LDR             R1, =(aOperator_12 - 0x21BAD0); "operator-" ...
21BACC:  ADD             R1, PC; "operator-"
21BACE:  B               loc_21BE3A
21BAD0:  ADDS            R0, R1, #2
21BAD2:  STR             R0, [R4]
21BAD4:  LDR             R0, [SP,#0x20+var_14]
21BAD6:  LDR.W           R1, =(__stack_chk_guard_ptr - 0x21BADE)
21BADA:  ADD             R1, PC; __stack_chk_guard_ptr
21BADC:  LDR             R1, [R1]; __stack_chk_guard
21BADE:  LDR             R1, [R1]
21BAE0:  CMP             R1, R0
21BAE2:  BNE.W           loc_21BD82
21BAE6:  LDR             R1, =(aOperator_13 - 0x21BAEC); "operator^=" ...
21BAE8:  ADD             R1, PC; "operator^="
21BAEA:  B               loc_21BEA2
21BAEC:  ADDS            R0, R1, #2
21BAEE:  STR             R0, [R4]
21BAF0:  LDR             R0, [SP,#0x20+var_14]
21BAF2:  LDR.W           R1, =(__stack_chk_guard_ptr - 0x21BAFA)
21BAF6:  ADD             R1, PC; __stack_chk_guard_ptr
21BAF8:  LDR             R1, [R1]; __stack_chk_guard
21BAFA:  LDR             R1, [R1]
21BAFC:  CMP             R1, R0
21BAFE:  BNE.W           loc_21BD82
21BB02:  LDR             R1, =(aOperator_14 - 0x21BB08); "operator==" ...
21BB04:  ADD             R1, PC; "operator=="
21BB06:  B               loc_21BEA2
21BB08:  DCD aOperator - 0x21B770
21BB0C:  DCD aOperatorDelete - 0x21B7B4
21BB10:  DCD aOperator_0 - 0x21B7EA
21BB14:  DCD aOperator_1 - 0x21B830
21BB18:  DCD aOperator_2 - 0x21B85A
21BB1C:  DCD aOperator_3 - 0x21B896
21BB20:  DCD aOperator_4 - 0x21B8C0
21BB24:  DCD aOperator_5 - 0x21B8FE
21BB28:  DCD aOperator_6 - 0x21B934
21BB2C:  DCD aOperator_7 - 0x21B964
21BB30:  DCD aOperator_8 - 0x21B9A6
21BB34:  DCD aOperatorNew - 0x21BA0C
21BB38:  DCD aOperator_9 - 0x21BA4E
21BB3C:  DCD aOperator_10 - 0x21BA98
21BB40:  DCD aOperator_11 - 0x21BAB4
21BB44:  DCD aOperator_12 - 0x21BAD0
21BB48:  DCD aOperator_13 - 0x21BAEC
21BB4C:  DCD aOperator_14 - 0x21BB08
21BB50:  ADDS            R0, R1, #2
21BB52:  STR             R0, [R4]
21BB54:  LDR             R0, [SP,#0x20+var_14]
21BB56:  LDR.W           R1, =(__stack_chk_guard_ptr - 0x21BB5E)
21BB5A:  ADD             R1, PC; __stack_chk_guard_ptr
21BB5C:  LDR             R1, [R1]; __stack_chk_guard
21BB5E:  LDR             R1, [R1]
21BB60:  CMP             R1, R0
21BB62:  BNE.W           loc_21BD82
21BB66:  LDR             R1, =(aOperator_15 - 0x21BB6C); "operator|=" ...
21BB68:  ADD             R1, PC; "operator|="
21BB6A:  B               loc_21BEA2
21BB6C:  ADDS            R0, R1, #2
21BB6E:  STR             R0, [R4]
21BB70:  LDR             R0, [SP,#0x20+var_14]
21BB72:  LDR.W           R1, =(__stack_chk_guard_ptr - 0x21BB7A)
21BB76:  ADD             R1, PC; __stack_chk_guard_ptr
21BB78:  LDR             R1, [R1]; __stack_chk_guard
21BB7A:  LDR             R1, [R1]
21BB7C:  CMP             R1, R0
21BB7E:  BNE.W           loc_21BD82
21BB82:  LDR             R1, =(aOperator_16 - 0x21BB88); "operator|" ...
21BB84:  ADD             R1, PC; "operator|"
21BB86:  B               loc_21BE3A
21BB88:  CMP             R0, #0x61 ; 'a'
21BB8A:  BNE.W           loc_21BD6A
21BB8E:  ADDS            R0, R1, #2
21BB90:  STR             R0, [R4]
21BB92:  LDR             R0, [SP,#0x20+var_14]
21BB94:  LDR             R1, =(__stack_chk_guard_ptr - 0x21BB9A)
21BB96:  ADD             R1, PC; __stack_chk_guard_ptr
21BB98:  LDR             R1, [R1]; __stack_chk_guard
21BB9A:  LDR             R1, [R1]
21BB9C:  CMP             R1, R0
21BB9E:  BNE.W           loc_21BD82
21BBA2:  LDR             R1, =(aOperator_17 - 0x21BBA8); "operator&&" ...
21BBA4:  ADD             R1, PC; "operator&&"
21BBA6:  B               loc_21BEA2
21BBA8:  CMP             R3, #0x4C ; 'L'; jumptable 0021B7FE default case
21BBAA:  BNE.W           def_21B706; jumptable 0021B706 default case, cases 98,102,104,106,107,116,117
21BBAE:  ADDS            R0, R1, #2
21BBB0:  STR             R0, [R4]
21BBB2:  LDR             R0, [SP,#0x20+var_14]
21BBB4:  LDR.W           R1, =(__stack_chk_guard_ptr - 0x21BBBC)
21BBB8:  ADD             R1, PC; __stack_chk_guard_ptr
21BBBA:  LDR             R1, [R1]; __stack_chk_guard
21BBBC:  LDR             R1, [R1]
21BBBE:  CMP             R1, R0
21BBC0:  BNE.W           loc_21BD82
21BBC4:  LDR             R1, =(aOperator_18 - 0x21BBCA); "operator+=" ...
21BBC6:  ADD             R1, PC; "operator+="
21BBC8:  B               loc_21BEA2
21BBCA:  ADDS            R0, R1, #2
21BBCC:  STR             R0, [R4]
21BBCE:  LDR             R0, [SP,#0x20+var_14]
21BBD0:  LDR.W           R1, =(__stack_chk_guard_ptr - 0x21BBD8)
21BBD4:  ADD             R1, PC; __stack_chk_guard_ptr
21BBD6:  LDR             R1, [R1]; __stack_chk_guard
21BBD8:  LDR             R1, [R1]
21BBDA:  CMP             R1, R0
21BBDC:  BNE.W           loc_21BD82
21BBE0:  LDR             R1, =(aOperator_19 - 0x21BBE6); "operator%=" ...
21BBE2:  ADD             R1, PC; "operator%="
21BBE4:  B               loc_21BEA2
21BBE6:  ADDS            R0, R1, #2
21BBE8:  STR             R0, [R4]
21BBEA:  LDR             R0, [SP,#0x20+var_14]
21BBEC:  LDR.W           R1, =(__stack_chk_guard_ptr - 0x21BBF4)
21BBF0:  ADD             R1, PC; __stack_chk_guard_ptr
21BBF2:  LDR             R1, [R1]; __stack_chk_guard
21BBF4:  LDR             R1, [R1]
21BBF6:  CMP             R1, R0
21BBF8:  BNE.W           loc_21BD82
21BBFC:  LDR             R1, =(aOperator_20 - 0x21BC02); "operator>>=" ...
21BBFE:  ADD             R1, PC; "operator>>="
21BC00:  B               loc_21BE60
21BC02:  ADDS            R0, R1, #2
21BC04:  STR             R0, [R4]
21BC06:  LDR             R0, [SP,#0x20+var_14]
21BC08:  LDR.W           R1, =(__stack_chk_guard_ptr - 0x21BC10)
21BC0C:  ADD             R1, PC; __stack_chk_guard_ptr
21BC0E:  LDR             R1, [R1]; __stack_chk_guard
21BC10:  LDR             R1, [R1]
21BC12:  CMP             R1, R0
21BC14:  BNE.W           loc_21BD82
21BC18:  LDR             R1, =(aOperator_21 - 0x21BC1E); "operator>>" ...
21BC1A:  ADD             R1, PC; "operator>>"
21BC1C:  B               loc_21BEA2
21BC1E:  ADDS            R0, R1, #2
21BC20:  STR             R0, [R4]
21BC22:  LDR             R0, [SP,#0x20+var_14]
21BC24:  LDR             R1, =(__stack_chk_guard_ptr - 0x21BC2A)
21BC26:  ADD             R1, PC; __stack_chk_guard_ptr
21BC28:  LDR             R1, [R1]; __stack_chk_guard
21BC2A:  LDR             R1, [R1]
21BC2C:  CMP             R1, R0
21BC2E:  BNE.W           loc_21BD82
21BC32:  LDR             R1, =(aOperator_22 - 0x21BC38); "operator," ...
21BC34:  ADD             R1, PC; "operator,"
21BC36:  B               loc_21BE3A
21BC38:  ADDS            R0, R1, #2
21BC3A:  STR             R0, [R4]
21BC3C:  LDR             R0, [SP,#0x20+var_14]
21BC3E:  LDR             R1, =(__stack_chk_guard_ptr - 0x21BC44)
21BC40:  ADD             R1, PC; __stack_chk_guard_ptr
21BC42:  LDR             R1, [R1]; __stack_chk_guard
21BC44:  LDR             R1, [R1]
21BC46:  CMP             R1, R0
21BC48:  BNE.W           loc_21BD82
21BC4C:  LDR             R1, =(aOperator_23 - 0x21BC52); "operator~" ...
21BC4E:  ADD             R1, PC; "operator~"
21BC50:  B               loc_21BE3A
21BC52:  LDRB.W          R8, [R4,#0x184]
21BC56:  ADDS            R1, #2
21BC58:  LDRB.W          R6, [R4,#0x185]
21BC5C:  STRB.W          R0, [R4,#0x184]
21BC60:  ORRS.W          R0, R5, R6
21BC64:  STR             R1, [R4]
21BC66:  IT NE
21BC68:  MOVNE           R0, #1
21BC6A:  STRB.W          R0, [R4,#0x185]
21BC6E:  MOV             R0, R4
21BC70:  BL              sub_215C48
21BC74:  CMP             R0, #0
21BC76:  STR             R0, [SP,#0x20+var_18]
21BC78:  BEQ.W           loc_21BEB2
21BC7C:  CBZ             R5, loc_21BC82
21BC7E:  MOVS            R0, #1
21BC80:  STRB            R0, [R5]
21BC82:  ADD             R1, SP, #0x20+var_18
21BC84:  MOV             R0, R4
21BC86:  BL              sub_21C090
21BC8A:  B               loc_21BEB4
21BC8C:  ADDS            R0, R1, #2
21BC8E:  STR             R0, [R4]
21BC90:  LDR             R0, [SP,#0x20+var_14]
21BC92:  LDR             R1, =(__stack_chk_guard_ptr - 0x21BC98)
21BC94:  ADD             R1, PC; __stack_chk_guard_ptr
21BC96:  LDR             R1, [R1]; __stack_chk_guard
21BC98:  LDR             R1, [R1]
21BC9A:  CMP             R1, R0
21BC9C:  BNE             loc_21BD82
21BC9E:  LDR             R1, =(aOperator_24 - 0x21BCA4); "operator&=" ...
21BCA0:  ADD             R1, PC; "operator&="
21BCA2:  B               loc_21BEA2
21BCA4:  ADDS            R0, R1, #2
21BCA6:  STR             R0, [R4]
21BCA8:  LDR             R0, [SP,#0x20+var_14]
21BCAA:  LDR             R1, =(__stack_chk_guard_ptr - 0x21BCB0)
21BCAC:  ADD             R1, PC; __stack_chk_guard_ptr
21BCAE:  LDR             R1, [R1]; __stack_chk_guard
21BCB0:  LDR             R1, [R1]
21BCB2:  CMP             R1, R0
21BCB4:  BNE             loc_21BD82
21BCB6:  LDR             R1, =(aOperator_25 - 0x21BCBC); "operator=" ...
21BCB8:  ADD             R1, PC; "operator="
21BCBA:  B               loc_21BE3A
21BCBC:  ADDS            R0, R1, #2
21BCBE:  STR             R0, [R4]
21BCC0:  LDR             R0, [SP,#0x20+var_14]
21BCC2:  LDR             R1, =(__stack_chk_guard_ptr - 0x21BCC8)
21BCC4:  ADD             R1, PC; __stack_chk_guard_ptr
21BCC6:  LDR             R1, [R1]; __stack_chk_guard
21BCC8:  LDR             R1, [R1]
21BCCA:  CMP             R1, R0
21BCCC:  BNE             loc_21BD82
21BCCE:  LDR             R1, =(aOperator_26 - 0x21BCD4); "operator/=" ...
21BCD0:  ADD             R1, PC; "operator/="
21BCD2:  B               loc_21BEA2
21BCD4:  ADDS            R0, R1, #2
21BCD6:  STR             R0, [R4]
21BCD8:  LDR             R0, [SP,#0x20+var_14]
21BCDA:  LDR             R1, =(__stack_chk_guard_ptr - 0x21BCE0)
21BCDC:  ADD             R1, PC; __stack_chk_guard_ptr
21BCDE:  LDR             R1, [R1]; __stack_chk_guard
21BCE0:  LDR             R1, [R1]
21BCE2:  CMP             R1, R0
21BCE4:  BNE             loc_21BD82
21BCE6:  LDR             R1, =(aOperator_27 - 0x21BCEC); "operator/" ...
21BCE8:  ADD             R1, PC; "operator/"
21BCEA:  B               loc_21BE3A
21BCEC:  ADDS            R0, R1, #2
21BCEE:  STR             R0, [R4]
21BCF0:  LDR             R0, [SP,#0x20+var_14]
21BCF2:  LDR             R1, =(__stack_chk_guard_ptr - 0x21BCF8)
21BCF4:  ADD             R1, PC; __stack_chk_guard_ptr
21BCF6:  LDR             R1, [R1]; __stack_chk_guard
21BCF8:  LDR             R1, [R1]
21BCFA:  CMP             R1, R0
21BCFC:  BNE             loc_21BD82
21BCFE:  LDR             R1, =(aOperatorDelete_0 - 0x21BD06); "operator delete" ...
21BD00:  MOV             R0, R4
21BD02:  ADD             R1, PC; "operator delete"
21BD04:  ADD             SP, SP, #0x10
21BD06:  POP.W           {R8}
21BD0A:  POP.W           {R4-R7,LR}
21BD0E:  B.W             sub_21A910
21BD12:  ADDS            R0, R1, #2
21BD14:  STR             R0, [R4]
21BD16:  LDR             R0, [SP,#0x20+var_14]
21BD18:  LDR             R1, =(__stack_chk_guard_ptr - 0x21BD1E)
21BD1A:  ADD             R1, PC; __stack_chk_guard_ptr
21BD1C:  LDR             R1, [R1]; __stack_chk_guard
21BD1E:  LDR             R1, [R1]
21BD20:  CMP             R1, R0
21BD22:  BNE             loc_21BD82
21BD24:  LDR             R1, =(aOperator_28 - 0x21BD2A); "operator<<=" ...
21BD26:  ADD             R1, PC; "operator<<="
21BD28:  B               loc_21BE60
21BD2A:  ADDS            R0, R1, #2
21BD2C:  STR             R0, [R4]
21BD2E:  LDR             R0, [SP,#0x20+var_14]
21BD30:  LDR             R1, =(__stack_chk_guard_ptr - 0x21BD36)
21BD32:  ADD             R1, PC; __stack_chk_guard_ptr
21BD34:  LDR             R1, [R1]; __stack_chk_guard
21BD36:  LDR             R1, [R1]
21BD38:  CMP             R1, R0
21BD3A:  BNE             loc_21BD82
21BD3C:  LDR             R1, =(aOperator_29 - 0x21BD42); "operator<" ...
21BD3E:  ADD             R1, PC; "operator<"
21BD40:  B               loc_21BE3A
21BD42:  ADDS            R0, R1, #2
21BD44:  STR             R0, [R4]
21BD46:  MOV             R0, R4
21BD48:  BL              sub_21B5BC
21BD4C:  CBZ             R0, loc_21BD6A
21BD4E:  MOV             R5, R0
21BD50:  ADD.W           R0, R4, #0x198
21BD54:  MOVS            R1, #0xC
21BD56:  BL              sub_216EF0
21BD5A:  LDR             R2, =(_ZTVN12_GLOBAL__N_116itanium_demangle15LiteralOperatorE - 0x21BD62); `vtable for'`anonymous namespace'::itanium_demangle::LiteralOperator ...
21BD5C:  LDR             R1, =0x1010113
21BD5E:  ADD             R2, PC; `vtable for'`anonymous namespace'::itanium_demangle::LiteralOperator
21BD60:  STR             R5, [R0,#8]
21BD62:  ADDS            R2, #8
21BD64:  STRD.W          R2, R1, [R0]
21BD68:  B               def_21B706; jumptable 0021B706 default case, cases 98,102,104,106,107,116,117
21BD6A:  MOVS            R0, #0
21BD6C:  LDR             R1, [SP,#0x20+var_14]; jumptable 0021B706 default case, cases 98,102,104,106,107,116,117
21BD6E:  LDR             R2, =(__stack_chk_guard_ptr - 0x21BD74)
21BD70:  ADD             R2, PC; __stack_chk_guard_ptr
21BD72:  LDR             R2, [R2]; __stack_chk_guard
21BD74:  LDR             R2, [R2]
21BD76:  CMP             R2, R1
21BD78:  ITTT EQ
21BD7A:  ADDEQ           SP, SP, #0x10
21BD7C:  POPEQ.W         {R8}
21BD80:  POPEQ           {R4-R7,PC}
21BD82:  BLX             __stack_chk_fail
21BD86:  ADDS            R0, R1, #2
21BD88:  STR             R0, [R4]
21BD8A:  LDR             R0, [SP,#0x20+var_14]
21BD8C:  LDR             R1, =(__stack_chk_guard_ptr - 0x21BD92)
21BD8E:  ADD             R1, PC; __stack_chk_guard_ptr
21BD90:  LDR             R1, [R1]; __stack_chk_guard
21BD92:  LDR             R1, [R1]
21BD94:  CMP             R1, R0
21BD96:  BNE             loc_21BD82
21BD98:  LDR             R1, =(aOperator_30 - 0x21BD9E); "operator<<" ...
21BD9A:  ADD             R1, PC; "operator<<"
21BD9C:  B               loc_21BEA2
21BD9E:  ADDS            R0, R1, #2
21BDA0:  STR             R0, [R4]
21BDA2:  LDR             R0, [SP,#0x20+var_14]
21BDA4:  LDR             R1, =(__stack_chk_guard_ptr - 0x21BDAA)
21BDA6:  ADD             R1, PC; __stack_chk_guard_ptr
21BDA8:  LDR             R1, [R1]; __stack_chk_guard
21BDAA:  LDR             R1, [R1]
21BDAC:  CMP             R1, R0
21BDAE:  BNE             loc_21BD82
21BDB0:  LDR             R1, =(aOperator_31 - 0x21BDB6); "operator-=" ...
21BDB2:  ADD             R1, PC; "operator-="
21BDB4:  B               loc_21BEA2
21BDB6:  ADDS            R0, R1, #2
21BDB8:  STR             R0, [R4]
21BDBA:  LDR             R0, [SP,#0x20+var_14]
21BDBC:  LDR             R1, =(__stack_chk_guard_ptr - 0x21BDC2)
21BDBE:  ADD             R1, PC; __stack_chk_guard_ptr
21BDC0:  LDR             R1, [R1]; __stack_chk_guard
21BDC2:  LDR             R1, [R1]
21BDC4:  CMP             R1, R0
21BDC6:  BNE             loc_21BD82
21BDC8:  LDR             R1, =(aOperator_32 - 0x21BDCE); "operator*=" ...
21BDCA:  ADD             R1, PC; "operator*="
21BDCC:  B               loc_21BEA2
21BDCE:  ADDS            R0, R1, #2
21BDD0:  STR             R0, [R4]
21BDD2:  LDR             R0, [SP,#0x20+var_14]
21BDD4:  LDR             R1, =(__stack_chk_guard_ptr - 0x21BDDA)
21BDD6:  ADD             R1, PC; __stack_chk_guard_ptr
21BDD8:  LDR             R1, [R1]; __stack_chk_guard
21BDDA:  LDR             R1, [R1]
21BDDC:  CMP             R1, R0
21BDDE:  BNE             loc_21BD82
21BDE0:  LDR             R1, =(aOperator_33 - 0x21BDE6); "operator--" ...
21BDE2:  ADD             R1, PC; "operator--"
21BDE4:  B               loc_21BEA2
21BDE6:  ADDS            R0, R1, #2
21BDE8:  STR             R0, [R4]
21BDEA:  LDR             R0, [SP,#0x20+var_14]
21BDEC:  LDR             R1, =(__stack_chk_guard_ptr - 0x21BDF2)
21BDEE:  ADD             R1, PC; __stack_chk_guard_ptr
21BDF0:  LDR             R1, [R1]; __stack_chk_guard
21BDF2:  LDR             R1, [R1]
21BDF4:  CMP             R1, R0
21BDF6:  BNE             loc_21BD82
21BDF8:  LDR             R1, =(aOperatorNew_0 - 0x21BE00); "operator new" ...
21BDFA:  MOV             R0, R4
21BDFC:  ADD             R1, PC; "operator new"
21BDFE:  ADD             SP, SP, #0x10
21BE00:  POP.W           {R8}
21BE04:  POP.W           {R4-R7,LR}
21BE08:  B.W             sub_21C164
21BE0C:  ADDS            R0, R1, #2
21BE0E:  STR             R0, [R4]
21BE10:  LDR             R0, [SP,#0x20+var_14]
21BE12:  LDR             R1, =(__stack_chk_guard_ptr - 0x21BE18)
21BE14:  ADD             R1, PC; __stack_chk_guard_ptr
21BE16:  LDR             R1, [R1]; __stack_chk_guard
21BE18:  LDR             R1, [R1]
21BE1A:  CMP             R1, R0
21BE1C:  BNE             loc_21BD82
21BE1E:  LDR             R1, =(aOperator_34 - 0x21BE24); "operator!=" ...
21BE20:  ADD             R1, PC; "operator!="
21BE22:  B               loc_21BEA2
21BE24:  ADDS            R0, R1, #2
21BE26:  STR             R0, [R4]
21BE28:  LDR             R0, [SP,#0x20+var_14]
21BE2A:  LDR             R1, =(__stack_chk_guard_ptr - 0x21BE30)
21BE2C:  ADD             R1, PC; __stack_chk_guard_ptr
21BE2E:  LDR             R1, [R1]; __stack_chk_guard
21BE30:  LDR             R1, [R1]
21BE32:  CMP             R1, R0
21BE34:  BNE             loc_21BD82
21BE36:  LDR             R1, =(aOperator_35 - 0x21BE3C); "operator!" ...
21BE38:  ADD             R1, PC; "operator!"
21BE3A:  MOV             R0, R4
21BE3C:  ADD             SP, SP, #0x10
21BE3E:  POP.W           {R8}
21BE42:  POP.W           {R4-R7,LR}
21BE46:  B.W             sub_21C058
21BE4A:  ADDS            R0, R1, #2; jumptable 0021B7FE case 109
21BE4C:  STR             R0, [R4]
21BE4E:  LDR             R0, [SP,#0x20+var_14]
21BE50:  LDR             R1, =(__stack_chk_guard_ptr - 0x21BE56)
21BE52:  ADD             R1, PC; __stack_chk_guard_ptr
21BE54:  LDR             R1, [R1]; __stack_chk_guard
21BE56:  LDR             R1, [R1]
21BE58:  CMP             R1, R0
21BE5A:  BNE             loc_21BD82
21BE5C:  LDR             R1, =(aOperator_36 - 0x21BE62); "operator->*" ...
21BE5E:  ADD             R1, PC; "operator->*"
21BE60:  MOV             R0, R4
21BE62:  ADD             SP, SP, #0x10
21BE64:  POP.W           {R8}
21BE68:  POP.W           {R4-R7,LR}
21BE6C:  B.W             sub_21C0F4
21BE70:  ADDS            R0, R1, #2; jumptable 0021B7FE case 112
21BE72:  STR             R0, [R4]
21BE74:  LDR             R0, [SP,#0x20+var_14]
21BE76:  LDR             R1, =(__stack_chk_guard_ptr - 0x21BE7C)
21BE78:  ADD             R1, PC; __stack_chk_guard_ptr
21BE7A:  LDR             R1, [R1]; __stack_chk_guard
21BE7C:  LDR             R1, [R1]
21BE7E:  CMP             R1, R0
21BE80:  BNE.W           loc_21BD82
21BE84:  LDR             R1, =(aOperator_37 - 0x21BE8A); "operator++" ...
21BE86:  ADD             R1, PC; "operator++"
21BE88:  B               loc_21BEA2
21BE8A:  ADDS            R0, R1, #2; jumptable 0021B7FE case 116
21BE8C:  STR             R0, [R4]
21BE8E:  LDR             R0, [SP,#0x20+var_14]
21BE90:  LDR             R1, =(__stack_chk_guard_ptr - 0x21BE96)
21BE92:  ADD             R1, PC; __stack_chk_guard_ptr
21BE94:  LDR             R1, [R1]; __stack_chk_guard
21BE96:  LDR             R1, [R1]
21BE98:  CMP             R1, R0
21BE9A:  BNE.W           loc_21BD82
21BE9E:  LDR             R1, =(aOperator_38 - 0x21BEA4); "operator->" ...
21BEA0:  ADD             R1, PC; "operator->"
21BEA2:  MOV             R0, R4
21BEA4:  ADD             SP, SP, #0x10
21BEA6:  POP.W           {R8}
21BEAA:  POP.W           {R4-R7,LR}
21BEAE:  B.W             sub_21C020
21BEB2:  MOVS            R0, #0
21BEB4:  STRB.W          R8, [R4,#0x184]
21BEB8:  STRB.W          R6, [R4,#0x185]
21BEBC:  B               def_21B706; jumptable 0021B706 default case, cases 98,102,104,106,107,116,117
