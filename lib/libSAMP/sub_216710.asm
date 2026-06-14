; =========================================================
; Game Engine Function: sub_216710
; Address            : 0x216710 - 0x216B6C
; =========================================================

216710:  PUSH            {R4-R7,LR}
216712:  ADD             R7, SP, #0xC
216714:  PUSH.W          {R8-R11}
216718:  SUB             SP, SP, #0x24
21671A:  MOV             R4, R0
21671C:  LDR.W           R0, =(__stack_chk_guard_ptr - 0x216726)
216720:  MOV             R5, R1
216722:  ADD             R0, PC; __stack_chk_guard_ptr
216724:  LDR             R0, [R0]; __stack_chk_guard
216726:  LDR             R0, [R0]
216728:  STR             R0, [SP,#0x40+var_20]
21672A:  LDRD.W          R0, R1, [R4]
21672E:  CMP             R0, R1
216730:  BEQ             loc_21673C
216732:  LDRB            R2, [R0]
216734:  CMP             R2, #0x4C ; 'L'
216736:  ITT EQ
216738:  ADDEQ           R0, #1
21673A:  STREQ           R0, [R4]
21673C:  LDR             R6, =(aSt - 0x216744); "St" ...
21673E:  SUBS            R2, R1, R0
216740:  ADD             R6, PC; "St"
216742:  BEQ             loc_2167EE
216744:  LDRB            R3, [R0]
216746:  CMP             R3, #0x5A ; 'Z'
216748:  BEQ             loc_216796
21674A:  CMP             R3, #0x53 ; 'S'
21674C:  BEQ             loc_2167E4
21674E:  CMP             R3, #0x4E ; 'N'
216750:  BNE             loc_2167EE
216752:  CMP             R0, R1
216754:  STR             R5, [SP,#0x40+var_2C]
216756:  BEQ.W           loc_216892
21675A:  LDRB            R1, [R0]
21675C:  CMP             R1, #0x4E ; 'N'
21675E:  BNE.W           loc_216892
216762:  ADDS            R0, #1
216764:  STR             R0, [R4]
216766:  MOV             R0, R4
216768:  BL              sub_2173EC
21676C:  CBZ             R5, loc_216770
21676E:  STR             R0, [R5,#4]
216770:  LDRD.W          R0, R1, [R4]
216774:  CMP             R0, R1
216776:  BEQ.W           loc_2168AE
21677A:  LDRB            R1, [R0]
21677C:  CMP             R1, #0x52 ; 'R'
21677E:  BEQ.W           loc_2168D8
216782:  CMP             R1, #0x4F ; 'O'
216784:  BNE.W           loc_2168AE
216788:  ADDS            R0, #1
21678A:  STR             R0, [R4]
21678C:  CMP             R5, #0
21678E:  BEQ.W           loc_2168E2
216792:  MOVS            R0, #2
216794:  B               loc_2168E0
216796:  CMP             R0, R1
216798:  BEQ             loc_216892
21679A:  ADDS            R0, #1
21679C:  STR             R0, [R4]
21679E:  MOV             R0, R4
2167A0:  BL              sub_215654
2167A4:  CMP             R0, #0
2167A6:  STR             R0, [SP,#0x40+var_24]
2167A8:  BEQ             loc_216892
2167AA:  LDRD.W          R0, R1, [R4]
2167AE:  CMP             R0, R1
2167B0:  BEQ             loc_216892
2167B2:  LDRB            R2, [R0]
2167B4:  CMP             R2, #0x45 ; 'E'
2167B6:  BNE             loc_216892
2167B8:  ADDS            R2, R0, #1
2167BA:  STR             R2, [R4]
2167BC:  CMP             R2, R1
2167BE:  BEQ             loc_2168B4
2167C0:  LDRB            R2, [R2]
2167C2:  CMP             R2, #0x64 ; 'd'
2167C4:  BEQ.W           loc_216B36
2167C8:  CMP             R2, #0x73 ; 's'
2167CA:  BNE             loc_2168B4
2167CC:  ADDS            R0, #2
2167CE:  STR             R0, [R4]
2167D0:  BL              sub_21C8C2
2167D4:  STR             R0, [R4]
2167D6:  MOV             R0, R4
2167D8:  LDR             R1, =(aStringLiteral - 0x2167DE); "string literal" ...
2167DA:  ADD             R1, PC; "string literal"
2167DC:  BL              sub_21C12C
2167E0:  STR             R0, [SP,#0x40+var_3C]
2167E2:  B               loc_2168CC
2167E4:  CMP             R2, #2
2167E6:  BCC             loc_21687A
2167E8:  LDRB            R0, [R0,#1]
2167EA:  CMP             R0, #0x74 ; 't'
2167EC:  BNE             loc_21687A
2167EE:  LDR             R1, =(aStl - 0x2167F6); "StL" ...
2167F0:  MOV             R0, R4
2167F2:  ADD             R1, PC; "StL"
2167F4:  ADDS            R2, R1, #3
2167F6:  BL              sub_2155E4
2167FA:  CBNZ            R0, loc_216808
2167FC:  ADDS            R2, R6, #2
2167FE:  MOV             R0, R4
216800:  MOV             R1, R6
216802:  BL              sub_2155E4
216806:  CBZ             R0, loc_216832
216808:  MOV             R0, R4
21680A:  MOV             R1, R5
21680C:  BL              sub_21778C
216810:  CMP             R0, #0
216812:  BEQ             loc_216892
216814:  MOV             R6, R0
216816:  ADD.W           R0, R4, #0x198
21681A:  MOVS            R1, #0xC
21681C:  BL              sub_216EF0
216820:  LDR             R2, =(_ZTVN12_GLOBAL__N_116itanium_demangle16StdQualifiedNameE - 0x216828); `vtable for'`anonymous namespace'::itanium_demangle::StdQualifiedName ...
216822:  LDR             R1, =0x1010127
216824:  ADD             R2, PC; `vtable for'`anonymous namespace'::itanium_demangle::StdQualifiedName
216826:  STR             R6, [R0,#8]
216828:  ADDS            R2, #8
21682A:  STR             R0, [SP,#0x40+var_3C]
21682C:  STRD.W          R2, R1, [R0]
216830:  B               loc_21683E
216832:  MOV             R0, R4
216834:  MOV             R1, R5
216836:  BL              sub_21778C
21683A:  STR             R0, [SP,#0x40+var_3C]
21683C:  CBZ             R0, loc_216892
21683E:  LDRD.W          R1, R2, [R4]
216842:  CMP             R2, R1
216844:  BEQ             loc_216894
216846:  LDRB            R1, [R1]
216848:  CMP             R1, #0x49 ; 'I'
21684A:  BNE             loc_216894
21684C:  ADD.W           R0, R4, #0x94
216850:  ADD             R1, SP, #0x40+var_3C
216852:  BL              sub_216CEC
216856:  MOV             R1, R5
216858:  MOV             R0, R4
21685A:  CMP             R5, #0
21685C:  IT NE
21685E:  MOVNE           R1, #1
216860:  BL              sub_217130
216864:  STR             R0, [SP,#0x40+var_24]
216866:  CBZ             R0, loc_216892
216868:  CBZ             R5, loc_21686E
21686A:  MOVS            R0, #1
21686C:  STRB            R0, [R5,#1]
21686E:  ADD             R1, SP, #0x40+var_3C
216870:  ADD             R2, SP, #0x40+var_24
216872:  MOV             R0, R4
216874:  BL              sub_2173BC
216878:  B               loc_216894
21687A:  MOV             R0, R4
21687C:  BL              sub_21700C
216880:  STR             R0, [SP,#0x40+var_3C]
216882:  CBZ             R0, loc_216892
216884:  LDRD.W          R0, R1, [R4]
216888:  CMP             R1, R0
21688A:  BEQ             loc_216892
21688C:  LDRB            R0, [R0]
21688E:  CMP             R0, #0x49 ; 'I'
216890:  BEQ             loc_216856
216892:  MOVS            R0, #0
216894:  LDR             R1, [SP,#0x40+var_20]
216896:  LDR             R2, =(__stack_chk_guard_ptr - 0x21689C)
216898:  ADD             R2, PC; __stack_chk_guard_ptr
21689A:  LDR             R2, [R2]; __stack_chk_guard
21689C:  LDR             R2, [R2]
21689E:  CMP             R2, R1
2168A0:  ITTT EQ
2168A2:  ADDEQ           SP, SP, #0x24 ; '$'
2168A4:  POPEQ.W         {R8-R11}
2168A8:  POPEQ           {R4-R7,PC}
2168AA:  BLX             __stack_chk_fail
2168AE:  CBZ             R5, loc_2168E2
2168B0:  MOVS            R0, #0
2168B2:  B               loc_2168E0
2168B4:  MOV             R0, R4
2168B6:  MOV             R1, R5
2168B8:  BL              sub_216710
2168BC:  CMP             R0, #0
2168BE:  STR             R0, [SP,#0x40+var_3C]
2168C0:  BEQ             loc_216892
2168C2:  LDRD.W          R0, R1, [R4]
2168C6:  BL              sub_21C8C2
2168CA:  STR             R0, [R4]
2168CC:  ADD             R1, SP, #0x40+var_24
2168CE:  ADD             R2, SP, #0x40+var_3C
2168D0:  MOV             R0, R4
2168D2:  BL              sub_21C928
2168D6:  B               loc_216894
2168D8:  ADDS            R0, #1
2168DA:  STR             R0, [R4]
2168DC:  CBZ             R5, loc_2168E2
2168DE:  MOVS            R0, #1
2168E0:  STRB            R0, [R5,#8]
2168E2:  MOVS            R0, #0
2168E4:  ADDS            R2, R6, #2
2168E6:  STR             R0, [SP,#0x40+var_30]
2168E8:  ADD             R0, SP, #0x40+var_2C
2168EA:  STR             R0, [SP,#0x40+var_34]
2168EC:  ADD             R0, SP, #0x40+var_30
2168EE:  STRD.W          R0, R4, [SP,#0x40+var_3C]
2168F2:  MOV             R0, R4
2168F4:  MOV             R1, R6
2168F6:  BL              sub_2155E4
2168FA:  CBZ             R0, loc_216908
2168FC:  LDR             R1, =(aStd - 0x216904); "std" ...
2168FE:  MOV             R0, R4
216900:  ADD             R1, PC; "std"
216902:  BL              sub_217430
216906:  STR             R0, [SP,#0x40+var_30]
216908:  ADD.W           R6, R4, #0x94
21690C:  ADD.W           R9, SP, #0x40+var_3C
216910:  ADD.W           R8, SP, #0x40+var_30
216914:  MOV.W           R11, #1
216918:  ADD.W           R0, R4, #0x198
21691C:  STR             R0, [SP,#0x40+var_40]
21691E:  LDRD.W          R0, R1, [R4]
216922:  CMP             R0, R1
216924:  BEQ             loc_216936
216926:  LDRB            R2, [R0]
216928:  CMP             R2, #0x4C ; 'L'
21692A:  BEQ             loc_216932
21692C:  CMP             R2, #0x45 ; 'E'
21692E:  BNE             loc_216936
216930:  B               loc_216B18
216932:  ADDS            R0, #1
216934:  STR             R0, [R4]
216936:  CMP             R0, R1
216938:  BEQ             loc_21694C
21693A:  LDRB            R2, [R0]
21693C:  CMP             R2, #0x4D ; 'M'
21693E:  BNE             loc_21694C
216940:  ADDS            R0, #1
216942:  STR             R0, [R4]
216944:  LDR             R0, [SP,#0x40+var_30]
216946:  CMP             R0, #0
216948:  BNE             loc_21691E
21694A:  B               loc_216892
21694C:  SUBS            R2, R1, R0
21694E:  BEQ.W           loc_216A5E
216952:  LDRB            R3, [R0]
216954:  CMP             R3, #0x43 ; 'C'
216956:  BEQ             loc_21698A
216958:  CMP             R3, #0x44 ; 'D'
21695A:  BEQ             loc_216970
21695C:  CMP             R3, #0x49 ; 'I'
21695E:  BEQ             loc_216A20
216960:  CMP             R3, #0x53 ; 'S'
216962:  BEQ             loc_216A54
216964:  CMP             R3, #0x54 ; 'T'
216966:  BNE             loc_216A5E
216968:  MOV             R0, R4
21696A:  BL              sub_2174C8
21696E:  B               loc_216A66
216970:  CMP             R2, #2
216972:  BCC             loc_21698A
216974:  LDRB            R2, [R0,#1]
216976:  CMP             R2, #0x43 ; 'C'
216978:  BEQ             loc_216A5E
21697A:  CMP             R2, #0x74 ; 't'
21697C:  IT NE
21697E:  CMPNE           R2, #0x54 ; 'T'
216980:  BNE             loc_21698A
216982:  MOV             R0, R4
216984:  BL              sub_21767C
216988:  B               loc_216A66
21698A:  LDR             R2, [SP,#0x40+var_30]
21698C:  CMP             R2, #0
21698E:  BEQ.W           loc_216892
216992:  LDRB            R3, [R2,#4]
216994:  LDR.W           R10, [SP,#0x40+var_2C]
216998:  CMP             R3, #0x29 ; ')'
21699A:  BNE             loc_2169C0
21699C:  LDR             R5, [R2,#8]
21699E:  SUBS            R2, R5, #2
2169A0:  CMP             R2, #3
2169A2:  BHI             loc_2169C0
2169A4:  LDR             R0, [SP,#0x40+var_40]
2169A6:  MOVS            R1, #0xC
2169A8:  BL              sub_216EF0
2169AC:  LDR             R1, =(_ZTVN12_GLOBAL__N_116itanium_demangle27ExpandedSpecialSubstitutionE - 0x2169B2); `vtable for'`anonymous namespace'::itanium_demangle::ExpandedSpecialSubstitution ...
2169AE:  ADD             R1, PC; `vtable for'`anonymous namespace'::itanium_demangle::ExpandedSpecialSubstitution
2169B0:  ADDS            R1, #8
2169B2:  STR             R1, [R0]
2169B4:  LDR             R1, =0x1010128
2169B6:  STRD.W          R1, R5, [R0,#4]
2169BA:  STR             R0, [SP,#0x40+var_30]
2169BC:  LDRD.W          R0, R1, [R4]
2169C0:  CMP             R0, R1
2169C2:  BEQ             loc_2169E2
2169C4:  LDRB            R2, [R0]
2169C6:  CMP             R2, #0x43 ; 'C'
2169C8:  BNE             loc_2169E2
2169CA:  ADDS            R2, R0, #1
2169CC:  STR             R2, [R4]
2169CE:  CMP             R2, R1
2169D0:  BEQ             loc_216AB6
2169D2:  LDRB            R3, [R2]
2169D4:  CMP             R3, #0x49 ; 'I'
2169D6:  ITEEE NE
2169D8:  MOVNE           R0, #0
2169DA:  ADDEQ           R2, R0, #2
2169DC:  STREQ           R2, [R4]
2169DE:  MOVEQ           R0, #1
2169E0:  B               loc_216ABA
2169E2:  SUBS            R2, R1, R0
2169E4:  BEQ.W           loc_216AFE
2169E8:  LDRB            R3, [R0]
2169EA:  MOVS            R1, #0
2169EC:  CMP             R3, #0x44 ; 'D'
2169EE:  BNE.W           loc_216B00
2169F2:  CMP             R2, #1
2169F4:  BEQ.W           loc_216B00
2169F8:  LDRB            R1, [R0,#1]
2169FA:  SUB.W           R2, R1, #0x30 ; '0'
2169FE:  MOVS            R1, #0
216A00:  CMP             R2, #5
216A02:  BHI             loc_216B00
216A04:  CMP             R2, #3
216A06:  BEQ             loc_216B00
216A08:  ADDS            R0, #2
216A0A:  STR             R0, [R4]
216A0C:  MOVS            R0, #1
216A0E:  MOV.W           R11, #1
216A12:  STR             R2, [SP,#0x40+var_24]
216A14:  CMP.W           R10, #0
216A18:  IT NE
216A1A:  STRBNE.W        R0, [R10]
216A1E:  B               loc_216AE8
216A20:  LDR             R1, [SP,#0x40+var_2C]
216A22:  MOV             R0, R4
216A24:  CMP             R1, #0
216A26:  IT NE
216A28:  MOVNE           R1, #1
216A2A:  BL              sub_217130
216A2E:  CMP             R0, #0
216A30:  STR             R0, [SP,#0x40+var_24]
216A32:  BEQ.W           loc_216892
216A36:  LDR             R0, [SP,#0x40+var_30]
216A38:  CMP             R0, #0
216A3A:  BEQ.W           loc_216892
216A3E:  ADD             R2, SP, #0x40+var_24
216A40:  MOV             R0, R4
216A42:  MOV             R1, R8
216A44:  BL              sub_2173BC
216A48:  STR             R0, [SP,#0x40+var_30]
216A4A:  LDR             R0, [SP,#0x40+var_2C]
216A4C:  CBZ             R0, loc_216A74
216A4E:  STRB.W          R11, [R0,#1]
216A52:  B               loc_216A74
216A54:  CMP             R2, #2
216A56:  BCC             loc_216A8C
216A58:  LDRB            R0, [R0,#1]
216A5A:  CMP             R0, #0x74 ; 't'
216A5C:  BNE             loc_216A8C
216A5E:  LDR             R1, [SP,#0x40+var_2C]
216A60:  MOV             R0, R4
216A62:  BL              sub_21778C
216A66:  MOV             R1, R0
216A68:  MOV             R0, R9
216A6A:  BL              sub_217468
216A6E:  CMP             R0, #0
216A70:  BEQ.W           loc_216892
216A74:  MOV             R0, R6
216A76:  MOV             R1, R8
216A78:  BL              sub_216CEC
216A7C:  B               loc_21691E
216A7E:  ALIGN 0x10
216A80:  DCD aSt - 0x216744
216A84:  DCD aStringLiteral - 0x2167DE
216A88:  DCD aStl - 0x2167F6
216A8C:  MOV             R0, R4
216A8E:  BL              sub_21700C
216A92:  MOV             R5, R0
216A94:  STR             R0, [SP,#0x40+var_24]
216A96:  MOV             R0, R9
216A98:  MOV             R1, R5
216A9A:  BL              sub_217468
216A9E:  CMP             R0, #0
216AA0:  BEQ.W           loc_216892
216AA4:  LDR             R0, [SP,#0x40+var_30]
216AA6:  CMP             R0, R5
216AA8:  BEQ.W           loc_21691E
216AAC:  ADD             R1, SP, #0x40+var_24
216AAE:  MOV             R0, R6
216AB0:  BL              sub_216CEC
216AB4:  B               loc_21691E
216AB6:  MOVS            R0, #0
216AB8:  MOV             R2, R1
216ABA:  CMP             R1, R2
216ABC:  BEQ             loc_216AFE
216ABE:  LDRB            R1, [R2]
216AC0:  SUB.W           R3, R1, #0x31 ; '1'
216AC4:  CMP             R3, #4
216AC6:  BHI             loc_216AFE
216AC8:  ADDS            R2, #1
216ACA:  SUBS            R1, #0x30 ; '0'
216ACC:  CMP.W           R10, #0
216AD0:  STR             R2, [R4]
216AD2:  STR             R1, [SP,#0x40+var_24]
216AD4:  IT NE
216AD6:  STRBNE.W        R11, [R10]
216ADA:  CBZ             R0, loc_216AE6
216ADC:  MOV             R0, R4
216ADE:  MOV             R1, R10
216AE0:  BL              sub_216710
216AE4:  CBZ             R0, loc_216AFE
216AE6:  MOVS            R0, #0
216AE8:  STRB.W          R0, [R7,#var_25]
216AEC:  SUB.W           R2, R7, #-var_25
216AF0:  ADD             R3, SP, #0x40+var_24
216AF2:  MOV             R0, R4
216AF4:  MOV             R1, R8
216AF6:  BL              sub_21C6BC
216AFA:  MOV             R1, R0
216AFC:  B               loc_216B00
216AFE:  MOVS            R1, #0
216B00:  MOV             R0, R9
216B02:  BL              sub_217468
216B06:  CMP             R0, #0
216B08:  BEQ.W           loc_216892
216B0C:  LDR             R1, [SP,#0x40+var_30]
216B0E:  MOV             R0, R4
216B10:  BL              sub_2176FC
216B14:  STR             R0, [SP,#0x40+var_30]
216B16:  B               loc_216A6E
216B18:  ADDS            R0, #1
216B1A:  STR             R0, [R4]
216B1C:  LDR             R0, [SP,#0x40+var_30]
216B1E:  CMP             R0, #0
216B20:  BEQ.W           loc_216892
216B24:  LDRD.W          R2, R1, [R4,#0x94]
216B28:  CMP             R2, R1
216B2A:  BEQ.W           loc_216892
216B2E:  SUBS            R1, #4
216B30:  STR.W           R1, [R4,#0x98]
216B34:  B               loc_216894
216B36:  ADDS            R0, #2
216B38:  STR             R0, [R4]
216B3A:  ADD             R0, SP, #0x40+var_3C
216B3C:  MOV             R1, R4
216B3E:  MOVS            R2, #1
216B40:  BL              sub_215BB4
216B44:  LDRD.W          R0, R1, [R4]
216B48:  CMP             R0, R1
216B4A:  BEQ.W           loc_216892
216B4E:  LDRB            R1, [R0]
216B50:  CMP             R1, #0x5F ; '_'
216B52:  BNE.W           loc_216892
216B56:  ADDS            R0, #1
216B58:  STR             R0, [R4]
216B5A:  MOV             R0, R4
216B5C:  MOV             R1, R5
216B5E:  BL              sub_216710
216B62:  CMP             R0, #0
216B64:  STR             R0, [SP,#0x40+var_3C]
216B66:  BNE.W           loc_2168CC
216B6A:  B               loc_216892
