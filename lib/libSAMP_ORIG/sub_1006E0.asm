; =========================================================
; Game Engine Function: sub_1006E0
; Address            : 0x1006E0 - 0x101D9E
; =========================================================

1006E0:  PUSH            {R4-R7,LR}
1006E2:  ADD             R7, SP, #0xC
1006E4:  PUSH.W          {R8-R11}
1006E8:  SUB             SP, SP, #0x44
1006EA:  MOV             R5, R0
1006EC:  LDR.W           R0, =(__stack_chk_guard_ptr - 0x1006F4)
1006F0:  ADD             R0, PC; __stack_chk_guard_ptr
1006F2:  LDR             R0, [R0]; __stack_chk_guard
1006F4:  LDR             R0, [R0]
1006F6:  STR             R0, [SP,#0x60+var_20]
1006F8:  MOV             R0, R5
1006FA:  LDR             R4, =(aGs - 0x100700); "gs" ...
1006FC:  ADD             R4, PC; "gs"
1006FE:  ADDS            R6, R4, #2
100700:  MOV             R1, R4
100702:  MOV             R2, R6
100704:  BL              sub_FE18C
100708:  LDRD.W          R12, R1, [R5]
10070C:  STRB.W          R0, [R7,#var_31]
100710:  SUB.W           R2, R1, R12
100714:  CMP             R2, #2
100716:  BCS             loc_100738
100718:  MOVS            R5, #0
10071A:  LDR             R0, [SP,#0x60+var_20]
10071C:  LDR.W           R1, =(__stack_chk_guard_ptr - 0x100724)
100720:  ADD             R1, PC; __stack_chk_guard_ptr
100722:  LDR             R1, [R1]; __stack_chk_guard
100724:  LDR             R1, [R1]
100726:  CMP             R1, R0
100728:  ITTTT EQ
10072A:  MOVEQ           R0, R5
10072C:  ADDEQ           SP, SP, #0x44 ; 'D'
10072E:  POPEQ.W         {R8-R11}
100732:  POPEQ           {R4-R7,PC}
100734:  BLX             __stack_chk_fail
100738:  STR             R5, [SP,#0x60+var_38]
10073A:  LDRB.W          R5, [R12]
10073E:  SUB.W           R3, R5, #0x4C ; 'L'; switch 41 cases
100742:  CMP             R3, #0x28 ; '('
100744:  BHI             def_100768; jumptable 00100768 default case
100746:  LDR             R0, =(asc_4AD7F - 0x10074C); "/" ...
100748:  ADD             R0, PC; "/"
10074A:  MOV             LR, R0
10074C:  LDR             R0, =(asc_4D101 - 0x100752); "," ...
10074E:  ADD             R0, PC; ","
100750:  MOV             R10, R0
100752:  LDR             R0, =(asc_4FAB9 - 0x100758); "&&" ...
100754:  ADD             R0, PC; "&&"
100756:  MOV             R11, R0
100758:  LDR             R0, =(asc_4FC4B - 0x10075E); "&" ...
10075A:  ADD             R0, PC; "&"
10075C:  MOV             R9, R0
10075E:  LDR             R0, =(asc_4E35F - 0x100764); "=" ...
100760:  ADD             R0, PC; "="
100762:  MOV             R8, R0
100764:  LDR             R0, =(asc_4D48B - 0x10076A); "&=" ...
100766:  ADD             R0, PC; "&="
100768:  TBH.W           [PC,R3,LSL#1]; switch jump
10076C:  DCW 0x29; jump table for switch statement
10076E:  DCW 0x4F
100770:  DCW 0x4F
100772:  DCW 0x4F
100774:  DCW 0x4F
100776:  DCW 0x4F
100778:  DCW 0x4F
10077A:  DCW 0x4F
10077C:  DCW 0xEB
10077E:  DCW 0x4F
100780:  DCW 0x4F
100782:  DCW 0x4F
100784:  DCW 0x4F
100786:  DCW 0x4F
100788:  DCW 0x4F
10078A:  DCW 0x4F
10078C:  DCW 0x4F
10078E:  DCW 0x4F
100790:  DCW 0x4F
100792:  DCW 0x4F
100794:  DCW 0x4F
100796:  DCW 0x19A
100798:  DCW 0x4F
10079A:  DCW 0x117
10079C:  DCW 0x1DE
10079E:  DCW 0xFC
1007A0:  DCW 0x21D
1007A2:  DCW 0x1C5
1007A4:  DCW 0x4F
1007A6:  DCW 0x9E
1007A8:  DCW 0x4F
1007AA:  DCW 0x4F
1007AC:  DCW 0x5E
1007AE:  DCW 0x7D
1007B0:  DCW 0x2D3
1007B2:  DCW 0x2BA
1007B4:  DCW 0xC7
1007B6:  DCW 0x147
1007B8:  DCW 0x24D
1007BA:  DCW 0x27C
1007BC:  DCW 0x204
1007BE:  LDR             R0, [SP,#0x60+var_20]; jumptable 00100768 case 76
1007C0:  LDR.W           R1, =(__stack_chk_guard_ptr - 0x1007C8)
1007C4:  ADD             R1, PC; __stack_chk_guard_ptr
1007C6:  LDR             R1, [R1]; __stack_chk_guard
1007C8:  LDR             R1, [R1]
1007CA:  CMP             R1, R0
1007CC:  LDR             R0, [SP,#0x60+var_38]
1007CE:  ITTTT EQ
1007D0:  ADDEQ           SP, SP, #0x44 ; 'D'
1007D2:  POPEQ.W         {R8-R11}
1007D6:  POPEQ.W         {R4-R7,LR}
1007DA:  BEQ.W           sub_101F48
1007DE:  B               loc_100734
1007E0:  SUB.W           R0, R5, #0x31 ; '1'; jumptable 00100768 default case
1007E4:  CMP             R0, #9
1007E6:  BCS             loc_10080A; jumptable 00100768 cases 77-83,85-96,98,104,106,107
1007E8:  LDR             R0, [SP,#0x60+var_20]
1007EA:  LDR.W           R1, =(__stack_chk_guard_ptr - 0x1007F2)
1007EE:  ADD             R1, PC; __stack_chk_guard_ptr
1007F0:  LDR             R1, [R1]; __stack_chk_guard
1007F2:  LDR             R1, [R1]
1007F4:  CMP             R1, R0
1007F6:  LDR             R0, [SP,#0x60+var_38]
1007F8:  BNE.W           loc_100734
1007FC:  ADD             SP, SP, #0x44 ; 'D'
1007FE:  POP.W           {R8-R11}
100802:  POP.W           {R4-R7,LR}
100806:  B.W             sub_1026E8
10080A:  LDR             R1, =(aU8Uuidoft - 0x100812); jumptable 00100768 cases 77-83,85-96,98,104,106,107
10080C:  LDR             R4, [SP,#0x60+var_38]
10080E:  ADD             R1, PC; "u8__uuidoft"
100810:  ADD.W           R2, R1, #0xB
100814:  MOV             R0, R4
100816:  BL              sub_FE18C
10081A:  CMP             R0, #0
10081C:  BEQ.W           loc_100D62
100820:  MOV             R0, R4
100822:  BL              sub_FE7F0
100826:  B               loc_100D7C
100828:  LDRB.W          R1, [R12,#1]; jumptable 00100768 case 108
10082C:  CMP             R1, #0x53 ; 'S'
10082E:  BEQ.W           loc_100F2A
100832:  LDR             R0, [SP,#0x60+var_38]
100834:  CMP             R1, #0x74 ; 't'
100836:  BEQ.W           loc_100EEC
10083A:  CMP             R1, #0x73 ; 's'
10083C:  BEQ.W           loc_100F0A
100840:  CMP             R1, #0x65 ; 'e'
100842:  BNE.W           loc_100718
100846:  ADD.W           R1, R12, #2
10084A:  STR             R1, [R0]
10084C:  LDR             R2, [SP,#0x60+var_20]
10084E:  LDR.W           R1, =(__stack_chk_guard_ptr - 0x100856)
100852:  ADD             R1, PC; __stack_chk_guard_ptr
100854:  LDR             R1, [R1]; __stack_chk_guard
100856:  LDR             R1, [R1]
100858:  CMP             R1, R2
10085A:  BNE.W           loc_100734
10085E:  LDR             R1, =(asc_4F518 - 0x100864); "<=" ...
100860:  ADD             R1, PC; "<="
100862:  B.W             loc_101868
100866:  LDRB.W          R2, [R12,#1]; jumptable 00100768 case 109
10086A:  CMP             R2, #0x49 ; 'I'
10086C:  BEQ.W           loc_101070
100870:  LDR             R4, [SP,#0x60+var_38]
100872:  CMP             R2, #0x4C ; 'L'
100874:  BEQ.W           loc_100FAE
100878:  CMP             R2, #0x6D ; 'm'
10087A:  BEQ.W           loc_100FF2
10087E:  CMP             R2, #0x6C ; 'l'
100880:  BEQ.W           loc_100FCE
100884:  CMP             R2, #0x69 ; 'i'
100886:  BNE.W           loc_100718
10088A:  ADD.W           R0, R12, #2
10088E:  STR             R0, [R4]
100890:  LDR             R0, [SP,#0x60+var_20]
100892:  LDR.W           R1, =(__stack_chk_guard_ptr - 0x10089A)
100896:  ADD             R1, PC; __stack_chk_guard_ptr
100898:  LDR             R1, [R1]; __stack_chk_guard
10089A:  LDR             R1, [R1]
10089C:  CMP             R1, R0
10089E:  BNE.W           loc_100734
1008A2:  LDR             R1, =(asc_4C8D3 - 0x1008A8); "-" ...
1008A4:  ADD             R1, PC; "-"
1008A6:  B               loc_100FEA
1008A8:  LDRB.W          R2, [R12,#1]; jumptable 00100768 case 105
1008AC:  CMP             R2, #0x6C ; 'l'
1008AE:  BEQ.W           loc_100DFA
1008B2:  LDR             R5, [SP,#0x60+var_38]
1008B4:  CMP             R2, #0x78 ; 'x'
1008B6:  BNE.W           loc_100718
1008BA:  ADD.W           R0, R12, #2
1008BE:  STR             R0, [R5]
1008C0:  MOV             R0, R5
1008C2:  BL              sub_1006E0
1008C6:  CMP             R0, #0
1008C8:  BEQ.W           loc_100718
1008CC:  MOV             R4, R0
1008CE:  MOV             R0, R5
1008D0:  BL              sub_1006E0
1008D4:  CMP             R0, #0
1008D6:  BEQ.W           loc_100718
1008DA:  MOV             R6, R0
1008DC:  ADD.W           R0, R5, #0x198
1008E0:  MOVS            R1, #0x10
1008E2:  BL              sub_FFA98
1008E6:  LDR             R1, =(_ZTVN12_GLOBAL__N_116itanium_demangle18ArraySubscriptExprE - 0x1008F0); `vtable for'`anonymous namespace'::itanium_demangle::ArraySubscriptExpr ...
1008E8:  MOV             R5, R0
1008EA:  LDR             R0, =0x1010130
1008EC:  ADD             R1, PC; `vtable for'`anonymous namespace'::itanium_demangle::ArraySubscriptExpr
1008EE:  STRD.W          R4, R6, [R5,#8]
1008F2:  ADDS            R1, #8
1008F4:  STRD.W          R1, R0, [R5]
1008F8:  B               loc_10071A
1008FA:  LDRB.W          R3, [R12,#1]; jumptable 00100768 case 112
1008FE:  MOVS            R5, #0
100900:  SUB.W           R2, R3, #0x6C ; 'l'; switch 9 cases
100904:  CMP             R2, #8
100906:  BHI.W           def_10090A; jumptable 0010090A default case
10090A:  TBH.W           [PC,R2,LSL#1]; switch jump
10090E:  DCW 0xA; jump table for switch statement
100910:  DCW 0x527
100912:  DCW 9
100914:  DCW 9
100916:  DCW 0x50B
100918:  DCW 9
10091A:  DCW 9
10091C:  DCW 0x538
10091E:  DCW 0x4C6
100920:  B               loc_10071A; jumptable 0010090A cases 110,111,113,114
100922:  LDR             R0, [SP,#0x60+var_38]; jumptable 0010090A case 108
100924:  ADD.W           R1, R12, #2
100928:  STR             R1, [R0]
10092A:  LDR             R2, [SP,#0x60+var_20]
10092C:  LDR.W           R1, =(__stack_chk_guard_ptr - 0x100934)
100930:  ADD             R1, PC; __stack_chk_guard_ptr
100932:  LDR             R1, [R1]; __stack_chk_guard
100934:  LDR             R1, [R1]
100936:  CMP             R1, R2
100938:  BNE.W           loc_100734
10093C:  LDR             R1, =(asc_4E68B - 0x100942); "+" ...
10093E:  ADD             R1, PC; "+"
100940:  B               loc_100F66
100942:  LDR             R0, [SP,#0x60+var_20]; jumptable 00100768 case 84
100944:  LDR.W           R1, =(__stack_chk_guard_ptr - 0x10094C)
100948:  ADD             R1, PC; __stack_chk_guard_ptr
10094A:  LDR             R1, [R1]; __stack_chk_guard
10094C:  LDR             R1, [R1]
10094E:  CMP             R1, R0
100950:  LDR             R0, [SP,#0x60+var_38]
100952:  ITTTT EQ
100954:  ADDEQ           SP, SP, #0x44 ; 'D'
100956:  POPEQ.W         {R8-R11}
10095A:  POPEQ.W         {R4-R7,LR}
10095E:  BEQ.W           sub_100070
100962:  B               loc_100734
100964:  LDRB.W          R1, [R12,#1]; jumptable 00100768 case 101
100968:  CMP             R1, #0x4F ; 'O'
10096A:  BEQ.W           loc_100E7A
10096E:  LDR             R0, [SP,#0x60+var_38]
100970:  CMP             R1, #0x71 ; 'q'
100972:  BEQ.W           loc_100E5A
100976:  CMP             R1, #0x6F ; 'o'
100978:  BNE.W           loc_100718
10097C:  ADD.W           R1, R12, #2
100980:  STR             R1, [R0]
100982:  LDR             R2, [SP,#0x60+var_20]
100984:  LDR.W           R1, =(__stack_chk_guard_ptr - 0x10098C)
100988:  ADD             R1, PC; __stack_chk_guard_ptr
10098A:  LDR             R1, [R1]; __stack_chk_guard
10098C:  LDR             R1, [R1]
10098E:  CMP             R1, R2
100990:  BNE.W           loc_100734
100994:  LDR             R1, =(asc_4E786 - 0x10099A); "^" ...
100996:  ADD             R1, PC; "^"
100998:  B               loc_100F66
10099A:  LDRB.W          R1, [R12,#1]; jumptable 00100768 case 99
10099E:  CMP             R1, #0x76 ; 'v'
1009A0:  BEQ.W           loc_10113A
1009A4:  LDR             R6, [SP,#0x60+var_38]
1009A6:  CMP             R1, #0x6C ; 'l'
1009A8:  BEQ.W           loc_101024
1009AC:  CMP             R1, #0x6D ; 'm'
1009AE:  BEQ.W           loc_1010CC
1009B2:  CMP             R1, #0x6F ; 'o'
1009B4:  BEQ.W           loc_101090
1009B8:  CMP             R1, #0x63 ; 'c'
1009BA:  BNE.W           loc_100718
1009BE:  ADD.W           R0, R12, #2
1009C2:  STR             R0, [R6]
1009C4:  MOV             R0, R6
1009C6:  BL              sub_FE7F0
1009CA:  CMP             R0, #0
1009CC:  BEQ.W           loc_100718
1009D0:  MOV             R4, R0
1009D2:  MOV             R0, R6
1009D4:  BL              sub_1006E0
1009D8:  CMP             R0, #0
1009DA:  BEQ.W           loc_100718
1009DE:  MOV             R8, R0
1009E0:  ADD.W           R0, R6, #0x198
1009E4:  MOVS            R1, #0x18
1009E6:  BL              sub_FFA98
1009EA:  LDR             R1, =(aConstCast - 0x1009F4); "const_cast" ...
1009EC:  MOV             R5, R0
1009EE:  LDR             R0, =0x1010135
1009F0:  ADD             R1, PC; "const_cast"
1009F2:  ADD.W           R2, R1, #0xA
1009F6:  B.W             loc_101804
1009FA:  LDRB.W          R1, [R12,#1]; jumptable 00100768 case 113
1009FE:  CMP             R1, #0x75 ; 'u'
100A00:  BNE.W           loc_100718
100A04:  LDR             R5, [SP,#0x60+var_38]
100A06:  ADD.W           R0, R12, #2
100A0A:  STR             R0, [R5]
100A0C:  MOV             R0, R5
100A0E:  BL              sub_1006E0
100A12:  CMP             R0, #0
100A14:  BEQ.W           loc_100718
100A18:  MOV             R4, R0
100A1A:  MOV             R0, R5
100A1C:  BL              sub_1006E0
100A20:  CMP             R0, #0
100A22:  BEQ.W           loc_100718
100A26:  MOV             R6, R0
100A28:  MOV             R0, R5
100A2A:  BL              sub_1006E0
100A2E:  CMP             R0, #0
100A30:  BEQ.W           loc_100718
100A34:  MOV             R9, R0
100A36:  ADD.W           R0, R5, #0x198
100A3A:  MOVS            R1, #0x14
100A3C:  BL              sub_FFA98
100A40:  LDR             R1, =(_ZTVN12_GLOBAL__N_116itanium_demangle15ConditionalExprE - 0x100A4A); `vtable for'`anonymous namespace'::itanium_demangle::ConditionalExpr ...
100A42:  MOV             R5, R0
100A44:  LDR             R0, =0x1010132
100A46:  ADD             R1, PC; `vtable for'`anonymous namespace'::itanium_demangle::ConditionalExpr
100A48:  ADDS            R1, #8
100A4A:  STRD.W          R1, R0, [R5]
100A4E:  ADD.W           R0, R5, #8
100A52:  STM.W           R0, {R4,R6,R9}
100A56:  B               loc_10071A
100A58:  DCD aGs - 0x100700
100A5C:  DCD asc_4AD7F - 0x10074C
100A60:  DCD asc_4D101 - 0x100752
100A64:  DCD asc_4FAB9 - 0x100758
100A68:  DCD asc_4FC4B - 0x10075E
100A6C:  DCD asc_4E35F - 0x100764
100A70:  DCD asc_4D48B - 0x10076A
100A74:  DCD aU8Uuidoft - 0x100812
100A78:  DCD asc_4F518 - 0x100864
100A7C:  DCD asc_4C8D3 - 0x1008A8
100A80:  DCD _ZTVN12_GLOBAL__N_116itanium_demangle18ArraySubscriptExprE - 0x1008F0
100A84:  DCD 0x1010130
100A88:  DCD asc_4E68B - 0x100942
100A8C:  DCD asc_4E786 - 0x10099A
100A90:  DCD aConstCast - 0x1009F4
100A94:  DCD 0x1010135
100A98:  DCD _ZTVN12_GLOBAL__N_116itanium_demangle15ConditionalExprE - 0x100A4A
100A9C:  DCD 0x1010132
100AA0:  MOV             R5, R0; jumptable 00100768 case 97
100AA2:  LDRB.W          R0, [R12,#1]
100AA6:  CMP             R0, #0x4E ; 'N'
100AA8:  BEQ.W           loc_101526
100AAC:  LDR             R5, [SP,#0x60+var_38]
100AAE:  CMP             R0, #0x53 ; 'S'
100AB0:  BEQ.W           loc_101586
100AB4:  CMP             R0, #0x7A ; 'z'
100AB6:  BEQ.W           loc_101564
100ABA:  CMP             R0, #0x64 ; 'd'
100ABC:  BEQ.W           loc_1014D4
100AC0:  CMP             R0, #0x6E ; 'n'
100AC2:  BEQ.W           loc_101504
100AC6:  CMP             R0, #0x74 ; 't'
100AC8:  BEQ.W           loc_1014F6
100ACC:  CMP             R0, #0x61 ; 'a'
100ACE:  BNE.W           loc_100718
100AD2:  ADD.W           R0, R12, #2
100AD6:  STR             R0, [R5]
100AD8:  LDR             R0, [SP,#0x60+var_20]
100ADA:  LDR.W           R1, =(__stack_chk_guard_ptr - 0x100AE2)
100ADE:  ADD             R1, PC; __stack_chk_guard_ptr
100AE0:  LDR             R1, [R1]; __stack_chk_guard
100AE2:  LDR             R1, [R1]
100AE4:  CMP             R1, R0
100AE6:  BNE.W           loc_100734
100AEA:  ADD.W           R2, R11, #2
100AEE:  MOV             R0, R5
100AF0:  MOV             R1, R11
100AF2:  B.W             loc_10186A
100AF6:  LDRB.W          R1, [R12,#1]; jumptable 00100768 case 103
100AFA:  CMP             R1, #0x74 ; 't'
100AFC:  BEQ.W           loc_100E3A
100B00:  LDR             R0, [SP,#0x60+var_38]
100B02:  CMP             R1, #0x65 ; 'e'
100B04:  BNE.W           loc_100718
100B08:  ADD.W           R1, R12, #2
100B0C:  STR             R1, [R0]
100B0E:  LDR             R2, [SP,#0x60+var_20]
100B10:  LDR.W           R1, =(__stack_chk_guard_ptr - 0x100B18)
100B14:  ADD             R1, PC; __stack_chk_guard_ptr
100B16:  LDR             R1, [R1]; __stack_chk_guard
100B18:  LDR             R1, [R1]
100B1A:  CMP             R1, R2
100B1C:  BNE.W           loc_100734
100B20:  LDR             R1, =(asc_4ACC6 - 0x100B26); ">=" ...
100B22:  ADD             R1, PC; ">="
100B24:  B.W             loc_101868
100B28:  LDRB.W          R1, [R12,#1]; jumptable 00100768 case 100
100B2C:  MOVS            R5, #0
100B2E:  SUB.W           R2, R1, #0x6C ; 'l'; switch 11 cases
100B32:  CMP             R2, #0xA
100B34:  BHI.W           def_100B38; jumptable 00100B38 default case
100B38:  TBH.W           [PC,R2,LSL#1]; switch jump
100B3C:  DCW 0xD; jump table for switch statement
100B3E:  DCW 0xC
100B40:  DCW 0xB
100B42:  DCW 0xC
100B44:  DCW 0xC
100B46:  DCW 0xC
100B48:  DCW 0xC
100B4A:  DCW 0x5E8
100B4C:  DCW 0x602
100B4E:  DCW 0xC
100B50:  DCW 0x629
100B52:  B               loc_1007E8; jumptable 00100B38 case 110
100B54:  B               loc_10071A; jumptable 00100B38 cases 109,111-114,117
100B56:  LDR             R4, [SP,#0x60+var_38]; jumptable 00100B38 case 108
100B58:  ADD.W           R0, R12, #2
100B5C:  STR             R0, [R4]
100B5E:  MOV             R0, R4
100B60:  BL              sub_1006E0
100B64:  MOVS            R5, #0
100B66:  STR             R0, [SP,#0x60+var_30]
100B68:  CMP             R0, #0
100B6A:  BEQ.W           loc_10071A
100B6E:  STRB.W          R5, [SP,#0x60+var_28]
100B72:  B               loc_100DC6
100B74:  LDRB.W          R1, [R12,#1]; jumptable 00100768 case 116
100B78:  CMP             R1, #0x77 ; 'w'
100B7A:  BEQ.W           loc_101224
100B7E:  LDR             R6, [SP,#0x60+var_38]
100B80:  CMP             R1, #0x69 ; 'i'
100B82:  BEQ.W           loc_1010AE
100B86:  CMP             R1, #0x6C ; 'l'
100B88:  BEQ.W           loc_1011B8
100B8C:  CMP             R1, #0x72 ; 'r'
100B8E:  BEQ.W           loc_1010EE
100B92:  CMP             R1, #0x65 ; 'e'
100B94:  BNE.W           loc_100718
100B98:  ADD.W           R0, R12, #2
100B9C:  STR             R0, [R6]
100B9E:  MOV             R0, R6
100BA0:  BL              sub_1006E0
100BA4:  B               loc_1010BA
100BA6:  MOV             R3, R12; jumptable 00100768 case 102
100BA8:  STR.W           R8, [SP,#0x60+var_3C]
100BAC:  LDRB.W          R4, [R3,#1]!
100BB0:  STRD.W          LR, R10, [SP,#0x60+var_44]
100BB4:  CMP             R4, #0x70 ; 'p'
100BB6:  BEQ.W           loc_100DD8
100BBA:  MOV             R6, R0
100BBC:  CMP             R4, #0x4C ; 'L'
100BBE:  BNE             loc_100BD2
100BC0:  CMP             R2, #3
100BC2:  BCC             loc_100BD2
100BC4:  LDRB.W          R2, [R12,#2]
100BC8:  SUBS            R2, #0x3A ; ':'
100BCA:  CMN.W           R2, #0xA
100BCE:  BCS.W           loc_100DD8
100BD2:  CMP             R12, R1
100BD4:  LDR             R4, [SP,#0x60+var_38]
100BD6:  ITT NE
100BD8:  STRNE           R3, [R4]
100BDA:  CMPNE           R1, R3
100BDC:  BEQ.W           loc_100718
100BE0:  LDRB            R0, [R3]
100BE2:  MOV.W           R8, #1
100BE6:  CMP             R0, #0x4C ; 'L'
100BE8:  BEQ.W           loc_101982
100BEC:  CMP             R0, #0x72 ; 'r'
100BEE:  MOV             R5, R11
100BF0:  BEQ             loc_100BFE
100BF2:  CMP             R0, #0x6C ; 'l'
100BF4:  BEQ.W           loc_101984
100BF8:  CMP             R0, #0x52 ; 'R'
100BFA:  BNE.W           loc_100718
100BFE:  MOV.W           R8, #0
100C02:  B.W             loc_101984
100C06:  LDRB.W          R1, [R12,#1]; jumptable 00100768 case 114
100C0A:  CMP             R1, #0x4D ; 'M'
100C0C:  BEQ.W           loc_10127A
100C10:  LDR             R5, [SP,#0x60+var_38]
100C12:  CMP             R1, #0x53 ; 'S'
100C14:  BEQ.W           loc_10111A
100C18:  CMP             R1, #0x73 ; 's'
100C1A:  BEQ.W           loc_101258
100C1E:  CMP             R1, #0x6D ; 'm'
100C20:  BEQ.W           loc_101204
100C24:  CMP             R1, #0x63 ; 'c'
100C26:  BNE.W           loc_100718
100C2A:  ADD.W           R0, R12, #2
100C2E:  STR             R0, [R5]
100C30:  MOV             R0, R5
100C32:  BL              sub_FE7F0
100C36:  CMP             R0, #0
100C38:  BEQ.W           loc_100718
100C3C:  MOV             R4, R0
100C3E:  MOV             R0, R5
100C40:  BL              sub_1006E0
100C44:  CMP             R0, #0
100C46:  BEQ.W           loc_100718
100C4A:  MOV             R6, R0
100C4C:  ADD.W           R0, R5, #0x198
100C50:  MOVS            R1, #0x18
100C52:  BL              sub_FFA98
100C56:  LDR             R1, =(aReinterpretCas - 0x100C60); "reinterpret_cast" ...
100C58:  MOV             R5, R0
100C5A:  LDR             R0, =0x1010135
100C5C:  ADD             R1, PC; "reinterpret_cast"
100C5E:  ADD.W           R2, R1, #0x10
100C62:  B               loc_100CCC
100C64:  LDRB.W          R2, [R12,#1]; jumptable 00100768 case 115
100C68:  CMP             R2, #0x50 ; 'P'
100C6A:  BEQ.W           loc_1015CE
100C6E:  LDR             R5, [SP,#0x60+var_38]
100C70:  CMP             R2, #0x5A ; 'Z'
100C72:  BEQ.W           loc_101630
100C76:  CMP             R2, #0x7A ; 'z'
100C78:  BEQ.W           loc_10160E
100C7C:  CMP             R2, #0x70 ; 'p'
100C7E:  BEQ.W           loc_101546
100C82:  CMP             R2, #0x72 ; 'r'
100C84:  BEQ.W           loc_1015B6
100C88:  CMP             R2, #0x74 ; 't'
100C8A:  BEQ.W           loc_1015A8
100C8E:  CMP             R2, #0x63 ; 'c'
100C90:  BNE.W           loc_100718
100C94:  ADD.W           R0, R12, #2
100C98:  STR             R0, [R5]
100C9A:  MOV             R0, R5
100C9C:  BL              sub_FE7F0
100CA0:  CMP             R0, #0
100CA2:  BEQ.W           loc_100718
100CA6:  MOV             R4, R0
100CA8:  MOV             R0, R5
100CAA:  BL              sub_1006E0
100CAE:  CMP             R0, #0
100CB0:  BEQ.W           loc_100718
100CB4:  MOV             R6, R0
100CB6:  ADD.W           R0, R5, #0x198
100CBA:  MOVS            R1, #0x18
100CBC:  BL              sub_FFA98
100CC0:  LDR             R1, =(aStaticCast - 0x100CCA); "static_cast" ...
100CC2:  MOV             R5, R0
100CC4:  LDR             R0, =0x1010135
100CC6:  ADD             R1, PC; "static_cast"
100CC8:  ADD.W           R2, R1, #0xB
100CCC:  LDR             R3, =(_ZTVN12_GLOBAL__N_116itanium_demangle8CastExprE - 0x100CD2); `vtable for'`anonymous namespace'::itanium_demangle::CastExpr ...
100CCE:  ADD             R3, PC; `vtable for'`anonymous namespace'::itanium_demangle::CastExpr
100CD0:  ADDS            R3, #8
100CD2:  STR             R3, [R5]
100CD4:  STR             R0, [R5,#4]
100CD6:  STR             R1, [R5,#8]
100CD8:  STR             R2, [R5,#0xC]
100CDA:  STR             R4, [R5,#0x10]
100CDC:  STR             R6, [R5,#0x14]
100CDE:  B               loc_10071A
100CE0:  LDRB.W          R1, [R12,#1]; jumptable 00100768 case 111
100CE4:  CMP             R1, #0x52 ; 'R'
100CE6:  BEQ.W           loc_100F8C
100CEA:  LDR             R0, [SP,#0x60+var_38]
100CEC:  CMP             R1, #0x72 ; 'r'
100CEE:  BEQ.W           loc_100F4A
100CF2:  CMP             R1, #0x6F ; 'o'
100CF4:  BEQ.W           loc_100F6C
100CF8:  CMP             R1, #0x6E ; 'n'
100CFA:  BNE.W           loc_100718
100CFE:  LDR             R2, [SP,#0x60+var_20]
100D00:  LDR.W           R1, =(__stack_chk_guard_ptr - 0x100D08)
100D04:  ADD             R1, PC; __stack_chk_guard_ptr
100D06:  LDR             R1, [R1]; __stack_chk_guard
100D08:  LDR             R1, [R1]
100D0A:  CMP             R1, R2
100D0C:  BEQ.W           loc_1007FC
100D10:  B               loc_100734
100D12:  LDRB.W          R1, [R12,#1]; jumptable 00100768 case 110
100D16:  LDR.W           R8, [SP,#0x60+var_38]
100D1A:  CMP             R1, #0x61 ; 'a'
100D1C:  BEQ             loc_100D3C
100D1E:  CMP             R1, #0x65 ; 'e'
100D20:  BEQ.W           loc_10148A
100D24:  CMP             R1, #0x67 ; 'g'
100D26:  BEQ.W           loc_1013A0
100D2A:  CMP             R1, #0x74 ; 't'
100D2C:  BEQ.W           loc_10140C
100D30:  CMP             R1, #0x78 ; 'x'
100D32:  BEQ.W           loc_1013C0
100D36:  CMP             R1, #0x77 ; 'w'
100D38:  BNE.W           loc_100718
100D3C:  MOV             R0, R8
100D3E:  MOV             R1, R4
100D40:  MOV             R2, R6
100D42:  BL              sub_FE18C
100D46:  MOV             R11, R0
100D48:  LDRD.W          R0, R1, [R8]
100D4C:  SUBS            R1, R1, R0
100D4E:  CMP             R1, #2
100D50:  BCC.W           loc_101430
100D54:  LDRB            R0, [R0,#1]
100D56:  SUBS            R0, #0x61 ; 'a'
100D58:  CLZ.W           R0, R0
100D5C:  MOV.W           R9, R0,LSR#5
100D60:  B               loc_101434
100D62:  LDR             R1, =(aU8Uuidofz - 0x100D6A); "u8__uuidofz" ...
100D64:  MOV             R0, R4
100D66:  ADD             R1, PC; "u8__uuidofz"
100D68:  ADD.W           R2, R1, #0xB
100D6C:  BL              sub_FE18C
100D70:  CMP             R0, #0
100D72:  BEQ.W           loc_100718
100D76:  MOV             R0, R4
100D78:  BL              sub_1006E0
100D7C:  CMP             R0, #0
100D7E:  STR             R0, [SP,#0x60+var_30]
100D80:  BEQ.W           loc_100718
100D84:  ADD             R1, SP, #0x60+var_30
100D86:  MOV             R0, R4
100D88:  BL              sub_102B2C
100D8C:  B.W             loc_101A1E
100D90:  CMP             R1, #0x56 ; 'V'; jumptable 00100B38 default case
100D92:  BEQ.W           loc_10184A
100D96:  LDR             R6, [SP,#0x60+var_38]
100D98:  CMP             R1, #0x65 ; 'e'
100D9A:  BEQ.W           loc_10181C
100D9E:  CMP             R1, #0x63 ; 'c'
100DA0:  BEQ.W           loc_1017CC
100DA4:  CMP             R1, #0x61 ; 'a'
100DA6:  BNE.W           loc_10071A
100DAA:  LDR             R4, [SP,#0x60+var_38]
100DAC:  ADD.W           R0, R12, #2
100DB0:  STR             R0, [R4]
100DB2:  MOV             R0, R4
100DB4:  BL              sub_1006E0
100DB8:  CMP             R0, #0
100DBA:  STR             R0, [SP,#0x60+var_30]
100DBC:  BEQ.W           loc_100718
100DC0:  MOVS            R0, #1
100DC2:  STRB.W          R0, [SP,#0x60+var_28]
100DC6:  ADD             R1, SP, #0x60+var_30
100DC8:  SUB.W           R2, R7, #-var_31
100DCC:  ADD             R3, SP, #0x60+var_28
100DCE:  MOV             R0, R4
100DD0:  BL              sub_1026A8
100DD4:  B.W             loc_101A1E
100DD8:  LDR             R0, [SP,#0x60+var_20]
100DDA:  LDR.W           R1, =(__stack_chk_guard_ptr - 0x100DE2)
100DDE:  ADD             R1, PC; __stack_chk_guard_ptr
100DE0:  LDR             R1, [R1]; __stack_chk_guard
100DE2:  LDR             R1, [R1]
100DE4:  CMP             R1, R0
100DE6:  LDR             R0, [SP,#0x60+var_38]
100DE8:  ITTTT EQ
100DEA:  ADDEQ           SP, SP, #0x44 ; 'D'
100DEC:  POPEQ.W         {R8-R11}
100DF0:  POPEQ.W         {R4-R7,LR}
100DF4:  BEQ.W           sub_102564
100DF8:  B               loc_100734
100DFA:  LDR             R5, [SP,#0x60+var_38]
100DFC:  ADD.W           R0, R12, #2
100E00:  MOV             R4, R5
100E02:  LDR             R3, [R5,#0xC]
100E04:  LDR.W           R2, [R4,#8]!
100E08:  STR             R0, [R5]
100E0A:  ADD             R6, SP, #0x60+var_30
100E0C:  SUBS            R2, R3, R2
100E0E:  MOV.W           R8, R2,ASR#2
100E12:  CMP             R0, R1
100E14:  BEQ             loc_100E1E
100E16:  LDRB            R1, [R0]
100E18:  CMP             R1, #0x45 ; 'E'
100E1A:  BEQ.W           loc_1014AC
100E1E:  MOV             R0, R5
100E20:  BL              sub_1028CC
100E24:  CMP             R0, #0
100E26:  STR             R0, [SP,#0x60+var_30]
100E28:  BEQ.W           loc_100718
100E2C:  MOV             R0, R4
100E2E:  MOV             R1, R6
100E30:  BL              sub_FF894
100E34:  LDRD.W          R0, R1, [R5]
100E38:  B               loc_100E12
100E3A:  LDR             R0, [SP,#0x60+var_38]
100E3C:  ADD.W           R1, R12, #2
100E40:  STR             R1, [R0]
100E42:  LDR             R2, [SP,#0x60+var_20]
100E44:  LDR.W           R1, =(__stack_chk_guard_ptr - 0x100E4C)
100E48:  ADD             R1, PC; __stack_chk_guard_ptr
100E4A:  LDR             R1, [R1]; __stack_chk_guard
100E4C:  LDR             R1, [R1]
100E4E:  CMP             R1, R2
100E50:  BNE.W           loc_100734
100E54:  LDR             R1, =(asc_4DB85 - 0x100E5A); ">" ...
100E56:  ADD             R1, PC; ">"
100E58:  B               loc_100F66
100E5A:  ADD.W           R1, R12, #2
100E5E:  STR             R1, [R0]
100E60:  LDR             R2, [SP,#0x60+var_20]
100E62:  LDR.W           R1, =(__stack_chk_guard_ptr - 0x100E6A)
100E66:  ADD             R1, PC; __stack_chk_guard_ptr
100E68:  LDR             R1, [R1]; __stack_chk_guard
100E6A:  LDR             R1, [R1]
100E6C:  CMP             R1, R2
100E6E:  BNE.W           loc_100734
100E72:  LDR             R1, =(asc_4DCB7 - 0x100E78); "==" ...
100E74:  ADD             R1, PC; "=="
100E76:  B.W             loc_101868
100E7A:  LDR             R0, [SP,#0x60+var_38]
100E7C:  ADD.W           R1, R12, #2
100E80:  STR             R1, [R0]
100E82:  LDR             R2, [SP,#0x60+var_20]
100E84:  LDR.W           R1, =(__stack_chk_guard_ptr - 0x100E8C)
100E88:  ADD             R1, PC; __stack_chk_guard_ptr
100E8A:  LDR             R1, [R1]; __stack_chk_guard
100E8C:  LDR             R1, [R1]
100E8E:  CMP             R1, R2
100E90:  BNE.W           loc_100734
100E94:  LDR             R1, =(asc_4DCB4 - 0x100E9A); "^=" ...
100E96:  ADD             R1, PC; "^="
100E98:  B.W             loc_101868
100E9C:  CMP             R3, #0x4C ; 'L'; jumptable 0010090A default case
100E9E:  BNE.W           loc_10071A
100EA2:  LDR             R0, [SP,#0x60+var_38]
100EA4:  ADD.W           R1, R12, #2
100EA8:  STR             R1, [R0]
100EAA:  LDR             R2, [SP,#0x60+var_20]
100EAC:  LDR.W           R1, =(__stack_chk_guard_ptr - 0x100EB4)
100EB0:  ADD             R1, PC; __stack_chk_guard_ptr
100EB2:  LDR             R1, [R1]; __stack_chk_guard
100EB4:  LDR             R1, [R1]
100EB6:  CMP             R1, R2
100EB8:  BNE.W           loc_100734
100EBC:  LDR             R1, =(asc_4E1F7 - 0x100EC2); "+=" ...
100EBE:  ADD             R1, PC; "+="
100EC0:  B.W             loc_101868
100EC4:  DCD asc_4ACC6 - 0x100B26
100EC8:  DCD aReinterpretCas - 0x100C60
100ECC:  DCD 0x1010135
100ED0:  DCD aStaticCast - 0x100CCA
100ED4:  DCD _ZTVN12_GLOBAL__N_116itanium_demangle8CastExprE - 0x100CD2
100ED8:  DCD aU8Uuidofz - 0x100D6A
100EDC:  DCD asc_4DB85 - 0x100E5A
100EE0:  DCD asc_4DCB7 - 0x100E78
100EE4:  DCD asc_4DCB4 - 0x100E9A
100EE8:  DCD asc_4E1F7 - 0x100EC2
100EEC:  ADD.W           R1, R12, #2
100EF0:  STR             R1, [R0]
100EF2:  LDR             R2, [SP,#0x60+var_20]
100EF4:  LDR.W           R1, =(__stack_chk_guard_ptr - 0x100EFC)
100EF8:  ADD             R1, PC; __stack_chk_guard_ptr
100EFA:  LDR             R1, [R1]; __stack_chk_guard
100EFC:  LDR             R1, [R1]
100EFE:  CMP             R1, R2
100F00:  BNE.W           loc_100734
100F04:  LDR             R1, =(asc_4A928 - 0x100F0A); "<" ...
100F06:  ADD             R1, PC; "<"
100F08:  B               loc_100F66
100F0A:  ADD.W           R1, R12, #2
100F0E:  STR             R1, [R0]
100F10:  LDR             R2, [SP,#0x60+var_20]
100F12:  LDR.W           R1, =(__stack_chk_guard_ptr - 0x100F1A)
100F16:  ADD             R1, PC; __stack_chk_guard_ptr
100F18:  LDR             R1, [R1]; __stack_chk_guard
100F1A:  LDR             R1, [R1]
100F1C:  CMP             R1, R2
100F1E:  BNE.W           loc_100734
100F22:  LDR             R1, =(asc_4EEEF - 0x100F28); "<<" ...
100F24:  ADD             R1, PC; "<<"
100F26:  B.W             loc_101868
100F2A:  LDR             R0, [SP,#0x60+var_38]
100F2C:  ADD.W           R1, R12, #2
100F30:  STR             R1, [R0]
100F32:  LDR             R2, [SP,#0x60+var_20]
100F34:  LDR.W           R1, =(__stack_chk_guard_ptr - 0x100F3C)
100F38:  ADD             R1, PC; __stack_chk_guard_ptr
100F3A:  LDR             R1, [R1]; __stack_chk_guard
100F3C:  LDR             R1, [R1]
100F3E:  CMP             R1, R2
100F40:  BNE.W           loc_100734
100F44:  LDR             R1, =(asc_4E941 - 0x100F4A); "<<=" ...
100F46:  ADD             R1, PC; "<<="
100F48:  B               loc_10137A
100F4A:  ADD.W           R1, R12, #2
100F4E:  STR             R1, [R0]
100F50:  LDR             R2, [SP,#0x60+var_20]
100F52:  LDR.W           R1, =(__stack_chk_guard_ptr - 0x100F5A)
100F56:  ADD             R1, PC; __stack_chk_guard_ptr
100F58:  LDR             R1, [R1]; __stack_chk_guard
100F5A:  LDR             R1, [R1]
100F5C:  CMP             R1, R2
100F5E:  BNE.W           loc_100734
100F62:  LDR             R1, =(asc_4FABC - 0x100F68); "|" ...
100F64:  ADD             R1, PC; "|"
100F66:  ADDS            R2, R1, #1
100F68:  B.W             loc_10186A
100F6C:  ADD.W           R1, R12, #2
100F70:  STR             R1, [R0]
100F72:  LDR             R2, [SP,#0x60+var_20]
100F74:  LDR.W           R1, =(__stack_chk_guard_ptr - 0x100F7C)
100F78:  ADD             R1, PC; __stack_chk_guard_ptr
100F7A:  LDR             R1, [R1]; __stack_chk_guard
100F7C:  LDR             R1, [R1]
100F7E:  CMP             R1, R2
100F80:  BNE.W           loc_100734
100F84:  LDR             R1, =(asc_4E517 - 0x100F8A); "||" ...
100F86:  ADD             R1, PC; "||"
100F88:  B.W             loc_101868
100F8C:  LDR             R0, [SP,#0x60+var_38]
100F8E:  ADD.W           R1, R12, #2
100F92:  STR             R1, [R0]
100F94:  LDR             R2, [SP,#0x60+var_20]
100F96:  LDR.W           R1, =(__stack_chk_guard_ptr - 0x100F9E)
100F9A:  ADD             R1, PC; __stack_chk_guard_ptr
100F9C:  LDR             R1, [R1]; __stack_chk_guard
100F9E:  LDR             R1, [R1]
100FA0:  CMP             R1, R2
100FA2:  BNE.W           loc_100734
100FA6:  LDR             R1, =(asc_4E788 - 0x100FAC); "|=" ...
100FA8:  ADD             R1, PC; "|="
100FAA:  B.W             loc_101868
100FAE:  ADD.W           R0, R12, #2
100FB2:  STR             R0, [R4]
100FB4:  LDR             R0, [SP,#0x60+var_20]
100FB6:  LDR.W           R1, =(__stack_chk_guard_ptr - 0x100FBE)
100FBA:  ADD             R1, PC; __stack_chk_guard_ptr
100FBC:  LDR             R1, [R1]; __stack_chk_guard
100FBE:  LDR             R1, [R1]
100FC0:  CMP             R1, R0
100FC2:  BNE.W           loc_100734
100FC6:  LDR             R1, =(asc_4D212 - 0x100FCC); "*=" ...
100FC8:  ADD             R1, PC; "*="
100FCA:  ADDS            R2, R1, #2
100FCC:  B               loc_100FEC
100FCE:  ADD.W           R0, R12, #2
100FD2:  STR             R0, [R4]
100FD4:  LDR             R0, [SP,#0x60+var_20]
100FD6:  LDR.W           R1, =(__stack_chk_guard_ptr - 0x100FDE)
100FDA:  ADD             R1, PC; __stack_chk_guard_ptr
100FDC:  LDR             R1, [R1]; __stack_chk_guard
100FDE:  LDR             R1, [R1]
100FE0:  CMP             R1, R0
100FE2:  BNE.W           loc_100734
100FE6:  LDR             R1, =(byte_4CC4A - 0x100FEC)
100FE8:  ADD             R1, PC; byte_4CC4A
100FEA:  ADDS            R2, R1, #1
100FEC:  MOV             R0, R4
100FEE:  B.W             loc_10186A
100FF2:  ADD.W           R2, R12, #2
100FF6:  STR             R2, [R4]
100FF8:  CMP             R2, R1
100FFA:  BEQ.W           loc_10166C
100FFE:  LDRB            R1, [R2]
101000:  CMP             R1, #0x5F ; '_'
101002:  BNE.W           loc_10166C
101006:  ADD.W           R0, R12, #3
10100A:  STR             R0, [R4]
10100C:  LDR             R0, [SP,#0x60+var_20]
10100E:  LDR.W           R1, =(__stack_chk_guard_ptr - 0x101016)
101012:  ADD             R1, PC; __stack_chk_guard_ptr
101014:  LDR             R1, [R1]; __stack_chk_guard
101016:  LDR             R1, [R1]
101018:  CMP             R1, R0
10101A:  BNE.W           loc_100734
10101E:  LDR             R1, =(asc_500EF - 0x101024); "--" ...
101020:  ADD             R1, PC; "--"
101022:  B               loc_101356
101024:  ADD.W           R0, R12, #2
101028:  STR             R0, [R6]
10102A:  MOV             R0, R6
10102C:  BL              sub_1006E0
101030:  CMP             R0, #0
101032:  BEQ.W           loc_100718
101036:  MOV             R4, R6
101038:  MOV             R8, R0
10103A:  LDR.W           R0, [R4,#8]!
10103E:  LDR             R1, [R4,#4]
101040:  ADD             R5, SP, #0x60+var_30
101042:  SUBS            R0, R1, R0
101044:  MOV.W           R9, R0,ASR#2
101048:  LDRD.W          R0, R1, [R6]
10104C:  CMP             R0, R1
10104E:  BEQ             loc_101058
101050:  LDRB            R1, [R0]
101052:  CMP             R1, #0x45 ; 'E'
101054:  BEQ.W           loc_10190C
101058:  MOV             R0, R6
10105A:  BL              sub_1006E0
10105E:  CMP             R0, #0
101060:  STR             R0, [SP,#0x60+var_30]
101062:  BEQ.W           loc_100718
101066:  MOV             R0, R4
101068:  MOV             R1, R5
10106A:  BL              sub_FF894
10106E:  B               loc_101048
101070:  LDR             R0, [SP,#0x60+var_38]
101072:  ADD.W           R1, R12, #2
101076:  STR             R1, [R0]
101078:  LDR             R2, [SP,#0x60+var_20]
10107A:  LDR.W           R1, =(__stack_chk_guard_ptr - 0x101082)
10107E:  ADD             R1, PC; __stack_chk_guard_ptr
101080:  LDR             R1, [R1]; __stack_chk_guard
101082:  LDR             R1, [R1]
101084:  CMP             R1, R2
101086:  BNE.W           loc_100734
10108A:  LDR             R1, =(asc_4C5F0 - 0x101090); "-=" ...
10108C:  ADD             R1, PC; "-="
10108E:  B               loc_101868
101090:  ADD.W           R0, R12, #2
101094:  STR             R0, [R6]
101096:  LDR             R0, [SP,#0x60+var_20]
101098:  LDR.W           R1, =(__stack_chk_guard_ptr - 0x1010A0)
10109C:  ADD             R1, PC; __stack_chk_guard_ptr
10109E:  LDR             R1, [R1]; __stack_chk_guard
1010A0:  LDR             R1, [R1]
1010A2:  CMP             R1, R0
1010A4:  BNE.W           loc_100734
1010A8:  LDR             R1, =(asc_4FD56 - 0x1010AE); "~" ...
1010AA:  ADD             R1, PC; "~"
1010AC:  B               loc_101838
1010AE:  ADD.W           R0, R12, #2
1010B2:  STR             R0, [R6]
1010B4:  MOV             R0, R6
1010B6:  BL              sub_FE7F0
1010BA:  CMP             R0, #0
1010BC:  STR             R0, [SP,#0x60+var_30]
1010BE:  BEQ.W           loc_100718
1010C2:  LDR             R1, =(aTypeid - 0x1010CC); "typeid (" ...
1010C4:  ADD             R2, SP, #0x60+var_30
1010C6:  MOV             R0, R6
1010C8:  ADD             R1, PC; "typeid ("
1010CA:  B               loc_10162A
1010CC:  ADD.W           R0, R12, #2
1010D0:  STR             R0, [R6]
1010D2:  LDR             R0, [SP,#0x60+var_20]
1010D4:  LDR.W           R1, =(__stack_chk_guard_ptr - 0x1010DC)
1010D8:  ADD             R1, PC; __stack_chk_guard_ptr
1010DA:  LDR             R1, [R1]; __stack_chk_guard
1010DC:  LDR             R1, [R1]
1010DE:  CMP             R1, R0
1010E0:  BNE.W           loc_100734
1010E4:  ADD.W           R2, R10, #1
1010E8:  MOV             R0, R6
1010EA:  MOV             R1, R10
1010EC:  B               loc_10186A
1010EE:  ADD.W           R0, R12, #2
1010F2:  STR             R0, [R6]
1010F4:  LDR             R0, [SP,#0x60+var_20]
1010F6:  LDR.W           R1, =(__stack_chk_guard_ptr - 0x1010FE)
1010FA:  ADD             R1, PC; __stack_chk_guard_ptr
1010FC:  LDR             R1, [R1]; __stack_chk_guard
1010FE:  LDR             R1, [R1]
101100:  CMP             R1, R0
101102:  BNE.W           loc_100734
101106:  LDR             R1, =(aThrow - 0x10110E); "throw" ...
101108:  MOV             R0, R6
10110A:  ADD             R1, PC; "throw"
10110C:  ADD             SP, SP, #0x44 ; 'D'
10110E:  POP.W           {R8-R11}
101112:  POP.W           {R4-R7,LR}
101116:  B.W             sub_102AF4
10111A:  ADD.W           R0, R12, #2
10111E:  STR             R0, [R5]
101120:  LDR             R0, [SP,#0x60+var_20]
101122:  LDR.W           R1, =(__stack_chk_guard_ptr - 0x10112A)
101126:  ADD             R1, PC; __stack_chk_guard_ptr
101128:  LDR             R1, [R1]; __stack_chk_guard
10112A:  LDR             R1, [R1]
10112C:  CMP             R1, R0
10112E:  BNE.W           loc_100734
101132:  LDR             R1, =(asc_4E1FA - 0x101138); ">>=" ...
101134:  ADD             R1, PC; ">>="
101136:  ADDS            R2, R1, #3
101138:  B               loc_101276
10113A:  LDR             R1, =(aCv - 0x101142); "cv" ...
10113C:  LDR             R0, [SP,#0x60+var_38]
10113E:  ADD             R1, PC; "cv"
101140:  ADDS            R2, R1, #2
101142:  BL              sub_FE18C
101146:  MOVS            R5, #0
101148:  CMP             R0, #0
10114A:  BEQ.W           loc_10071A
10114E:  LDR             R6, [SP,#0x60+var_38]
101150:  LDRB.W          R4, [R6,#0x184]
101154:  STRB.W          R5, [R6,#0x184]
101158:  MOV             R0, R6
10115A:  BL              sub_FE7F0
10115E:  MOV             R8, R0
101160:  CMP             R0, #0
101162:  STRB.W          R4, [R6,#0x184]
101166:  BEQ.W           loc_100718
10116A:  LDRD.W          R1, R0, [R6]
10116E:  CMP             R1, R0
101170:  BEQ.W           loc_101966
101174:  LDRB            R2, [R1]
101176:  CMP             R2, #0x5F ; '_'
101178:  BNE.W           loc_101966
10117C:  MOV             R4, R6
10117E:  LDR             R3, [R6,#0xC]
101180:  LDR.W           R2, [R4,#8]!
101184:  ADDS            R1, #1
101186:  STR             R1, [R6]
101188:  ADD             R5, SP, #0x60+var_30
10118A:  SUBS            R2, R3, R2
10118C:  MOV.W           R9, R2,ASR#2
101190:  CMP             R1, R0
101192:  BEQ             loc_10119C
101194:  LDRB            R0, [R1]
101196:  CMP             R0, #0x45 ; 'E'
101198:  BEQ.W           loc_101B50
10119C:  MOV             R0, R6
10119E:  BL              sub_1006E0
1011A2:  CMP             R0, #0
1011A4:  STR             R0, [SP,#0x60+var_30]
1011A6:  BEQ.W           loc_100718
1011AA:  MOV             R0, R4
1011AC:  MOV             R1, R5
1011AE:  BL              sub_FF894
1011B2:  LDRD.W          R1, R0, [R6]
1011B6:  B               loc_101190
1011B8:  ADD.W           R0, R12, #2
1011BC:  STR             R0, [R6]
1011BE:  MOV             R0, R6
1011C0:  BL              sub_FE7F0
1011C4:  CMP             R0, #0
1011C6:  BEQ.W           loc_100718
1011CA:  MOV             R4, R6
1011CC:  MOV             R8, R0
1011CE:  LDR.W           R0, [R4,#8]!
1011D2:  LDR             R1, [R4,#4]
1011D4:  ADD             R5, SP, #0x60+var_30
1011D6:  SUBS            R0, R1, R0
1011D8:  MOV.W           R9, R0,ASR#2
1011DC:  LDRD.W          R0, R1, [R6]
1011E0:  CMP             R0, R1
1011E2:  BEQ             loc_1011EC
1011E4:  LDRB            R1, [R0]
1011E6:  CMP             R1, #0x45 ; 'E'
1011E8:  BEQ.W           loc_101932
1011EC:  MOV             R0, R6
1011EE:  BL              sub_1028CC
1011F2:  CMP             R0, #0
1011F4:  STR             R0, [SP,#0x60+var_30]
1011F6:  BEQ.W           loc_100718
1011FA:  MOV             R0, R4
1011FC:  MOV             R1, R5
1011FE:  BL              sub_FF894
101202:  B               loc_1011DC
101204:  ADD.W           R0, R12, #2
101208:  STR             R0, [R5]
10120A:  LDR             R0, [SP,#0x60+var_20]
10120C:  LDR.W           R1, =(__stack_chk_guard_ptr - 0x101214)
101210:  ADD             R1, PC; __stack_chk_guard_ptr
101212:  LDR             R1, [R1]; __stack_chk_guard
101214:  LDR             R1, [R1]
101216:  CMP             R1, R0
101218:  BNE.W           loc_100734
10121C:  LDR             R1, =(asc_507A6 - 0x101222); "%" ...
10121E:  ADD             R1, PC; "%"
101220:  ADDS            R2, R1, #1
101222:  B               loc_101276
101224:  LDR             R5, [SP,#0x60+var_38]
101226:  ADD.W           R0, R12, #2
10122A:  STR             R0, [R5]
10122C:  MOV             R0, R5
10122E:  BL              sub_1006E0
101232:  CMP             R0, #0
101234:  BEQ.W           loc_100718
101238:  MOV             R4, R0
10123A:  ADD.W           R0, R5, #0x198
10123E:  MOVS            R1, #0xC
101240:  BL              sub_FFA98
101244:  LDR             R2, =(_ZTVN12_GLOBAL__N_116itanium_demangle9ThrowExprE - 0x10124E); `vtable for'`anonymous namespace'::itanium_demangle::ThrowExpr ...
101246:  MOV             R5, R0
101248:  LDR             R1, =0x101013F
10124A:  ADD             R2, PC; `vtable for'`anonymous namespace'::itanium_demangle::ThrowExpr
10124C:  ADDS            R2, #8
10124E:  STR             R2, [R0]
101250:  STR             R1, [R0,#4]
101252:  STR             R4, [R0,#8]
101254:  B.W             loc_10071A
101258:  ADD.W           R0, R12, #2
10125C:  STR             R0, [R5]
10125E:  LDR             R0, [SP,#0x60+var_20]
101260:  LDR.W           R1, =(__stack_chk_guard_ptr - 0x101268)
101264:  ADD             R1, PC; __stack_chk_guard_ptr
101266:  LDR             R1, [R1]; __stack_chk_guard
101268:  LDR             R1, [R1]
10126A:  CMP             R1, R0
10126C:  BNE.W           loc_100734
101270:  LDR             R1, =(asc_4B0D0 - 0x101276); ">>" ...
101272:  ADD             R1, PC; ">>"
101274:  ADDS            R2, R1, #2
101276:  MOV             R0, R5
101278:  B               loc_10186A
10127A:  LDR             R0, [SP,#0x60+var_38]
10127C:  ADD.W           R1, R12, #2
101280:  STR             R1, [R0]
101282:  LDR             R2, [SP,#0x60+var_20]
101284:  LDR.W           R1, =(__stack_chk_guard_ptr - 0x10128C)
101288:  ADD             R1, PC; __stack_chk_guard_ptr
10128A:  LDR             R1, [R1]; __stack_chk_guard
10128C:  LDR             R1, [R1]
10128E:  CMP             R1, R2
101290:  BNE.W           loc_100734
101294:  LDR             R1, =(asc_4F51B - 0x10129A); "%=" ...
101296:  ADD             R1, PC; "%="
101298:  B               loc_101868
10129A:  LDR             R4, [SP,#0x60+var_38]; jumptable 0010090A case 116
10129C:  ADD.W           R0, R12, #2
1012A0:  STR             R0, [R4]
1012A2:  MOV             R0, R4
1012A4:  BL              sub_1006E0
1012A8:  CMP             R0, #0
1012AA:  STR             R0, [SP,#0x60+var_30]
1012AC:  BEQ.W           loc_100718
1012B0:  MOV             R0, R4
1012B2:  BL              sub_1006E0
1012B6:  CMP             R0, #0
1012B8:  STR             R0, [SP,#0x60+var_28]
1012BA:  BEQ.W           loc_100718
1012BE:  ADD             R1, SP, #0x60+var_30
1012C0:  LDR             R2, =(asc_4EB72 - 0x1012C6); "->" ...
1012C2:  ADD             R2, PC; "->"
1012C4:  B               loc_101736
1012C6:  ALIGN 4
1012C8:  DCD asc_4A928 - 0x100F0A
1012CC:  DCD asc_4EEEF - 0x100F28
1012D0:  DCD asc_4E941 - 0x100F4A
1012D4:  DCD asc_4FABC - 0x100F68
1012D8:  DCD asc_4E517 - 0x100F8A
1012DC:  DCD asc_4E788 - 0x100FAC
1012E0:  DCD asc_4D212 - 0x100FCC
1012E4:  DCD byte_4CC4A - 0x100FEC
1012E8:  DCD asc_500EF - 0x101024
1012EC:  DCD asc_4C5F0 - 0x101090
1012F0:  DCD asc_4FD56 - 0x1010AE
1012F4:  DCD aTypeid - 0x1010CC
1012F8:  DCD aThrow - 0x10110E
1012FC:  DCD asc_4E1FA - 0x101138
101300:  DCD aCv - 0x101142
101304:  DCD asc_507A6 - 0x101222
101308:  DCD _ZTVN12_GLOBAL__N_116itanium_demangle9ThrowExprE - 0x10124E
10130C:  DCD 0x101013F
101310:  DCD asc_4B0D0 - 0x101276
101314:  DCD asc_4F51B - 0x10129A
101318:  DCD asc_4EB72 - 0x1012C6
10131C:  DCD __stack_chk_guard_ptr - 0x1006F4
101320:  DCD __stack_chk_guard_ptr - 0x100724
101324:  LDR             R4, [SP,#0x60+var_38]; jumptable 0010090A case 112
101326:  ADD.W           R2, R12, #2
10132A:  CMP             R2, R1
10132C:  STR             R2, [R4]
10132E:  BEQ.W           loc_1017B0
101332:  LDRB            R1, [R2]
101334:  CMP             R1, #0x5F ; '_'
101336:  BNE.W           loc_1017B0
10133A:  ADD.W           R0, R12, #3
10133E:  STR             R0, [R4]
101340:  LDR             R0, [SP,#0x60+var_20]
101342:  LDR.W           R1, =(__stack_chk_guard_ptr - 0x10134A)
101346:  ADD             R1, PC; __stack_chk_guard_ptr
101348:  LDR             R1, [R1]; __stack_chk_guard
10134A:  LDR             R1, [R1]
10134C:  CMP             R1, R0
10134E:  BNE.W           loc_100734
101352:  LDR             R1, =(asc_4AA02 - 0x101358); "++" ...
101354:  ADD             R1, PC; "++"
101356:  ADDS            R2, R1, #2
101358:  MOV             R0, R4
10135A:  B               loc_10183C
10135C:  LDR             R0, [SP,#0x60+var_38]; jumptable 0010090A case 109
10135E:  ADD.W           R1, R12, #2
101362:  STR             R1, [R0]
101364:  LDR             R2, [SP,#0x60+var_20]
101366:  LDR.W           R1, =(__stack_chk_guard_ptr - 0x10136E)
10136A:  ADD             R1, PC; __stack_chk_guard_ptr
10136C:  LDR             R1, [R1]; __stack_chk_guard
10136E:  LDR             R1, [R1]
101370:  CMP             R1, R2
101372:  BNE.W           loc_100734
101376:  LDR             R1, =(asc_4D48E - 0x10137C); "->*" ...
101378:  ADD             R1, PC; "->*"
10137A:  ADDS            R2, R1, #3
10137C:  B               loc_10186A
10137E:  LDR             R0, [SP,#0x60+var_38]; jumptable 0010090A case 115
101380:  ADD.W           R1, R12, #2
101384:  STR             R1, [R0]
101386:  LDR             R2, [SP,#0x60+var_20]
101388:  LDR.W           R1, =(__stack_chk_guard_ptr - 0x101390)
10138C:  ADD             R1, PC; __stack_chk_guard_ptr
10138E:  LDR             R1, [R1]; __stack_chk_guard
101390:  LDR             R1, [R1]
101392:  CMP             R1, R2
101394:  BNE.W           loc_100734
101398:  LDR             R1, =(asc_4E68B - 0x10139E); "+" ...
10139A:  ADD             R1, PC; "+"
10139C:  ADDS            R2, R1, #1
10139E:  B               loc_10183C
1013A0:  ADD.W           R0, R12, #2
1013A4:  STR.W           R0, [R8]
1013A8:  LDR             R0, [SP,#0x60+var_20]
1013AA:  LDR.W           R1, =(__stack_chk_guard_ptr - 0x1013B2)
1013AE:  ADD             R1, PC; __stack_chk_guard_ptr
1013B0:  LDR             R1, [R1]; __stack_chk_guard
1013B2:  LDR             R1, [R1]
1013B4:  CMP             R1, R0
1013B6:  BNE.W           loc_100734
1013BA:  LDR             R1, =(asc_4C8D3 - 0x1013C0); "-" ...
1013BC:  ADD             R1, PC; "-"
1013BE:  B               loc_10142A
1013C0:  ADD.W           R0, R12, #2
1013C4:  STR.W           R0, [R8]
1013C8:  MOV             R0, R8
1013CA:  BL              sub_1006E0
1013CE:  CMP             R0, #0
1013D0:  BEQ.W           loc_100718
1013D4:  MOV             R4, R0
1013D6:  ADD.W           R0, R8, #0x198
1013DA:  MOVS            R1, #0x1C
1013DC:  BL              sub_FFA98
1013E0:  MOV             R5, R0
1013E2:  LDR             R0, =0x1010134
1013E4:  LDR             R1, =(asc_50037 - 0x1013F2); ")" ...
1013E6:  LDR             R3, =(aNoexcept - 0x1013F0); "noexcept (" ...
1013E8:  MOV             R12, R0
1013EA:  LDR             R0, =(_ZTVN12_GLOBAL__N_116itanium_demangle13EnclosingExprE - 0x1013F8); `vtable for'`anonymous namespace'::itanium_demangle::EnclosingExpr ...
1013EC:  ADD             R3, PC; "noexcept ("
1013EE:  ADD             R1, PC; ")"
1013F0:  ADD.W           R6, R3, #0xA
1013F4:  ADD             R0, PC; `vtable for'`anonymous namespace'::itanium_demangle::EnclosingExpr
1013F6:  ADDS            R2, R1, #1
1013F8:  ADDS            R0, #8
1013FA:  STRD.W          R0, R12, [R5]
1013FE:  STRD.W          R3, R6, [R5,#8]
101402:  STRD.W          R4, R1, [R5,#0x10]
101406:  STR             R2, [R5,#0x18]
101408:  B.W             loc_10071A
10140C:  ADD.W           R0, R12, #2
101410:  STR.W           R0, [R8]
101414:  LDR             R0, [SP,#0x60+var_20]
101416:  LDR.W           R1, =(__stack_chk_guard_ptr - 0x10141E)
10141A:  ADD             R1, PC; __stack_chk_guard_ptr
10141C:  LDR             R1, [R1]; __stack_chk_guard
10141E:  LDR             R1, [R1]
101420:  CMP             R1, R0
101422:  BNE.W           loc_100734
101426:  LDR             R1, =(asc_4D8A9 - 0x10142C); "!" ...
101428:  ADD             R1, PC; "!"
10142A:  ADDS            R2, R1, #1
10142C:  MOV             R0, R8
10142E:  B               loc_10183C
101430:  MOV.W           R9, #0
101434:  LDR             R1, =(aNw - 0x10143C); "nw" ...
101436:  MOV             R0, R8
101438:  ADD             R1, PC; "nw"
10143A:  ADDS            R2, R1, #2
10143C:  BL              sub_FE18C
101440:  CBNZ            R0, loc_101454
101442:  LDR             R1, =(aNa - 0x10144A); "na" ...
101444:  MOV             R0, R8
101446:  ADD             R1, PC; "na"
101448:  ADDS            R2, R1, #2
10144A:  BL              sub_FE18C
10144E:  CMP             R0, #0
101450:  BEQ.W           loc_100718
101454:  MOV             R5, R8
101456:  LDR.W           R0, [R5,#8]!
10145A:  LDR             R1, [R5,#4]
10145C:  ADD             R6, SP, #0x60+var_30
10145E:  SUBS            R0, R1, R0
101460:  ASRS            R4, R0, #2
101462:  LDRD.W          R0, R1, [R8]
101466:  CMP             R0, R1
101468:  BEQ             loc_101472
10146A:  LDRB            R1, [R0]
10146C:  CMP             R1, #0x5F ; '_'
10146E:  BEQ.W           loc_101878
101472:  MOV             R0, R8
101474:  BL              sub_1006E0
101478:  CMP             R0, #0
10147A:  STR             R0, [SP,#0x60+var_30]
10147C:  BEQ.W           loc_100718
101480:  MOV             R0, R5
101482:  MOV             R1, R6
101484:  BL              sub_FF894
101488:  B               loc_101462
10148A:  ADD.W           R0, R12, #2
10148E:  STR.W           R0, [R8]
101492:  LDR             R0, [SP,#0x60+var_20]
101494:  LDR.W           R1, =(__stack_chk_guard_ptr - 0x10149C)
101498:  ADD             R1, PC; __stack_chk_guard_ptr
10149A:  LDR             R1, [R1]; __stack_chk_guard
10149C:  LDR             R1, [R1]
10149E:  CMP             R1, R0
1014A0:  BNE.W           loc_100734
1014A4:  LDR             R1, =(asc_4F236 - 0x1014AC); "!=" ...
1014A6:  MOV             R0, R8
1014A8:  ADD             R1, PC; "!="
1014AA:  B               loc_101868
1014AC:  ADDS            R0, #1
1014AE:  STR             R0, [R5]
1014B0:  ADD             R0, SP, #0x60+var_30
1014B2:  MOV             R1, R5
1014B4:  MOV             R2, R8
1014B6:  BL              sub_FF908
1014BA:  ADD.W           R0, R5, #0x198
1014BE:  MOVS            R1, #0x14
1014C0:  BL              sub_FFA98
1014C4:  MOV             R5, R0
1014C6:  LDR             R0, =0x101013D
1014C8:  STR             R0, [R5,#4]
1014CA:  MOVS            R0, #0
1014CC:  STR             R0, [R5,#8]
1014CE:  LDR             R0, =(_ZTVN12_GLOBAL__N_116itanium_demangle12InitListExprE - 0x1014D4); `vtable for'`anonymous namespace'::itanium_demangle::InitListExpr ...
1014D0:  ADD             R0, PC; `vtable for'`anonymous namespace'::itanium_demangle::InitListExpr
1014D2:  B               loc_101B76
1014D4:  ADD.W           R0, R12, #2
1014D8:  STR             R0, [R5]
1014DA:  LDR             R0, [SP,#0x60+var_20]
1014DC:  LDR.W           R1, =(__stack_chk_guard_ptr - 0x1014E4)
1014E0:  ADD             R1, PC; __stack_chk_guard_ptr
1014E2:  LDR             R1, [R1]; __stack_chk_guard
1014E4:  LDR             R1, [R1]
1014E6:  CMP             R1, R0
1014E8:  BNE.W           loc_100734
1014EC:  ADD.W           R2, R9, #1
1014F0:  MOV             R0, R5
1014F2:  MOV             R1, R9
1014F4:  B               loc_10183C
1014F6:  ADD.W           R0, R12, #2
1014FA:  STR             R0, [R5]
1014FC:  MOV             R0, R5
1014FE:  BL              sub_FE7F0
101502:  B               loc_101570
101504:  ADD.W           R0, R12, #2
101508:  STR             R0, [R5]
10150A:  LDR             R0, [SP,#0x60+var_20]
10150C:  LDR.W           R2, =(__stack_chk_guard_ptr - 0x101514)
101510:  ADD             R2, PC; __stack_chk_guard_ptr
101512:  LDR             R2, [R2]; __stack_chk_guard
101514:  LDR             R2, [R2]
101516:  CMP             R2, R0
101518:  BNE.W           loc_100734
10151C:  ADD.W           R2, R9, #1
101520:  MOV             R0, R5
101522:  MOV             R1, R9
101524:  B               loc_10186A
101526:  LDR             R0, [SP,#0x60+var_38]
101528:  ADD.W           R1, R12, #2
10152C:  STR             R1, [R0]
10152E:  LDR             R2, [SP,#0x60+var_20]
101530:  LDR.W           R1, =(__stack_chk_guard_ptr - 0x101538)
101534:  ADD             R1, PC; __stack_chk_guard_ptr
101536:  LDR             R1, [R1]; __stack_chk_guard
101538:  LDR             R1, [R1]
10153A:  CMP             R1, R2
10153C:  BNE.W           loc_100734
101540:  MOV             R1, R5
101542:  ADDS            R2, R5, #2
101544:  B               loc_10186A
101546:  ADD.W           R0, R12, #2
10154A:  STR             R0, [R5]
10154C:  MOV             R0, R5
10154E:  BL              sub_1006E0
101552:  CMP             R0, #0
101554:  STR             R0, [SP,#0x60+var_30]
101556:  BEQ.W           loc_100718
10155A:  ADD             R1, SP, #0x60+var_30
10155C:  MOV             R0, R5
10155E:  BL              sub_102A2C
101562:  B               loc_101A1E
101564:  ADD.W           R0, R12, #2
101568:  STR             R0, [R5]
10156A:  MOV             R0, R5
10156C:  BL              sub_1006E0
101570:  CMP             R0, #0
101572:  STR             R0, [SP,#0x60+var_30]
101574:  BEQ.W           loc_100718
101578:  LDR             R1, =(aAlignof - 0x101582); "alignof (" ...
10157A:  ADD             R2, SP, #0x60+var_30
10157C:  MOV             R0, R5
10157E:  ADD             R1, PC; "alignof ("
101580:  BL              sub_101EF4
101584:  B               loc_101A1E
101586:  ADD.W           R0, R12, #2
10158A:  STR             R0, [R5]
10158C:  LDR             R0, [SP,#0x60+var_20]
10158E:  LDR.W           R1, =(__stack_chk_guard_ptr - 0x101596)
101592:  ADD             R1, PC; __stack_chk_guard_ptr
101594:  LDR             R1, [R1]; __stack_chk_guard
101596:  LDR             R1, [R1]
101598:  CMP             R1, R0
10159A:  BNE.W           loc_100734
10159E:  ADD.W           R2, R8, #1
1015A2:  MOV             R0, R5
1015A4:  MOV             R1, R8
1015A6:  B               loc_10186A
1015A8:  ADD.W           R0, R12, #2
1015AC:  STR             R0, [R5]
1015AE:  MOV             R0, R5
1015B0:  BL              sub_FE7F0
1015B4:  B               loc_10161A
1015B6:  LDR             R0, [SP,#0x60+var_20]
1015B8:  LDR.W           R1, =(__stack_chk_guard_ptr - 0x1015C0)
1015BC:  ADD             R1, PC; __stack_chk_guard_ptr
1015BE:  LDR             R1, [R1]; __stack_chk_guard
1015C0:  LDR             R1, [R1]
1015C2:  CMP             R1, R0
1015C4:  BNE.W           loc_100734
1015C8:  MOV             R0, R5
1015CA:  B.W             loc_1007FC
1015CE:  LDR             R5, [SP,#0x60+var_38]
1015D0:  ADD.W           R0, R12, #2
1015D4:  MOV             R4, R5
1015D6:  LDR             R3, [R5,#0xC]
1015D8:  LDR.W           R2, [R4,#8]!
1015DC:  STR             R0, [R5]
1015DE:  ADD             R6, SP, #0x60+var_30
1015E0:  SUBS            R2, R3, R2
1015E2:  MOV.W           R8, R2,ASR#2
1015E6:  CMP             R0, R1
1015E8:  BEQ             loc_1015F2
1015EA:  LDRB            R1, [R0]
1015EC:  CMP             R1, #0x45 ; 'E'
1015EE:  BEQ.W           loc_1018DA
1015F2:  MOV             R0, R5
1015F4:  BL              sub_FF754
1015F8:  CMP             R0, #0
1015FA:  STR             R0, [SP,#0x60+var_30]
1015FC:  BEQ.W           loc_100718
101600:  MOV             R0, R4
101602:  MOV             R1, R6
101604:  BL              sub_FF894
101608:  LDRD.W          R0, R1, [R5]
10160C:  B               loc_1015E6
10160E:  ADD.W           R0, R12, #2
101612:  STR             R0, [R5]
101614:  MOV             R0, R5
101616:  BL              sub_1006E0
10161A:  CMP             R0, #0
10161C:  STR             R0, [SP,#0x60+var_30]
10161E:  BEQ.W           loc_100718
101622:  LDR             R1, =(aSizeof - 0x10162C); "sizeof (" ...
101624:  ADD             R2, SP, #0x60+var_30
101626:  MOV             R0, R5
101628:  ADD             R1, PC; "sizeof ("
10162A:  BL              sub_102A58
10162E:  B               loc_101A1E
101630:  ADD.W           R0, R12, #2
101634:  STR             R0, [R5]
101636:  CMP             R1, R0
101638:  BEQ.W           loc_100718
10163C:  LDRB            R0, [R0]
10163E:  CMP             R0, #0x66 ; 'f'
101640:  BEQ.W           loc_101A08
101644:  CMP             R0, #0x54 ; 'T'
101646:  BNE.W           loc_100718
10164A:  MOV             R0, R5
10164C:  BL              sub_100070
101650:  CMP             R0, #0
101652:  BEQ.W           loc_100718
101656:  MOV             R4, R0
101658:  ADD.W           R0, R5, #0x198
10165C:  MOVS            R1, #0xC
10165E:  BL              sub_FFA98
101662:  LDR             R2, =(_ZTVN12_GLOBAL__N_116itanium_demangle19SizeofParamPackExprE - 0x10166C); `vtable for'`anonymous namespace'::itanium_demangle::SizeofParamPackExpr ...
101664:  MOV             R5, R0
101666:  LDR             R1, =0x1010136
101668:  ADD             R2, PC; `vtable for'`anonymous namespace'::itanium_demangle::SizeofParamPackExpr
10166A:  B               loc_10124C
10166C:  MOV             R0, R4
10166E:  BL              sub_1006E0
101672:  CMP             R0, #0
101674:  STR             R0, [SP,#0x60+var_30]
101676:  BEQ.W           loc_100718
10167A:  ADD             R1, SP, #0x60+var_30
10167C:  LDR             R2, =(asc_500EF - 0x101682); "--" ...
10167E:  ADD             R2, PC; "--"
101680:  B               loc_1017C4
101682:  ALIGN 4
101684:  DCD __stack_chk_guard_ptr - 0x1007C8
101688:  DCD __stack_chk_guard_ptr - 0x1007F2
10168C:  DCD __stack_chk_guard_ptr - 0x100856
101690:  DCD __stack_chk_guard_ptr - 0x10089A
101694:  DCD __stack_chk_guard_ptr - 0x100934
101698:  DCD __stack_chk_guard_ptr - 0x10094C
10169C:  DCD __stack_chk_guard_ptr - 0x10098C
1016A0:  DCD __stack_chk_guard_ptr - 0x100AE2
1016A4:  DCD __stack_chk_guard_ptr - 0x100B18
1016A8:  DCD __stack_chk_guard_ptr - 0x100D08
1016AC:  DCD __stack_chk_guard_ptr - 0x100E4C
1016B0:  DCD __stack_chk_guard_ptr - 0x100E6A
1016B4:  DCD __stack_chk_guard_ptr - 0x100E8C
1016B8:  DCD __stack_chk_guard_ptr - 0x100EB4
1016BC:  DCD __stack_chk_guard_ptr - 0x100EFC
1016C0:  DCD asc_4AA02 - 0x101358
1016C4:  DCD asc_4D48E - 0x10137C
1016C8:  DCD asc_4E68B - 0x10139E
1016CC:  DCD asc_4C8D3 - 0x1013C0
1016D0:  DCD 0x1010134
1016D4:  DCD asc_50037 - 0x1013F2
1016D8:  DCD aNoexcept - 0x1013F0
1016DC:  DCD _ZTVN12_GLOBAL__N_116itanium_demangle13EnclosingExprE - 0x1013F8
1016E0:  DCD asc_4D8A9 - 0x10142C
1016E4:  DCD aNw - 0x10143C
1016E8:  DCD aNa - 0x10144A
1016EC:  DCD asc_4F236 - 0x1014AC
1016F0:  DCD 0x101013D
1016F4:  DCD _ZTVN12_GLOBAL__N_116itanium_demangle12InitListExprE - 0x1014D4
1016F8:  DCD aAlignof - 0x101582
1016FC:  DCD aSizeof - 0x10162C
101700:  DCD _ZTVN12_GLOBAL__N_116itanium_demangle19SizeofParamPackExprE - 0x10166C
101704:  DCD 0x1010136
101708:  DCD asc_500EF - 0x101682
10170C:  LDR             R4, [SP,#0x60+var_38]; jumptable 00100B38 case 115
10170E:  ADD.W           R0, R12, #2
101712:  STR             R0, [R4]
101714:  MOV             R0, R4
101716:  BL              sub_1006E0
10171A:  CMP             R0, #0
10171C:  STR             R0, [SP,#0x60+var_30]
10171E:  BEQ.W           loc_100718
101722:  MOV             R0, R4
101724:  BL              sub_1006E0
101728:  CMP             R0, #0
10172A:  STR             R0, [SP,#0x60+var_28]
10172C:  BEQ.W           loc_100718
101730:  ADD             R1, SP, #0x60+var_30
101732:  LDR             R2, =(asc_4E024 - 0x101738); ".*" ...
101734:  ADD             R2, PC; ".*"
101736:  ADD             R3, SP, #0x60+var_28
101738:  MOV             R0, R4
10173A:  BL              sub_102880
10173E:  B               loc_101A1E
101740:  LDR             R5, [SP,#0x60+var_38]; jumptable 00100B38 case 116
101742:  ADD.W           R0, R12, #2
101746:  STR             R0, [R5]
101748:  MOV             R0, R5
10174A:  BL              sub_1006E0
10174E:  CMP             R0, #0
101750:  BEQ.W           loc_100718
101754:  MOV             R4, R0
101756:  MOV             R0, R5
101758:  BL              sub_1006E0
10175C:  CMP             R0, #0
10175E:  BEQ.W           loc_100718
101762:  MOV             R6, R0
101764:  ADD.W           R0, R5, #0x198
101768:  MOVS            R1, #0x18
10176A:  BL              sub_FFA98
10176E:  LDR             R1, =(asc_4AD34 - 0x10177A); "." ...
101770:  MOV             R5, R0
101772:  LDR             R3, =(_ZTVN12_GLOBAL__N_116itanium_demangle10MemberExprE - 0x10177C); `vtable for'`anonymous namespace'::itanium_demangle::MemberExpr ...
101774:  LDR             R0, =0x1010133
101776:  ADD             R1, PC; "."
101778:  ADD             R3, PC; `vtable for'`anonymous namespace'::itanium_demangle::MemberExpr
10177A:  ADDS            R2, R1, #1
10177C:  ADDS            R3, #8
10177E:  STRD.W          R4, R1, [R5,#8]
101782:  STRD.W          R3, R0, [R5]
101786:  STRD.W          R2, R6, [R5,#0x10]
10178A:  B.W             loc_10071A
10178E:  LDR             R0, [SP,#0x60+var_38]; jumptable 00100B38 case 118
101790:  ADD.W           R1, R12, #2
101794:  STR             R1, [R0]
101796:  LDR             R2, [SP,#0x60+var_20]
101798:  LDR.W           R1, =(__stack_chk_guard_ptr - 0x1017A0)
10179C:  ADD             R1, PC; __stack_chk_guard_ptr
10179E:  LDR             R1, [R1]; __stack_chk_guard
1017A0:  LDR             R1, [R1]
1017A2:  CMP             R1, R2
1017A4:  BNE.W           loc_100734
1017A8:  MOV             R3, LR
1017AA:  MOV             R1, LR
1017AC:  ADDS            R2, R3, #1
1017AE:  B               loc_10186A
1017B0:  MOV             R0, R4
1017B2:  BL              sub_1006E0
1017B6:  CMP             R0, #0
1017B8:  STR             R0, [SP,#0x60+var_30]
1017BA:  BEQ.W           loc_100718
1017BE:  ADD             R1, SP, #0x60+var_30
1017C0:  LDR             R2, =(asc_4AA02 - 0x1017C6); "++" ...
1017C2:  ADD             R2, PC; "++"
1017C4:  MOV             R0, R4
1017C6:  BL              sub_1029E8
1017CA:  B               loc_101A1E
1017CC:  ADD.W           R0, R12, #2
1017D0:  STR             R0, [R6]
1017D2:  MOV             R0, R6
1017D4:  BL              sub_FE7F0
1017D8:  CMP             R0, #0
1017DA:  BEQ.W           loc_100718
1017DE:  MOV             R4, R0
1017E0:  MOV             R0, R6
1017E2:  BL              sub_1006E0
1017E6:  CMP             R0, #0
1017E8:  BEQ.W           loc_100718
1017EC:  MOV             R8, R0
1017EE:  ADD.W           R0, R6, #0x198
1017F2:  MOVS            R1, #0x18
1017F4:  BL              sub_FFA98
1017F8:  LDR             R1, =(aDynamicCast_0 - 0x101802); "dynamic_cast" ...
1017FA:  MOV             R5, R0
1017FC:  LDR             R0, =0x1010135
1017FE:  ADD             R1, PC; "dynamic_cast"
101800:  ADD.W           R2, R1, #0xC
101804:  LDR             R3, =(_ZTVN12_GLOBAL__N_116itanium_demangle8CastExprE - 0x10180A); `vtable for'`anonymous namespace'::itanium_demangle::CastExpr ...
101806:  ADD             R3, PC; `vtable for'`anonymous namespace'::itanium_demangle::CastExpr
101808:  ADDS            R3, #8
10180A:  STR             R3, [R5]
10180C:  STR             R0, [R5,#4]
10180E:  STR             R1, [R5,#8]
101810:  STR             R2, [R5,#0xC]
101812:  STR             R4, [R5,#0x10]
101814:  STR.W           R8, [R5,#0x14]
101818:  B.W             loc_10071A
10181C:  ADD.W           R0, R12, #2
101820:  STR             R0, [R6]
101822:  LDR             R0, [SP,#0x60+var_20]
101824:  LDR.W           R1, =(__stack_chk_guard_ptr - 0x10182C)
101828:  ADD             R1, PC; __stack_chk_guard_ptr
10182A:  LDR             R1, [R1]; __stack_chk_guard
10182C:  LDR             R1, [R1]
10182E:  CMP             R1, R0
101830:  BNE.W           loc_100734
101834:  LDR             R1, =(byte_4CC4A - 0x10183A)
101836:  ADD             R1, PC; byte_4CC4A
101838:  ADDS            R2, R1, #1
10183A:  MOV             R0, R6
10183C:  ADD             SP, SP, #0x44 ; 'D'
10183E:  POP.W           {R8-R11}
101842:  POP.W           {R4-R7,LR}
101846:  B.W             sub_102664
10184A:  LDR             R0, [SP,#0x60+var_38]
10184C:  ADD.W           R1, R12, #2
101850:  STR             R1, [R0]
101852:  LDR             R2, [SP,#0x60+var_20]
101854:  LDR.W           R1, =(__stack_chk_guard_ptr - 0x10185C)
101858:  ADD             R1, PC; __stack_chk_guard_ptr
10185A:  LDR             R1, [R1]; __stack_chk_guard
10185C:  LDR             R1, [R1]
10185E:  CMP             R1, R2
101860:  BNE.W           loc_100734
101864:  LDR             R1, =(asc_4C5ED - 0x10186A); "/=" ...
101866:  ADD             R1, PC; "/="
101868:  ADDS            R2, R1, #2
10186A:  ADD             SP, SP, #0x44 ; 'D'
10186C:  POP.W           {R8-R11}
101870:  POP.W           {R4-R7,LR}
101874:  B.W             sub_102614
101878:  ADDS            R0, #1
10187A:  STR.W           R0, [R8]
10187E:  ADD             R0, SP, #0x60+var_30
101880:  MOV             R1, R8
101882:  MOV             R2, R4
101884:  BL              sub_FF908
101888:  MOV             R0, R8
10188A:  BL              sub_FE7F0
10188E:  CMP             R0, #0
101890:  BEQ.W           loc_100718
101894:  LDR             R1, =(aPi - 0x10189E); "pi" ...
101896:  MOV             R10, R0
101898:  MOV             R0, R8
10189A:  ADD             R1, PC; "pi"
10189C:  ADDS            R2, R1, #2
10189E:  BL              sub_FE18C
1018A2:  CMP             R0, #0
1018A4:  BEQ.W           loc_1019D0
1018A8:  LDRD.W          R0, R1, [R8,#8]
1018AC:  ADD             R4, SP, #0x60+var_28
1018AE:  SUBS            R0, R1, R0
1018B0:  ASRS            R6, R0, #2
1018B2:  LDRD.W          R0, R1, [R8]
1018B6:  CMP             R0, R1
1018B8:  BEQ             loc_1018C2
1018BA:  LDRB            R1, [R0]
1018BC:  CMP             R1, #0x45 ; 'E'
1018BE:  BEQ.W           loc_101A36
1018C2:  MOV             R0, R8
1018C4:  BL              sub_1006E0
1018C8:  CMP             R0, #0
1018CA:  STR             R0, [SP,#0x60+var_28]
1018CC:  BEQ.W           loc_100718
1018D0:  MOV             R0, R5
1018D2:  MOV             R1, R4
1018D4:  BL              sub_FF894
1018D8:  B               loc_1018B2
1018DA:  ADDS            R0, #1
1018DC:  STR             R0, [R5]
1018DE:  ADD             R0, SP, #0x60+var_30
1018E0:  MOV             R1, R5
1018E2:  MOV             R2, R8
1018E4:  BL              sub_FF908
1018E8:  ADD.W           R0, R5, #0x198
1018EC:  MOVS            R1, #0x10
1018EE:  BL              sub_FFA98
1018F2:  LDR             R1, =0x1010100
1018F4:  STR             R1, [R0,#4]
1018F6:  LDR             R1, =(_ZTVN12_GLOBAL__N_116itanium_demangle13NodeArrayNodeE - 0x1018FC); `vtable for'`anonymous namespace'::itanium_demangle::NodeArrayNode ...
1018F8:  ADD             R1, PC; `vtable for'`anonymous namespace'::itanium_demangle::NodeArrayNode
1018FA:  ADDS            R1, #8
1018FC:  STR             R1, [R0]
1018FE:  LDRD.W          R1, R2, [SP,#0x60+var_30]
101902:  STRD.W          R1, R2, [R0,#8]
101906:  STR             R0, [SP,#0x60+var_28]
101908:  ADD             R1, SP, #0x60+var_28
10190A:  B               loc_101A18
10190C:  ADDS            R0, #1
10190E:  STR             R0, [R6]
101910:  ADD             R0, SP, #0x60+var_30
101912:  MOV             R1, R6
101914:  MOV             R2, R9
101916:  BL              sub_FF908
10191A:  ADD.W           R0, R6, #0x198
10191E:  MOVS            R1, #0x14
101920:  BL              sub_FFA98
101924:  MOV             R5, R0
101926:  LDR             R0, =0x1010137
101928:  STRD.W          R0, R8, [R5,#4]
10192C:  LDR             R0, =(_ZTVN12_GLOBAL__N_116itanium_demangle8CallExprE - 0x101932); `vtable for'`anonymous namespace'::itanium_demangle::CallExpr ...
10192E:  ADD             R0, PC; `vtable for'`anonymous namespace'::itanium_demangle::CallExpr
101930:  B               loc_101B76
101932:  ADDS            R0, #1
101934:  STR             R0, [R6]
101936:  ADD             R0, SP, #0x60+var_30
101938:  MOV             R1, R6
10193A:  MOV             R2, R9
10193C:  BL              sub_FF908
101940:  ADD.W           R0, R6, #0x198
101944:  MOVS            R1, #0x14
101946:  BL              sub_FFA98
10194A:  LDR             R1, =0x101013D
10194C:  MOV             R5, R0
10194E:  STRD.W          R1, R8, [R0,#4]
101952:  LDR             R1, =(_ZTVN12_GLOBAL__N_116itanium_demangle12InitListExprE - 0x101958); `vtable for'`anonymous namespace'::itanium_demangle::InitListExpr ...
101954:  ADD             R1, PC; `vtable for'`anonymous namespace'::itanium_demangle::InitListExpr
101956:  ADDS            R1, #8
101958:  STR             R1, [R0]
10195A:  LDRD.W          R1, R2, [SP,#0x60+var_30]
10195E:  STRD.W          R1, R2, [R0,#0xC]
101962:  B.W             loc_10071A
101966:  MOV             R0, R6
101968:  BL              sub_1006E0
10196C:  CMP             R0, #0
10196E:  STR             R0, [SP,#0x60+var_28]
101970:  BEQ.W           loc_100718
101974:  ADD             R2, SP, #0x60+var_28
101976:  ADD             R0, SP, #0x60+var_30
101978:  ADDS            R3, R2, #4
10197A:  MOV             R1, R6
10197C:  BL              sub_103E18
101980:  B               loc_101B5E
101982:  MOV             R5, R11
101984:  STR             R0, [SP,#0x60+var_4C]
101986:  ADD.W           R0, R12, #2
10198A:  STR             R0, [R4]
10198C:  MOV             R0, R4
10198E:  LDR             R1, =(aAa - 0x101994); "aa" ...
101990:  ADD             R1, PC; "aa"
101992:  ADDS            R2, R1, #2
101994:  BL              sub_FE18C
101998:  STR.W           R8, [SP,#0x60+var_48]
10199C:  CBZ             R0, loc_1019A4
10199E:  ADD.W           R10, R5, #2
1019A2:  B               loc_101A86
1019A4:  LDR             R1, =(aAn - 0x1019AC); "an" ...
1019A6:  MOV             R0, R4
1019A8:  ADD             R1, PC; "an"
1019AA:  ADDS            R2, R1, #2
1019AC:  BL              sub_FE18C
1019B0:  CBZ             R0, loc_1019BA
1019B2:  ADD.W           R10, R9, #1
1019B6:  MOV             R5, R9
1019B8:  B               loc_101A86
1019BA:  LDR             R1, =(aAn_0 - 0x1019C2); "aN" ...
1019BC:  MOV             R0, R4
1019BE:  ADD             R1, PC; "aN"
1019C0:  ADDS            R2, R1, #2
1019C2:  BL              sub_FE18C
1019C6:  CBZ             R0, loc_101A24
1019C8:  ADD.W           R10, R6, #2
1019CC:  MOV             R5, R6
1019CE:  B               loc_101A86
1019D0:  LDRD.W          R0, R1, [R8]
1019D4:  CMP             R0, R1
1019D6:  BEQ.W           loc_100718
1019DA:  LDRB            R1, [R0]
1019DC:  MOVS            R5, #0
1019DE:  CMP             R1, #0x45 ; 'E'
1019E0:  BNE.W           loc_10071A
1019E4:  ADDS            R0, #1
1019E6:  STR.W           R0, [R8]
1019EA:  ADD.W           R0, R8, #0x198
1019EE:  MOVS            R1, #0x20 ; ' '
1019F0:  BL              sub_FFA98
1019F4:  LDRD.W          R1, R2, [SP,#0x60+var_30]
1019F8:  MOV             R3, R10
1019FA:  STRD.W          R5, R5, [SP,#0x60+var_60]
1019FE:  STRD.W          R11, R9, [SP,#0x60+var_58]
101A02:  BL              sub_104FE0
101A06:  B               loc_101A1E
101A08:  MOV             R0, R5
101A0A:  BL              sub_102564
101A0E:  CMP             R0, #0
101A10:  STR             R0, [SP,#0x60+var_30]
101A12:  BEQ.W           loc_100718
101A16:  ADD             R1, SP, #0x60+var_30
101A18:  MOV             R0, R5
101A1A:  BL              sub_102AAC
101A1E:  MOV             R5, R0
101A20:  B.W             loc_10071A
101A24:  LDR             R1, =(aAs - 0x101A2C); "aS" ...
101A26:  MOV             R0, R4
101A28:  ADD             R1, PC; "aS"
101A2A:  ADDS            R2, R1, #2
101A2C:  BL              sub_FE18C
101A30:  CBZ             R0, loc_101A6E
101A32:  LDR             R5, [SP,#0x60+var_3C]
101A34:  B               loc_101A82
101A36:  ADDS            R0, #1
101A38:  STR.W           R0, [R8]
101A3C:  ADD             R0, SP, #0x60+var_28
101A3E:  MOV             R1, R8
101A40:  MOV             R2, R6
101A42:  BL              sub_FF908
101A46:  ADD.W           R0, R8, #0x198
101A4A:  MOVS            R1, #0x20 ; ' '
101A4C:  BL              sub_FFA98
101A50:  MOV             R5, R0
101A52:  LDRD.W          R1, R2, [SP,#0x60+var_30]
101A56:  LDRD.W          R0, R3, [SP,#0x60+var_28]
101A5A:  STR.W           R9, [SP,#0x60+var_54]
101A5E:  STMEA.W         SP, {R0,R3,R11}
101A62:  MOV             R0, R5
101A64:  MOV             R3, R10
101A66:  BL              sub_104FE0
101A6A:  B.W             loc_10071A
101A6E:  LDR             R1, =(aCm - 0x101A76); "cm" ...
101A70:  MOV             R0, R4
101A72:  ADD             R1, PC; "cm"
101A74:  ADDS            R2, R1, #2
101A76:  BL              sub_FE18C
101A7A:  CMP             R0, #0
101A7C:  BEQ.W           loc_101B86
101A80:  LDR             R5, [SP,#0x60+var_40]
101A82:  ADD.W           R10, R5, #1
101A86:  MOV             R0, R4
101A88:  BL              sub_1006E0
101A8C:  CMP             R0, #0
101A8E:  BEQ.W           loc_100718
101A92:  MOV             R6, R0
101A94:  LDR             R0, [SP,#0x60+var_4C]
101A96:  CMP             R0, #0x52 ; 'R'
101A98:  IT NE
101A9A:  CMPNE           R0, #0x4C ; 'L'
101A9C:  BNE             loc_101AB6
101A9E:  MOV             R0, R4
101AA0:  BL              sub_1006E0
101AA4:  CMP             R0, #0
101AA6:  BEQ.W           loc_100718
101AAA:  LDR             R1, [SP,#0x60+var_48]
101AAC:  MOV             R11, R5
101AAE:  CBZ             R1, loc_101ABE
101AB0:  MOV             R8, R6
101AB2:  MOV             R6, R0
101AB4:  B               loc_101AC0
101AB6:  MOV             R11, R5
101AB8:  MOV.W           R8, #0
101ABC:  B               loc_101AC0
101ABE:  MOV             R8, R0
101AC0:  ADD.W           R0, R4, #0x198
101AC4:  MOVS            R1, #0x1C
101AC6:  BL              sub_FFA98
101ACA:  MOV             R5, R0
101ACC:  LDR             R1, [SP,#0x60+var_48]
101ACE:  STRB            R1, [R5,#0x18]
101AD0:  LDR             R1, =(_ZTVN12_GLOBAL__N_116itanium_demangle8FoldExprE - 0x101AD8); `vtable for'`anonymous namespace'::itanium_demangle::FoldExpr ...
101AD2:  LDR             R0, =0x101013E
101AD4:  ADD             R1, PC; `vtable for'`anonymous namespace'::itanium_demangle::FoldExpr
101AD6:  STR.W           R10, [R5,#0x14]
101ADA:  ADDS            R1, #8
101ADC:  STRD.W          R1, R0, [R5]
101AE0:  ADD.W           R0, R5, #8
101AE4:  STM.W           R0, {R6,R8,R11}
101AE8:  B.W             loc_10071A
101AEC:  DCD asc_4E024 - 0x101738
101AF0:  DCD asc_4AD34 - 0x10177A
101AF4:  DCD _ZTVN12_GLOBAL__N_116itanium_demangle10MemberExprE - 0x10177C
101AF8:  DCD 0x1010133
101AFC:  DCD asc_4AA02 - 0x1017C6
101B00:  DCD aDynamicCast_0 - 0x101802
101B04:  DCD 0x1010135
101B08:  DCD _ZTVN12_GLOBAL__N_116itanium_demangle8CastExprE - 0x10180A
101B0C:  DCD byte_4CC4A - 0x10183A
101B10:  DCD asc_4C5ED - 0x10186A
101B14:  DCD aPi - 0x10189E
101B18:  DCD 0x1010100
101B1C:  DCD _ZTVN12_GLOBAL__N_116itanium_demangle13NodeArrayNodeE - 0x1018FC
101B20:  DCD 0x1010137
101B24:  DCD _ZTVN12_GLOBAL__N_116itanium_demangle8CallExprE - 0x101932
101B28:  DCD 0x101013D
101B2C:  DCD _ZTVN12_GLOBAL__N_116itanium_demangle12InitListExprE - 0x101958
101B30:  DCD aAa - 0x101994
101B34:  DCD aAn - 0x1019AC
101B38:  DCD aAn_0 - 0x1019C2
101B3C:  DCD aAs - 0x101A2C
101B40:  DCD _ZTVN12_GLOBAL__N_116itanium_demangle8FoldExprE - 0x101AD8
101B44:  DCD __stack_chk_guard_ptr - 0x100DE2
101B48:  DCD __stack_chk_guard_ptr - 0x100FBE
101B4C:  DCD __stack_chk_guard_ptr - 0x100FDE
101B50:  ADDS            R0, R1, #1
101B52:  STR             R0, [R6]
101B54:  ADD             R0, SP, #0x60+var_30
101B56:  MOV             R1, R6
101B58:  MOV             R2, R9
101B5A:  BL              sub_FF908
101B5E:  ADD.W           R0, R6, #0x198
101B62:  MOVS            R1, #0x14
101B64:  BL              sub_FFA98
101B68:  MOV             R5, R0
101B6A:  LDR             R0, =0x101013C
101B6C:  STR             R0, [R5,#4]
101B6E:  STR.W           R8, [R5,#8]
101B72:  LDR             R0, =(_ZTVN12_GLOBAL__N_116itanium_demangle14ConversionExprE - 0x101B78); `vtable for'`anonymous namespace'::itanium_demangle::ConversionExpr ...
101B74:  ADD             R0, PC; `vtable for'`anonymous namespace'::itanium_demangle::ConversionExpr
101B76:  ADDS            R0, #8
101B78:  STR             R0, [R5]
101B7A:  LDR             R1, [SP,#0x60+var_2C]
101B7C:  LDR             R0, [SP,#0x60+var_30]
101B7E:  STR             R1, [R5,#0x10]
101B80:  STR             R0, [R5,#0xC]
101B82:  B.W             loc_10071A
101B86:  LDR             R1, =(aDs - 0x101B8E); "ds" ...
101B88:  MOV             R0, R4
101B8A:  ADD             R1, PC; "ds"
101B8C:  ADDS            R2, R1, #2
101B8E:  BL              sub_FE18C
101B92:  CBZ             R0, loc_101B9A
101B94:  LDR             R5, =(asc_4E024 - 0x101B9A); ".*" ...
101B96:  ADD             R5, PC; ".*"
101B98:  B               loc_10199E
101B9A:  LDR             R1, =(aDv - 0x101BA2); "dv" ...
101B9C:  MOV             R0, R4
101B9E:  ADD             R1, PC; "dv"
101BA0:  ADDS            R2, R1, #2
101BA2:  BL              sub_FE18C
101BA6:  CBZ             R0, loc_101BB0
101BA8:  LDR             R5, [SP,#0x60+var_44]
101BAA:  ADD.W           R10, R5, #1
101BAE:  B               loc_101BC6
101BB0:  LDR             R1, =(aDv_0 - 0x101BB8); "dV" ...
101BB2:  LDR             R0, [SP,#0x60+var_38]
101BB4:  ADD             R1, PC; "dV"
101BB6:  ADDS            R2, R1, #2
101BB8:  BL              sub_FE18C
101BBC:  CBZ             R0, loc_101BCA
101BBE:  LDR             R5, =(asc_4C5ED - 0x101BC4); "/=" ...
101BC0:  ADD             R5, PC; "/="
101BC2:  ADD.W           R10, R5, #2
101BC6:  LDR             R4, [SP,#0x60+var_38]
101BC8:  B               loc_101A86
101BCA:  LDR             R1, =(aEo_0 - 0x101BD2); "eo" ...
101BCC:  LDR             R0, [SP,#0x60+var_38]
101BCE:  ADD             R1, PC; "eo"
101BD0:  ADDS            R2, R1, #2
101BD2:  BL              sub_FE18C
101BD6:  CBZ             R0, loc_101BDE
101BD8:  LDR             R5, =(asc_4E786 - 0x101BDE); "^" ...
101BDA:  ADD             R5, PC; "^"
101BDC:  B               loc_101BAA
101BDE:  LDR             R1, =(aEo - 0x101BE6); "eO" ...
101BE0:  LDR             R0, [SP,#0x60+var_38]
101BE2:  ADD             R1, PC; "eO"
101BE4:  ADDS            R2, R1, #2
101BE6:  BL              sub_FE18C
101BEA:  CBZ             R0, loc_101BF2
101BEC:  LDR             R5, =(asc_4DCB4 - 0x101BF2); "^=" ...
101BEE:  ADD             R5, PC; "^="
101BF0:  B               loc_101BC2
101BF2:  LDR             R1, =(aEq - 0x101BFA); "eq" ...
101BF4:  LDR             R0, [SP,#0x60+var_38]
101BF6:  ADD             R1, PC; "eq"
101BF8:  ADDS            R2, R1, #2
101BFA:  BL              sub_FE18C
101BFE:  CBZ             R0, loc_101C06
101C00:  LDR             R5, =(asc_4DCB7 - 0x101C06); "==" ...
101C02:  ADD             R5, PC; "=="
101C04:  B               loc_101BC2
101C06:  LDR             R1, =(aGe - 0x101C0E); "ge" ...
101C08:  LDR             R0, [SP,#0x60+var_38]
101C0A:  ADD             R1, PC; "ge"
101C0C:  ADDS            R2, R1, #2
101C0E:  BL              sub_FE18C
101C12:  CBZ             R0, loc_101C1A
101C14:  LDR             R5, =(asc_4ACC6 - 0x101C1A); ">=" ...
101C16:  ADD             R5, PC; ">="
101C18:  B               loc_101BC2
101C1A:  LDR             R1, =(aGt - 0x101C22); "gt" ...
101C1C:  LDR             R0, [SP,#0x60+var_38]
101C1E:  ADD             R1, PC; "gt"
101C20:  ADDS            R2, R1, #2
101C22:  BL              sub_FE18C
101C26:  CBZ             R0, loc_101C2E
101C28:  LDR             R5, =(asc_4DB85 - 0x101C2E); ">" ...
101C2A:  ADD             R5, PC; ">"
101C2C:  B               loc_101BAA
101C2E:  LDR             R1, =(aLe - 0x101C36); "le" ...
101C30:  LDR             R0, [SP,#0x60+var_38]
101C32:  ADD             R1, PC; "le"
101C34:  ADDS            R2, R1, #2
101C36:  BL              sub_FE18C
101C3A:  CBZ             R0, loc_101C42
101C3C:  LDR             R5, =(asc_4F518 - 0x101C42); "<=" ...
101C3E:  ADD             R5, PC; "<="
101C40:  B               loc_101BC2
101C42:  LDR             R1, =(aLs_0 - 0x101C4A); "ls" ...
101C44:  LDR             R0, [SP,#0x60+var_38]
101C46:  ADD             R1, PC; "ls"
101C48:  ADDS            R2, R1, #2
101C4A:  BL              sub_FE18C
101C4E:  CBZ             R0, loc_101C56
101C50:  LDR             R5, =(asc_4EEEF - 0x101C56); "<<" ...
101C52:  ADD             R5, PC; "<<"
101C54:  B               loc_101BC2
101C56:  LDR             R1, =(aLs - 0x101C5E); "lS" ...
101C58:  LDR             R0, [SP,#0x60+var_38]
101C5A:  ADD             R1, PC; "lS"
101C5C:  ADDS            R2, R1, #2
101C5E:  BL              sub_FE18C
101C62:  CBZ             R0, loc_101C6E
101C64:  LDR             R5, =(asc_4E941 - 0x101C6A); "<<=" ...
101C66:  ADD             R5, PC; "<<="
101C68:  ADD.W           R10, R5, #3
101C6C:  B               loc_101BC6
101C6E:  LDR             R1, =(aLt - 0x101C76); "lt" ...
101C70:  LDR             R0, [SP,#0x60+var_38]
101C72:  ADD             R1, PC; "lt"
101C74:  ADDS            R2, R1, #2
101C76:  BL              sub_FE18C
101C7A:  CBZ             R0, loc_101C82
101C7C:  LDR             R5, =(asc_4A928 - 0x101C82); "<" ...
101C7E:  ADD             R5, PC; "<"
101C80:  B               loc_101BAA
101C82:  LDR             R1, =(aMi_0 - 0x101C8A); "mi" ...
101C84:  LDR             R0, [SP,#0x60+var_38]
101C86:  ADD             R1, PC; "mi"
101C88:  ADDS            R2, R1, #2
101C8A:  BL              sub_FE18C
101C8E:  CBZ             R0, loc_101C96
101C90:  LDR             R5, =(asc_4C8D3 - 0x101C96); "-" ...
101C92:  ADD             R5, PC; "-"
101C94:  B               loc_101BAA
101C96:  LDR             R1, =(aMi - 0x101C9E); "mI" ...
101C98:  LDR             R0, [SP,#0x60+var_38]
101C9A:  ADD             R1, PC; "mI"
101C9C:  ADDS            R2, R1, #2
101C9E:  BL              sub_FE18C
101CA2:  CBZ             R0, loc_101CAA
101CA4:  LDR             R5, =(asc_4C5F0 - 0x101CAA); "-=" ...
101CA6:  ADD             R5, PC; "-="
101CA8:  B               loc_101BC2
101CAA:  LDR             R1, =(aMl - 0x101CB2); "ml" ...
101CAC:  LDR             R0, [SP,#0x60+var_38]
101CAE:  ADD             R1, PC; "ml"
101CB0:  ADDS            R2, R1, #2
101CB2:  BL              sub_FE18C
101CB6:  CBZ             R0, loc_101CBE
101CB8:  LDR             R5, =(byte_4CC4A - 0x101CBE)
101CBA:  ADD             R5, PC; byte_4CC4A
101CBC:  B               loc_101BAA
101CBE:  LDR             R1, =(aMl_0 - 0x101CC6); "mL" ...
101CC0:  LDR             R0, [SP,#0x60+var_38]
101CC2:  ADD             R1, PC; "mL"
101CC4:  ADDS            R2, R1, #2
101CC6:  BL              sub_FE18C
101CCA:  CBZ             R0, loc_101CD2
101CCC:  LDR             R5, =(asc_4D212 - 0x101CD2); "*=" ...
101CCE:  ADD             R5, PC; "*="
101CD0:  B               loc_101BC2
101CD2:  LDR             R1, =(aNe - 0x101CDA); "ne" ...
101CD4:  LDR             R0, [SP,#0x60+var_38]
101CD6:  ADD             R1, PC; "ne"
101CD8:  ADDS            R2, R1, #2
101CDA:  BL              sub_FE18C
101CDE:  CBZ             R0, loc_101CE6
101CE0:  LDR             R5, =(asc_4F236 - 0x101CE6); "!=" ...
101CE2:  ADD             R5, PC; "!="
101CE4:  B               loc_101BC2
101CE6:  LDR             R1, =(aOo - 0x101CEE); "oo" ...
101CE8:  LDR             R0, [SP,#0x60+var_38]
101CEA:  ADD             R1, PC; "oo"
101CEC:  ADDS            R2, R1, #2
101CEE:  BL              sub_FE18C
101CF2:  CBZ             R0, loc_101CFA
101CF4:  LDR             R5, =(asc_4E517 - 0x101CFA); "||" ...
101CF6:  ADD             R5, PC; "||"
101CF8:  B               loc_101BC2
101CFA:  LDR             R1, =(aOr - 0x101D02); "or" ...
101CFC:  LDR             R0, [SP,#0x60+var_38]
101CFE:  ADD             R1, PC; "or"
101D00:  ADDS            R2, R1, #2
101D02:  BL              sub_FE18C
101D06:  CBZ             R0, loc_101D0E
101D08:  LDR             R5, =(asc_4FABC - 0x101D0E); "|" ...
101D0A:  ADD             R5, PC; "|"
101D0C:  B               loc_101BAA
101D0E:  LDR             R1, =(aOr_0 - 0x101D16); "oR" ...
101D10:  LDR             R0, [SP,#0x60+var_38]
101D12:  ADD             R1, PC; "oR"
101D14:  ADDS            R2, R1, #2
101D16:  BL              sub_FE18C
101D1A:  CBZ             R0, loc_101D22
101D1C:  LDR             R5, =(asc_4E788 - 0x101D22); "|=" ...
101D1E:  ADD             R5, PC; "|="
101D20:  B               loc_101BC2
101D22:  LDR             R1, =(aPl_0 - 0x101D2A); "pl" ...
101D24:  LDR             R0, [SP,#0x60+var_38]
101D26:  ADD             R1, PC; "pl"
101D28:  ADDS            R2, R1, #2
101D2A:  BL              sub_FE18C
101D2E:  CBZ             R0, loc_101D36
101D30:  LDR             R5, =(asc_4E68B - 0x101D36); "+" ...
101D32:  ADD             R5, PC; "+"
101D34:  B               loc_101BAA
101D36:  LDR             R1, =(aPl - 0x101D3E); "pL" ...
101D38:  LDR             R0, [SP,#0x60+var_38]
101D3A:  ADD             R1, PC; "pL"
101D3C:  ADDS            R2, R1, #2
101D3E:  BL              sub_FE18C
101D42:  CBZ             R0, loc_101D4A
101D44:  LDR             R5, =(asc_4E1F7 - 0x101D4A); "+=" ...
101D46:  ADD             R5, PC; "+="
101D48:  B               loc_101BC2
101D4A:  LDR             R1, =(aRm_0 - 0x101D52); "rm" ...
101D4C:  LDR             R0, [SP,#0x60+var_38]
101D4E:  ADD             R1, PC; "rm"
101D50:  ADDS            R2, R1, #2
101D52:  BL              sub_FE18C
101D56:  CBZ             R0, loc_101D5E
101D58:  LDR             R5, =(asc_507A6 - 0x101D5E); "%" ...
101D5A:  ADD             R5, PC; "%"
101D5C:  B               loc_101BAA
101D5E:  LDR             R1, =(aRm - 0x101D66); "rM" ...
101D60:  LDR             R0, [SP,#0x60+var_38]
101D62:  ADD             R1, PC; "rM"
101D64:  ADDS            R2, R1, #2
101D66:  BL              sub_FE18C
101D6A:  CBZ             R0, loc_101D72
101D6C:  LDR             R5, =(asc_4F51B - 0x101D72); "%=" ...
101D6E:  ADD             R5, PC; "%="
101D70:  B               loc_101BC2
101D72:  LDR             R1, =(aRs_0 - 0x101D7A); "rs" ...
101D74:  LDR             R0, [SP,#0x60+var_38]
101D76:  ADD             R1, PC; "rs"
101D78:  ADDS            R2, R1, #2
101D7A:  BL              sub_FE18C
101D7E:  CBZ             R0, loc_101D86
101D80:  LDR             R5, =(asc_4B0D0 - 0x101D86); ">>" ...
101D82:  ADD             R5, PC; ">>"
101D84:  B               loc_101BC2
101D86:  LDR             R1, =(aRs - 0x101D8E); "rS" ...
101D88:  LDR             R0, [SP,#0x60+var_38]
101D8A:  ADD             R1, PC; "rS"
101D8C:  ADDS            R2, R1, #2
101D8E:  BL              sub_FE18C
101D92:  CMP             R0, #0
101D94:  BEQ.W           loc_100718
101D98:  LDR             R5, =(asc_4E1FA - 0x101D9E); ">>=" ...
101D9A:  ADD             R5, PC; ">>="
101D9C:  B               loc_101C68
