; =========================================================
; Game Engine Function: GetHrtf
; Address            : 0x24F674 - 0x250252
; =========================================================

24F674:  PUSH            {R4-R7,LR}
24F676:  ADD             R7, SP, #0xC
24F678:  PUSH.W          {R8-R11}
24F67C:  SUB.W           SP, SP, #0x10C0
24F680:  SUB             SP, SP, #4
24F682:  MOV             R2, R0
24F684:  LDR.W           R0, =(__stack_chk_guard_ptr - 0x24F690)
24F688:  MOVW            R1, #0x1501
24F68C:  ADD             R0, PC; __stack_chk_guard_ptr
24F68E:  LDR             R0, [R0]; __stack_chk_guard
24F690:  LDR             R0, [R0]
24F692:  STR.W           R0, [R7,#var_24]
24F696:  LDR             R0, [R2,#0x1C]
24F698:  CMP             R0, R1
24F69A:  BNE.W           loc_250172
24F69E:  LDR.W           R0, =(dword_6D6848 - 0x24F6AA)
24F6A2:  LDR.W           R8, [R2,#0x10]
24F6A6:  ADD             R0, PC; dword_6D6848
24F6A8:  LDR             R4, [R0]
24F6AA:  CBZ             R4, loc_24F6BA
24F6AC:  LDR             R0, [R4]
24F6AE:  CMP             R8, R0
24F6B0:  BEQ.W           loc_2501DA
24F6B4:  LDR             R4, [R4,#0x1C]
24F6B6:  CMP             R4, #0
24F6B8:  BNE             loc_24F6AC
24F6BA:  LDR.W           R0, =(g_mob_configGlobals_ptr - 0x24F6C4)
24F6BE:  STR             R2, [SP,#0x10E0+var_103C]
24F6C0:  ADD             R0, PC; g_mob_configGlobals_ptr
24F6C2:  LDR             R0, [R0]; g_mob_configGlobals
24F6C4:  LDR             R0, [R0]
24F6C6:  CMP             R0, #0
24F6C8:  ITT NE
24F6CA:  LDRNE           R1, [R0]
24F6CC:  CMPNE           R1, #0
24F6CE:  BEQ.W           loc_250160
24F6D2:  ADDS            R0, #4
24F6D4:  CMP             R1, #0x13
24F6D6:  BEQ             loc_24F6E4
24F6D8:  LDR             R1, [R0,#4]
24F6DA:  ADDS            R0, #8
24F6DC:  CMP             R1, #0
24F6DE:  BNE             loc_24F6D4
24F6E0:  B.W             loc_250160
24F6E4:  LDR.W           R10, [R0]
24F6E8:  LDRB.W          R0, [R10]
24F6EC:  CMP             R0, #0
24F6EE:  BEQ.W           loc_250160
24F6F2:  LDR.W           R1, =(LogLevel_ptr - 0x24F706)
24F6F6:  ADD.W           R11, SP, #0x10E0+var_1024
24F6FA:  SUB.W           R9, R11, #2
24F6FE:  STR.W           R8, [SP,#0x10E0+var_1038]
24F702:  ADD             R1, PC; LogLevel_ptr
24F704:  LDR             R1, [R1]; LogLevel
24F706:  STR             R1, [SP,#0x10E0+var_1034]
24F708:  LDR.W           R1, =(LogLevel_ptr - 0x24F710)
24F70C:  ADD             R1, PC; LogLevel_ptr
24F70E:  LDR             R1, [R1]; LogLevel
24F710:  STR             R1, [SP,#0x10E0+var_104C]
24F712:  LDR.W           R1, =(LogLevel_ptr - 0x24F71A)
24F716:  ADD             R1, PC; LogLevel_ptr
24F718:  LDR             R1, [R1]; LogLevel
24F71A:  STR             R1, [SP,#0x10E0+var_106C]
24F71C:  LDR.W           R1, =(LogLevel_ptr - 0x24F724)
24F720:  ADD             R1, PC; LogLevel_ptr
24F722:  LDR             R1, [R1]; LogLevel
24F724:  STR             R1, [SP,#0x10E0+var_1078]
24F726:  LDR.W           R1, =(LogLevel_ptr - 0x24F72E)
24F72A:  ADD             R1, PC; LogLevel_ptr
24F72C:  LDR             R1, [R1]; LogLevel
24F72E:  STR             R1, [SP,#0x10E0+var_1094]
24F730:  LDR.W           R1, =(LogLevel_ptr - 0x24F738)
24F734:  ADD             R1, PC; LogLevel_ptr
24F736:  LDR             R1, [R1]; LogLevel
24F738:  STR             R1, [SP,#0x10E0+var_1060]
24F73A:  LDR.W           R1, =(LogLevel_ptr - 0x24F742)
24F73E:  ADD             R1, PC; LogLevel_ptr
24F740:  LDR             R1, [R1]; LogLevel
24F742:  STR             R1, [SP,#0x10E0+var_10A0]
24F744:  LDR.W           R1, =(LogLevel_ptr - 0x24F74C)
24F748:  ADD             R1, PC; LogLevel_ptr
24F74A:  LDR             R1, [R1]; LogLevel
24F74C:  STR             R1, [SP,#0x10E0+var_10AC]
24F74E:  LDR.W           R1, =(LogLevel_ptr - 0x24F756)
24F752:  ADD             R1, PC; LogLevel_ptr
24F754:  LDR             R1, [R1]; LogLevel
24F756:  STR             R1, [SP,#0x10E0+var_10C0]
24F758:  LDR.W           R1, =(LogLevel_ptr - 0x24F760)
24F75C:  ADD             R1, PC; LogLevel_ptr
24F75E:  LDR             R1, [R1]; LogLevel
24F760:  STR             R1, [SP,#0x10E0+var_10B8]
24F762:  LDR.W           R1, =(LogLevel_ptr - 0x24F76A)
24F766:  ADD             R1, PC; LogLevel_ptr
24F768:  LDR             R1, [R1]; LogLevel
24F76A:  STR             R1, [SP,#0x10E0+var_1098]
24F76C:  LDR.W           R1, =(LogLevel_ptr - 0x24F774)
24F770:  ADD             R1, PC; LogLevel_ptr
24F772:  LDR             R1, [R1]; LogLevel
24F774:  STR             R1, [SP,#0x10E0+var_10A4]
24F776:  LDR.W           R1, =(LogLevel_ptr - 0x24F77E)
24F77A:  ADD             R1, PC; LogLevel_ptr
24F77C:  LDR             R1, [R1]; LogLevel
24F77E:  STR             R1, [SP,#0x10E0+var_1064]
24F780:  LDR.W           R1, =(LogLevel_ptr - 0x24F788)
24F784:  ADD             R1, PC; LogLevel_ptr
24F786:  LDR             R1, [R1]; LogLevel
24F788:  STR             R1, [SP,#0x10E0+var_107C]
24F78A:  LDR.W           R1, =(LogLevel_ptr - 0x24F792)
24F78E:  ADD             R1, PC; LogLevel_ptr
24F790:  LDR             R1, [R1]; LogLevel
24F792:  STR             R1, [SP,#0x10E0+var_1080]
24F794:  LDR.W           R1, =(LogLevel_ptr - 0x24F79C)
24F798:  ADD             R1, PC; LogLevel_ptr
24F79A:  LDR             R1, [R1]; LogLevel
24F79C:  STR             R1, [SP,#0x10E0+var_105C]
24F79E:  LDR.W           R1, =(LogLevel_ptr - 0x24F7A6)
24F7A2:  ADD             R1, PC; LogLevel_ptr
24F7A4:  LDR             R1, [R1]; LogLevel
24F7A6:  STR             R1, [SP,#0x10E0+var_1088]
24F7A8:  LDR.W           R1, =(LogLevel_ptr - 0x24F7B0)
24F7AC:  ADD             R1, PC; LogLevel_ptr
24F7AE:  LDR             R1, [R1]; LogLevel
24F7B0:  STR             R1, [SP,#0x10E0+var_109C]
24F7B2:  LDR.W           R1, =(LogLevel_ptr - 0x24F7BA)
24F7B6:  ADD             R1, PC; LogLevel_ptr
24F7B8:  LDR             R1, [R1]; LogLevel
24F7BA:  STR             R1, [SP,#0x10E0+var_1070]
24F7BC:  LDR.W           R1, =(LogLevel_ptr - 0x24F7C4)
24F7C0:  ADD             R1, PC; LogLevel_ptr
24F7C2:  LDR             R1, [R1]; LogLevel
24F7C4:  STR             R1, [SP,#0x10E0+var_10A8]
24F7C6:  LDR.W           R1, =(LogLevel_ptr - 0x24F7CE)
24F7CA:  ADD             R1, PC; LogLevel_ptr
24F7CC:  LDR             R1, [R1]; LogLevel
24F7CE:  STR             R1, [SP,#0x10E0+var_10BC]
24F7D0:  LDR.W           R1, =(LogLevel_ptr - 0x24F7D8)
24F7D4:  ADD             R1, PC; LogLevel_ptr
24F7D6:  LDR             R1, [R1]; LogLevel
24F7D8:  STR             R1, [SP,#0x10E0+var_10B0]
24F7DA:  LDR.W           R1, =(LogLevel_ptr - 0x24F7E2)
24F7DE:  ADD             R1, PC; LogLevel_ptr
24F7E0:  LDR             R1, [R1]; LogLevel
24F7E2:  STR             R1, [SP,#0x10E0+var_10B4]
24F7E4:  LDR.W           R1, =(LogLevel_ptr - 0x24F7EC)
24F7E8:  ADD             R1, PC; LogLevel_ptr
24F7EA:  LDR             R1, [R1]; LogLevel
24F7EC:  STR             R1, [SP,#0x10E0+var_108C]
24F7EE:  LDR.W           R1, =(LogLevel_ptr - 0x24F7F6)
24F7F2:  ADD             R1, PC; LogLevel_ptr
24F7F4:  LDR             R1, [R1]; LogLevel
24F7F6:  STR             R1, [SP,#0x10E0+var_1090]
24F7F8:  LDR.W           R1, =(LogLevel_ptr - 0x24F800)
24F7FC:  ADD             R1, PC; LogLevel_ptr
24F7FE:  LDR             R1, [R1]; LogLevel
24F800:  STR             R1, [SP,#0x10E0+var_1040]
24F802:  LDR.W           R1, =(LogLevel_ptr - 0x24F80A)
24F806:  ADD             R1, PC; LogLevel_ptr
24F808:  LDR             R1, [R1]; LogLevel
24F80A:  STR             R1, [SP,#0x10E0+var_1058]
24F80C:  LDR.W           R1, =(LogLevel_ptr - 0x24F814)
24F810:  ADD             R1, PC; LogLevel_ptr
24F812:  LDR             R1, [R1]; LogLevel
24F814:  STR             R1, [SP,#0x10E0+var_1030]
24F816:  B               loc_24FFA2
24F818:  LDR             R0, [SP,#0x10E0+var_106C]
24F81A:  LDR             R0, [R0]
24F81C:  CMP             R0, #3
24F81E:  BCC             loc_24F834
24F820:  LDR.W           R0, =(aIi - 0x24F830); "(II)"
24F824:  ADR.W           R1, aLoadhrtf; "LoadHrtf"
24F828:  LDR.W           R2, =(aDetectedDataSe_0 - 0x24F832); "Detected data set format v0\n"
24F82C:  ADD             R0, PC; "(II)"
24F82E:  ADD             R2, PC; "Detected data set format v0\n"
24F830:  BLX             j_al_print
24F834:  MOV             R0, R5; stream
24F836:  BLX             fgetc
24F83A:  MOV             R4, R0
24F83C:  MOV             R0, R5; stream
24F83E:  BLX             fgetc
24F842:  ORR.W           R4, R4, R0,LSL#8
24F846:  MOV             R0, R5; stream
24F848:  BLX             fgetc
24F84C:  ORR.W           R4, R4, R0,LSL#16
24F850:  MOV             R0, R5; stream
24F852:  BLX             fgetc
24F856:  ORR.W           R6, R4, R0,LSL#24
24F85A:  MOV             R0, R5; stream
24F85C:  BLX             fgetc
24F860:  STR             R0, [SP,#0x10E0+var_1074]
24F862:  MOV             R0, R5; stream
24F864:  BLX             fgetc
24F868:  STR             R0, [SP,#0x10E0+var_1050]
24F86A:  MOV             R0, R5; stream
24F86C:  BLX             fgetc
24F870:  MOV             R4, R0
24F872:  MOV             R0, R5; stream
24F874:  BLX             fgetc
24F878:  ORR.W           R8, R4, R0,LSL#8
24F87C:  MOV             R0, R5; stream
24F87E:  BLX             fgetc
24F882:  MOV             R2, R0
24F884:  LDR             R0, [SP,#0x10E0+var_1038]
24F886:  STR             R6, [SP,#0x10E0+var_1068]
24F888:  CMP             R6, R0
24F88A:  BNE             loc_24F8E4
24F88C:  MOVS            R0, #0
24F88E:  B               loc_24F90C
24F890:  CMP             R1, #3
24F892:  BCC             loc_24F8A6
24F894:  LDR.W           R0, =(aIi - 0x24F8A4); "(II)"
24F898:  ADR.W           R1, aLoadhrtf; "LoadHrtf"
24F89C:  ADR.W           R2, aDetectedDataSe; "Detected data set format v1\n"
24F8A0:  ADD             R0, PC; "(II)"
24F8A2:  BLX             j_al_print
24F8A6:  MOV             R0, R5; stream
24F8A8:  BLX             fgetc
24F8AC:  MOV             R4, R0
24F8AE:  MOV             R0, R5; stream
24F8B0:  BLX             fgetc
24F8B4:  ORR.W           R4, R4, R0,LSL#8
24F8B8:  MOV             R0, R5; stream
24F8BA:  BLX             fgetc
24F8BE:  ORR.W           R4, R4, R0,LSL#16
24F8C2:  MOV             R0, R5; stream
24F8C4:  BLX             fgetc
24F8C8:  ORR.W           R6, R4, R0,LSL#24
24F8CC:  MOV             R0, R5; stream
24F8CE:  BLX             fgetc
24F8D2:  MOV             R4, R0
24F8D4:  MOV             R0, R5; stream
24F8D6:  BLX             fgetc
24F8DA:  MOV             R2, R0
24F8DC:  CMP             R6, R8
24F8DE:  BNE             loc_24F9D0
24F8E0:  MOVS            R0, #0
24F8E2:  B               loc_24F9F8
24F8E4:  LDR             R0, [SP,#0x10E0+var_1080]
24F8E6:  LDR             R0, [R0]
24F8E8:  CBZ             R0, loc_24F90A
24F8EA:  LDR             R0, [SP,#0x10E0+var_1038]
24F8EC:  MOV             R6, R2
24F8EE:  LDR.W           R1, =(aLoadhrtf00 - 0x24F8FC); "LoadHrtf00"
24F8F2:  LDR.W           R2, =(aHrirRateDoesNo - 0x24F902); "HRIR rate does not match device rate: r"...
24F8F6:  STR             R0, [SP,#0x10E0+var_10E0]
24F8F8:  ADD             R1, PC; "LoadHrtf00"
24F8FA:  LDR.W           R0, =(aEe - 0x24F906); "(EE)"
24F8FE:  ADD             R2, PC; "HRIR rate does not match device rate: r"...
24F900:  LDR             R3, [SP,#0x10E0+var_1068]
24F902:  ADD             R0, PC; "(EE)"
24F904:  BLX             j_al_print
24F908:  MOV             R2, R6
24F90A:  MOVS            R0, #1
24F90C:  UXTH.W          R6, R8
24F910:  LSLS            R1, R4, #0x1D
24F912:  BNE             loc_24F920
24F914:  MOV             R1, #0xFFFFFFF8
24F918:  UXTAH.W         R1, R1, R8
24F91C:  CMP             R1, #0x79 ; 'y'
24F91E:  BCC             loc_24F94E
24F920:  LDR             R0, [SP,#0x10E0+var_107C]
24F922:  LDR             R0, [R0]
24F924:  CBZ             R0, loc_24F94C
24F926:  MOVS            R0, #8
24F928:  MOVS            R1, #0x80
24F92A:  STR             R0, [SP,#0x10E0+var_10E0]
24F92C:  MOV             R4, R2
24F92E:  STRD.W          R1, R0, [SP,#0x10E0+var_10DC]
24F932:  MOV             R3, R6
24F934:  LDR.W           R0, =(aEe - 0x24F944); "(EE)"
24F938:  LDR.W           R1, =(aLoadhrtf00 - 0x24F946); "LoadHrtf00"
24F93C:  LDR.W           R2, =(aUnsupportedHri - 0x24F948); "Unsupported HRIR size: irSize=%d (%d to"...
24F940:  ADD             R0, PC; "(EE)"
24F942:  ADD             R1, PC; "LoadHrtf00"
24F944:  ADD             R2, PC; "Unsupported HRIR size: irSize=%d (%d to"...
24F946:  BLX             j_al_print
24F94A:  MOV             R2, R4
24F94C:  MOVS            R0, #1
24F94E:  MOV             R1, #0xFFFFFFFB
24F952:  UXTB            R4, R2
24F954:  UXTAB.W         R1, R1, R2
24F958:  CMP             R1, #0x7C ; '|'
24F95A:  BCC             loc_24F984
24F95C:  LDR             R0, [SP,#0x10E0+var_1078]
24F95E:  LDR             R0, [R0]
24F960:  CMP             R0, #0
24F962:  BEQ.W           loc_250136
24F966:  MOVS            R0, #5
24F968:  LDR.W           R1, =(aLoadhrtf00 - 0x24F978); "LoadHrtf00"
24F96C:  STR             R0, [SP,#0x10E0+var_10E0]
24F96E:  MOVS            R0, #0x80
24F970:  LDR.W           R2, =(aUnsupportedEle - 0x24F982); "Unsupported elevation count: evCount=%d"...
24F974:  ADD             R1, PC; "LoadHrtf00"
24F976:  STR             R0, [SP,#0x10E0+var_10DC]
24F978:  MOV             R3, R4
24F97A:  LDR.W           R0, =(aEe - 0x24F984); "(EE)"
24F97E:  ADD             R2, PC; "Unsupported elevation count: evCount=%d"...
24F980:  ADD             R0, PC; "(EE)"
24F982:  B               loc_250132
24F984:  CMP             R0, #0
24F986:  BNE.W           loc_250136
24F98A:  MOV             R0, R4; byte_count
24F98C:  STR             R6, [SP,#0x10E0+var_1084]
24F98E:  STR             R2, [SP,#0x10E0+var_10C8]
24F990:  BLX             malloc
24F994:  MOV             R6, R0
24F996:  LSLS            R0, R4, #1; byte_count
24F998:  BLX             malloc
24F99C:  MOV             R8, R0
24F99E:  CMP             R6, #0
24F9A0:  STR.W           R8, [SP,#0x10E0+var_1048]
24F9A4:  IT NE
24F9A6:  CMPNE.W         R8, #0
24F9AA:  BNE.W           loc_24FAFE
24F9AE:  LDR             R0, [SP,#0x10E0+var_1094]
24F9B0:  LDR             R0, [R0]
24F9B2:  CMP             R0, #0
24F9B4:  BEQ.W           loc_24FC5E
24F9B8:  LDR.W           R0, =(aEe - 0x24F9C8); "(EE)"
24F9BC:  LDR.W           R1, =(aLoadhrtf00 - 0x24F9CA); "LoadHrtf00"
24F9C0:  LDR.W           R2, =(aOutOfMemory_3 - 0x24F9CC); "Out of memory.\n"
24F9C4:  ADD             R0, PC; "(EE)"
24F9C6:  ADD             R1, PC; "LoadHrtf00"
24F9C8:  ADD             R2, PC; "Out of memory.\n"
24F9CA:  BLX             j_al_print
24F9CE:  B               loc_24FC5E
24F9D0:  LDR             R0, [SP,#0x10E0+var_1090]
24F9D2:  LDR             R0, [R0]
24F9D4:  CBZ             R0, loc_24F9F6
24F9D6:  LDR.W           R0, =(aEe - 0x24F9EE); "(EE)"
24F9DA:  MOV             R3, R6
24F9DC:  LDR.W           R1, =(aLoadhrtf01 - 0x24F9F0); "LoadHrtf01"
24F9E0:  STR.W           R8, [SP,#0x10E0+var_10E0]
24F9E4:  MOV             R8, R2
24F9E6:  LDR.W           R2, =(aHrirRateDoesNo - 0x24F9F2); "HRIR rate does not match device rate: r"...
24F9EA:  ADD             R0, PC; "(EE)"
24F9EC:  ADD             R1, PC; "LoadHrtf01"
24F9EE:  ADD             R2, PC; "HRIR rate does not match device rate: r"...
24F9F0:  BLX             j_al_print
24F9F4:  MOV             R2, R8
24F9F6:  MOVS            R0, #1
24F9F8:  UXTB            R3, R4
24F9FA:  TST.W           R4, #7
24F9FE:  BNE             loc_24FA0C
24FA00:  MOV             R1, #0xFFFFFFF8
24FA04:  UXTAB.W         R1, R1, R4
24FA08:  CMP             R1, #0x79 ; 'y'
24FA0A:  BCC             loc_24FA3C
24FA0C:  LDR             R0, [SP,#0x10E0+var_108C]
24FA0E:  LDR             R0, [R0]
24FA10:  CBZ             R0, loc_24FA3A
24FA12:  MOVS            R0, #8
24FA14:  MOVS            R1, #0x80
24FA16:  STR             R0, [SP,#0x10E0+var_10E0]
24FA18:  MOV             R8, R2
24FA1A:  STRD.W          R1, R0, [SP,#0x10E0+var_10DC]
24FA1E:  MOV             R4, R3
24FA20:  LDR.W           R0, =(aEe - 0x24FA30); "(EE)"
24FA24:  LDR.W           R1, =(aLoadhrtf01 - 0x24FA32); "LoadHrtf01"
24FA28:  LDR.W           R2, =(aUnsupportedHri - 0x24FA34); "Unsupported HRIR size: irSize=%d (%d to"...
24FA2C:  ADD             R0, PC; "(EE)"
24FA2E:  ADD             R1, PC; "LoadHrtf01"
24FA30:  ADD             R2, PC; "Unsupported HRIR size: irSize=%d (%d to"...
24FA32:  BLX             j_al_print
24FA36:  MOV             R3, R4
24FA38:  MOV             R2, R8
24FA3A:  MOVS            R0, #1
24FA3C:  MOV             R1, #0xFFFFFFFB
24FA40:  UXTB.W          R8, R2
24FA44:  UXTAB.W         R1, R1, R2
24FA48:  CMP             R1, #0x7C ; '|'
24FA4A:  BCC             loc_24FA74
24FA4C:  LDR             R0, [SP,#0x10E0+var_1088]
24FA4E:  LDR             R0, [R0]
24FA50:  CMP             R0, #0
24FA52:  BEQ.W           loc_250136
24FA56:  MOVS            R0, #5
24FA58:  LDR.W           R1, =(aLoadhrtf01 - 0x24FA68); "LoadHrtf01"
24FA5C:  STR             R0, [SP,#0x10E0+var_10E0]
24FA5E:  MOVS            R0, #0x80
24FA60:  LDR.W           R2, =(aUnsupportedEle - 0x24FA72); "Unsupported elevation count: evCount=%d"...
24FA64:  ADD             R1, PC; "LoadHrtf01"
24FA66:  STR             R0, [SP,#0x10E0+var_10DC]
24FA68:  MOV             R3, R8
24FA6A:  LDR.W           R0, =(aEe - 0x24FA74); "(EE)"
24FA6E:  ADD             R2, PC; "Unsupported elevation count: evCount=%d"...
24FA70:  ADD             R0, PC; "(EE)"
24FA72:  B               loc_250132
24FA74:  CMP             R0, #0
24FA76:  STR             R6, [SP,#0x10E0+var_1068]
24FA78:  BNE.W           loc_250136
24FA7C:  MOV             R0, R8; byte_count
24FA7E:  STR             R3, [SP,#0x10E0+var_1084]
24FA80:  STR             R2, [SP,#0x10E0+var_10C8]
24FA82:  BLX             malloc
24FA86:  MOV             R4, R0
24FA88:  MOV.W           R0, R8,LSL#1; byte_count
24FA8C:  BLX             malloc
24FA90:  MOV             R1, R4
24FA92:  CMP             R1, #0
24FA94:  MOV             R4, R0
24FA96:  IT NE
24FA98:  CMPNE           R4, #0
24FA9A:  BEQ.W           loc_24FC7E
24FA9E:  STRD.W          R4, R1, [SP,#0x10E0+var_1048]
24FAA2:  MOVS            R4, #0
24FAA4:  MOVS            R6, #0
24FAA6:  MOV             R0, R5; stream
24FAA8:  BLX             fgetc
24FAAC:  LDR             R1, [SP,#0x10E0+p]
24FAAE:  STRB            R0, [R1,R4]
24FAB0:  MOV.W           R1, #0xFFFFFFFF
24FAB4:  UXTAB.W         R1, R1, R0
24FAB8:  CMP             R1, #0x80
24FABA:  BCC             loc_24FAE6
24FABC:  LDR             R1, [SP,#0x10E0+var_1070]
24FABE:  MOVS            R6, #1
24FAC0:  LDR             R1, [R1]
24FAC2:  CBZ             R1, loc_24FAE6
24FAC4:  UXTB            R0, R0
24FAC6:  LDR.W           R1, =(aLoadhrtf01 - 0x24FAD8); "LoadHrtf01"
24FACA:  STRD.W          R0, R6, [SP,#0x10E0+var_10E0]
24FACE:  MOVS            R0, #0x80
24FAD0:  LDR.W           R2, =(aUnsupportedAzi - 0x24FAE2); "Unsupported azimuth count: azCount[%d]="...
24FAD4:  ADD             R1, PC; "LoadHrtf01"
24FAD6:  STR             R0, [SP,#0x10E0+var_10D8]
24FAD8:  MOV             R3, R4
24FADA:  LDR.W           R0, =(aEe - 0x24FAE4); "(EE)"
24FADE:  ADD             R2, PC; "Unsupported azimuth count: azCount[%d]="...
24FAE0:  ADD             R0, PC; "(EE)"
24FAE2:  BLX             j_al_print
24FAE6:  ADDS            R4, #1
24FAE8:  CMP             R8, R4
24FAEA:  BNE             loc_24FAA6
24FAEC:  LSLS            R0, R6, #0x18
24FAEE:  BEQ.W           loc_24FCBE
24FAF2:  MOVS            R6, #0
24FAF4:  MOV.W           R8, #0
24FAF8:  LDRD.W          R4, R1, [SP,#0x10E0+var_1048]
24FAFC:  B               loc_24FCA4
24FAFE:  LDR             R1, [SP,#0x10E0+var_1050]
24FB00:  LDR             R0, [SP,#0x10E0+var_1074]
24FB02:  ORR.W           R0, R0, R1,LSL#8
24FB06:  STR             R0, [SP,#0x10E0+var_10C4]
24FB08:  MOV             R0, R5; stream
24FB0A:  BLX             fgetc
24FB0E:  STR             R0, [SP,#0x10E0+var_1050]
24FB10:  MOV             R0, R5; stream
24FB12:  BLX             fgetc
24FB16:  LDR             R1, [SP,#0x10E0+var_1050]
24FB18:  STR             R6, [SP,#0x10E0+p]
24FB1A:  ORR.W           R0, R1, R0,LSL#8
24FB1E:  STRH.W          R0, [R8]
24FB22:  SUBS            R0, R4, #1
24FB24:  STR             R0, [SP,#0x10E0+var_1050]
24FB26:  MOVS            R4, #0
24FB28:  MOVS            R0, #0
24FB2A:  STR             R0, [SP,#0x10E0+var_1054]
24FB2C:  MOV             R8, R4
24FB2E:  LDR             R4, [SP,#0x10E0+var_1048]
24FB30:  MOV             R0, R5; stream
24FB32:  ADD.W           R6, R4, R8,LSL#1
24FB36:  BLX             fgetc
24FB3A:  STRH            R0, [R6,#2]
24FB3C:  MOV             R0, R5; stream
24FB3E:  BLX             fgetc
24FB42:  LDRH            R2, [R6,#2]
24FB44:  LDRH.W          R1, [R4,R8,LSL#1]
24FB48:  ADD.W           R4, R8, #1
24FB4C:  ORR.W           R0, R2, R0,LSL#8
24FB50:  STRH            R0, [R6,#2]
24FB52:  UXTH            R2, R0
24FB54:  CMP             R2, R1
24FB56:  BHI             loc_24FB86
24FB58:  LDR             R3, [SP,#0x10E0+var_1064]
24FB5A:  LDR             R3, [R3]
24FB5C:  CBZ             R3, loc_24FB82
24FB5E:  STRD.W          R2, R1, [SP,#0x10E0+var_10E0]
24FB62:  MOV             R3, R4
24FB64:  LDR.W           R0, =(aEe - 0x24FB74); "(EE)"
24FB68:  LDR.W           R1, =(aLoadhrtf00 - 0x24FB76); "LoadHrtf00"
24FB6C:  LDR.W           R2, =(aInvalidEvoffse - 0x24FB78); "Invalid evOffset: evOffset[%d]=%d (last"...
24FB70:  ADD             R0, PC; "(EE)"
24FB72:  ADD             R1, PC; "LoadHrtf00"
24FB74:  ADD             R2, PC; "Invalid evOffset: evOffset[%d]=%d (last"...
24FB76:  BLX             j_al_print
24FB7A:  LDR             R0, [SP,#0x10E0+var_1048]
24FB7C:  LDRH.W          R1, [R0,R8,LSL#1]
24FB80:  LDRH            R0, [R6,#2]
24FB82:  MOVS            R2, #1
24FB84:  STR             R2, [SP,#0x10E0+var_1054]
24FB86:  UXTH            R0, R0
24FB88:  LDR             R6, [SP,#0x10E0+p]
24FB8A:  SUBS            R0, R0, R1
24FB8C:  MOV.W           R1, #0xFFFFFFFF
24FB90:  UXTAB.W         R1, R1, R0
24FB94:  STRB.W          R0, [R6,R8]
24FB98:  CMP             R1, #0x80
24FB9A:  BCC             loc_24FBC8
24FB9C:  LDR             R1, [SP,#0x10E0+var_1060]
24FB9E:  MOVS            R2, #1
24FBA0:  STR             R2, [SP,#0x10E0+var_1054]
24FBA2:  LDR             R1, [R1]
24FBA4:  CBZ             R1, loc_24FBC8
24FBA6:  UXTB            R0, R0
24FBA8:  LDR.W           R1, =(aLoadhrtf00 - 0x24FBBA); "LoadHrtf00"
24FBAC:  STRD.W          R0, R2, [SP,#0x10E0+var_10E0]
24FBB0:  MOVS            R0, #0x80
24FBB2:  LDR.W           R2, =(aUnsupportedAzi - 0x24FBC4); "Unsupported azimuth count: azCount[%d]="...
24FBB6:  ADD             R1, PC; "LoadHrtf00"
24FBB8:  STR             R0, [SP,#0x10E0+var_10D8]
24FBBA:  MOV             R3, R8
24FBBC:  LDR.W           R0, =(aEe - 0x24FBC6); "(EE)"
24FBC0:  ADD             R2, PC; "Unsupported azimuth count: azCount[%d]="...
24FBC2:  ADD             R0, PC; "(EE)"
24FBC4:  BLX             j_al_print
24FBC8:  LDR             R0, [SP,#0x10E0+var_1050]
24FBCA:  CMP             R0, R4
24FBCC:  BNE             loc_24FB2C
24FBCE:  LDR             R4, [SP,#0x10E0+var_1048]
24FBD0:  LDR             R0, [SP,#0x10E0+var_1050]
24FBD2:  LDR             R1, [SP,#0x10E0+var_10C4]
24FBD4:  LDR             R2, [SP,#0x10E0+var_1084]
24FBD6:  LDRH.W          R0, [R4,R0,LSL#1]
24FBDA:  CMP             R1, R0
24FBDC:  BLS             loc_24FBE2
24FBDE:  LDR             R3, [SP,#0x10E0+var_1054]
24FBE0:  B               loc_24FC12
24FBE2:  LDR             R1, [SP,#0x10E0+var_10A4]
24FBE4:  LDR             R1, [R1]
24FBE6:  CBZ             R1, loc_24FC10
24FBE8:  STR             R0, [SP,#0x10E0+var_10E0]
24FBEA:  LDR             R0, [SP,#0x10E0+var_10C4]
24FBEC:  LDR.W           R1, =(aLoadhrtf00 - 0x24FBFA); "LoadHrtf00"
24FBF0:  LDR.W           R2, =(aInvalidEvoffse_0 - 0x24FC00); "Invalid evOffset: evOffset[%d]=%d (irCo"...
24FBF4:  STR             R0, [SP,#0x10E0+var_10DC]
24FBF6:  ADD             R1, PC; "LoadHrtf00"
24FBF8:  LDR.W           R0, =(aEe - 0x24FC06); "(EE)"
24FBFC:  ADD             R2, PC; "Invalid evOffset: evOffset[%d]=%d (irCo"...
24FBFE:  LDR.W           R8, [SP,#0x10E0+var_1050]
24FC02:  ADD             R0, PC; "(EE)"
24FC04:  MOV             R3, R8
24FC06:  BLX             j_al_print
24FC0A:  LDRH.W          R0, [R4,R8,LSL#1]
24FC0E:  LDR             R2, [SP,#0x10E0+var_1084]
24FC10:  MOVS            R3, #1
24FC12:  LDR             R1, [SP,#0x10E0+var_1074]
24FC14:  SUBS            R0, R1, R0
24FC16:  LDR             R1, [SP,#0x10E0+var_1050]
24FC18:  STRB            R0, [R6,R1]
24FC1A:  MOV.W           R1, #0xFFFFFFFF
24FC1E:  UXTAB.W         R1, R1, R0
24FC22:  CMP             R1, #0x80
24FC24:  BCC             loc_24FC5A
24FC26:  LDR             R1, [SP,#0x10E0+var_10A0]
24FC28:  MOV             R8, R4
24FC2A:  LDR             R1, [R1]
24FC2C:  CBZ             R1, loc_24FC52
24FC2E:  UXTB            R0, R0
24FC30:  LDR.W           R1, =(aLoadhrtf00 - 0x24FC44); "LoadHrtf00"
24FC34:  STR             R0, [SP,#0x10E0+var_10E0]
24FC36:  MOVS            R0, #1
24FC38:  STR             R0, [SP,#0x10E0+var_10DC]
24FC3A:  MOVS            R0, #0x80
24FC3C:  LDR.W           R2, =(aUnsupportedAzi - 0x24FC4C); "Unsupported azimuth count: azCount[%d]="...
24FC40:  ADD             R1, PC; "LoadHrtf00"
24FC42:  STR             R0, [SP,#0x10E0+var_10D8]
24FC44:  LDR.W           R0, =(aEe - 0x24FC50); "(EE)"
24FC48:  ADD             R2, PC; "Unsupported azimuth count: azCount[%d]="...
24FC4A:  LDR             R3, [SP,#0x10E0+var_1050]
24FC4C:  ADD             R0, PC; "(EE)"
24FC4E:  BLX             j_al_print
24FC52:  MOVS            R0, #0
24FC54:  MOVS            R4, #0
24FC56:  STR             R0, [SP,#0x10E0+var_1074]
24FC58:  B               loc_24FC68
24FC5A:  LSLS            R0, R3, #0x18
24FC5C:  BEQ             loc_24FCF0
24FC5E:  MOVS            R0, #0
24FC60:  MOVS            R4, #0
24FC62:  STR             R0, [SP,#0x10E0+var_1074]
24FC64:  LDR.W           R8, [SP,#0x10E0+var_1048]
24FC68:  MOV             R0, R6; p
24FC6A:  BLX             free
24FC6E:  MOV             R0, R8; p
24FC70:  BLX             free
24FC74:  LDR             R0, [SP,#0x10E0+var_1074]; p
24FC76:  BLX             free
24FC7A:  MOV             R0, R4
24FC7C:  B               loc_24FCB8
24FC7E:  LDR             R0, [SP,#0x10E0+var_109C]
24FC80:  LDR             R0, [R0]
24FC82:  CBZ             R0, loc_24FC9E
24FC84:  LDR.W           R0, =(aEe - 0x24FC96); "(EE)"
24FC88:  MOV             R6, R1
24FC8A:  LDR.W           R1, =(aLoadhrtf01 - 0x24FC98); "LoadHrtf01"
24FC8E:  LDR.W           R2, =(aOutOfMemory_3 - 0x24FC9A); "Out of memory.\n"
24FC92:  ADD             R0, PC; "(EE)"
24FC94:  ADD             R1, PC; "LoadHrtf01"
24FC96:  ADD             R2, PC; "Out of memory.\n"
24FC98:  BLX             j_al_print
24FC9C:  MOV             R1, R6
24FC9E:  MOVS            R6, #0
24FCA0:  MOV.W           R8, #0
24FCA4:  MOV             R0, R1; p
24FCA6:  BLX             free
24FCAA:  MOV             R0, R4; p
24FCAC:  BLX             free
24FCB0:  MOV             R0, R6; p
24FCB2:  BLX             free
24FCB6:  MOV             R0, R8; p
24FCB8:  BLX             free
24FCBC:  B               loc_250136
24FCBE:  LDR             R1, [SP,#0x10E0+var_1048]
24FCC0:  MOVS            R0, #0
24FCC2:  LDR             R2, [SP,#0x10E0+p]
24FCC4:  CMP.W           R8, #2
24FCC8:  STRH            R0, [R1]
24FCCA:  LDRB            R0, [R2]
24FCCC:  BCC             loc_24FDB4
24FCCE:  ADDS            R1, #2
24FCD0:  ADDS            R2, #1
24FCD2:  SUB.W           R3, R8, #1
24FCD6:  MOVS            R6, #0
24FCD8:  MOV             R4, R0
24FCDA:  UXTH            R6, R6
24FCDC:  SUBS            R3, #1
24FCDE:  UXTAB.W         R6, R6, R0
24FCE2:  LDRB.W          R0, [R2],#1
24FCE6:  STRH.W          R6, [R1],#2
24FCEA:  ADD             R4, R0
24FCEC:  BNE             loc_24FCDA
24FCEE:  B               loc_24FDB6
24FCF0:  LDR             R4, [SP,#0x10E0+var_10C4]
24FCF2:  MUL.W           R0, R4, R2
24FCF6:  STR             R0, [SP,#0x10E0+var_10D0]
24FCF8:  LSLS            R0, R0, #1; byte_count
24FCFA:  BLX             malloc
24FCFE:  MOV             R8, R0
24FD00:  MOV             R0, R4; byte_count
24FD02:  BLX             malloc
24FD06:  CMP.W           R8, #0
24FD0A:  STR.W           R8, [SP,#0x10E0+var_1074]
24FD0E:  STR             R0, [SP,#0x10E0+var_10CC]
24FD10:  IT NE
24FD12:  CMPNE           R0, #0
24FD14:  BEQ.W           loc_24FE96
24FD18:  LDR             R0, [SP,#0x10E0+var_10D0]
24FD1A:  LDR.W           R8, [SP,#0x10E0+var_1084]
24FD1E:  CBZ             R0, loc_24FD64
24FD20:  LDR             R6, [SP,#0x10E0+var_1074]
24FD22:  MOV.W           R1, R8,LSL#1
24FD26:  MOVS            R2, #0
24FD28:  STR             R1, [SP,#0x10E0+var_10D4]
24FD2A:  CMP.W           R8, #0
24FD2E:  STR             R2, [SP,#0x10E0+var_1050]
24FD30:  STR             R6, [SP,#0x10E0+var_1054]
24FD32:  BEQ             loc_24FD50
24FD34:  MOV             R0, R5; stream
24FD36:  BLX             fgetc
24FD3A:  MOV             R4, R0
24FD3C:  MOV             R0, R5; stream
24FD3E:  BLX             fgetc
24FD42:  ORR.W           R0, R4, R0,LSL#8
24FD46:  STRH.W          R0, [R6],#2
24FD4A:  SUBS.W          R8, R8, #1
24FD4E:  BNE             loc_24FD34
24FD50:  LDR             R0, [SP,#0x10E0+var_10D4]
24FD52:  LDR             R6, [SP,#0x10E0+var_1054]
24FD54:  LDR.W           R8, [SP,#0x10E0+var_1084]
24FD58:  LDR             R2, [SP,#0x10E0+var_1050]
24FD5A:  ADD             R6, R0
24FD5C:  LDR             R1, [SP,#0x10E0+var_10D0]
24FD5E:  ADD             R2, R8
24FD60:  CMP             R2, R1
24FD62:  BCC             loc_24FD2A
24FD64:  LDR             R0, [SP,#0x10E0+var_10C4]
24FD66:  CMP             R0, #0
24FD68:  BEQ.W           loc_24FF02
24FD6C:  LDR             R6, [SP,#0x10E0+var_10CC]
24FD6E:  MOVS            R4, #0
24FD70:  MOV.W           R8, #0
24FD74:  MOV             R0, R5; stream
24FD76:  BLX             fgetc
24FD7A:  STRB            R0, [R6,R4]
24FD7C:  UXTB            R0, R0
24FD7E:  CMP             R0, #0x40 ; '@'
24FD80:  BCC             loc_24FDAA
24FD82:  LDR             R1, [SP,#0x10E0+var_1098]
24FD84:  LDR             R1, [R1]
24FD86:  CBZ             R1, loc_24FDA6
24FD88:  STR             R0, [SP,#0x10E0+var_10E0]
24FD8A:  MOVS            R0, #0x3F ; '?'
24FD8C:  LDR.W           R1, =(aLoadhrtf00 - 0x24FD9C); "LoadHrtf00"
24FD90:  MOV             R3, R4
24FD92:  LDR.W           R2, =(aInvalidDelaysD - 0x24FDA2); "Invalid delays[%d]: %d (%d)\n"
24FD96:  STR             R0, [SP,#0x10E0+var_10DC]
24FD98:  ADD             R1, PC; "LoadHrtf00"
24FD9A:  LDR.W           R0, =(aEe - 0x24FDA4); "(EE)"
24FD9E:  ADD             R2, PC; "Invalid delays[%d]: %d (%d)\n"
24FDA0:  ADD             R0, PC; "(EE)"
24FDA2:  BLX             j_al_print
24FDA6:  MOV.W           R8, #1
24FDAA:  LDR             R0, [SP,#0x10E0+var_10C4]
24FDAC:  ADDS            R4, #1
24FDAE:  CMP             R0, R4
24FDB0:  BNE             loc_24FD74
24FDB2:  B               loc_24FF06
24FDB4:  MOV             R4, R0
24FDB6:  LDR             R0, [SP,#0x10E0+var_1084]
24FDB8:  MULS            R0, R4
24FDBA:  STR             R0, [SP,#0x10E0+var_10C4]
24FDBC:  LSLS            R0, R0, #1; byte_count
24FDBE:  BLX             malloc
24FDC2:  MOV             R6, R0
24FDC4:  MOV             R0, R4; byte_count
24FDC6:  BLX             malloc
24FDCA:  CMP             R6, #0
24FDCC:  IT NE
24FDCE:  CMPNE           R0, #0
24FDD0:  BNE             loc_24FDFC
24FDD2:  MOV             R8, R0
24FDD4:  LDR             R0, [SP,#0x10E0+var_10A8]
24FDD6:  LDR             R1, [SP,#0x10E0+p]
24FDD8:  LDR             R0, [R0]
24FDDA:  CMP             R0, #0
24FDDC:  BEQ             loc_24FEB6
24FDDE:  LDR.W           R0, =(aEe - 0x24FDF0); "(EE)"
24FDE2:  MOV             R4, R1
24FDE4:  LDR.W           R1, =(aLoadhrtf01 - 0x24FDF2); "LoadHrtf01"
24FDE8:  LDR.W           R2, =(aOutOfMemory_3 - 0x24FDF4); "Out of memory.\n"
24FDEC:  ADD             R0, PC; "(EE)"
24FDEE:  ADD             R1, PC; "LoadHrtf01"
24FDF0:  ADD             R2, PC; "Out of memory.\n"
24FDF2:  BLX             j_al_print
24FDF6:  MOV             R1, R4
24FDF8:  LDR             R4, [SP,#0x10E0+var_1048]
24FDFA:  B               loc_24FCA4
24FDFC:  STRD.W          R4, R0, [SP,#0x10E0+var_10D0]
24FE00:  STR             R6, [SP,#0x10E0+var_1074]
24FE02:  LDR             R0, [SP,#0x10E0+var_10C4]
24FE04:  LDR             R6, [SP,#0x10E0+var_1084]
24FE06:  CBZ             R0, loc_24FE4A
24FE08:  LDR.W           R8, [SP,#0x10E0+var_1074]
24FE0C:  LSLS            R1, R6, #1
24FE0E:  MOVS            R2, #0
24FE10:  STR             R1, [SP,#0x10E0+var_10D4]
24FE12:  CMP             R6, #0
24FE14:  STR             R2, [SP,#0x10E0+var_1050]
24FE16:  STR.W           R8, [SP,#0x10E0+var_1054]
24FE1A:  BEQ             loc_24FE36
24FE1C:  MOV             R0, R5; stream
24FE1E:  BLX             fgetc
24FE22:  MOV             R4, R0
24FE24:  MOV             R0, R5; stream
24FE26:  BLX             fgetc
24FE2A:  ORR.W           R0, R4, R0,LSL#8
24FE2E:  STRH.W          R0, [R8],#2
24FE32:  SUBS            R6, #1
24FE34:  BNE             loc_24FE1C
24FE36:  LDR             R0, [SP,#0x10E0+var_10D4]
24FE38:  LDR.W           R8, [SP,#0x10E0+var_1054]
24FE3C:  LDR             R6, [SP,#0x10E0+var_1084]
24FE3E:  LDR             R2, [SP,#0x10E0+var_1050]
24FE40:  ADD             R8, R0
24FE42:  LDR             R1, [SP,#0x10E0+var_10C4]
24FE44:  ADD             R2, R6
24FE46:  CMP             R2, R1
24FE48:  BCC             loc_24FE12
24FE4A:  LDR             R0, [SP,#0x10E0+var_10D0]
24FE4C:  CBZ             R0, loc_24FEBA
24FE4E:  LDR.W           R8, [SP,#0x10E0+var_10B4]
24FE52:  MOVS            R4, #0
24FE54:  MOVS            R6, #0
24FE56:  MOV             R0, R5; stream
24FE58:  BLX             fgetc
24FE5C:  LDR             R1, [SP,#0x10E0+var_10CC]
24FE5E:  STRB            R0, [R1,R4]
24FE60:  UXTB            R0, R0
24FE62:  CMP             R0, #0x40 ; '@'
24FE64:  BCC             loc_24FE8C
24FE66:  LDR.W           R1, [R8]
24FE6A:  CBZ             R1, loc_24FE8A
24FE6C:  STR             R0, [SP,#0x10E0+var_10E0]
24FE6E:  MOVS            R0, #0x3F ; '?'
24FE70:  LDR.W           R1, =(aLoadhrtf01 - 0x24FE80); "LoadHrtf01"
24FE74:  MOV             R3, R4
24FE76:  LDR.W           R2, =(aInvalidDelaysD - 0x24FE86); "Invalid delays[%d]: %d (%d)\n"
24FE7A:  STR             R0, [SP,#0x10E0+var_10DC]
24FE7C:  ADD             R1, PC; "LoadHrtf01"
24FE7E:  LDR.W           R0, =(aEe - 0x24FE88); "(EE)"
24FE82:  ADD             R2, PC; "Invalid delays[%d]: %d (%d)\n"
24FE84:  ADD             R0, PC; "(EE)"
24FE86:  BLX             j_al_print
24FE8A:  MOVS            R6, #1
24FE8C:  LDR             R0, [SP,#0x10E0+var_10D0]
24FE8E:  ADDS            R4, #1
24FE90:  CMP             R0, R4
24FE92:  BNE             loc_24FE56
24FE94:  B               loc_24FEBC
24FE96:  LDR             R0, [SP,#0x10E0+var_10AC]
24FE98:  LDR             R0, [R0]
24FE9A:  CBZ             R0, loc_24FEB2
24FE9C:  LDR.W           R0, =(aEe - 0x24FEAC); "(EE)"
24FEA0:  LDR.W           R1, =(aLoadhrtf00 - 0x24FEAE); "LoadHrtf00"
24FEA4:  LDR.W           R2, =(aOutOfMemory_3 - 0x24FEB0); "Out of memory.\n"
24FEA8:  ADD             R0, PC; "(EE)"
24FEAA:  ADD             R1, PC; "LoadHrtf00"
24FEAC:  ADD             R2, PC; "Out of memory.\n"
24FEAE:  BLX             j_al_print
24FEB2:  LDR             R4, [SP,#0x10E0+var_10CC]
24FEB4:  B               loc_24FC64
24FEB6:  LDR             R4, [SP,#0x10E0+var_1048]
24FEB8:  B               loc_24FCA4
24FEBA:  MOVS            R6, #0
24FEBC:  MOV             R0, R5; stream
24FEBE:  BLX             feof
24FEC2:  CBZ             R0, loc_24FEF2
24FEC4:  LDR             R0, [SP,#0x10E0+var_10B0]
24FEC6:  LDR             R0, [R0]
24FEC8:  LDRD.W          R4, R1, [SP,#0x10E0+var_1048]
24FECC:  LDR             R6, [SP,#0x10E0+var_1074]
24FECE:  CMP             R0, #0
24FED0:  BEQ             loc_24FF68
24FED2:  LDR.W           R0, =(aEe - 0x24FEE4); "(EE)"
24FED6:  MOV             R8, R1
24FED8:  LDR.W           R1, =(aLoadhrtf01 - 0x24FEE6); "LoadHrtf01"
24FEDC:  LDR.W           R2, =(aPrematureEndOf - 0x24FEE8); "Premature end of data\n"
24FEE0:  ADD             R0, PC; "(EE)"
24FEE2:  ADD             R1, PC; "LoadHrtf01"
24FEE4:  ADD             R2, PC; "Premature end of data\n"
24FEE6:  BLX             j_al_print
24FEEA:  MOV             R1, R8
24FEEC:  LDR.W           R8, [SP,#0x10E0+var_10CC]
24FEF0:  B               loc_24FCA4
24FEF2:  LSLS            R0, R6, #0x18
24FEF4:  LDR             R6, [SP,#0x10E0+var_1074]
24FEF6:  BEQ             loc_24FF6E
24FEF8:  LDRD.W          R4, R1, [SP,#0x10E0+var_1048]
24FEFC:  LDR.W           R8, [SP,#0x10E0+var_10CC]
24FF00:  B               loc_24FCA4
24FF02:  MOV.W           R8, #0
24FF06:  MOV             R0, R5; stream
24FF08:  BLX             feof
24FF0C:  CBZ             R0, loc_24FF30
24FF0E:  LDR             R0, [SP,#0x10E0+var_10B8]
24FF10:  LDR             R0, [R0]
24FF12:  LDRD.W          R8, R6, [SP,#0x10E0+var_1048]
24FF16:  CBZ             R0, loc_24FF64
24FF18:  LDR.W           R0, =(aEe - 0x24FF28); "(EE)"
24FF1C:  LDR.W           R1, =(aLoadhrtf00 - 0x24FF2A); "LoadHrtf00"
24FF20:  LDR.W           R2, =(aPrematureEndOf - 0x24FF2C); "Premature end of data\n"
24FF24:  ADD             R0, PC; "(EE)"
24FF26:  ADD             R1, PC; "LoadHrtf00"
24FF28:  ADD             R2, PC; "Premature end of data\n"
24FF2A:  BLX             j_al_print
24FF2E:  B               loc_24FF64
24FF30:  MOVS.W          R0, R8,LSL#24
24FF34:  BNE             loc_24FF60
24FF36:  MOVS            R0, #0x20 ; ' '; byte_count
24FF38:  BLX             malloc
24FF3C:  MOV             R4, R0
24FF3E:  CMP             R4, #0
24FF40:  BNE.W           loc_2501FE
24FF44:  LDR             R0, [SP,#0x10E0+var_10C0]
24FF46:  LDR             R0, [R0]
24FF48:  CBZ             R0, loc_24FF60
24FF4A:  LDR.W           R0, =(aEe - 0x24FF5A); "(EE)"
24FF4E:  LDR.W           R1, =(aLoadhrtf00 - 0x24FF5C); "LoadHrtf00"
24FF52:  LDR.W           R2, =(aOutOfMemory_3 - 0x24FF5E); "Out of memory.\n"
24FF56:  ADD             R0, PC; "(EE)"
24FF58:  ADD             R1, PC; "LoadHrtf00"
24FF5A:  ADD             R2, PC; "Out of memory.\n"
24FF5C:  BLX             j_al_print
24FF60:  LDRD.W          R8, R6, [SP,#0x10E0+var_1048]
24FF64:  LDR             R4, [SP,#0x10E0+var_10CC]
24FF66:  B               loc_24FC68
24FF68:  LDR.W           R8, [SP,#0x10E0+var_10CC]
24FF6C:  B               loc_24FCA4
24FF6E:  MOVS            R0, #0x20 ; ' '; byte_count
24FF70:  BLX             malloc
24FF74:  MOV             R4, R0
24FF76:  CMP             R4, #0
24FF78:  BNE.W           loc_2501FE
24FF7C:  LDR             R0, [SP,#0x10E0+var_10BC]
24FF7E:  LDR             R4, [SP,#0x10E0+var_1048]
24FF80:  LDR             R0, [R0]
24FF82:  CBZ             R0, loc_24FF9A
24FF84:  LDR.W           R0, =(aEe - 0x24FF94); "(EE)"
24FF88:  LDR.W           R1, =(aLoadhrtf01 - 0x24FF96); "LoadHrtf01"
24FF8C:  LDR.W           R2, =(aOutOfMemory_3 - 0x24FF98); "Out of memory.\n"
24FF90:  ADD             R0, PC; "(EE)"
24FF92:  ADD             R1, PC; "LoadHrtf01"
24FF94:  ADD             R2, PC; "Out of memory.\n"
24FF96:  BLX             j_al_print
24FF9A:  LDR.W           R8, [SP,#0x10E0+var_10CC]
24FF9E:  LDR             R1, [SP,#0x10E0+p]
24FFA0:  B               loc_24FCA4
24FFA2:  UXTB            R4, R0
24FFA4:  B               loc_24FFAA
24FFA6:  LDRB.W          R4, [R10,#1]!
24FFAA:  MOV             R0, R4; int
24FFAC:  BLX             isspace
24FFB0:  CMP             R4, #0x2C ; ','
24FFB2:  BEQ             loc_24FFA6
24FFB4:  CMP             R0, #0
24FFB6:  BNE             loc_24FFA6
24FFB8:  MOVS            R6, #0
24FFBA:  B               loc_250026
24FFBC:  SUB.W           R10, R0, #1
24FFC0:  B               loc_24FFE4
24FFC2:  RSB.W           R5, R6, #0x1000
24FFC6:  ADD.W           R0, R11, R6
24FFCA:  ADR             R2, dword_250264
24FFCC:  MOV             R3, R8
24FFCE:  MOV             R1, R5
24FFD0:  BL              sub_5E6B74
24FFD4:  CMP             R0, R5
24FFD6:  ADD.W           R10, R4, #2
24FFDA:  IT HI
24FFDC:  MOVHI           R0, R5
24FFDE:  ADD             R6, R0
24FFE0:  B               loc_250026
24FFE2:  MOV             R10, R4
24FFE4:  CMP             R4, #0
24FFE6:  ITT NE
24FFE8:  LDRBNE          R0, [R4]
24FFEA:  CMPNE           R0, #0x2C ; ','
24FFEC:  BEQ             loc_25006A
24FFEE:  MOV             R10, R4
24FFF0:  LDRB.W          R3, [R10,#1]!
24FFF4:  CMP             R3, #0x25 ; '%'
24FFF6:  BEQ             loc_250012
24FFF8:  CMP             R3, #0x72 ; 'r'
24FFFA:  BEQ             loc_24FFC2
24FFFC:  LDR             R0, [SP,#0x10E0+var_1030]
24FFFE:  LDR             R0, [R0]
250000:  CBZ             R0, loc_250026
250002:  LDR.W           R0, =(aEe - 0x25000E); "(EE)"
250006:  ADR             R1, aLoadhrtf; "LoadHrtf"
250008:  ADR             R2, aInvalidMarkerC; "Invalid marker '%%%c'\n"
25000A:  ADD             R0, PC; "(EE)"
25000C:  BLX             j_al_print
250010:  B               loc_250026
250012:  MOVS            R0, #0
250014:  CMP.W           R0, R6,LSR#12
250018:  ITTT EQ
25001A:  MOVEQ           R0, #0x25 ; '%'
25001C:  STRBEQ.W        R0, [R11,R6]
250020:  ADDEQ           R6, #1
250022:  ADD.W           R10, R4, #2
250026:  LDRB.W          R5, [R10]
25002A:  CMP             R5, #0
25002C:  IT NE
25002E:  CMPNE           R5, #0x2C ; ','
250030:  BEQ             loc_25006A
250032:  ADR             R1, dword_250260; char *
250034:  MOV             R0, R10; char *
250036:  BLX             strpbrk
25003A:  MOV             R4, R0
25003C:  CMP             R4, R10
25003E:  IT NE
250040:  CMPNE           R5, #0
250042:  BEQ             loc_24FFE4
250044:  MOVS            R0, #0
250046:  CMP.W           R0, R6,LSR#12
25004A:  BNE             loc_24FFE4
25004C:  ADD.W           R0, R10, #1
250050:  STRB.W          R5, [R11,R6]
250054:  ADDS            R6, #1
250056:  CMP             R4, R0
250058:  BEQ             loc_24FFE2
25005A:  LDRB.W          R5, [R0],#1
25005E:  CMP             R5, #0
250060:  BEQ             loc_24FFBC
250062:  CMP.W           R6, #0x1000
250066:  BCC             loc_250050
250068:  B               loc_24FFBC
25006A:  MOVW            R0, #0xFFF
25006E:  CMP             R6, R0
250070:  IT CS
250072:  MOVCS           R6, R0
250074:  MOVS            R0, #0
250076:  STRB.W          R0, [R11,R6]
25007A:  ADDS            R4, R6, #1
25007C:  ADD             R6, SP, #0x10E0+var_102C
25007E:  CMP             R4, #1
250080:  BEQ             loc_250092
250082:  LDRB.W          R0, [R9,R4]; int
250086:  BLX             isspace
25008A:  SUBS            R4, #1
25008C:  CMP             R0, #0
25008E:  BNE             loc_25007E
250090:  B               loc_250094
250092:  MOVS            R4, #0
250094:  MOVS            R0, #0
250096:  STRB.W          R0, [R11,R4]
25009A:  LDRB.W          R0, [SP,#0x10E0+var_1024]
25009E:  CMP             R0, #0
2500A0:  BEQ             loc_250156
2500A2:  LDR             R0, [SP,#0x10E0+var_1034]
2500A4:  LDR             R0, [R0]
2500A6:  CMP             R0, #3
2500A8:  BCC             loc_2500B8
2500AA:  LDR             R0, =(aIi - 0x2500B6); "(II)"
2500AC:  ADR             R1, aLoadhrtf; "LoadHrtf"
2500AE:  ADR             R2, aLoadingS; "Loading %s...\n"
2500B0:  MOV             R3, R11
2500B2:  ADD             R0, PC; "(II)"
2500B4:  BLX             j_al_print
2500B8:  ADR             R1, aRb; "rb"
2500BA:  MOV             R0, R11; filename
2500BC:  BLX             fopen
2500C0:  MOV             R5, R0
2500C2:  CBZ             R5, loc_25010E
2500C4:  MOV             R0, R6; ptr
2500C6:  MOVS            R1, #1; size
2500C8:  MOVS            R2, #8; n
2500CA:  MOV             R3, R5; stream
2500CC:  BLX             fread
2500D0:  CMP             R0, #8
2500D2:  BNE             loc_250120
2500D4:  LDR             R1, =(unk_5FD2F4 - 0x2500DE)
2500D6:  MOV             R0, R6; void *
2500D8:  MOVS            R2, #8; size_t
2500DA:  ADD             R1, PC; unk_5FD2F4 ; void *
2500DC:  BLX             memcmp
2500E0:  CMP             R0, #0
2500E2:  BEQ.W           loc_24F818
2500E6:  LDR.W           R1, =(unk_5FD2FC - 0x2500F2)
2500EA:  MOV             R0, R6; void *
2500EC:  MOVS            R2, #8; size_t
2500EE:  ADD             R1, PC; unk_5FD2FC ; void *
2500F0:  BLX             memcmp
2500F4:  LDR             R1, [SP,#0x10E0+var_105C]
2500F6:  CMP             R0, #0
2500F8:  LDR             R1, [R1]
2500FA:  BEQ.W           loc_24F890
2500FE:  CBZ             R1, loc_250136
250100:  LDR.W           R0, =(aEe - 0x25010E); "(EE)"
250104:  ADR             R1, aLoadhrtf; "LoadHrtf"
250106:  STR             R6, [SP,#0x10E0+var_10E0]
250108:  ADR             R2, aInvalidHeaderI; "Invalid header in %s: \"%.8s\"\n"
25010A:  ADD             R0, PC; "(EE)"
25010C:  B               loc_250130
25010E:  LDR             R0, [SP,#0x10E0+var_104C]
250110:  LDR             R0, [R0]
250112:  CBZ             R0, loc_250156
250114:  LDR             R0, =(aEe - 0x25011E); "(EE)"
250116:  ADR             R1, aLoadhrtf; "LoadHrtf"
250118:  LDR             R2, =(aCouldNotOpenS - 0x250120); "Could not open %s\n"
25011A:  ADD             R0, PC; "(EE)"
25011C:  ADD             R2, PC; "Could not open %s\n"
25011E:  B               loc_250150
250120:  LDR             R0, [SP,#0x10E0+var_1058]
250122:  LDR             R0, [R0]
250124:  CBZ             R0, loc_250136
250126:  LDR.W           R0, =(aEe - 0x250132); "(EE)"
25012A:  ADR             R1, aLoadhrtf; "LoadHrtf"
25012C:  ADR             R2, aFailedToReadHe; "Failed to read header from %s\n"
25012E:  ADD             R0, PC; "(EE)"
250130:  MOV             R3, R11
250132:  BLX             j_al_print
250136:  MOV             R0, R5; stream
250138:  BLX             fclose
25013C:  LDR             R0, [SP,#0x10E0+var_1040]
25013E:  LDR.W           R8, [SP,#0x10E0+var_1038]
250142:  LDR             R0, [R0]
250144:  CBZ             R0, loc_250156
250146:  LDR             R0, =(aEe - 0x250150); "(EE)"
250148:  ADR             R1, aLoadhrtf; "LoadHrtf"
25014A:  LDR             R2, =(aFailedToLoadS - 0x250152); "Failed to load %s\n"
25014C:  ADD             R0, PC; "(EE)"
25014E:  ADD             R2, PC; "Failed to load %s\n"
250150:  MOV             R3, R11
250152:  BLX             j_al_print
250156:  LDRB.W          R0, [R10]
25015A:  CMP             R0, #0
25015C:  BNE.W           loc_24FFA2
250160:  LDR             R2, [SP,#0x10E0+var_103C]
250162:  MOVW            R1, #0xAC44
250166:  LDR             R0, [R2,#0x10]
250168:  CMP             R0, R1
25016A:  BNE             loc_250172
25016C:  LDR             R4, =(unk_661D38 - 0x250172)
25016E:  ADD             R4, PC; unk_661D38
250170:  B               loc_2501DA
250172:  LDR             R0, =(LogLevel_ptr - 0x250178)
250174:  ADD             R0, PC; LogLevel_ptr
250176:  LDR             R0, [R0]; LogLevel
250178:  LDR             R0, [R0]
25017A:  CBZ             R0, loc_2501D8
25017C:  LDR             R1, [R2,#0x1C]
25017E:  SUB.W           R0, R1, #0x1500; switch 7 cases
250182:  CMP             R0, #6
250184:  BHI             def_25018A; jumptable 0025018A default case
250186:  LDR             R3, =(aMono_0 - 0x25018C); "Mono"
250188:  ADD             R3, PC; "Mono"
25018A:  TBB.W           [PC,R0]; switch jump
25018E:  DCB 0x1B; jump table for switch statement
25018F:  DCB 4
250190:  DCB 0xD
250191:  DCB 0x10
250192:  DCB 0x13
250193:  DCB 0x16
250194:  DCB 0x19
250195:  ALIGN 2
250196:  LDR             R3, =(aStereo_0 - 0x25019C); jumptable 0025018A case 5377
250198:  ADD             R3, PC; "Stereo"
25019A:  B               loc_2501C4; jumptable 0025018A case 5376
25019C:  CMP.W           R1, #0x80000000; jumptable 0025018A default case
2501A0:  BNE             loc_2501A8; jumptable 0025018A case 5378
2501A2:  LDR             R3, =(a51Side - 0x2501A8); "5.1 Side"
2501A4:  ADD             R3, PC; "5.1 Side"
2501A6:  B               loc_2501C4; jumptable 0025018A case 5376
2501A8:  LDR             R3, =(aUnknownChannel - 0x2501AE); jumptable 0025018A case 5378
2501AA:  ADD             R3, PC; "(unknown channels)"
2501AC:  B               loc_2501C4; jumptable 0025018A case 5376
2501AE:  LDR             R3, =(aQuadraphonic - 0x2501B4); jumptable 0025018A case 5379
2501B0:  ADD             R3, PC; "Quadraphonic"
2501B2:  B               loc_2501C4; jumptable 0025018A case 5376
2501B4:  LDR             R3, =(a51Surround - 0x2501BA); jumptable 0025018A case 5380
2501B6:  ADD             R3, PC; "5.1 Surround"
2501B8:  B               loc_2501C4; jumptable 0025018A case 5376
2501BA:  LDR             R3, =(a61Surround - 0x2501C0); jumptable 0025018A case 5381
2501BC:  ADD             R3, PC; "6.1 Surround"
2501BE:  B               loc_2501C4; jumptable 0025018A case 5376
2501C0:  LDR             R3, =(a71Surround - 0x2501C6); jumptable 0025018A case 5382
2501C2:  ADD             R3, PC; "7.1 Surround"
2501C4:  LDR             R6, [R2,#0x10]; jumptable 0025018A case 5376
2501C6:  LDR             R0, =(aEe - 0x2501D0); "(EE)"
2501C8:  LDR             R1, =(aGethrtf_0 - 0x2501D2); "GetHrtf"
2501CA:  LDR             R2, =(aIncompatibleFo - 0x2501D6); "Incompatible format: %s %uhz\n"
2501CC:  ADD             R0, PC; "(EE)"
2501CE:  ADD             R1, PC; "GetHrtf"
2501D0:  STR             R6, [SP,#0x10E0+var_10E0]
2501D2:  ADD             R2, PC; "Incompatible format: %s %uhz\n"
2501D4:  BLX             j_al_print
2501D8:  MOVS            R4, #0
2501DA:  LDR             R0, =(__stack_chk_guard_ptr - 0x2501E4)
2501DC:  LDR.W           R1, [R7,#var_24]
2501E0:  ADD             R0, PC; __stack_chk_guard_ptr
2501E2:  LDR             R0, [R0]; __stack_chk_guard
2501E4:  LDR             R0, [R0]
2501E6:  SUBS            R0, R0, R1
2501E8:  ITTTT EQ
2501EA:  MOVEQ           R0, R4
2501EC:  ADDEQ.W         SP, SP, #0x10C0
2501F0:  ADDEQ           SP, SP, #4
2501F2:  POPEQ.W         {R8-R11}
2501F6:  IT EQ
2501F8:  POPEQ           {R4-R7,PC}
2501FA:  BLX             __stack_chk_fail
2501FE:  LDR             R0, [SP,#0x10E0+var_1068]
250200:  STR             R0, [R4]
250202:  LDR             R0, [SP,#0x10E0+var_1084]
250204:  STR             R0, [R4,#4]
250206:  LDR             R0, [SP,#0x10E0+var_10C8]
250208:  LDR             R1, [SP,#0x10E0+p]
25020A:  STRB            R0, [R4,#8]
25020C:  MOVS            R0, #0
25020E:  STR             R1, [R4,#0xC]
250210:  LDR             R1, [SP,#0x10E0+var_1048]
250212:  STR             R1, [R4,#0x10]
250214:  LDR             R1, [SP,#0x10E0+var_1074]
250216:  STR             R1, [R4,#0x14]
250218:  LDR             R1, [SP,#0x10E0+var_10CC]
25021A:  STRD.W          R1, R0, [R4,#0x18]
25021E:  MOV             R0, R5; stream
250220:  BLX             fclose
250224:  LDR             R0, =(LogLevel_ptr - 0x25022C)
250226:  LDR             R1, =(dword_6D6848 - 0x25022E)
250228:  ADD             R0, PC; LogLevel_ptr
25022A:  ADD             R1, PC; dword_6D6848
25022C:  LDR             R0, [R0]; LogLevel
25022E:  LDR             R2, [R1]
250230:  STR             R2, [R4,#0x1C]
250232:  LDR             R0, [R0]
250234:  STR             R4, [R1]
250236:  CMP             R0, #3
250238:  BCC             loc_2501DA
25023A:  LDR             R0, =(aIi - 0x250244); "(II)"
25023C:  LDR             R2, =(aLoadedHrtfSupp - 0x250248); "Loaded HRTF support for format: %s %uhz"...
25023E:  LDR             R3, =(aStereo_0 - 0x25024C); "Stereo"
250240:  ADD             R0, PC; "(II)"
250242:  LDR             R1, [R4]
250244:  ADD             R2, PC; "Loaded HRTF support for format: %s %uhz"...
250246:  STR             R1, [SP,#0x10E0+var_10E0]
250248:  ADD             R3, PC; "Stereo"
25024A:  ADR             R1, aLoadhrtf; "LoadHrtf"
25024C:  BLX             j_al_print
250250:  B               loc_2501DA
