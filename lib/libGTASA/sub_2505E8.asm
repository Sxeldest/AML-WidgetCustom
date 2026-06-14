; =========================================================
; Game Engine Function: sub_2505E8
; Address            : 0x2505E8 - 0x250A44
; =========================================================

2505E8:  PUSH            {R4-R7,LR}
2505EA:  ADD             R7, SP, #0xC
2505EC:  PUSH.W          {R8-R11}
2505F0:  SUB             SP, SP, #0x34
2505F2:  LDR.W           R1, =(dword_6D640C - 0x250602)
2505F6:  MOV             R8, R0
2505F8:  LDR.W           R0, =(byte_6D6418 - 0x250604)
2505FC:  MOV             R2, R8; stream
2505FE:  ADD             R1, PC; dword_6D640C
250600:  ADD             R0, PC; byte_6D6418 ; s
250602:  LDR             R5, [R1]
250604:  MOV.W           R1, #0x400; n
250608:  BLX             fgets
25060C:  CMP             R0, #0
25060E:  BEQ.W           loc_250A3C
250612:  LDR.W           R0, =(LogLevel_ptr - 0x25061E)
250616:  LDR.W           R1, =(byte_6D6418 - 0x250624)
25061A:  ADD             R0, PC; LogLevel_ptr
25061C:  LDR.W           R4, =(byte_6D6418 - 0x25062C)
250620:  ADD             R1, PC; byte_6D6418
250622:  LDR.W           R11, =(byte_6D6418 - 0x250630)
250626:  LDR             R0, [R0]; LogLevel
250628:  ADD             R4, PC; byte_6D6418
25062A:  STR             R0, [SP,#0x50+var_2C]
25062C:  ADD             R11, PC; byte_6D6418
25062E:  LDR.W           R0, =(LogLevel_ptr - 0x25063A)
250632:  LDR.W           R10, =(byte_6D6418 - 0x250640)
250636:  ADD             R0, PC; LogLevel_ptr
250638:  STR.W           R8, [SP,#0x50+var_24]
25063C:  ADD             R10, PC; byte_6D6418
25063E:  LDR             R0, [R0]; LogLevel
250640:  STR             R0, [SP,#0x50+var_44]
250642:  LDR.W           R0, =(LogLevel_ptr - 0x25064A)
250646:  ADD             R0, PC; LogLevel_ptr
250648:  LDR             R0, [R0]; LogLevel
25064A:  STR             R0, [SP,#0x50+var_30]
25064C:  ADDS            R0, R1, #1
25064E:  STR             R0, [SP,#0x50+var_34]
250650:  LDR.W           R0, =(byte_6D6418 - 0x250658)
250654:  ADD             R0, PC; byte_6D6418
250656:  ADDS            R0, #1
250658:  STR             R0, [SP,#0x50+var_20]
25065A:  LDR.W           R0, =(LogLevel_ptr - 0x250662)
25065E:  ADD             R0, PC; LogLevel_ptr
250660:  LDR             R0, [R0]; LogLevel
250662:  STR             R0, [SP,#0x50+var_3C]
250664:  LDR.W           R0, =(LogLevel_ptr - 0x25066C)
250668:  ADD             R0, PC; LogLevel_ptr
25066A:  LDR             R0, [R0]; LogLevel
25066C:  STR             R0, [SP,#0x50+var_38]
25066E:  LDR.W           R0, =(LogLevel_ptr - 0x250676)
250672:  ADD             R0, PC; LogLevel_ptr
250674:  LDR             R0, [R0]; LogLevel
250676:  STR             R0, [SP,#0x50+var_28]
250678:  LDR.W           R0, =(LogLevel_ptr - 0x250680)
25067C:  ADD             R0, PC; LogLevel_ptr
25067E:  LDR             R0, [R0]; LogLevel
250680:  STR             R0, [SP,#0x50+var_40]
250682:  LDR.W           R0, =(LogLevel_ptr - 0x25068A)
250686:  ADD             R0, PC; LogLevel_ptr
250688:  LDR             R0, [R0]; LogLevel
25068A:  STR             R0, [SP,#0x50+var_4C]
25068C:  LDR.W           R0, =(LogLevel_ptr - 0x250694)
250690:  ADD             R0, PC; LogLevel_ptr
250692:  LDR             R0, [R0]; LogLevel
250694:  STR             R0, [SP,#0x50+var_48]
250696:  B               loc_250A0E
250698:  MOV             R0, R6; char *
25069A:  BLX             strlen
25069E:  LDR.W           R5, =(byte_6D6418 - 0x2506AA)
2506A2:  ADDS            R2, R0, #1; n
2506A4:  MOV             R1, R6; src
2506A6:  ADD             R5, PC; byte_6D6418
2506A8:  MOV             R0, R5; dest
2506AA:  BLX             memmove_0
2506AE:  LDRB            R5, [R5]
2506B0:  CMP             R5, #0x5B ; '['
2506B2:  BNE             loc_25074E
2506B4:  LDR.W           R0, =(byte_6D6418 - 0x2506BC)
2506B8:  ADD             R0, PC; byte_6D6418
2506BA:  ADDS            R2, R0, #1
2506BC:  MOVS            R0, #0
2506BE:  ADD.W           R1, R11, R0
2506C2:  MOV             R6, R2
2506C4:  ADDS            R0, #1
2506C6:  LDRB            R1, [R1,#1]
2506C8:  CMP             R1, #0x5D ; ']'
2506CA:  ITT NE
2506CC:  ADDNE           R2, R6, #1
2506CE:  CMPNE           R1, #0
2506D0:  BNE             loc_2506BE
2506D2:  CMP             R1, #0
2506D4:  BEQ             loc_2507A8
2506D6:  LDR.W           R1, =(byte_6D6418 - 0x2506E0)
2506DA:  MOVS            R2, #0
2506DC:  ADD             R1, PC; byte_6D6418
2506DE:  STRB            R2, [R1,R0]
2506E0:  LDRB            R5, [R6,#1]
2506E2:  CBZ             R5, loc_250712
2506E4:  MOV             R0, R5; int
2506E6:  BLX             isspace
2506EA:  ADDS            R6, #1
2506EC:  CMP             R0, #0
2506EE:  BNE             loc_2506E0
2506F0:  CMP             R5, #0x23 ; '#'
2506F2:  BEQ             loc_250712
2506F4:  LDR             R0, [SP,#0x50+var_38]
2506F6:  LDR             R0, [R0]
2506F8:  CMP             R0, #2
2506FA:  BCC             loc_250712
2506FC:  LDR.W           R0, =(aWw - 0x25070E); "(WW)"
250700:  ADR.W           R1, aLoadconfigfrom; "LoadConfigFromFile"
250704:  LDR.W           R2, =(aConfigWarningE - 0x250710); "config warning: extra data after block:"...
250708:  MOV             R3, R6
25070A:  ADD             R0, PC; "(WW)"
25070C:  ADD             R2, PC; "config warning: extra data after block:"...
25070E:  BLX             j_al_print
250712:  LDR.W           R0, =(dword_6D6410 - 0x25071A)
250716:  ADD             R0, PC; dword_6D6410
250718:  LDR.W           R8, [R0]
25071C:  CMP.W           R8, #0
250720:  BEQ.W           loc_2508F4
250724:  LDR.W           R0, =(dword_6D640C - 0x25072E)
250728:  MOVS            R4, #0
25072A:  ADD             R0, PC; dword_6D640C
25072C:  LDR             R5, [R0]
25072E:  LDR             R6, [R5]
250730:  LDR             R1, [SP,#0x50+var_20]; char *
250732:  MOV             R0, R6; char *
250734:  BLX             strcasecmp
250738:  CMP             R0, #0
25073A:  BEQ.W           loc_2508FA
25073E:  ADDS            R4, #1
250740:  ADDS            R5, #0xC
250742:  CMP             R4, R8
250744:  BCC             loc_25072E
250746:  LDR.W           R4, =(byte_6D6418 - 0x25074E)
25074A:  ADD             R4, PC; byte_6D6418
25074C:  B               loc_250928
25074E:  MOVS            R4, #0
250750:  B               loc_25075A
250752:  ADD.W           R0, R10, R4
250756:  ADDS            R4, #1
250758:  LDRB            R5, [R0,#1]
25075A:  UXTB            R6, R5
25075C:  CBZ             R6, loc_25077C
25075E:  CMP             R6, #0x23 ; '#'
250760:  IT NE
250762:  CMPNE           R6, #0x3D ; '='
250764:  BEQ             loc_250774
250766:  MOV             R0, R6; int
250768:  BLX             isspace
25076C:  CMP             R0, #0
25076E:  BEQ             loc_250752
250770:  LSLS            R0, R5, #0x18
250772:  BEQ             loc_25077C
250774:  CMP             R4, #0
250776:  IT NE
250778:  CMPNE           R6, #0x23 ; '#'
25077A:  BNE             loc_2507CC
25077C:  LDR             R0, [SP,#0x50+var_28]
25077E:  LDR             R0, [R0]
250780:  CMP             R0, #0
250782:  BEQ.W           loc_2508EC
250786:  LDR.W           R0, =(aEe - 0x250798); "(EE)"
25078A:  ADR             R1, aLoadconfigfrom; "LoadConfigFromFile"
25078C:  LDR.W           R2, =(aConfigParseErr_1 - 0x25079A); "config parse error: malformed option li"...
250790:  LDR.W           R3, =(byte_6D6418 - 0x25079C)
250794:  ADD             R0, PC; "(EE)"
250796:  ADD             R2, PC; "config parse error: malformed option li"...
250798:  ADD             R3, PC; byte_6D6418
25079A:  BLX             j_al_print
25079E:  LDR.W           R4, =(byte_6D6418 - 0x2507A8)
2507A2:  MOV             R5, R9
2507A4:  ADD             R4, PC; byte_6D6418
2507A6:  B               loc_250A2A
2507A8:  LDR             R0, [SP,#0x50+var_2C]
2507AA:  LDR             R0, [R0]
2507AC:  CMP             R0, #0
2507AE:  BEQ.W           loc_250A28
2507B2:  LDR.W           R0, =(aEe - 0x2507C4); "(EE)"
2507B6:  ADR             R1, aLoadconfigfrom; "LoadConfigFromFile"
2507B8:  LDR.W           R2, =(aConfigParseErr_2 - 0x2507C6); "config parse error: bad line \"%s\"\n"
2507BC:  LDR.W           R3, =(byte_6D6418 - 0x2507C8)
2507C0:  ADD             R0, PC; "(EE)"
2507C2:  ADD             R2, PC; "config parse error: bad line \"%s\"\n"
2507C4:  ADD             R3, PC; byte_6D6418
2507C6:  BLX             j_al_print
2507CA:  B               loc_250A28
2507CC:  CMP             R6, #0x3D ; '='
2507CE:  BEQ             loc_2507F6
2507D0:  LDR.W           R1, =(byte_6D6418 - 0x2507DE)
2507D4:  MOVS            R0, #0
2507D6:  LDR.W           R6, =(byte_6D6418 - 0x2507E0)
2507DA:  ADD             R1, PC; byte_6D6418
2507DC:  ADD             R6, PC; byte_6D6418
2507DE:  STRB            R0, [R1,R4]
2507E0:  ADDS            R0, R6, R4
2507E2:  LDRB            R5, [R0,#1]
2507E4:  MOV             R0, R5; int
2507E6:  BLX             isspace
2507EA:  ADDS            R4, #1
2507EC:  CMP             R0, #0
2507EE:  BNE             loc_2507E0
2507F0:  CMP             R5, #0x3D ; '='
2507F2:  BNE.W           loc_2509B6
2507F6:  LDR.W           R1, =(byte_6D6418 - 0x250800)
2507FA:  MOVS            R0, #0
2507FC:  ADD             R1, PC; byte_6D6418
2507FE:  ADD.W           R8, R1, R4
250802:  STRB            R0, [R1,R4]
250804:  LDRB.W          R0, [R8,#1]!; int
250808:  BLX             isspace
25080C:  CMP             R0, #0
25080E:  BNE             loc_250804
250810:  LDRD.W          R6, R4, [R9,#4]
250814:  CMP             R4, #0
250816:  MOV             R5, R6
250818:  BEQ             loc_250834
25081A:  MOV             R5, R6
25081C:  LDR.W           R1, =(byte_6D6418 - 0x250826)
250820:  LDR             R0, [R5]; char *
250822:  ADD             R1, PC; byte_6D6418 ; char *
250824:  BLX             strcasecmp
250828:  CBZ             R0, loc_250834
25082A:  ADDS            R5, #8
25082C:  SUBS            R0, R5, R6
25082E:  ASRS            R0, R0, #3
250830:  CMP             R0, R4
250832:  BCC             loc_25081C
250834:  SUBS            R0, R5, R6
250836:  ASRS            R0, R0, #3
250838:  CMP             R0, R4
25083A:  BCC             loc_25086E
25083C:  MOVS            R0, #8
25083E:  ADD.W           R1, R0, R4,LSL#3; size
250842:  MOV             R0, R6; ptr
250844:  BLX             realloc
250848:  MOV             R5, R0
25084A:  CMP             R5, #0
25084C:  BEQ.W           loc_2509D8
250850:  LDR.W           R4, [R9,#8]
250854:  ADDS            R0, R4, #1
250856:  STRD.W          R5, R0, [R9,#4]
25085A:  LDR             R0, =(byte_6D6418 - 0x250860)
25085C:  ADD             R0, PC; byte_6D6418 ; char *
25085E:  BLX             j_strdup
250862:  STR.W           R0, [R5,R4,LSL#3]
250866:  ADD.W           R5, R5, R4,LSL#3
25086A:  MOVS            R0, #0
25086C:  STR             R0, [R5,#4]
25086E:  MOV             R0, R8; char *
250870:  BLX             strlen
250874:  ADDS            R2, R0, #1; n
250876:  LDR             R0, =(byte_6D6418 - 0x25087E)
250878:  MOV             R1, R8; src
25087A:  ADD             R0, PC; byte_6D6418 ; dest
25087C:  BLX             memmove_0
250880:  LDR             R1, =(byte_6D6418 - 0x25088C)
250882:  MOVS            R4, #0
250884:  LDR.W           R8, [SP,#0x50+var_24]
250888:  ADD             R1, PC; byte_6D6418
25088A:  B               loc_25088E
25088C:  ADDS            R4, #1
25088E:  LDRB            R0, [R1,R4]
250890:  CBZ             R0, loc_25089A
250892:  CMP             R0, #0x23 ; '#'
250894:  IT NE
250896:  CMPNE           R0, #0xA
250898:  BNE             loc_25088C
25089A:  MOV             R6, R4
25089C:  CMP             R6, #1
25089E:  BLT             loc_2508B4
2508A0:  LDR             R0, =(byte_6D6418 - 0x2508A8)
2508A2:  SUBS            R4, R6, #1
2508A4:  ADD             R0, PC; byte_6D6418
2508A6:  ADD             R0, R6
2508A8:  LDRB.W          R0, [R0,#-1]; int
2508AC:  BLX             isspace
2508B0:  CMP             R0, #0
2508B2:  BNE             loc_25089A
2508B4:  LDR             R4, =(byte_6D6418 - 0x2508BC)
2508B6:  MOVS            R0, #0
2508B8:  ADD             R4, PC; byte_6D6418
2508BA:  STRB            R0, [R4,R6]
2508BC:  LDR             R0, [R5,#4]; p
2508BE:  BLX             free
2508C2:  MOV             R0, R4; char *
2508C4:  BLX             j_strdup
2508C8:  STR             R0, [R5,#4]
2508CA:  LDR             R1, [SP,#0x50+var_40]
2508CC:  LDR             R1, [R1]
2508CE:  CMP             R1, #2
2508D0:  BLS             loc_2509AE
2508D2:  LDR             R2, =(aFoundSS - 0x2508DE); "found '%s' = '%s'\n"
2508D4:  ADR             R1, aLoadconfigfrom; "LoadConfigFromFile"
2508D6:  LDR             R3, [R5]
2508D8:  STR             R0, [SP,#0x50+var_50]
2508DA:  ADD             R2, PC; "found '%s' = '%s'\n"
2508DC:  LDR             R0, =(aIi - 0x2508E2); "(II)"
2508DE:  ADD             R0, PC; "(II)"
2508E0:  BLX             j_al_print
2508E4:  LDR             R4, =(byte_6D6418 - 0x2508EC)
2508E6:  MOV             R5, R9
2508E8:  ADD             R4, PC; byte_6D6418
2508EA:  B               loc_250A2A
2508EC:  LDR             R4, =(byte_6D6418 - 0x2508F4)
2508EE:  MOV             R5, R9
2508F0:  ADD             R4, PC; byte_6D6418
2508F2:  B               loc_250A2A
2508F4:  MOV.W           R8, #0
2508F8:  B               loc_250928
2508FA:  LDR             R0, [SP,#0x50+var_3C]
2508FC:  LDR             R0, [R0]
2508FE:  CMP             R0, #3
250900:  BCC             loc_250912
250902:  LDR             R0, =(aIi - 0x25090E); "(II)"
250904:  ADR             R1, aLoadconfigfrom; "LoadConfigFromFile"
250906:  LDR             R2, =(aFoundBlockS - 0x250910); "found block '%s'\n"
250908:  MOV             R3, R6
25090A:  ADD             R0, PC; "(II)"
25090C:  ADD             R2, PC; "found block '%s'\n"
25090E:  BLX             j_al_print
250912:  LDR             R4, =(byte_6D6418 - 0x25091E)
250914:  CMP             R5, #0
250916:  LDR.W           R8, [SP,#0x50+var_24]
25091A:  ADD             R4, PC; byte_6D6418
25091C:  BNE.W           loc_250A2A
250920:  LDR             R0, =(dword_6D6410 - 0x250926)
250922:  ADD             R0, PC; dword_6D6410
250924:  LDR.W           R8, [R0]
250928:  LDR             R0, =(dword_6D640C - 0x250934)
25092A:  ADD.W           R1, R8, R8,LSL#1
25092E:  MOVS            R2, #0xC
250930:  ADD             R0, PC; dword_6D640C
250932:  ADD.W           R1, R2, R1,LSL#2; size
250936:  LDR             R0, [R0]; ptr
250938:  BLX             realloc
25093C:  MOV             R5, R0
25093E:  CBZ             R5, loc_25098C
250940:  LDR             R0, =(dword_6D6410 - 0x250948)
250942:  LDR             R1, =(dword_6D640C - 0x25094A)
250944:  ADD             R0, PC; dword_6D6410
250946:  ADD             R1, PC; dword_6D640C
250948:  MOV             R2, R0
25094A:  LDR             R0, [R2]
25094C:  STR             R5, [R1]
25094E:  ADDS            R1, R0, #1
250950:  STR             R1, [R2]
250952:  ADD.W           R4, R0, R0,LSL#1
250956:  LDR             R0, [SP,#0x50+var_34]; char *
250958:  BLX             j_strdup
25095C:  MOV             R3, R0
25095E:  MOVS            R0, #0
250960:  STR.W           R3, [R5,R4,LSL#2]
250964:  ADD.W           R5, R5, R4,LSL#2
250968:  STRD.W          R0, R0, [R5,#4]
25096C:  LDR             R0, [SP,#0x50+var_30]
25096E:  LDR.W           R8, [SP,#0x50+var_24]
250972:  LDR             R0, [R0]
250974:  CMP             R0, #3
250976:  BCC             loc_2509A8
250978:  LDR             R0, =(aIi - 0x250982); "(II)"
25097A:  ADR             R1, aLoadconfigfrom; "LoadConfigFromFile"
25097C:  LDR             R2, =(aFoundNewBlockS - 0x250984); "found new block '%s'\n"
25097E:  ADD             R0, PC; "(II)"
250980:  ADD             R2, PC; "found new block '%s'\n"
250982:  BLX             j_al_print
250986:  LDR             R4, =(byte_6D6418 - 0x25098C)
250988:  ADD             R4, PC; byte_6D6418
25098A:  B               loc_250A2A
25098C:  LDR             R0, [SP,#0x50+var_44]
25098E:  LDR.W           R8, [SP,#0x50+var_24]
250992:  LDR             R0, [R0]
250994:  CMP             R0, #0
250996:  BEQ             loc_250A28
250998:  LDR             R0, =(aEe - 0x2509A2); "(EE)"
25099A:  ADR             R1, aLoadconfigfrom; "LoadConfigFromFile"
25099C:  LDR             R2, =(aConfigParseErr_3 - 0x2509A4); "config parse error: error reallocating "...
25099E:  ADD             R0, PC; "(EE)"
2509A0:  ADD             R2, PC; "config parse error: error reallocating "...
2509A2:  BLX             j_al_print
2509A6:  B               loc_250A28
2509A8:  LDR             R4, =(byte_6D6418 - 0x2509AE)
2509AA:  ADD             R4, PC; byte_6D6418
2509AC:  B               loc_250A2A
2509AE:  LDR             R4, =(byte_6D6418 - 0x2509B6)
2509B0:  MOV             R5, R9
2509B2:  ADD             R4, PC; byte_6D6418
2509B4:  B               loc_250A2A
2509B6:  LDR             R0, [SP,#0x50+var_48]
2509B8:  LDR             R0, [R0]
2509BA:  CBZ             R0, loc_2509F6
2509BC:  LDR             R0, =(aEe - 0x2509C8); "(EE)"
2509BE:  ADR             R1, aLoadconfigfrom; "LoadConfigFromFile"
2509C0:  LDR             R3, =(byte_6D6418 - 0x2509CA)
2509C2:  ADR             R2, aConfigParseErr; "config parse error: option without a va"...
2509C4:  ADD             R0, PC; "(EE)"
2509C6:  ADD             R3, PC; byte_6D6418
2509C8:  BLX             j_al_print
2509CC:  LDR             R4, =(byte_6D6418 - 0x2509D8)
2509CE:  MOV             R5, R9
2509D0:  LDR.W           R8, [SP,#0x50+var_24]
2509D4:  ADD             R4, PC; byte_6D6418
2509D6:  B               loc_250A2A
2509D8:  LDR             R0, [SP,#0x50+var_4C]
2509DA:  LDR             R0, [R0]
2509DC:  CBZ             R0, loc_250A02
2509DE:  LDR             R0, =(aEe - 0x2509E8); "(EE)"
2509E0:  ADR             R1, aLoadconfigfrom; "LoadConfigFromFile"
2509E2:  ADR             R2, aConfigParseErr_0; "config parse error: error reallocating "...
2509E4:  ADD             R0, PC; "(EE)"
2509E6:  BLX             j_al_print
2509EA:  LDR             R4, =(byte_6D6418 - 0x2509F6)
2509EC:  MOV             R5, R9
2509EE:  LDR.W           R8, [SP,#0x50+var_24]
2509F2:  ADD             R4, PC; byte_6D6418
2509F4:  B               loc_250A2A
2509F6:  LDR             R4, =(byte_6D6418 - 0x250A02)
2509F8:  MOV             R5, R9
2509FA:  LDR.W           R8, [SP,#0x50+var_24]
2509FE:  ADD             R4, PC; byte_6D6418
250A00:  B               loc_250A2A
250A02:  LDR             R4, =(byte_6D6418 - 0x250A0E)
250A04:  MOV             R5, R9
250A06:  LDR.W           R8, [SP,#0x50+var_24]
250A0A:  ADD             R4, PC; byte_6D6418
250A0C:  B               loc_250A2A
250A0E:  SUBS            R6, R4, #1
250A10:  MOV             R9, R5
250A12:  LDRB.W          R5, [R6,#1]!
250A16:  MOV             R0, R5; int
250A18:  BLX             isspace
250A1C:  CMP             R0, #0
250A1E:  BNE             loc_250A12
250A20:  CBZ             R5, loc_250A28
250A22:  CMP             R5, #0x23 ; '#'
250A24:  BNE.W           loc_250698
250A28:  MOV             R5, R9
250A2A:  LDR             R0, =(byte_6D6418 - 0x250A36)
250A2C:  MOV.W           R1, #0x400; n
250A30:  MOV             R2, R8; stream
250A32:  ADD             R0, PC; byte_6D6418 ; s
250A34:  BLX             fgets
250A38:  CMP             R0, #0
250A3A:  BNE             loc_250A0E
250A3C:  ADD             SP, SP, #0x34 ; '4'
250A3E:  POP.W           {R8-R11}
250A42:  POP             {R4-R7,PC}
