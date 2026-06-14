; =========================================================
; Game Engine Function: sub_215654
; Address            : 0x215654 - 0x215B62
; =========================================================

215654:  PUSH            {R4-R7,LR}
215656:  ADD             R7, SP, #0xC
215658:  PUSH.W          {R8-R11}
21565C:  SUB             SP, SP, #0x3C
21565E:  MOV             R8, R0
215660:  LDR.W           R0, =(__stack_chk_guard_ptr - 0x215668)
215664:  ADD             R0, PC; __stack_chk_guard_ptr
215666:  LDR             R0, [R0]; __stack_chk_guard
215668:  LDR             R0, [R0]
21566A:  STR             R0, [SP,#0x58+var_20]
21566C:  LDRD.W          R0, R1, [R8]
215670:  CMP             R1, R0
215672:  BEQ             loc_2156F4
215674:  LDRB            R2, [R0]
215676:  CMP             R2, #0x54 ; 'T'
215678:  IT NE
21567A:  CMPNE           R2, #0x47 ; 'G'
21567C:  BNE             loc_2156F4
21567E:  SUBS            R3, R1, R0
215680:  BEQ             loc_21576A
215682:  CMP             R2, #0x47 ; 'G'
215684:  BEQ.W           loc_21578C
215688:  CMP             R2, #0x54 ; 'T'
21568A:  BNE             loc_21576A
21568C:  CMP             R3, #2
21568E:  BCC.W           loc_215800; jumptable 002157CC case 85
215692:  LDRB            R2, [R0,#1]
215694:  SUB.W           R3, R2, #0x53 ; 'S'; switch 5 cases
215698:  CMP             R3, #4
21569A:  BLS.W           loc_2157CC
21569E:  CMP             R2, #0x43 ; 'C'; jumptable 002157CC default case
2156A0:  BEQ.W           loc_2159A2
2156A4:  CMP             R2, #0x48 ; 'H'
2156A6:  BEQ.W           loc_215A0C
2156AA:  CMP             R2, #0x49 ; 'I'
2156AC:  BEQ.W           loc_215A3E
2156B0:  CMP             R2, #0x63 ; 'c'
2156B2:  BNE.W           loc_215800; jumptable 002157CC case 85
2156B6:  ADDS            R0, #2
2156B8:  STR.W           R0, [R8]
2156BC:  MOV             R0, R8
2156BE:  BL              sub_216DDC
2156C2:  CMP             R0, #0
2156C4:  BNE             loc_21576A
2156C6:  MOV             R0, R8
2156C8:  BL              sub_216DDC
2156CC:  CMP             R0, #0
2156CE:  BNE             loc_21576A
2156D0:  MOV             R0, R8
2156D2:  BL              sub_215654
2156D6:  CMP             R0, #0
2156D8:  BEQ             loc_21576A
2156DA:  MOV             R6, R0
2156DC:  ADD.W           R0, R8, #0x198
2156E0:  MOVS            R1, #0x14
2156E2:  BL              sub_216EF0
2156E6:  LDR             R1, =(aCovariantRetur - 0x2156F0); "covariant return thunk to " ...
2156E8:  MOV             R9, R0
2156EA:  LDR             R0, =0x1010114
2156EC:  ADD             R1, PC; "covariant return thunk to "
2156EE:  ADD.W           R2, R1, #0x1A
2156F2:  B               loc_215A68
2156F4:  LDRD.W          R0, R1, [R8,#0x168]
2156F8:  MOV.W           R9, #0
2156FC:  STR.W           R8, [SP,#0x58+var_24]
215700:  SUBS            R0, R1, R0
215702:  STRB.W          R9, [SP,#0x58+var_2C]
215706:  ASRS            R0, R0, #2
215708:  STR.W           R9, [SP,#0x58+var_30]
21570C:  STR             R0, [SP,#0x58+var_28]
21570E:  MOV             R0, R8
215710:  STRH.W          R9, [SP,#0x58+var_34]
215714:  ADD             R6, SP, #0x58+var_34
215716:  MOV             R1, R6
215718:  BL              sub_216710
21571C:  STR             R0, [SP,#0x58+var_38]
21571E:  CBZ             R0, loc_21576E
215720:  ADD.W           R1, R6, #8
215724:  STR             R1, [SP,#0x58+var_4C]
215726:  LDRD.W          R1, R2, [R8,#0x168]
21572A:  MOV             R9, R0
21572C:  LDR.W           R12, [SP,#0x58+var_28]
215730:  ADD.W           R11, R6, #4
215734:  LDRD.W          R0, LR, [R8,#0x14C]
215738:  SUBS            R2, R2, R1
21573A:  ASRS            R6, R2, #2
21573C:  MOV             R3, R12
21573E:  B               loc_21575C
215740:  LDR.W           R4, [R1,R3,LSL#2]
215744:  LDRD.W          R10, R2, [R2]
215748:  SUB.W           R2, R2, R10
21574C:  LDR             R5, [R4,#8]
21574E:  CMP.W           R5, R2,ASR#2
215752:  BCS             loc_21576A
215754:  LDR.W           R2, [R10,R5,LSL#2]
215758:  ADDS            R3, #1
21575A:  STR             R2, [R4,#0xC]
21575C:  CMP             R3, R6
21575E:  BCS             loc_215816
215760:  CMP             R0, LR
215762:  ITT NE
215764:  LDRNE           R2, [R0]
215766:  CMPNE           R2, #0
215768:  BNE             loc_215740
21576A:  MOV.W           R9, #0
21576E:  LDR             R0, [SP,#0x58+var_20]
215770:  LDR.W           R1, =(__stack_chk_guard_ptr - 0x215778)
215774:  ADD             R1, PC; __stack_chk_guard_ptr
215776:  LDR             R1, [R1]; __stack_chk_guard
215778:  LDR             R1, [R1]
21577A:  CMP             R1, R0
21577C:  ITTTT EQ
21577E:  MOVEQ           R0, R9
215780:  ADDEQ           SP, SP, #0x3C ; '<'
215782:  POPEQ.W         {R8-R11}
215786:  POPEQ           {R4-R7,PC}
215788:  BLX             __stack_chk_fail
21578C:  CMP             R3, #2
21578E:  BCC             loc_21576A
215790:  LDRB            R1, [R0,#1]
215792:  CMP             R1, #0x52 ; 'R'
215794:  BEQ.W           loc_2158BA
215798:  CMP             R1, #0x56 ; 'V'
21579A:  BNE             loc_21576A
21579C:  ADDS            R0, #2
21579E:  STR.W           R0, [R8]
2157A2:  MOV             R0, R8
2157A4:  MOVS            R1, #0
2157A6:  MOV.W           R9, #0
2157AA:  BL              sub_216710
2157AE:  CMP             R0, #0
2157B0:  BEQ             loc_21576E
2157B2:  MOV             R6, R0
2157B4:  ADD.W           R0, R8, #0x198
2157B8:  MOVS            R1, #0x14
2157BA:  BL              sub_216EF0
2157BE:  LDR             R1, =(aGuardVariableF - 0x2157C8); "guard variable for " ...
2157C0:  MOV             R9, R0
2157C2:  LDR             R0, =0x1010114
2157C4:  ADD             R1, PC; "guard variable for "
2157C6:  ADD.W           R2, R1, #0x13
2157CA:  B               loc_215A68
2157CC:  TBB.W           [PC,R3]; switch jump
2157D0:  DCB 3; jump table for switch statement
2157D1:  DCB 0xA9
2157D2:  DCB 0x18
2157D3:  DCB 0xBF
2157D4:  DCB 0xD5
2157D5:  ALIGN 2
2157D6:  ADDS            R0, #2; jumptable 002157CC case 83
2157D8:  STR.W           R0, [R8]
2157DC:  MOV             R0, R8
2157DE:  BL              sub_215C48
2157E2:  CMP             R0, #0
2157E4:  BEQ             loc_21576A
2157E6:  MOV             R6, R0
2157E8:  ADD.W           R0, R8, #0x198
2157EC:  MOVS            R1, #0x14
2157EE:  BL              sub_216EF0
2157F2:  LDR             R1, =(aTypeinfoNameFo - 0x2157FC); "typeinfo name for " ...
2157F4:  MOV             R9, R0
2157F6:  LDR             R0, =0x1010114
2157F8:  ADD             R1, PC; "typeinfo name for "
2157FA:  ADD.W           R2, R1, #0x12
2157FE:  B               loc_215A68
215800:  ADDS            R0, #1; jumptable 002157CC case 85
215802:  STR.W           R0, [R8]
215806:  CMP             R1, R0
215808:  BEQ             loc_21587A
21580A:  LDRB            R0, [R0]
21580C:  SUBS            R0, #0x76 ; 'v'
21580E:  CLZ.W           R0, R0
215812:  LSRS            R4, R0, #5
215814:  B               loc_21587C
215816:  ADD.W           R0, R1, R12,LSL#2
21581A:  STR.W           R0, [R8,#0x16C]
21581E:  ADD             R0, SP, #0x58+var_24
215820:  BL              sub_216B88
215824:  CMP             R0, #0
215826:  BNE             loc_21576E
215828:  MOV.W           R9, #0
21582C:  MOV             R0, R8
21582E:  STR.W           R9, [SP,#0x58+var_3C]
215832:  LDR             R1, =(aUa9enableIfi - 0x215838); "Ua9enable_ifI" ...
215834:  ADD             R1, PC; "Ua9enable_ifI"
215836:  ADD.W           R2, R1, #0xD
21583A:  BL              sub_2155E4
21583E:  CMP             R0, #0
215840:  BEQ.W           loc_215ABC
215844:  MOV             R6, R8
215846:  LDR.W           R0, [R6,#8]!
21584A:  LDR             R1, [R6,#4]
21584C:  ADD             R5, SP, #0x58+var_44
21584E:  SUBS            R0, R1, R0
215850:  ASRS            R4, R0, #2
215852:  LDRD.W          R0, R1, [R8]
215856:  CMP             R0, R1
215858:  BEQ             loc_215862
21585A:  LDRB            R1, [R0]
21585C:  CMP             R1, #0x45 ; 'E'
21585E:  BEQ.W           loc_215A8C
215862:  MOV             R0, R8
215864:  BL              sub_216BAC
215868:  CMP             R0, #0
21586A:  STR             R0, [SP,#0x58+var_44]
21586C:  BEQ.W           loc_21576A
215870:  MOV             R0, R6
215872:  MOV             R1, R5
215874:  BL              sub_216CEC
215878:  B               loc_215852
21587A:  MOVS            R4, #0
21587C:  MOV             R0, R8
21587E:  BL              sub_216DDC
215882:  CMP             R0, #0
215884:  BNE.W           loc_21576A
215888:  MOV             R0, R8
21588A:  BL              sub_215654
21588E:  CMP             R0, #0
215890:  BEQ.W           loc_21576A
215894:  MOV             R6, R0
215896:  ADD.W           R0, R8, #0x198
21589A:  MOVS            R1, #0x14
21589C:  BL              sub_216EF0
2158A0:  LDR             R1, =(_ZTVN12_GLOBAL__N_116itanium_demangle11SpecialNameE - 0x2158AA); `vtable for'`anonymous namespace'::itanium_demangle::SpecialName ...
2158A2:  MOV             R9, R0
2158A4:  LDR             R0, =0x1010114
2158A6:  ADD             R1, PC; `vtable for'`anonymous namespace'::itanium_demangle::SpecialName
2158A8:  ADDS            R1, #8
2158AA:  STRD.W          R1, R0, [R9]
2158AE:  CBZ             R4, loc_2158F2
2158B0:  LDR             R0, =(aVirtualThunkTo - 0x2158B6); "virtual thunk to " ...
2158B2:  ADD             R0, PC; "virtual thunk to "
2158B4:  ADD.W           R1, R0, #0x11
2158B8:  B               loc_2158FA
2158BA:  ADDS            R0, #2
2158BC:  STR.W           R0, [R8]
2158C0:  MOV             R0, R8
2158C2:  MOVS            R1, #0
2158C4:  MOV.W           R9, #0
2158C8:  BL              sub_216710
2158CC:  CMP             R0, #0
2158CE:  BEQ.W           loc_21576E
2158D2:  ADD             R1, SP, #0x58+var_34
2158D4:  MOV             R6, R0
2158D6:  MOV             R0, R8
2158D8:  BL              sub_216E90
2158DC:  LDRD.W          R1, R2, [R8]
2158E0:  CMP             R1, R2
2158E2:  BEQ             loc_215904
2158E4:  LDRB            R2, [R1]
2158E6:  CMP             R2, #0x5F ; '_'
2158E8:  BNE             loc_215904
2158EA:  ADDS            R0, R1, #1
2158EC:  STR.W           R0, [R8]
2158F0:  B               loc_21590A
2158F2:  LDR             R0, =(aNonVirtualThun - 0x2158F8); "non-virtual thunk to " ...
2158F4:  ADD             R0, PC; "non-virtual thunk to "
2158F6:  ADD.W           R1, R0, #0x15
2158FA:  STR.W           R0, [R9,#8]
2158FE:  STR.W           R1, [R9,#0xC]
215902:  B               loc_215A7E
215904:  CMP             R0, #0
215906:  BEQ.W           loc_21576A
21590A:  ADD.W           R0, R8, #0x198
21590E:  MOVS            R1, #0x14
215910:  BL              sub_216EF0
215914:  LDR             R1, =(aReferenceTempo - 0x21591E); "reference temporary for " ...
215916:  MOV             R9, R0
215918:  LDR             R0, =0x1010114
21591A:  ADD             R1, PC; "reference temporary for "
21591C:  ADD.W           R2, R1, #0x18
215920:  B               loc_215A68
215922:  ADDS            R0, #2; jumptable 002157CC case 84
215924:  STR.W           R0, [R8]
215928:  MOV             R0, R8
21592A:  BL              sub_215C48
21592E:  CMP             R0, #0
215930:  BEQ.W           loc_21576A
215934:  MOV             R6, R0
215936:  ADD.W           R0, R8, #0x198
21593A:  MOVS            R1, #0x14
21593C:  BL              sub_216EF0
215940:  LDR             R1, =(aVttFor - 0x21594A); "VTT for " ...
215942:  MOV             R9, R0
215944:  LDR             R0, =0x1010114
215946:  ADD             R1, PC; "VTT for "
215948:  ADD.W           R2, R1, #8
21594C:  B               loc_215A68
21594E:  ADDS            R0, #2; jumptable 002157CC case 86
215950:  STR.W           R0, [R8]
215954:  MOV             R0, R8
215956:  BL              sub_215C48
21595A:  CMP             R0, #0
21595C:  BEQ.W           loc_21576A
215960:  MOV             R6, R0
215962:  ADD.W           R0, R8, #0x198
215966:  MOVS            R1, #0x14
215968:  BL              sub_216EF0
21596C:  LDR             R1, =(aVtableFor - 0x215976); "vtable for " ...
21596E:  MOV             R9, R0
215970:  LDR             R0, =0x1010114
215972:  ADD             R1, PC; "vtable for "
215974:  ADD.W           R2, R1, #0xB
215978:  B               loc_215A68
21597A:  ADDS            R0, #2; jumptable 002157CC case 87
21597C:  STR.W           R0, [R8]
215980:  MOV             R0, R8
215982:  MOVS            R1, #0
215984:  MOV.W           R9, #0
215988:  BL              sub_216710
21598C:  CMP             R0, #0
21598E:  STR             R0, [SP,#0x58+var_34]
215990:  BEQ.W           loc_21576E
215994:  LDR             R1, =(aThreadLocalWra - 0x21599E); "thread-local wrapper routine for " ...
215996:  ADD             R2, SP, #0x58+var_34
215998:  MOV             R0, R8
21599A:  ADD             R1, PC; "thread-local wrapper routine for "
21599C:  BL              sub_215C04
2159A0:  B               loc_215B48
2159A2:  ADDS            R0, #2
2159A4:  STR.W           R0, [R8]
2159A8:  MOV             R0, R8
2159AA:  BL              sub_215C48
2159AE:  CMP             R0, #0
2159B0:  BEQ.W           loc_21576A
2159B4:  MOV             R6, R0
2159B6:  ADD             R0, SP, #0x58+var_34
2159B8:  MOV             R1, R8
2159BA:  MOVS            R2, #1
2159BC:  BL              sub_215BB4
2159C0:  LDRD.W          R0, R1, [SP,#0x58+var_34]
2159C4:  CMP             R0, R1
2159C6:  ITT NE
2159C8:  LDRDNE.W        R0, R1, [R8]
2159CC:  CMPNE           R0, R1
2159CE:  BEQ.W           loc_21576A
2159D2:  LDRB            R1, [R0]
2159D4:  CMP             R1, #0x5F ; '_'
2159D6:  BNE.W           loc_21576A
2159DA:  ADDS            R0, #1
2159DC:  STR.W           R0, [R8]
2159E0:  MOV             R0, R8
2159E2:  BL              sub_215C48
2159E6:  CMP             R0, #0
2159E8:  BEQ.W           loc_21576A
2159EC:  MOV             R4, R0
2159EE:  ADD.W           R0, R8, #0x198
2159F2:  MOVS            R1, #0x10
2159F4:  BL              sub_216EF0
2159F8:  MOV             R9, R0
2159FA:  LDR             R1, =(_ZTVN12_GLOBAL__N_116itanium_demangle21CtorVtableSpecialNameE - 0x215A02); `vtable for'`anonymous namespace'::itanium_demangle::CtorVtableSpecialName ...
2159FC:  LDR             R0, =0x1010115
2159FE:  ADD             R1, PC; `vtable for'`anonymous namespace'::itanium_demangle::CtorVtableSpecialName
215A00:  STRD.W          R4, R6, [R9,#8]
215A04:  ADDS            R1, #8
215A06:  STRD.W          R1, R0, [R9]
215A0A:  B               loc_21576E
215A0C:  ADDS            R0, #2
215A0E:  STR.W           R0, [R8]
215A12:  MOV             R0, R8
215A14:  MOVS            R1, #0
215A16:  MOV.W           R9, #0
215A1A:  BL              sub_216710
215A1E:  CMP             R0, #0
215A20:  BEQ.W           loc_21576E
215A24:  MOV             R6, R0
215A26:  ADD.W           R0, R8, #0x198
215A2A:  MOVS            R1, #0x14
215A2C:  BL              sub_216EF0
215A30:  LDR             R1, =(aThreadLocalIni - 0x215A3A); "thread-local initialization routine for"... ...
215A32:  MOV             R9, R0
215A34:  LDR             R0, =0x1010114
215A36:  ADD             R1, PC; "thread-local initialization routine for"...
215A38:  ADD.W           R2, R1, #0x28 ; '('
215A3C:  B               loc_215A68
215A3E:  ADDS            R0, #2
215A40:  STR.W           R0, [R8]
215A44:  MOV             R0, R8
215A46:  BL              sub_215C48
215A4A:  CMP             R0, #0
215A4C:  BEQ.W           loc_21576A
215A50:  MOV             R6, R0
215A52:  ADD.W           R0, R8, #0x198
215A56:  MOVS            R1, #0x14
215A58:  BL              sub_216EF0
215A5C:  LDR             R1, =(aTypeinfoFor - 0x215A66); "typeinfo for " ...
215A5E:  MOV             R9, R0
215A60:  LDR             R0, =0x1010114
215A62:  ADD             R1, PC; "typeinfo for "
215A64:  ADD.W           R2, R1, #0xD
215A68:  LDR             R3, =(_ZTVN12_GLOBAL__N_116itanium_demangle11SpecialNameE - 0x215A6E); `vtable for'`anonymous namespace'::itanium_demangle::SpecialName ...
215A6A:  ADD             R3, PC; `vtable for'`anonymous namespace'::itanium_demangle::SpecialName
215A6C:  ADDS            R3, #8
215A6E:  STR.W           R3, [R9]
215A72:  STR.W           R0, [R9,#4]
215A76:  STR.W           R1, [R9,#8]
215A7A:  STR.W           R2, [R9,#0xC]
215A7E:  STR.W           R6, [R9,#0x10]
215A82:  B               loc_21576E
215A84:  DCD aCovariantRetur - 0x2156F0
215A88:  DCD 0x1010114
215A8C:  ADDS            R0, #1
215A8E:  STR.W           R0, [R8]
215A92:  ADD             R0, SP, #0x58+var_44
215A94:  MOV             R1, R8
215A96:  MOV             R2, R4
215A98:  BL              sub_216D60
215A9C:  ADD.W           R0, R8, #0x198
215AA0:  MOVS            R1, #0x10
215AA2:  BL              sub_216EF0
215AA6:  LDR             R2, =(_ZTVN12_GLOBAL__N_116itanium_demangle12EnableIfAttrE - 0x215AAE); `vtable for'`anonymous namespace'::itanium_demangle::EnableIfAttr ...
215AA8:  LDR             R1, =0x1010109
215AAA:  ADD             R2, PC; `vtable for'`anonymous namespace'::itanium_demangle::EnableIfAttr
215AAC:  LDRD.W          R3, R4, [SP,#0x58+var_44]
215AB0:  ADDS            R2, #8
215AB2:  STRD.W          R3, R4, [R0,#8]
215AB6:  STRD.W          R2, R1, [R0]
215ABA:  STR             R0, [SP,#0x58+var_3C]
215ABC:  LDRB.W          R0, [SP,#0x58+var_34]
215AC0:  STR.W           R9, [SP,#0x58+var_48]
215AC4:  CMP             R0, #0
215AC6:  BEQ             loc_215B4C
215AC8:  LDRD.W          R0, R1, [R8]
215ACC:  CMP             R0, R1
215ACE:  BEQ             loc_215AF4
215AD0:  LDRB            R1, [R0]
215AD2:  CMP             R1, #0x76 ; 'v'
215AD4:  BNE             loc_215AF4
215AD6:  ADDS            R0, #1
215AD8:  STR.W           R0, [R8]
215ADC:  MOVS            R0, #0
215ADE:  STRD.W          R0, R0, [SP,#0x58+var_44]
215AE2:  ADD             R0, SP, #0x58+var_3C
215AE4:  STRD.W          R0, R11, [SP,#0x58+var_58]
215AE8:  LDR             R0, [SP,#0x58+var_4C]
215AEA:  STR             R0, [SP,#0x58+var_50]
215AEC:  ADD             R1, SP, #0x58+var_48
215AEE:  ADD             R2, SP, #0x58+var_38
215AF0:  ADD             R3, SP, #0x58+var_44
215AF2:  B               loc_215B42
215AF4:  MOV             R6, R8
215AF6:  ADD.W           R9, SP, #0x58+var_44
215AFA:  LDR.W           R0, [R6,#8]!
215AFE:  LDR             R1, [R6,#4]
215B00:  ADD             R5, SP, #0x58+var_24
215B02:  SUBS            R0, R1, R0
215B04:  ASRS            R4, R0, #2
215B06:  MOV             R0, R8
215B08:  BL              sub_215C48
215B0C:  CMP             R0, #0
215B0E:  STR             R0, [SP,#0x58+var_44]
215B10:  BEQ.W           loc_21576A
215B14:  MOV             R0, R6
215B16:  MOV             R1, R9
215B18:  BL              sub_216CEC
215B1C:  MOV             R0, R5
215B1E:  BL              sub_216B88
215B22:  CMP             R0, #0
215B24:  BEQ             loc_215B06
215B26:  ADD             R5, SP, #0x58+var_44
215B28:  MOV             R1, R8
215B2A:  MOV             R2, R4
215B2C:  MOV             R0, R5
215B2E:  BL              sub_216D60
215B32:  ADD             R0, SP, #0x58+var_3C
215B34:  STRD.W          R0, R11, [SP,#0x58+var_58]
215B38:  LDR             R0, [SP,#0x58+var_4C]
215B3A:  MOV             R3, R5
215B3C:  STR             R0, [SP,#0x58+var_50]
215B3E:  ADD             R1, SP, #0x58+var_48
215B40:  ADD             R2, SP, #0x58+var_38
215B42:  MOV             R0, R8
215B44:  BL              sub_216D80
215B48:  MOV             R9, R0
215B4A:  B               loc_21576E
215B4C:  LDRB.W          R0, [SP,#0x58+var_34+1]
215B50:  CMP             R0, #0
215B52:  BEQ             loc_215AC8
215B54:  MOV             R0, R8
215B56:  BL              sub_215C48
215B5A:  CMP             R0, #0
215B5C:  STR             R0, [SP,#0x58+var_48]
215B5E:  BNE             loc_215AC8
215B60:  B               loc_21576A
