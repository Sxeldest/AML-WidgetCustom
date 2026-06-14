; =========================================================
; Game Engine Function: sub_1246CC
; Address            : 0x1246CC - 0x12497E
; =========================================================

1246CC:  PUSH            {R4-R7,LR}
1246CE:  ADD             R7, SP, #0xC
1246D0:  PUSH.W          {R8-R11}
1246D4:  SUB             SP, SP, #0x34
1246D6:  MOV             R9, R1
1246D8:  LSLS            R4, R2, #6
1246DA:  RSB.W           R6, R9, R9,LSL#3
1246DE:  MOV.W           R10, #0x58 ; 'X'
1246E2:  LDR             R1, [R7,#arg_0]
1246E4:  MOV             R8, R3
1246E6:  ADD.W           R0, R4, R6,LSL#5
1246EA:  STR             R2, [SP,#0x50+var_24]
1246EC:  MLA.W           R0, R3, R10, R0
1246F0:  STR             R1, [SP,#0x50+var_20]
1246F2:  RSB.W           R1, R1, R1,LSL#4
1246F6:  ADD.W           R0, R0, R1,LSL#2
1246FA:  ADD.W           R5, R0, #0x14
1246FE:  MOV             R0, R5; unsigned int
124700:  BLX             j__Znaj; operator new[](uint)
124704:  MOV             R1, R5; n
124706:  STR             R6, [SP,#0x50+var_34]
124708:  MUL.W           R11, R8, R10
12470C:  LSLS            R6, R6, #5
12470E:  STR             R0, [SP,#0x50+var_28]
124710:  BLX             sub_22178C
124714:  LDR             R3, [SP,#0x50+var_28]
124716:  LDR             R5, =(dword_263C44 - 0x124724)
124718:  ADD.W           R0, R3, #0x14; dest
12471C:  ADD.W           R10, R0, R6
124720:  ADD             R5, PC; dword_263C44
124722:  ADD.W           R2, R10, R4
124726:  STR             R2, [SP,#0x50+dest]
124728:  ADD             R2, R11
12472A:  STR             R2, [SP,#0x50+var_3C]
12472C:  LDR             R1, [R5]
12472E:  LDR             R4, =(dword_238E90 - 0x12473A)
124730:  LDR             R6, =(dword_238E94 - 0x12473C)
124732:  CMP             R1, #0
124734:  LDR             R2, =(dword_238E98 - 0x12473E)
124736:  ADD             R4, PC; dword_238E90
124738:  ADD             R6, PC; dword_238E94
12473A:  ADD             R2, PC; dword_238E98
12473C:  STR             R2, [SP,#0x50+var_30]
12473E:  LDR             R2, =(dword_238E9C - 0x124744)
124740:  ADD             R2, PC; dword_238E9C
124742:  MOV             R11, R2
124744:  LDR             R2, =(off_23494C - 0x12474C)
124746:  STR             R5, [SP,#0x50+var_2C]
124748:  ADD             R2, PC; off_23494C
12474A:  STRD.W          R6, R4, [SP,#0x50+var_44]
12474E:  STRD.W          R2, R11, [SP,#0x50+var_4C]
124752:  BEQ             loc_1247DC
124754:  MOV             R2, R1
124756:  LDR             R4, [R4]
124758:  VLD1.8          {D16-D17}, [R2]!
12475C:  ADD.W           R5, R1, #0x14
124760:  CMP             R4, R9
124762:  LDR             R2, [R2]
124764:  MOV             R1, R5; src
124766:  VST1.8          {D16-D17}, [R3]!
12476A:  STR             R2, [R3]
12476C:  MOV             R2, R9
12476E:  IT LT
124770:  MOVLT           R2, R4
124772:  RSB.W           R2, R2, R2,LSL#3
124776:  LSLS            R2, R2, #5; n
124778:  BLX             j_memcpy
12477C:  RSB.W           R1, R4, R4,LSL#3
124780:  LDR             R0, [R6]
124782:  LDR             R2, [SP,#0x50+var_24]
124784:  ADD.W           R1, R5, R1,LSL#5; src
124788:  CMP             R0, R2
12478A:  IT GE
12478C:  MOVGE           R0, R2
12478E:  LSLS            R2, R0, #6; n
124790:  MOV             R0, R10; dest
124792:  BLX             j_memcpy
124796:  BL              sub_125974
12479A:  LDR             R4, [SP,#0x50+var_30]
12479C:  MOV             R1, R0; src
12479E:  MOVS            R2, #0x58 ; 'X'
1247A0:  LDR             R0, [R4]
1247A2:  CMP             R0, R8
1247A4:  IT GE
1247A6:  MOVGE           R0, R8
1247A8:  MULS            R2, R0; n
1247AA:  LDR             R0, [SP,#0x50+dest]; dest
1247AC:  BLX             j_memcpy
1247B0:  BL              sub_1259CC
1247B4:  MOV             R1, R0; src
1247B6:  LDR.W           R0, [R11]
1247BA:  LDR             R6, [SP,#0x50+var_20]
1247BC:  CMP             R0, R6
1247BE:  IT GE
1247C0:  MOVGE           R0, R6
1247C2:  RSB.W           R0, R0, R0,LSL#4
1247C6:  LSLS            R2, R0, #2; n
1247C8:  LDR             R0, [SP,#0x50+var_3C]; dest
1247CA:  BLX             j_memcpy
1247CE:  LDR             R0, [SP,#0x50+var_2C]
1247D0:  LDR             R0, [R0]; void *
1247D2:  CMP             R0, #0
1247D4:  BEQ             loc_124870
1247D6:  BLX             j__ZdaPv; operator delete[](void *)
1247DA:  B               loc_124870
1247DC:  LDR             R1, [R2]; dword_23DF24
1247DE:  MOV             R2, R3
1247E0:  CMP.W           R9, #0xD2
1247E4:  LDR             R4, [R1]
1247E6:  MOV             R1, #0xA066B8
1247EE:  ADD             R1, R4
1247F0:  VLD1.8          {D16-D17}, [R1]!
1247F4:  VST1.8          {D16-D17}, [R2]!
1247F8:  LDR             R1, [R1]
1247FA:  STR             R1, [R2]
1247FC:  MOV             R2, R9
1247FE:  MOVW            R1, #0x66CC
124802:  IT GE
124804:  MOVGE           R2, #0xD2
124806:  MOVT            R1, #0xA0
12480A:  RSB.W           R2, R2, R2,LSL#3
12480E:  ADD             R1, R4; src
124810:  LSLS            R2, R2, #5; n
124812:  BLX             j_memcpy
124816:  MOV             R0, #0xA11E8C
12481E:  ADDS            R1, R4, R0; src
124820:  LDR             R0, [SP,#0x50+var_24]
124822:  CMP             R0, #0xD
124824:  IT GE
124826:  MOVGE           R0, #0xD
124828:  LSLS            R2, R0, #6; n
12482A:  MOV             R0, R10; dest
12482C:  BLX             j_memcpy
124830:  MOV             R0, R8
124832:  MOVS            R1, #0x58 ; 'X'
124834:  CMP.W           R8, #0x18
124838:  IT GE
12483A:  MOVGE           R0, #0x18
12483C:  MUL.W           R2, R0, R1; n
124840:  MOV             R0, #0xA121CC
124848:  ADDS            R1, R4, R0; src
12484A:  LDR             R0, [SP,#0x50+dest]; dest
12484C:  BLX             j_memcpy
124850:  LDR             R6, [SP,#0x50+var_20]
124852:  MOV             R0, #0xA12A0C
12485A:  ADDS            R1, R4, R0; src
12485C:  CMP             R6, #0xC
12485E:  MOV             R0, R6
124860:  IT GE
124862:  MOVGE           R0, #0xC
124864:  RSB.W           R0, R0, R0,LSL#4
124868:  LSLS            R2, R0, #2; n
12486A:  LDR             R0, [SP,#0x50+var_3C]; dest
12486C:  BLX             j_memcpy
124870:  LDR             R0, [SP,#0x50+var_34]
124872:  LSLS            R5, R0, #1
124874:  MOV             R0, R5; unsigned int
124876:  BLX             j__Znaj; operator new[](uint)
12487A:  MOV             R1, R5; n
12487C:  MOV             R10, R0
12487E:  BLX             sub_22178C
124882:  LDR             R0, =(dword_263C48 - 0x124888)
124884:  ADD             R0, PC; dword_263C48
124886:  STR             R0, [SP,#0x50+var_34]
124888:  LDR.W           R11, [SP,#0x50+var_40]
12488C:  LDR             R5, [R0]
12488E:  STR.W           R8, [SP,#0x50+var_50]
124892:  CBZ             R5, loc_1248BA
124894:  LDR.W           R0, [R11]
124898:  MOV             R1, R5; src
12489A:  CMP             R0, R9
12489C:  IT GE
12489E:  MOVGE           R0, R9
1248A0:  RSB.W           R0, R0, R0,LSL#3
1248A4:  LSLS            R2, R0, #1; n
1248A6:  MOV             R0, R10; dest
1248A8:  BLX             j_memcpy
1248AC:  MOV             R0, R5; void *
1248AE:  BLX             j__ZdaPv; operator delete[](void *)
1248B2:  LDR             R4, [SP,#0x50+var_4C]
1248B4:  LDR             R0, [R4]
1248B6:  LDR             R5, [R0]
1248B8:  B               loc_1248E2
1248BA:  LDR             R4, [SP,#0x50+var_4C]
1248BC:  CMP.W           R9, #0xD2
1248C0:  LDR             R0, [R4]
1248C2:  LDR             R5, [R0]
1248C4:  MOV             R0, #0x6B06AC
1248CC:  ADD.W           R1, R5, R0; src
1248D0:  MOV             R0, R9
1248D2:  IT GE
1248D4:  MOVGE           R0, #0xD2
1248D6:  RSB.W           R0, R0, R0,LSL#3
1248DA:  LSLS            R2, R0, #1; n
1248DC:  MOV             R0, R10; dest
1248DE:  BLX             j_memcpy
1248E2:  MOV             R6, #0x6777C8
1248EA:  ADDS            R0, R5, R6
1248EC:  BL              sub_1641C4
1248F0:  LDR             R5, [R4]
1248F2:  MOVW            R4, #0x94B4
1248F6:  LDR.W           R8, [SP,#0x50+var_28]
1248FA:  MOVT            R4, #0x67 ; 'g'
1248FE:  LDR             R0, [R5]
124900:  STR.W           R8, [R0,R6]
124904:  LDR             R0, [R5]
124906:  ADD             R0, R4
124908:  BL              sub_1641C4
12490C:  LDR             R0, [R5]
12490E:  MOV             R3, R9
124910:  STR.W           R10, [R0,R4]
124914:  LDR             R5, =(aAxl - 0x12491C); "AXL" ...
124916:  LDR             R0, [SP,#0x50+var_2C]
124918:  ADD             R5, PC; "AXL"
12491A:  STR.W           R8, [R0]
12491E:  MOV             R1, R5; tag
124920:  LDR             R2, =(aChandlinghookN - 0x12492A); "CHandlingHook: New entries count - %d" ...
124922:  LDR             R0, [SP,#0x50+var_34]
124924:  LDR             R6, [SP,#0x50+var_24]
124926:  ADD             R2, PC; "CHandlingHook: New entries count - %d"
124928:  LDR             R4, [SP,#0x50+var_50]
12492A:  STR.W           R10, [R0]
12492E:  LDR             R0, [SP,#0x50+var_44]
124930:  LDR.W           R8, [SP,#0x50+var_20]
124934:  STR.W           R9, [R11]
124938:  STR             R6, [R0]
12493A:  LDR             R0, [SP,#0x50+var_30]
12493C:  STR             R4, [R0]
12493E:  LDR             R0, [SP,#0x50+var_48]
124940:  STR.W           R8, [R0]
124944:  MOVS            R0, #4; prio
124946:  BLX             __android_log_print
12494A:  LDR             R2, =(aChandlinghookN_0 - 0x124956); "CHandlingHook: New bikes count - %d" ...
12494C:  MOVS            R0, #4; prio
12494E:  MOV             R1, R5; tag
124950:  MOV             R3, R6
124952:  ADD             R2, PC; "CHandlingHook: New bikes count - %d"
124954:  BLX             __android_log_print
124958:  LDR             R2, =(aChandlinghookN_1 - 0x124964); "CHandlingHook: New flyings count - %d" ...
12495A:  MOVS            R0, #4; prio
12495C:  MOV             R1, R5; tag
12495E:  MOV             R3, R4
124960:  ADD             R2, PC; "CHandlingHook: New flyings count - %d"
124962:  BLX             __android_log_print
124966:  LDR             R2, =(aChandlinghookN_2 - 0x124972); "CHandlingHook: New boats count - %d" ...
124968:  MOVS            R0, #4
12496A:  MOV             R1, R5
12496C:  MOV             R3, R8
12496E:  ADD             R2, PC; "CHandlingHook: New boats count - %d"
124970:  ADD             SP, SP, #0x34 ; '4'
124972:  POP.W           {R8-R11}
124976:  POP.W           {R4-R7,LR}
12497A:  B.W             sub_2242C8
