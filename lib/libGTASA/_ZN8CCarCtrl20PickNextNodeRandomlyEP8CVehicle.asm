; =========================================================
; Game Engine Function: _ZN8CCarCtrl20PickNextNodeRandomlyEP8CVehicle
; Address            : 0x2EA6E4 - 0x2EB346
; =========================================================

2EA6E4:  PUSH            {R4-R7,LR}
2EA6E6:  ADD             R7, SP, #0xC
2EA6E8:  PUSH.W          {R8-R11}
2EA6EC:  SUB             SP, SP, #4
2EA6EE:  VPUSH           {D8-D15}
2EA6F2:  SUB             SP, SP, #0x88
2EA6F4:  MOV             R4, R0
2EA6F6:  LDRH.W          R0, [R4,#0x462]; seed
2EA6FA:  CMP             R0, #0
2EA6FC:  IT NE
2EA6FE:  BLXNE           srand
2EA702:  LDR.W           R0, =(ThePaths_ptr - 0x2EA70E)
2EA706:  LDR.W           R1, [R4,#0x394]
2EA70A:  ADD             R0, PC; ThePaths_ptr
2EA70C:  STR             R1, [SP,#0xE8+var_8C]
2EA70E:  LDR             R0, [R0]; ThePaths
2EA710:  UXTH            R1, R1
2EA712:  STR             R1, [SP,#0xE8+var_B4]
2EA714:  ADD.W           R10, R0, R1,LSL#2
2EA718:  LDR.W           R0, [R10,#0x804]
2EA71C:  CMP             R0, #0
2EA71E:  BEQ.W           loc_2EB338
2EA722:  LDR.W           R0, =(ThePaths_ptr - 0x2EA72E)
2EA726:  LDR.W           R11, [R4,#0x398]
2EA72A:  ADD             R0, PC; ThePaths_ptr
2EA72C:  LDR             R0, [R0]; ThePaths
2EA72E:  UXTH.W          R1, R11
2EA732:  STR             R1, [SP,#0xE8+var_A8]
2EA734:  ADD.W           R9, R0, R1,LSL#2
2EA738:  LDR.W           R1, [R9,#0x804]
2EA73C:  CMP             R1, #0
2EA73E:  BEQ.W           loc_2EB338
2EA742:  LDR.W           R2, =(ThePaths_ptr - 0x2EA74E)
2EA746:  LDRH.W          R0, [R4,#0x3AA]
2EA74A:  ADD             R2, PC; ThePaths_ptr
2EA74C:  LDR             R3, [R2]; ThePaths
2EA74E:  LSRS            R2, R0, #0xA
2EA750:  ADD.W           R3, R3, R2,LSL#2
2EA754:  LDR.W           R3, [R3,#0x804]
2EA758:  CMP             R3, #0
2EA75A:  BEQ.W           loc_2EB338
2EA75E:  MOV.W           R6, R11,LSR#16
2EA762:  LDR.W           R3, =(ThePaths_ptr - 0x2EA772)
2EA766:  STR             R6, [SP,#0xE8+var_90]
2EA768:  LSLS            R6, R6, #3
2EA76A:  SUB.W           R6, R6, R11,LSR#16
2EA76E:  ADD             R3, PC; ThePaths_ptr
2EA770:  BFC.W           R0, #0xA, #0x16
2EA774:  ADD.W           R1, R1, R6,LSL#2
2EA778:  LDR             R3, [R3]; ThePaths
2EA77A:  RSB.W           R0, R0, R0,LSL#3
2EA77E:  LDRH            R1, [R1,#0x18]
2EA780:  AND.W           R1, R1, #0xF
2EA784:  STR             R1, [SP,#0xE8+var_88]
2EA786:  ADD.W           R1, R3, R2,LSL#2
2EA78A:  LDR             R3, [SP,#0xE8+var_A8]
2EA78C:  LDR.W           R1, [R1,#0x924]
2EA790:  ADD.W           R2, R1, R0,LSL#1
2EA794:  MOVS            R0, #0
2EA796:  LDRH            R1, [R2,#4]
2EA798:  CMP             R1, R3
2EA79A:  MOV.W           R1, #0
2EA79E:  BNE             loc_2EA7AE
2EA7A0:  LDRH            R1, [R2,#6]
2EA7A2:  LDR             R3, [SP,#0xE8+var_90]
2EA7A4:  CMP             R1, R3
2EA7A6:  MOV.W           R1, #0
2EA7AA:  IT EQ
2EA7AC:  MOVEQ           R1, #1
2EA7AE:  ADD.W           R3, R4, #0x394
2EA7B2:  STR             R3, [SP,#0xE8+var_94]
2EA7B4:  LDRH.W          R8, [R2,#0xB]
2EA7B8:  CMP             R1, #0
2EA7BA:  LDR             R2, [SP,#0xE8+var_8C]
2EA7BC:  MOV.W           R5, #0
2EA7C0:  LDRSH.W         R12, [R4,#0x26]
2EA7C4:  MOV             R6, R8
2EA7C6:  LDRSB.W         R3, [R4,#0x3BC]
2EA7CA:  STR.W           R2, [R4,#0x39C]
2EA7CE:  MOV.W           R2, #0
2EA7D2:  STR.W           R11, [R4,#0x394]
2EA7D6:  IT EQ
2EA7D8:  LSREQ           R6, R6, #3
2EA7DA:  AND.W           R6, R6, #7
2EA7DE:  CMP             R6, #3
2EA7E0:  SUB.W           R6, R6, #1
2EA7E4:  IT CC
2EA7E6:  MOVCC           R5, #1
2EA7E8:  CMP             R3, #0
2EA7EA:  IT EQ
2EA7EC:  MOVEQ           R2, #4
2EA7EE:  CMP             R6, R3
2EA7F0:  IT EQ
2EA7F2:  ORREQ.W         R2, R2, #2
2EA7F6:  MOVS            R6, #7
2EA7F8:  CMP             R2, #0
2EA7FA:  IT EQ
2EA7FC:  MOVEQ           R0, #1
2EA7FE:  CMP             R1, #0
2EA800:  ORR.W           R0, R0, R5
2EA804:  ORR.W           R0, R0, R2
2EA808:  STR             R0, [SP,#0xE8+var_BC]
2EA80A:  SUBW            R0, R12, #0x193; switch 53 cases
2EA80E:  IT NE
2EA810:  MOVNE           R6, #0x38 ; '8'
2EA812:  CMP             R0, #0x34 ; '4'
2EA814:  STR             R4, [SP,#0xE8+var_80]
2EA816:  BHI             def_2EA818; jumptable 002EA818 default case
2EA818:  TBB.W           [PC,R0]; switch jump
2EA81C:  DCB 0x26; jump table for switch statement
2EA81D:  DCB 0x28
2EA81E:  DCB 0x28
2EA81F:  DCB 0x26
2EA820:  DCB 0x28
2EA821:  DCB 0x28
2EA822:  DCB 0x28
2EA823:  DCB 0x28
2EA824:  DCB 0x28
2EA825:  DCB 0x28
2EA826:  DCB 0x28
2EA827:  DCB 0x28
2EA828:  DCB 0x28
2EA829:  DCB 0x28
2EA82A:  DCB 0x28
2EA82B:  DCB 0x28
2EA82C:  DCB 0x28
2EA82D:  DCB 0x28
2EA82E:  DCB 0x28
2EA82F:  DCB 0x28
2EA830:  DCB 0x28
2EA831:  DCB 0x28
2EA832:  DCB 0x28
2EA833:  DCB 0x28
2EA834:  DCB 0x28
2EA835:  DCB 0x28
2EA836:  DCB 0x28
2EA837:  DCB 0x28
2EA838:  DCB 0x26
2EA839:  DCB 0x28
2EA83A:  DCB 0x28
2EA83B:  DCB 0x28
2EA83C:  DCB 0x28
2EA83D:  DCB 0x28
2EA83E:  DCB 0x26
2EA83F:  DCB 0x28
2EA840:  DCB 0x28
2EA841:  DCB 0x28
2EA842:  DCB 0x28
2EA843:  DCB 0x28
2EA844:  DCB 0x26
2EA845:  DCB 0x28
2EA846:  DCB 0x28
2EA847:  DCB 0x28
2EA848:  DCB 0x28
2EA849:  DCB 0x28
2EA84A:  DCB 0x28
2EA84B:  DCB 0x28
2EA84C:  DCB 0x28
2EA84D:  DCB 0x28
2EA84E:  DCB 0x28
2EA84F:  DCB 0x28
2EA850:  DCB 0x26
2EA851:  ALIGN 2
2EA852:  SUBW            R0, R12, #0x202; jumptable 002EA818 default case
2EA856:  CMP             R0, #0xA
2EA858:  BHI             loc_2EA86C; jumptable 002EA818 cases 404,405,407-430,432-436,438-442,444-454
2EA85A:  MOVS            R1, #1
2EA85C:  LSL.W           R0, R1, R0
2EA860:  MOVW            R1, #0x403
2EA864:  TST             R0, R1
2EA866:  BEQ             loc_2EA86C; jumptable 002EA818 cases 404,405,407-430,432-436,438-442,444-454
2EA868:  MOVS            R0, #1; jumptable 002EA818 cases 403,406,431,437,443,455
2EA86A:  STR             R0, [SP,#0xE8+var_BC]
2EA86C:  LDR             R0, [SP,#0xE8+var_8C]; jumptable 002EA818 cases 404,405,407-430,432-436,438-442,444-454
2EA86E:  LSRS            R0, R0, #0x10
2EA870:  STR             R0, [SP,#0xE8+var_C4]
2EA872:  LDR.W           R0, =(SequenceElements_ptr - 0x2EA87A)
2EA876:  ADD             R0, PC; SequenceElements_ptr
2EA878:  LDR             R5, [R0]; SequenceElements
2EA87A:  LDR             R0, [SP,#0xE8+var_88]
2EA87C:  MOV             R4, R0
2EA87E:  STR             R4, [R5]
2EA880:  BLX             rand
2EA884:  LDR             R1, [R5]
2EA886:  BLX             __aeabi_idivmod
2EA88A:  LDR.W           R0, =(SequenceRandomOffset_ptr - 0x2EA896)
2EA88E:  LDR.W           R2, =(bSequenceOtherWay_ptr - 0x2EA898)
2EA892:  ADD             R0, PC; SequenceRandomOffset_ptr
2EA894:  ADD             R2, PC; bSequenceOtherWay_ptr
2EA896:  LDR             R0, [R0]; SequenceRandomOffset
2EA898:  LDR             R5, [R2]; bSequenceOtherWay
2EA89A:  STR             R1, [R0]
2EA89C:  BLX             rand
2EA8A0:  UBFX.W          R0, R0, #4, #1
2EA8A4:  CMP             R4, #0
2EA8A6:  STRB            R0, [R5]
2EA8A8:  BEQ.W           loc_2EAD58
2EA8AC:  ADDW            R1, R10, #0x804
2EA8B0:  STR             R1, [SP,#0xE8+var_DC]
2EA8B2:  ADDW            R1, R9, #0x804
2EA8B6:  STR             R1, [SP,#0xE8+var_84]
2EA8B8:  AND.W           R1, R8, R6
2EA8BC:  STR             R1, [SP,#0xE8+var_D8]
2EA8BE:  LDR.W           R1, =(ThePaths_ptr - 0x2EA8CC)
2EA8C2:  MOV.W           R8, #0
2EA8C6:  LDR             R2, [SP,#0xE8+var_A8]
2EA8C8:  ADD             R1, PC; ThePaths_ptr
2EA8CA:  STR.W           R11, [SP,#0xE8+var_C8]
2EA8CE:  MOV.W           R11, #1
2EA8D2:  LDR             R1, [R1]; ThePaths
2EA8D4:  ADD.W           R1, R1, R2,LSL#2
2EA8D8:  ADDW            R2, R1, #0xDA4
2EA8DC:  ADDW            R1, R1, #0xA44
2EA8E0:  STR             R1, [SP,#0xE8+var_98]
2EA8E2:  LDR.W           R1, =(SequenceRandomOffset_ptr - 0x2EA8EC)
2EA8E6:  STR             R2, [SP,#0xE8+var_AC]
2EA8E8:  ADD             R1, PC; SequenceRandomOffset_ptr
2EA8EA:  LDR             R1, [R1]; SequenceRandomOffset
2EA8EC:  STR             R1, [SP,#0xE8+var_9C]
2EA8EE:  LDR.W           R1, =(SequenceElements_ptr - 0x2EA8F6)
2EA8F2:  ADD             R1, PC; SequenceElements_ptr
2EA8F4:  LDR             R1, [R1]; SequenceElements
2EA8F6:  STR             R1, [SP,#0xE8+var_B8]
2EA8F8:  LDR.W           R1, =(ThePaths_ptr - 0x2EA900)
2EA8FC:  ADD             R1, PC; ThePaths_ptr
2EA8FE:  LDR             R1, [R1]; ThePaths
2EA900:  STR             R1, [SP,#0xE8+var_A0]
2EA902:  LDR.W           R1, =(bSequenceOtherWay_ptr - 0x2EA90A)
2EA906:  ADD             R1, PC; bSequenceOtherWay_ptr
2EA908:  LDR             R1, [R1]; bSequenceOtherWay
2EA90A:  STR             R1, [SP,#0xE8+var_A4]
2EA90C:  LDR.W           R1, =(ThePaths_ptr - 0x2EA914)
2EA910:  ADD             R1, PC; ThePaths_ptr
2EA912:  LDR             R1, [R1]; ThePaths
2EA914:  STR             R1, [SP,#0xE8+var_B0]
2EA916:  LDR.W           R1, =(ThePaths_ptr - 0x2EA91E)
2EA91A:  ADD             R1, PC; ThePaths_ptr
2EA91C:  LDR             R1, [R1]; ThePaths
2EA91E:  STR             R1, [SP,#0xE8+var_CC]
2EA920:  LDR.W           R1, =(ThePaths_ptr - 0x2EA928)
2EA924:  ADD             R1, PC; ThePaths_ptr
2EA926:  LDR             R1, [R1]; ThePaths
2EA928:  STR             R1, [SP,#0xE8+var_D0]
2EA92A:  LDR.W           R1, =(SequenceElements_ptr - 0x2EA932)
2EA92E:  ADD             R1, PC; SequenceElements_ptr
2EA930:  LDR             R4, [R1]; SequenceElements
2EA932:  STR             R4, [SP,#0xE8+var_D4]
2EA934:  B               loc_2EA942
2EA936:  LDR             R0, [SP,#0xE8+var_A4]
2EA938:  ADD.W           R11, R11, #1
2EA93C:  SUB.W           R8, R8, #1
2EA940:  LDRB            R0, [R0]
2EA942:  LDR             R1, [SP,#0xE8+var_9C]
2EA944:  LSLS            R0, R0, #0x18
2EA946:  LDR             R2, [R1]
2EA948:  BEQ             loc_2EA954
2EA94A:  ADD.W           R0, R11, R2
2EA94E:  LDR             R1, [R4]
2EA950:  SUBS            R0, #1
2EA952:  B               loc_2EA95C
2EA954:  LDR             R0, [SP,#0xE8+var_B8]
2EA956:  LDR             R1, [R0]
2EA958:  ADDS            R0, R2, R1
2EA95A:  ADD             R0, R8
2EA95C:  BLX             __aeabi_idivmod
2EA960:  LDR             R0, [SP,#0xE8+var_84]
2EA962:  MOV             R6, R1
2EA964:  LDR             R1, [SP,#0xE8+var_90]
2EA966:  LDR             R0, [R0]
2EA968:  RSB.W           R10, R1, R1,LSL#3
2EA96C:  LDR             R1, [SP,#0xE8+var_98]
2EA96E:  ADD.W           R0, R0, R10,LSL#2
2EA972:  LDR             R1, [R1]
2EA974:  LDRSH.W         R0, [R0,#0x10]
2EA978:  ADD             R0, R6
2EA97A:  LDR.W           R2, [R1,R0,LSL#2]
2EA97E:  LDR             R0, [SP,#0xE8+var_80]
2EA980:  STR.W           R2, [R0,#0x398]
2EA984:  UXTH            R0, R2
2EA986:  LDR             R1, [SP,#0xE8+var_A0]
2EA988:  ADD.W           R0, R1, R0,LSL#2
2EA98C:  LDR.W           R0, [R0,#0x804]
2EA990:  CMP             R0, #0
2EA992:  BEQ             loc_2EAA76
2EA994:  LDR             R0, [SP,#0xE8+var_94]
2EA996:  SUB.W           R3, R7, #-var_61
2EA99A:  LDR             R1, [R0]
2EA99C:  LDR             R0, [SP,#0xE8+var_8C]
2EA99E:  BLX             j__ZN8CCarCtrl17FindPathDirectionE12CNodeAddressS0_S0_Pb; CCarCtrl::FindPathDirection(CNodeAddress,CNodeAddress,CNodeAddress,bool *)
2EA9A2:  MOV             R9, R0
2EA9A4:  LDR             R0, [SP,#0xE8+var_84]
2EA9A6:  LDR             R1, [SP,#0xE8+var_AC]
2EA9A8:  LDR             R0, [R0]
2EA9AA:  LDR             R1, [R1]
2EA9AC:  ADD.W           R0, R0, R10,LSL#2
2EA9B0:  LDRSH.W         R0, [R0,#0x10]
2EA9B4:  ADD             R0, R6
2EA9B6:  LDRH.W          R5, [R1,R0,LSL#1]
2EA9BA:  LDR             R1, [SP,#0xE8+var_B0]
2EA9BC:  LSRS            R0, R5, #0xA
2EA9BE:  ADD.W           R1, R1, R0,LSL#2
2EA9C2:  LDR.W           R1, [R1,#0x804]
2EA9C6:  CMP             R1, #0
2EA9C8:  BEQ             loc_2EAA76
2EA9CA:  LDR             R1, [SP,#0xE8+var_80]
2EA9CC:  LDRB.W          R1, [R1,#0x3A]
2EA9D0:  AND.W           R1, R1, #0xF8
2EA9D4:  CMP             R1, #0x10
2EA9D6:  BNE             loc_2EA9E0
2EA9D8:  LDRB.W          R1, [R7,#var_61]
2EA9DC:  CMP             R1, #0
2EA9DE:  BNE             loc_2EAA76
2EA9E0:  LDR             R1, [SP,#0xE8+var_CC]
2EA9E2:  ADD.W           R0, R1, R0,LSL#2
2EA9E6:  MOV             R1, R5
2EA9E8:  BFC.W           R1, #0xA, #0x16
2EA9EC:  LDR.W           R2, [R0,#0x924]
2EA9F0:  RSB.W           R12, R1, R1,LSL#3
2EA9F4:  LDR             R0, [SP,#0xE8+var_A8]
2EA9F6:  ADD.W           R1, R2, R12,LSL#1
2EA9FA:  LDRH            R2, [R1,#4]
2EA9FC:  CMP             R2, R0
2EA9FE:  BNE             loc_2EAA1A
2EAA00:  LDRH            R2, [R1,#6]
2EAA02:  LDR             R0, [SP,#0xE8+var_90]
2EAA04:  CMP             R2, R0
2EAA06:  MOV.W           R0, #0x38 ; '8'
2EAA0A:  IT EQ
2EAA0C:  MOVEQ           R0, #7
2EAA0E:  MOV.W           R2, #7
2EAA12:  STR             R0, [SP,#0xE8+var_C0]
2EAA14:  IT EQ
2EAA16:  MOVEQ           R2, #0x38 ; '8'
2EAA18:  B               loc_2EAA20
2EAA1A:  MOVS            R0, #0x38 ; '8'
2EAA1C:  MOVS            R2, #7
2EAA1E:  STR             R0, [SP,#0xE8+var_C0]
2EAA20:  LDR             R0, [SP,#0xE8+var_80]; this
2EAA22:  LDR.W           R3, [R0,#0x398]; int
2EAA26:  UBFX.W          R6, R5, #0xA, #6
2EAA2A:  LDR             R4, [SP,#0xE8+var_D0]
2EAA2C:  LDRH.W          R1, [R1,#0xB]
2EAA30:  ADD.W           R6, R4, R6,LSL#2
2EAA34:  ANDS            R1, R2
2EAA36:  LDR.W           R6, [R6,#0x924]
2EAA3A:  LSLS            R1, R1, #0x10
2EAA3C:  ADD.W           R6, R6, R12,LSL#1
2EAA40:  MOV.W           R1, #0
2EAA44:  LDRH.W          R6, [R6,#0xB]
2EAA48:  IT EQ
2EAA4A:  MOVEQ           R1, #1
2EAA4C:  STR             R1, [SP,#0xE8+var_E8]; float
2EAA4E:  MOVS            R1, #0
2EAA50:  STR             R1, [SP,#0xE8+var_E4]; float
2EAA52:  LDR             R1, [SP,#0xE8+var_8C]; int
2EAA54:  LDR             R2, [SP,#0xE8+var_C8]; int
2EAA56:  BLX             j__ZN8CCarCtrl23IsThisAnAppropriateNodeEP8CVehicle12CNodeAddressS2_S2_bb; CCarCtrl::IsThisAnAppropriateNode(CVehicle *,CNodeAddress,CNodeAddress,CNodeAddress,bool,bool)
2EAA5A:  LDR             R1, [SP,#0xE8+var_BC]
2EAA5C:  LDR             R4, [SP,#0xE8+var_D4]
2EAA5E:  TST.W           R9, R1
2EAA62:  IT NE
2EAA64:  CMPNE           R0, #0
2EAA66:  BEQ             loc_2EAA76
2EAA68:  LDR             R0, [SP,#0xE8+var_C0]
2EAA6A:  LDR             R1, [SP,#0xE8+var_D8]
2EAA6C:  ANDS            R0, R6
2EAA6E:  ORRS            R0, R1
2EAA70:  LSLS            R0, R0, #0x10
2EAA72:  BNE.W           loc_2EAD64
2EAA76:  LDR             R0, [SP,#0xE8+var_88]
2EAA78:  CMP             R11, R0
2EAA7A:  BLT.W           loc_2EA936
2EAA7E:  LDR             R0, [SP,#0xE8+var_88]
2EAA80:  CMP             R0, #0
2EAA82:  BEQ.W           loc_2EAD58
2EAA86:  LDR.W           R0, =(ThePaths_ptr - 0x2EAA96)
2EAA8A:  MOVS            R4, #0
2EAA8C:  LDR             R1, [SP,#0xE8+var_A8]
2EAA8E:  MOV.W           R11, #0
2EAA92:  ADD             R0, PC; ThePaths_ptr
2EAA94:  LDR             R0, [R0]; ThePaths
2EAA96:  ADD.W           R0, R0, R1,LSL#2
2EAA9A:  ADDW            R1, R0, #0xDA4
2EAA9E:  ADDW            R0, R0, #0xA44
2EAAA2:  STR             R0, [SP,#0xE8+var_98]
2EAAA4:  LDR.W           R0, =(SequenceRandomOffset_ptr - 0x2EAAAE)
2EAAA8:  STR             R1, [SP,#0xE8+var_A0]
2EAAAA:  ADD             R0, PC; SequenceRandomOffset_ptr
2EAAAC:  LDR.W           R1, =(bSequenceOtherWay_ptr - 0x2EAAB6)
2EAAB0:  LDR             R0, [R0]; SequenceRandomOffset
2EAAB2:  ADD             R1, PC; bSequenceOtherWay_ptr
2EAAB4:  STR             R0, [SP,#0xE8+var_9C]
2EAAB6:  LDR.W           R0, =(SequenceElements_ptr - 0x2EAAC2)
2EAABA:  LDR.W           R8, [R1]; bSequenceOtherWay
2EAABE:  ADD             R0, PC; SequenceElements_ptr
2EAAC0:  LDR             R0, [R0]; SequenceElements
2EAAC2:  STR             R0, [SP,#0xE8+var_B8]
2EAAC4:  LDR.W           R0, =(ThePaths_ptr - 0x2EAACC)
2EAAC8:  ADD             R0, PC; ThePaths_ptr
2EAACA:  LDR.W           R9, [R0]; ThePaths
2EAACE:  LDR.W           R0, =(ThePaths_ptr - 0x2EAAD6)
2EAAD2:  ADD             R0, PC; ThePaths_ptr
2EAAD4:  LDR             R0, [R0]; ThePaths
2EAAD6:  STR             R0, [SP,#0xE8+var_A4]
2EAAD8:  LDR.W           R0, =(ThePaths_ptr - 0x2EAAE0)
2EAADC:  ADD             R0, PC; ThePaths_ptr
2EAADE:  LDR             R0, [R0]; ThePaths
2EAAE0:  STR             R0, [SP,#0xE8+var_B0]
2EAAE2:  LDR.W           R0, =(ThePaths_ptr - 0x2EAAEA)
2EAAE6:  ADD             R0, PC; ThePaths_ptr
2EAAE8:  LDR             R0, [R0]; ThePaths
2EAAEA:  STR             R0, [SP,#0xE8+var_BC]
2EAAEC:  LDR.W           R0, =(SequenceElements_ptr - 0x2EAAF4)
2EAAF0:  ADD             R0, PC; SequenceElements_ptr
2EAAF2:  LDR             R0, [R0]; SequenceElements
2EAAF4:  STR             R0, [SP,#0xE8+var_AC]
2EAAF6:  LDR             R0, [SP,#0xE8+var_9C]
2EAAF8:  LDRB.W          R1, [R8]
2EAAFC:  LDR             R0, [R0]
2EAAFE:  CBZ             R1, loc_2EAB08
2EAB00:  LDR             R1, [SP,#0xE8+var_AC]
2EAB02:  ADD             R0, R11
2EAB04:  LDR             R1, [R1]
2EAB06:  B               loc_2EAB10
2EAB08:  LDR             R1, [SP,#0xE8+var_B8]
2EAB0A:  LDR             R1, [R1]
2EAB0C:  ADD             R0, R1
2EAB0E:  ADD             R0, R4
2EAB10:  BLX             __aeabi_idivmod
2EAB14:  LDR             R0, [SP,#0xE8+var_84]
2EAB16:  MOV             R6, R1
2EAB18:  LDR             R1, [SP,#0xE8+var_98]
2EAB1A:  LDR             R0, [R0]
2EAB1C:  LDR             R1, [R1]
2EAB1E:  ADD.W           R0, R0, R10,LSL#2
2EAB22:  LDRSH.W         R0, [R0,#0x10]
2EAB26:  ADD             R0, R6
2EAB28:  LDR.W           R2, [R1,R0,LSL#2]
2EAB2C:  LDR             R0, [SP,#0xE8+var_80]
2EAB2E:  STR.W           R2, [R0,#0x398]
2EAB32:  UXTH            R0, R2
2EAB34:  ADD.W           R0, R9, R0,LSL#2
2EAB38:  LDR.W           R0, [R0,#0x804]
2EAB3C:  CMP             R0, #0
2EAB3E:  BEQ             loc_2EAC02
2EAB40:  LDR             R0, [SP,#0xE8+var_94]
2EAB42:  SUB.W           R3, R7, #-var_61
2EAB46:  LDR             R1, [R0]
2EAB48:  LDR             R0, [SP,#0xE8+var_8C]
2EAB4A:  BLX             j__ZN8CCarCtrl17FindPathDirectionE12CNodeAddressS0_S0_Pb; CCarCtrl::FindPathDirection(CNodeAddress,CNodeAddress,CNodeAddress,bool *)
2EAB4E:  LDR             R0, [SP,#0xE8+var_84]
2EAB50:  LDR             R1, [SP,#0xE8+var_A0]
2EAB52:  LDR             R0, [R0]
2EAB54:  LDR             R1, [R1]
2EAB56:  ADD.W           R0, R0, R10,LSL#2
2EAB5A:  LDRSH.W         R0, [R0,#0x10]
2EAB5E:  ADD             R0, R6
2EAB60:  LDRH.W          R5, [R1,R0,LSL#1]
2EAB64:  LDR             R1, [SP,#0xE8+var_A4]
2EAB66:  LSRS            R0, R5, #0xA
2EAB68:  ADD.W           R1, R1, R0,LSL#2
2EAB6C:  LDR.W           R1, [R1,#0x804]
2EAB70:  CMP             R1, #0
2EAB72:  BEQ             loc_2EAC02
2EAB74:  LDR             R1, [SP,#0xE8+var_B0]
2EAB76:  LDR             R2, [SP,#0xE8+var_A8]
2EAB78:  ADD.W           R0, R1, R0,LSL#2
2EAB7C:  MOV             R1, R5
2EAB7E:  BFC.W           R1, #0xA, #0x16
2EAB82:  LDR.W           R0, [R0,#0x924]
2EAB86:  RSB.W           R1, R1, R1,LSL#3
2EAB8A:  ADD.W           R0, R0, R1,LSL#1
2EAB8E:  LDRH            R1, [R0,#4]
2EAB90:  CMP             R1, R2
2EAB92:  BNE             loc_2EABA4
2EAB94:  LDRH            R1, [R0,#6]
2EAB96:  LDR             R2, [SP,#0xE8+var_90]
2EAB98:  CMP             R1, R2
2EAB9A:  MOV.W           R1, #7
2EAB9E:  IT EQ
2EABA0:  MOVEQ           R1, #0x38 ; '8'
2EABA2:  B               loc_2EABA6
2EABA4:  MOVS            R1, #7
2EABA6:  LDR             R3, [SP,#0xE8+var_80]
2EABA8:  LDRH.W          R0, [R0,#0xB]
2EABAC:  ANDS            R0, R1
2EABAE:  LDRH.W          R2, [R3,#0x398]
2EABB2:  LDR             R1, [SP,#0xE8+var_B4]
2EABB4:  CMP             R2, R1
2EABB6:  BNE             loc_2EABC2
2EABB8:  LDRH.W          R1, [R3,#0x39A]
2EABBC:  LDR             R2, [SP,#0xE8+var_C4]
2EABBE:  CMP             R1, R2
2EABC0:  BEQ             loc_2EAC02
2EABC2:  LSLS            R0, R0, #0x10
2EABC4:  BEQ             loc_2EAC02
2EABC6:  LDR             R0, [SP,#0xE8+var_80]
2EABC8:  LDR             R2, [SP,#0xE8+var_BC]
2EABCA:  LDR.W           R0, [R0,#0x398]
2EABCE:  UXTH            R1, R0
2EABD0:  ADD.W           R1, R2, R1,LSL#2
2EABD4:  LSRS            R2, R0, #0x10
2EABD6:  LSLS            R2, R2, #3
2EABD8:  SUB.W           R0, R2, R0,LSR#16
2EABDC:  LDR.W           R1, [R1,#0x804]
2EABE0:  ADD.W           R0, R1, R0,LSL#2
2EABE4:  LDRH            R0, [R0,#0x18]
2EABE6:  LSLS            R0, R0, #0x1A
2EABE8:  BPL.W           loc_2EAD64
2EABEC:  LDR             R0, [SP,#0xE8+var_DC]
2EABEE:  LDR             R1, [SP,#0xE8+var_C4]
2EABF0:  LDR             R0, [R0]
2EABF2:  RSB.W           R1, R1, R1,LSL#3
2EABF6:  ADD.W           R0, R0, R1,LSL#2
2EABFA:  LDRH            R0, [R0,#0x18]
2EABFC:  LSLS            R0, R0, #0x1A
2EABFE:  BMI.W           loc_2EAD64
2EAC02:  LDR             R0, [SP,#0xE8+var_88]
2EAC04:  ADD.W           R11, R11, #1
2EAC08:  SUBS            R4, #1
2EAC0A:  CMP             R11, R0
2EAC0C:  BLT.W           loc_2EAAF6
2EAC10:  LDR             R0, [SP,#0xE8+var_88]
2EAC12:  CMP             R0, #0
2EAC14:  BEQ.W           loc_2EAD58
2EAC18:  LDR.W           R0, =(ThePaths_ptr - 0x2EAC28)
2EAC1C:  MOVS            R4, #0
2EAC1E:  LDR             R1, [SP,#0xE8+var_A8]
2EAC20:  MOV.W           R11, #0
2EAC24:  ADD             R0, PC; ThePaths_ptr
2EAC26:  LDR             R0, [R0]; ThePaths
2EAC28:  ADD.W           R0, R0, R1,LSL#2
2EAC2C:  ADDW            R1, R0, #0xDA4
2EAC30:  ADDW            R0, R0, #0xA44
2EAC34:  STR             R0, [SP,#0xE8+var_98]
2EAC36:  LDR.W           R0, =(SequenceRandomOffset_ptr - 0x2EAC40)
2EAC3A:  STR             R1, [SP,#0xE8+var_A0]
2EAC3C:  ADD             R0, PC; SequenceRandomOffset_ptr
2EAC3E:  LDR.W           R1, =(bSequenceOtherWay_ptr - 0x2EAC48)
2EAC42:  LDR             R0, [R0]; SequenceRandomOffset
2EAC44:  ADD             R1, PC; bSequenceOtherWay_ptr
2EAC46:  STR             R0, [SP,#0xE8+var_9C]
2EAC48:  LDR.W           R0, =(SequenceElements_ptr - 0x2EAC54)
2EAC4C:  LDR.W           R8, [R1]; bSequenceOtherWay
2EAC50:  ADD             R0, PC; SequenceElements_ptr
2EAC52:  LDR             R0, [R0]; SequenceElements
2EAC54:  STR             R0, [SP,#0xE8+var_B8]
2EAC56:  LDR.W           R0, =(ThePaths_ptr - 0x2EAC5E)
2EAC5A:  ADD             R0, PC; ThePaths_ptr
2EAC5C:  LDR.W           R9, [R0]; ThePaths
2EAC60:  LDR.W           R0, =(ThePaths_ptr - 0x2EAC68)
2EAC64:  ADD             R0, PC; ThePaths_ptr
2EAC66:  LDR             R0, [R0]; ThePaths
2EAC68:  STR             R0, [SP,#0xE8+var_A4]
2EAC6A:  LDR.W           R0, =(ThePaths_ptr - 0x2EAC72)
2EAC6E:  ADD             R0, PC; ThePaths_ptr
2EAC70:  LDR             R0, [R0]; ThePaths
2EAC72:  STR             R0, [SP,#0xE8+var_B0]
2EAC74:  LDR.W           R0, =(SequenceElements_ptr - 0x2EAC7C)
2EAC78:  ADD             R0, PC; SequenceElements_ptr
2EAC7A:  LDR             R0, [R0]; SequenceElements
2EAC7C:  STR             R0, [SP,#0xE8+var_AC]
2EAC7E:  LDR             R0, [SP,#0xE8+var_9C]
2EAC80:  LDRB.W          R1, [R8]
2EAC84:  LDR             R0, [R0]
2EAC86:  CBZ             R1, loc_2EAC90
2EAC88:  LDR             R1, [SP,#0xE8+var_AC]
2EAC8A:  ADD             R0, R11
2EAC8C:  LDR             R1, [R1]
2EAC8E:  B               loc_2EAC98
2EAC90:  LDR             R1, [SP,#0xE8+var_B8]
2EAC92:  LDR             R1, [R1]
2EAC94:  ADD             R0, R1
2EAC96:  ADD             R0, R4
2EAC98:  BLX             __aeabi_idivmod
2EAC9C:  LDR             R0, [SP,#0xE8+var_84]
2EAC9E:  MOV             R6, R1
2EACA0:  LDR             R1, [SP,#0xE8+var_98]
2EACA2:  LDR             R0, [R0]
2EACA4:  LDR             R1, [R1]
2EACA6:  ADD.W           R0, R0, R10,LSL#2
2EACAA:  LDRSH.W         R0, [R0,#0x10]
2EACAE:  ADD             R0, R6
2EACB0:  LDR.W           R2, [R1,R0,LSL#2]
2EACB4:  LDR             R0, [SP,#0xE8+var_80]
2EACB6:  STR.W           R2, [R0,#0x398]
2EACBA:  UXTH            R0, R2
2EACBC:  ADD.W           R0, R9, R0,LSL#2
2EACC0:  LDR.W           R0, [R0,#0x804]
2EACC4:  CMP             R0, #0
2EACC6:  BEQ             loc_2EAD4C
2EACC8:  LDR             R0, [SP,#0xE8+var_94]
2EACCA:  SUB.W           R3, R7, #-var_61
2EACCE:  LDR             R1, [R0]
2EACD0:  LDR             R0, [SP,#0xE8+var_8C]
2EACD2:  BLX             j__ZN8CCarCtrl17FindPathDirectionE12CNodeAddressS0_S0_Pb; CCarCtrl::FindPathDirection(CNodeAddress,CNodeAddress,CNodeAddress,bool *)
2EACD6:  LDR             R0, [SP,#0xE8+var_84]
2EACD8:  LDR             R1, [SP,#0xE8+var_A0]
2EACDA:  LDR             R0, [R0]
2EACDC:  LDR             R1, [R1]
2EACDE:  ADD.W           R0, R0, R10,LSL#2
2EACE2:  LDRSH.W         R0, [R0,#0x10]
2EACE6:  ADD             R0, R6
2EACE8:  LDRH.W          R5, [R1,R0,LSL#1]
2EACEC:  LDR             R1, [SP,#0xE8+var_A4]
2EACEE:  LSRS            R0, R5, #0xA
2EACF0:  ADD.W           R1, R1, R0,LSL#2
2EACF4:  LDR.W           R1, [R1,#0x804]
2EACF8:  CBZ             R1, loc_2EAD4C
2EACFA:  LDR             R1, [SP,#0xE8+var_B0]
2EACFC:  LDR             R2, [SP,#0xE8+var_A8]
2EACFE:  ADD.W           R0, R1, R0,LSL#2
2EAD02:  MOV             R1, R5
2EAD04:  BFC.W           R1, #0xA, #0x16
2EAD08:  LDR.W           R0, [R0,#0x924]
2EAD0C:  RSB.W           R1, R1, R1,LSL#3
2EAD10:  ADD.W           R0, R0, R1,LSL#1
2EAD14:  LDRH            R1, [R0,#4]
2EAD16:  CMP             R1, R2
2EAD18:  BNE             loc_2EAD2A
2EAD1A:  LDRH            R1, [R0,#6]
2EAD1C:  LDR             R2, [SP,#0xE8+var_90]
2EAD1E:  CMP             R1, R2
2EAD20:  MOV.W           R1, #7
2EAD24:  IT EQ
2EAD26:  MOVEQ           R1, #0x38 ; '8'
2EAD28:  B               loc_2EAD2C
2EAD2A:  MOVS            R1, #7
2EAD2C:  LDR             R3, [SP,#0xE8+var_80]
2EAD2E:  LDRH.W          R0, [R0,#0xB]
2EAD32:  ANDS            R0, R1
2EAD34:  LDRH.W          R2, [R3,#0x398]
2EAD38:  LDR             R1, [SP,#0xE8+var_B4]
2EAD3A:  CMP             R2, R1
2EAD3C:  BNE             loc_2EAD48
2EAD3E:  LDRH.W          R1, [R3,#0x39A]
2EAD42:  LDR             R2, [SP,#0xE8+var_C4]
2EAD44:  CMP             R1, R2
2EAD46:  BEQ             loc_2EAD4C
2EAD48:  LSLS            R0, R0, #0x10
2EAD4A:  BNE             loc_2EAD64
2EAD4C:  LDR             R0, [SP,#0xE8+var_88]
2EAD4E:  ADD.W           R11, R11, #1
2EAD52:  SUBS            R4, #1
2EAD54:  CMP             R11, R0
2EAD56:  BLT             loc_2EAC7E
2EAD58:  LDR             R0, [SP,#0xE8+var_80]
2EAD5A:  LDR             R1, [SP,#0xE8+var_8C]
2EAD5C:  LDRH.W          R5, [R0,#0x3AA]
2EAD60:  STR.W           R1, [R0,#0x398]
2EAD64:  MOV.W           R0, #0xFFFFFFFF; int
2EAD68:  MOVS            R1, #0; bool
2EAD6A:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
2EAD6E:  LDR.W           R11, [SP,#0xE8+var_80]
2EAD72:  CMP             R0, R11
2EAD74:  BEQ             loc_2EADBC
2EAD76:  LDRH.W          R0, [R11,#0x398]
2EAD7A:  LDR             R1, [SP,#0xE8+var_B4]
2EAD7C:  CMP             R0, R1
2EAD7E:  BNE             loc_2EADBC
2EAD80:  LDRH.W          R0, [R11,#0x39A]
2EAD84:  LDR             R1, [SP,#0xE8+var_C4]
2EAD86:  CMP             R0, R1
2EAD88:  BNE             loc_2EADBC
2EAD8A:  LDRB.W          R0, [R11,#0x3A]
2EAD8E:  AND.W           R1, R0, #0xF8
2EAD92:  CMP             R1, #0x18
2EAD94:  BEQ             loc_2EADBC
2EAD96:  LDR.W           R1, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x2EADA6)
2EAD9A:  MOVS            R2, #0
2EAD9C:  MOVS            R3, #3
2EAD9E:  STRB.W          R2, [R11,#0x3BF]
2EADA2:  ADD             R1, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
2EADA4:  BFI.W           R0, R3, #3, #0x1D
2EADA8:  STRB.W          R0, [R11,#0x3A]
2EADAC:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds ...
2EADAE:  LDR             R0, [R1]; CTimer::m_snTimeInMilliseconds
2EADB0:  STRB.W          R2, [R11,#0xBC]
2EADB4:  ADD.W           R1, R0, #0x7D0
2EADB8:  STRD.W          R1, R0, [R11,#0x3B0]
2EADBC:  LDR.W           R0, =(ThePaths_ptr - 0x2EADC8)
2EADC0:  LDR.W           R1, [R11,#0x398]
2EADC4:  ADD             R0, PC; ThePaths_ptr
2EADC6:  LDR             R0, [R0]; ThePaths
2EADC8:  UXTH            R2, R1
2EADCA:  ADD.W           R0, R0, R2,LSL#2
2EADCE:  LSRS            R2, R1, #0x10
2EADD0:  LSLS            R2, R2, #3
2EADD2:  SUB.W           R1, R2, R1,LSR#16
2EADD6:  LDR.W           R0, [R0,#0x804]
2EADDA:  MOVS            R2, #0xA
2EADDC:  ADD.W           R0, R0, R1,LSL#2
2EADE0:  LDRB            R1, [R0,#0x1A]
2EADE2:  UBFX.W          R0, R1, #4, #0xC
2EADE6:  LSLS            R1, R1, #0x10
2EADE8:  CMP.W           R2, R1,LSR#20
2EADEC:  BEQ             loc_2EAE18
2EADEE:  CMP             R0, #2
2EADF0:  BEQ             loc_2EAE48
2EADF2:  CMP             R0, #1
2EADF4:  BNE             loc_2EAE7E
2EADF6:  LDR.W           R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x2EAE06)
2EADFA:  MOVS            R2, #0
2EADFC:  LDRB.W          R1, [R11,#0x3A]
2EAE00:  MOVS            R3, #3
2EAE02:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
2EAE04:  STRB.W          R2, [R11,#0x3BF]
2EAE08:  BFI.W           R1, R3, #3, #0x1D
2EAE0C:  STRB.W          R1, [R11,#0x3A]
2EAE10:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
2EAE12:  MOV.W           R1, #0x2E00
2EAE16:  B               loc_2EAE68
2EAE18:  LDR.W           R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x2EAE2A)
2EAE1C:  MOVS            R1, #1
2EAE1E:  STRB.W          R1, [R11,#0x3BF]
2EAE22:  MOVW            R2, #0x2710
2EAE26:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
2EAE28:  LDRB.W          R1, [R11,#0x3A]
2EAE2C:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
2EAE2E:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
2EAE30:  ADD             R0, R2
2EAE32:  STR.W           R0, [R11,#0x3C0]
2EAE36:  AND.W           R0, R1, #0xF8
2EAE3A:  CMP             R0, #0x10
2EAE3C:  BNE             loc_2EAE7E
2EAE3E:  LDR             R0, [SP,#0xE8+var_94]; this
2EAE40:  MOVS            R1, #0; float
2EAE42:  BLX             j__ZN10CAutoPilot11ModifySpeedEf; CAutoPilot::ModifySpeed(float)
2EAE46:  B               loc_2EAE7E
2EAE48:  LDR.W           R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x2EAE58)
2EAE4C:  MOVS            R2, #0
2EAE4E:  LDRB.W          R1, [R11,#0x3A]
2EAE52:  MOVS            R3, #3
2EAE54:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
2EAE56:  STRB.W          R2, [R11,#0x3BF]
2EAE5A:  BFI.W           R1, R3, #3, #0x1D
2EAE5E:  STRB.W          R1, [R11,#0x3A]
2EAE62:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
2EAE64:  MOV.W           R1, #0x2D00
2EAE68:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
2EAE6A:  STRH.W          R1, [R11,#0x3BD]
2EAE6E:  ADD.W           R1, R0, #0x7D0
2EAE72:  STRB.W          R2, [R11,#0xBC]
2EAE76:  STR.W           R1, [R11,#0x3B0]
2EAE7A:  STR.W           R0, [R11,#0x3B4]
2EAE7E:  LDR             R1, [SP,#0xE8+var_94]
2EAE80:  MOV             R8, R5
2EAE82:  LDR.W           R0, =(ThePaths_ptr - 0x2EAE8A)
2EAE86:  ADD             R0, PC; ThePaths_ptr
2EAE88:  LDR             R1, [R1]
2EAE8A:  LDR             R0, [R0]; ThePaths
2EAE8C:  UXTH            R2, R1
2EAE8E:  ADD.W           R0, R0, R2,LSL#2
2EAE92:  LSRS            R2, R1, #0x10
2EAE94:  LSLS            R2, R2, #3
2EAE96:  SUB.W           R1, R2, R1,LSR#16
2EAE9A:  LDR.W           R0, [R0,#0x804]
2EAE9E:  ADD.W           R0, R0, R1,LSL#2
2EAEA2:  MOV.W           R1, #0xF00000
2EAEA6:  LDRB            R0, [R0,#0x1A]
2EAEA8:  AND.W           R0, R1, R0,LSL#16
2EAEAC:  CMP.W           R0, #0x900000
2EAEB0:  BNE             loc_2EAEE8
2EAEB2:  LDRB.W          R0, [R11,#0x4A8]
2EAEB6:  CMP             R0, #2
2EAEB8:  BEQ             loc_2EAEE8
2EAEBA:  LDR.W           R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x2EAECC)
2EAEBE:  MOVS            R1, #1
2EAEC0:  STRB.W          R1, [R11,#0x3BF]
2EAEC4:  MOVW            R2, #0x1194
2EAEC8:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
2EAECA:  LDRB.W          R1, [R11,#0x3A]
2EAECE:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
2EAED0:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
2EAED2:  ADD             R0, R2
2EAED4:  STR.W           R0, [R11,#0x3C0]
2EAED8:  AND.W           R0, R1, #0xF8
2EAEDC:  CMP             R0, #0x10
2EAEDE:  BNE             loc_2EAEE8
2EAEE0:  LDR             R0, [SP,#0xE8+var_94]; this
2EAEE2:  MOVS            R1, #0; float
2EAEE4:  BLX             j__ZN10CAutoPilot11ModifySpeedEf; CAutoPilot::ModifySpeed(float)
2EAEE8:  LDRH.W          R3, [R11,#0x3A8]
2EAEEC:  MOV             R2, R8
2EAEEE:  LDRB.W          R6, [R11,#0x3B9]
2EAEF2:  LDRH.W          R10, [R11,#0x3AA]
2EAEF6:  LDRB.W          LR, [R11,#0x3BA]
2EAEFA:  LDRB.W          R12, [R11,#0x3BC]
2EAEFE:  LDRD.W          R5, R4, [R11,#0x3A0]
2EAF02:  LDRH.W          R0, [R11,#0x398]
2EAF06:  STRH.W          R3, [R11,#0x3AC]
2EAF0A:  ADDS            R3, R4, R5
2EAF0C:  STRB.W          R6, [R11,#0x3B8]
2EAF10:  STRH.W          R10, [R11,#0x3A8]
2EAF14:  STRB.W          LR, [R11,#0x3B9]
2EAF18:  STRB.W          R12, [R11,#0x3BB]
2EAF1C:  STRH.W          R2, [R11,#0x3AA]
2EAF20:  STR.W           R3, [R11,#0x3A0]
2EAF24:  LDR             R1, [SP,#0xE8+var_A8]
2EAF26:  STR.W           R12, [SP,#0xE8+var_84]
2EAF2A:  CMP             R0, R1
2EAF2C:  BLS             loc_2EAF76
2EAF2E:  LDR.W           R0, =(ThePaths_ptr - 0x2EAF40)
2EAF32:  VMOV.F32        S16, #-1.0
2EAF36:  MOV.W           R9, R2,LSR#10
2EAF3A:  MOVS            R3, #0xFF
2EAF3C:  ADD             R0, PC; ThePaths_ptr
2EAF3E:  STRB.W          R3, [R11,#0x3BA]
2EAF42:  LDR             R0, [R0]; ThePaths
2EAF44:  ADD.W           R0, R0, R9,LSL#2
2EAF48:  LDR.W           R0, [R0,#0x804]
2EAF4C:  CBZ             R0, loc_2EAFCC
2EAF4E:  LDR.W           R0, =(ThePaths_ptr - 0x2EAF5C)
2EAF52:  MOV             R3, R2
2EAF54:  BFC.W           R3, #0xA, #0x16
2EAF58:  ADD             R0, PC; ThePaths_ptr
2EAF5A:  RSB.W           R3, R3, R3,LSL#3
2EAF5E:  LDR             R0, [R0]; ThePaths
2EAF60:  ADD.W           R0, R0, R9,LSL#2
2EAF64:  LDR.W           R0, [R0,#0x924]
2EAF68:  ADD.W           R0, R0, R3,LSL#1
2EAF6C:  LDRH.W          R0, [R0,#0xB]
2EAF70:  UBFX.W          R8, R0, #3, #3
2EAF74:  B               loc_2EAFD0
2EAF76:  BNE             loc_2EAF82
2EAF78:  LDRH.W          R0, [R11,#0x39A]
2EAF7C:  LDR             R1, [SP,#0xE8+var_90]
2EAF7E:  CMP             R0, R1
2EAF80:  BHI             loc_2EAF2E
2EAF82:  LDR.W           R0, =(ThePaths_ptr - 0x2EAF96)
2EAF86:  VMOV.F32        S16, #1.0
2EAF8A:  MOV.W           R9, R2,LSR#10
2EAF8E:  MOV.W           R8, #1
2EAF92:  ADD             R0, PC; ThePaths_ptr
2EAF94:  STRB.W          R8, [R11,#0x3BA]
2EAF98:  LDR             R0, [R0]; ThePaths
2EAF9A:  ADD.W           R0, R0, R9,LSL#2
2EAF9E:  LDR.W           R0, [R0,#0x804]
2EAFA2:  CBZ             R0, loc_2EAFD0
2EAFA4:  LDR.W           R0, =(ThePaths_ptr - 0x2EAFB2)
2EAFA8:  MOV             R3, R2
2EAFAA:  BFC.W           R3, #0xA, #0x16
2EAFAE:  ADD             R0, PC; ThePaths_ptr
2EAFB0:  RSB.W           R3, R3, R3,LSL#3
2EAFB4:  LDR             R0, [R0]; ThePaths
2EAFB6:  ADD.W           R0, R0, R9,LSL#2
2EAFBA:  LDR.W           R0, [R0,#0x924]
2EAFBE:  ADD.W           R0, R0, R3,LSL#1
2EAFC2:  LDRH.W          R0, [R0,#0xB]
2EAFC6:  AND.W           R8, R0, #7
2EAFCA:  B               loc_2EAFD0
2EAFCC:  MOV.W           R8, #1
2EAFD0:  LDR.W           R0, =(ThePaths_ptr - 0x2EAFE2)
2EAFD4:  MOV             R12, R2
2EAFD6:  LDR.W           R4, [R11,#0x398]
2EAFDA:  VMOV.F32        S18, #0.125
2EAFDE:  ADD             R0, PC; ThePaths_ptr
2EAFE0:  LDR.W           R6, [R11,#0x394]
2EAFE4:  BFC.W           R12, #0xA, #0x16
2EAFE8:  LDR             R0, [R0]; ThePaths
2EAFEA:  LSRS            R2, R4, #0x10
2EAFEC:  LSLS            R2, R2, #3
2EAFEE:  UXTH            R1, R4
2EAFF0:  ADDW            R3, R0, #0x804
2EAFF4:  SUB.W           R2, R2, R4,LSR#16
2EAFF8:  UXTH            R5, R6
2EAFFA:  ADDW            R0, R0, #0x924
2EAFFE:  LDR.W           R1, [R3,R1,LSL#2]
2EB002:  LDR.W           R5, [R3,R5,LSL#2]
2EB006:  ADD.W           R1, R1, R2,LSL#2
2EB00A:  LSRS            R2, R6, #0x10
2EB00C:  LSLS            R2, R2, #3
2EB00E:  LDRSH.W         R4, [R1,#8]
2EB012:  SUB.W           R2, R2, R6,LSR#16
2EB016:  LDRSH.W         R1, [R1,#0xA]
2EB01A:  ADD.W           R2, R5, R2,LSL#2
2EB01E:  VMOV            S6, R4
2EB022:  VMOV            S2, R1
2EB026:  UXTH.W          R4, R8
2EB02A:  LDRSH.W         R3, [R2,#8]
2EB02E:  LDRSH.W         R2, [R2,#0xA]
2EB032:  VMOV            S4, R3
2EB036:  RSB.W           R3, R12, R12,LSL#3
2EB03A:  VMOV            S0, R2
2EB03E:  VCVT.F32.S32    S0, S0
2EB042:  VCVT.F32.S32    S2, S2
2EB046:  VCVT.F32.S32    S4, S4
2EB04A:  VCVT.F32.S32    S6, S6
2EB04E:  LDR.W           R1, [R0,R9,LSL#2]
2EB052:  UBFX.W          R2, R10, #0xA, #6
2EB056:  ADD.W           R1, R1, R3,LSL#1
2EB05A:  BFC.W           R10, #0xA, #0x16
2EB05E:  LDR.W           R0, [R0,R2,LSL#2]
2EB062:  VMUL.F32        S0, S0, S18
2EB066:  VMUL.F32        S2, S2, S18
2EB06A:  LDRSB.W         R2, [R1,#9]
2EB06E:  VMUL.F32        S4, S4, S18
2EB072:  LDRSB.W         R1, [R1,#8]
2EB076:  VMUL.F32        S6, S6, S18
2EB07A:  VMOV            S8, R2
2EB07E:  RSB.W           R2, R10, R10,LSL#3
2EB082:  VCVT.F32.S32    S22, S8
2EB086:  ADD.W           R0, R0, R2,LSL#1
2EB08A:  VSUB.F32        S0, S2, S0
2EB08E:  VMOV            S2, R1
2EB092:  VCVT.F32.S32    S24, S2
2EB096:  LDRSB.W         R1, [R0,#9]
2EB09A:  VSUB.F32        S2, S6, S4
2EB09E:  LDRSB.W         R0, [R0,#8]
2EB0A2:  VMOV            S4, R1
2EB0A6:  VMUL.F32        S0, S0, S0
2EB0AA:  VCVT.F32.S32    S26, S4
2EB0AE:  VMOV            S4, R0
2EB0B2:  SXTB.W          R0, LR
2EB0B6:  VMUL.F32        S2, S2, S2
2EB0BA:  VCVT.F32.S32    S28, S4
2EB0BE:  VMOV            S4, R0
2EB0C2:  VCVT.F32.S32    S30, S4
2EB0C6:  VADD.F32        S0, S2, S0
2EB0CA:  VLDR            S2, =256.0
2EB0CE:  VCMPE.F32       S0, S2
2EB0D2:  VMRS            APSR_nzcv, FPSCR
2EB0D6:  BLE             loc_2EB112
2EB0D8:  LDRB.W          R0, [R11,#0x3E4]
2EB0DC:  SUBS            R0, #1
2EB0DE:  STRB.W          R0, [R11,#0x3E4]
2EB0E2:  TST.W           R0, #0xFF
2EB0E6:  LDR             R0, [SP,#0xE8+var_84]
2EB0E8:  BNE             loc_2EB114
2EB0EA:  BLX             rand
2EB0EE:  MOVS            R1, #1
2EB0F0:  BFI.W           R0, R1, #2, #0x1E
2EB0F4:  STRB.W          R0, [R11,#0x3E4]
2EB0F8:  BLX             rand
2EB0FC:  LDRB.W          R1, [R11,#0x3BC]
2EB100:  MOVS            R2, #0xFF
2EB102:  TST.W           R0, #1
2EB106:  IT NE
2EB108:  MOVNE           R2, #1
2EB10A:  ADDS            R0, R2, R1
2EB10C:  STRB.W          R0, [R11,#0x3BC]
2EB110:  B               loc_2EB114
2EB112:  LDR             R0, [SP,#0xE8+var_84]
2EB114:  SUBS            R1, R4, #1
2EB116:  SXTB            R0, R0
2EB118:  CMP             R1, R0
2EB11A:  LDRH.W          R3, [R11,#0x3DF]
2EB11E:  IT LE
2EB120:  MOVLE           R0, R1
2EB122:  MOVS            R2, #0
2EB124:  CMP             R0, #0
2EB126:  IT LE
2EB128:  MOVLE           R0, R2
2EB12A:  TST.W           R3, #8
2EB12E:  STRB.W          R0, [R11,#0x3BC]
2EB132:  BNE             loc_2EB140
2EB134:  LSLS            R0, R3, #0x1B
2EB136:  BPL             loc_2EB144
2EB138:  CMP             R1, #0
2EB13A:  IT LE
2EB13C:  MOVLE           R1, #0
2EB13E:  MOV             R2, R1
2EB140:  STRB.W          R2, [R11,#0x3BC]
2EB144:  LDRB.W          R0, [R11,#0x3A]
2EB148:  AND.W           R0, R0, #0xF8
2EB14C:  CMP             R0, #0x10
2EB14E:  BNE.W           loc_2EB338
2EB152:  LDR             R0, =(ThePaths_ptr - 0x2EB15C)
2EB154:  VLDR            S20, =0.01
2EB158:  ADD             R0, PC; ThePaths_ptr
2EB15A:  LDRH.W          R1, [R11,#0x3A8]
2EB15E:  VMUL.F32        S0, S24, S20
2EB162:  LDRSB.W         R5, [R11,#0x3BB]
2EB166:  LDR             R0, [R0]; ThePaths
2EB168:  VMUL.F32        S2, S22, S20
2EB16C:  VMUL.F32        S4, S26, S20
2EB170:  UBFX.W          R2, R1, #0xA, #6
2EB174:  VMUL.F32        S6, S28, S20
2EB178:  BFC.W           R1, #0xA, #0x16
2EB17C:  ADDW            R4, R0, #0x924
2EB180:  RSB.W           R1, R1, R1,LSL#3
2EB184:  LDR.W           R0, [R4,R2,LSL#2]
2EB188:  VMUL.F32        S24, S0, S16
2EB18C:  ADD.W           R0, R0, R1,LSL#1; this
2EB190:  VMUL.F32        S22, S2, S16
2EB194:  VMUL.F32        S26, S4, S30
2EB198:  VMUL.F32        S28, S6, S30
2EB19C:  BLX             j__ZN12CCarPathLink16OneWayLaneOffsetEv; CCarPathLink::OneWayLaneOffset(void)
2EB1A0:  VMOV            S0, R5
2EB1A4:  VMOV            S2, R0
2EB1A8:  VCVT.F32.S32    S0, S0
2EB1AC:  LDRH.W          R0, [R11,#0x3AA]
2EB1B0:  LDRSB.W         R5, [R11,#0x3BC]
2EB1B4:  UBFX.W          R1, R0, #0xA, #6
2EB1B8:  BFC.W           R0, #0xA, #0x16
2EB1BC:  LDR.W           R1, [R4,R1,LSL#2]
2EB1C0:  RSB.W           R0, R0, R0,LSL#3
2EB1C4:  ADD.W           R0, R1, R0,LSL#1; this
2EB1C8:  VADD.F32        S30, S2, S0
2EB1CC:  BLX             j__ZN12CCarPathLink16OneWayLaneOffsetEv; CCarPathLink::OneWayLaneOffset(void)
2EB1D0:  LDRH.W          R1, [R11,#0x3A8]
2EB1D4:  VMOV            S10, R5
2EB1D8:  VLDR            S16, [R11,#0x3CC]
2EB1DC:  VLDR            S0, =5.4
2EB1E0:  UBFX.W          R2, R1, #0xA, #6
2EB1E4:  BFC.W           R1, #0xA, #0x16
2EB1E8:  VMUL.F32        S2, S30, S0
2EB1EC:  LDR.W           R2, [R4,R2,LSL#2]
2EB1F0:  RSB.W           R3, R1, R1,LSL#3
2EB1F4:  ADD.W           R1, R2, R3,LSL#1
2EB1F8:  LDRSH.W         R2, [R2,R3,LSL#1]
2EB1FC:  LDRSH.W         R6, [R1,#2]
2EB200:  VMUL.F32        S8, S28, S2
2EB204:  VMOV            S4, R6
2EB208:  VMOV            S6, R2
2EB20C:  VCVT.F32.S32    S4, S4
2EB210:  VCVT.F32.S32    S6, S6
2EB214:  VMUL.F32        S2, S26, S2
2EB218:  VCVT.F32.S32    S10, S10
2EB21C:  VMUL.F32        S4, S4, S18
2EB220:  VMUL.F32        S6, S6, S18
2EB224:  VSUB.F32        S4, S4, S8
2EB228:  VADD.F32        S2, S2, S6
2EB22C:  VMOV            S6, R0
2EB230:  MOVS            R0, #0
2EB232:  STR             R0, [SP,#0xE8+var_68]
2EB234:  VADD.F32        S6, S6, S10
2EB238:  VSTR            S4, [SP,#0xE8+var_6C]
2EB23C:  VSTR            S2, [SP,#0xE8+var_70]
2EB240:  LDRH.W          R2, [R11,#0x3AA]
2EB244:  VMUL.F32        S0, S6, S0
2EB248:  UBFX.W          R3, R2, #0xA, #6
2EB24C:  BFC.W           R2, #0xA, #0x16
2EB250:  LDR.W           R3, [R4,R3,LSL#2]
2EB254:  RSB.W           R2, R2, R2,LSL#3
2EB258:  ADD.W           R6, R3, R2,LSL#1
2EB25C:  LDRSH.W         R2, [R3,R2,LSL#1]
2EB260:  LDRSH.W         R5, [R6,#2]
2EB264:  VMUL.F32        S6, S24, S0
2EB268:  VMUL.F32        S0, S22, S0
2EB26C:  VMOV            S2, R5
2EB270:  VMOV            S4, R2
2EB274:  VCVT.F32.S32    S2, S2
2EB278:  VCVT.F32.S32    S4, S4
2EB27C:  STR             R0, [SP,#0xE8+var_74]
2EB27E:  VMUL.F32        S2, S2, S18
2EB282:  VMUL.F32        S4, S4, S18
2EB286:  VSUB.F32        S2, S2, S6
2EB28A:  VADD.F32        S0, S0, S4
2EB28E:  VSTR            S2, [SP,#0xE8+var_78]
2EB292:  VSTR            S0, [SP,#0xE8+var_7C]
2EB296:  LDRSB.W         R0, [R1,#8]
2EB29A:  LDRSB.W         R1, [R1,#9]
2EB29E:  VMOV            S0, R0
2EB2A2:  VMOV            S2, R1
2EB2A6:  VCVT.F32.S32    S0, S0
2EB2AA:  VCVT.F32.S32    S2, S2
2EB2AE:  LDRSB.W         R0, [R11,#0x3B9]
2EB2B2:  VMOV            S4, R0
2EB2B6:  VCVT.F32.S32    S4, S4
2EB2BA:  LDRSB.W         R1, [R6,#8]
2EB2BE:  VMUL.F32        S0, S0, S20
2EB2C2:  LDRSB.W         R0, [R6,#9]
2EB2C6:  VMUL.F32        S2, S2, S20
2EB2CA:  VMOV            S6, R1
2EB2CE:  ADD             R1, SP, #0xE8+var_7C; CVector *
2EB2D0:  VMUL.F32        S0, S0, S4
2EB2D4:  VMUL.F32        S2, S2, S4
2EB2D8:  VMOV            S4, R0
2EB2DC:  VCVT.F32.S32    S4, S4
2EB2E0:  VCVT.F32.S32    S6, S6
2EB2E4:  LDRSB.W         R0, [R11,#0x3BA]
2EB2E8:  VMOV            R2, S0; CVector *
2EB2EC:  VMOV            R3, S2; float
2EB2F0:  VMOV            S0, R0
2EB2F4:  ADD             R0, SP, #0xE8+var_70; this
2EB2F6:  VMUL.F32        S2, S4, S20
2EB2FA:  VCVT.F32.S32    S0, S0
2EB2FE:  VMUL.F32        S4, S6, S20
2EB302:  VMUL.F32        S2, S2, S0
2EB306:  VMUL.F32        S0, S4, S0
2EB30A:  VSTR            S0, [SP,#0xE8+var_E8]
2EB30E:  VSTR            S2, [SP,#0xE8+var_E4]
2EB312:  BLX             j__ZN7CCurves20CalcSpeedScaleFactorERK7CVectorS2_ffff; CCurves::CalcSpeedScaleFactor(CVector const&,CVector const&,float,float,float,float)
2EB316:  VLDR            S0, =1000.0
2EB31A:  VMOV            S2, R0
2EB31E:  VDIV.F32        S0, S0, S16
2EB322:  VMUL.F32        S0, S0, S2
2EB326:  VCVT.S32.F32    S0, S0
2EB32A:  VMOV            R0, S0
2EB32E:  CMP             R0, #0xA
2EB330:  IT LE
2EB332:  MOVLE           R0, #0xA
2EB334:  STR.W           R0, [R11,#0x3A4]
2EB338:  ADD             SP, SP, #0x88
2EB33A:  VPOP            {D8-D15}
2EB33E:  ADD             SP, SP, #4
2EB340:  POP.W           {R8-R11}
2EB344:  POP             {R4-R7,PC}
