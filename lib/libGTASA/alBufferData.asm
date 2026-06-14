; =========================================================
; Game Engine Function: alBufferData
; Address            : 0x23F5EC - 0x23FA98
; =========================================================

23F5EC:  PUSH            {R4-R7,LR}
23F5EE:  ADD             R7, SP, #0xC
23F5F0:  PUSH.W          {R8-R11}
23F5F4:  SUB             SP, SP, #0x1C
23F5F6:  MOV             R6, R3
23F5F8:  MOV             R8, R2
23F5FA:  MOV             R5, R1
23F5FC:  MOV             R4, R0
23F5FE:  LDR.W           R10, [R7,#arg_0]
23F602:  BLX             j_GetContextRef
23F606:  MOV             R11, R0
23F608:  CMP.W           R11, #0
23F60C:  BEQ             loc_23F682
23F60E:  LDR.W           R0, [R11,#0x88]
23F612:  MOV             R1, R4
23F614:  ADDS            R0, #0x40 ; '@'
23F616:  BLX             j_LookupUIntMapKey
23F61A:  MOV             R9, R0
23F61C:  CMP.W           R9, #0
23F620:  BEQ             loc_23F68A
23F622:  ORR.W           R0, R10, R6
23F626:  CMP             R0, #0
23F628:  BLT             loc_23F6C8
23F62A:  LDR.W           R0, =(dword_5FCDE0 - 0x23F634)
23F62E:  MOVS            R1, #0
23F630:  ADD             R0, PC; dword_5FCDE0
23F632:  ADDS            R0, #4
23F634:  LDR.W           R2, [R0,#-4]
23F638:  CMP             R2, R5
23F63A:  BEQ             loc_23F706
23F63C:  ADDS            R1, #1
23F63E:  ADDS            R0, #0xC
23F640:  CMP             R1, #0x24 ; '$'
23F642:  BCC             loc_23F634
23F644:  LDR.W           R0, =(TrapALError_ptr - 0x23F64C)
23F648:  ADD             R0, PC; TrapALError_ptr
23F64A:  LDR             R0, [R0]; TrapALError
23F64C:  LDRB            R0, [R0]
23F64E:  CMP             R0, #0
23F650:  ITT NE
23F652:  MOVNE           R0, #5; sig
23F654:  BLXNE           raise
23F658:  LDREX.W         R0, [R11,#0x50]
23F65C:  CMP             R0, #0
23F65E:  BNE.W           loc_23FA80
23F662:  ADD.W           R0, R11, #0x50 ; 'P'
23F666:  MOVW            R1, #0xA002
23F66A:  DMB.W           ISH
23F66E:  STREX.W         R2, R1, [R0]
23F672:  CMP             R2, #0
23F674:  BEQ.W           loc_23FA84
23F678:  LDREX.W         R2, [R0]
23F67C:  CMP             R2, #0
23F67E:  BEQ             loc_23F66E
23F680:  B               loc_23FA80
23F682:  ADD             SP, SP, #0x1C
23F684:  POP.W           {R8-R11}
23F688:  POP             {R4-R7,PC}
23F68A:  LDR.W           R0, =(TrapALError_ptr - 0x23F692)
23F68E:  ADD             R0, PC; TrapALError_ptr
23F690:  LDR             R0, [R0]; TrapALError
23F692:  LDRB            R0, [R0]
23F694:  CMP             R0, #0
23F696:  ITT NE
23F698:  MOVNE           R0, #5; sig
23F69A:  BLXNE           raise
23F69E:  LDREX.W         R0, [R11,#0x50]
23F6A2:  CMP             R0, #0
23F6A4:  BNE.W           loc_23FA80
23F6A8:  ADD.W           R0, R11, #0x50 ; 'P'
23F6AC:  MOVW            R1, #0xA001
23F6B0:  DMB.W           ISH
23F6B4:  STREX.W         R2, R1, [R0]
23F6B8:  CMP             R2, #0
23F6BA:  BEQ.W           loc_23FA84
23F6BE:  LDREX.W         R2, [R0]
23F6C2:  CMP             R2, #0
23F6C4:  BEQ             loc_23F6B4
23F6C6:  B               loc_23FA80
23F6C8:  LDR.W           R0, =(TrapALError_ptr - 0x23F6D0)
23F6CC:  ADD             R0, PC; TrapALError_ptr
23F6CE:  LDR             R0, [R0]; TrapALError
23F6D0:  LDRB            R0, [R0]
23F6D2:  CMP             R0, #0
23F6D4:  ITT NE
23F6D6:  MOVNE           R0, #5; sig
23F6D8:  BLXNE           raise
23F6DC:  LDREX.W         R0, [R11,#0x50]
23F6E0:  CMP             R0, #0
23F6E2:  BNE.W           loc_23FA80
23F6E6:  ADD.W           R0, R11, #0x50 ; 'P'
23F6EA:  MOVW            R1, #0xA003
23F6EE:  DMB.W           ISH
23F6F2:  STREX.W         R2, R1, [R0]
23F6F6:  CMP             R2, #0
23F6F8:  BEQ.W           loc_23FA84
23F6FC:  LDREX.W         R2, [R0]
23F700:  CMP             R2, #0
23F702:  BEQ             loc_23F6F2
23F704:  B               loc_23FA80
23F706:  LDR             R2, [R0,#4]
23F708:  SUB.W           R1, R2, #0x1400; switch 13 cases
23F70C:  CMP             R1, #0xC
23F70E:  BHI.W           def_23F716; jumptable 0023F716 default case
23F712:  LDR             R4, [R0]
23F714:  STR             R2, [SP,#0x38+var_20]
23F716:  TBB.W           [PC,R1]; switch jump
23F71A:  DCB 7; jump table for switch statement
23F71B:  DCB 7
23F71C:  DCB 7
23F71D:  DCB 7
23F71E:  DCB 0x11
23F71F:  DCB 0x11
23F720:  DCB 7
23F721:  DCB 0x11
23F722:  DCB 0x11
23F723:  DCB 0x11
23F724:  DCB 0x7B
23F725:  DCB 0x7B
23F726:  DCB 0xBF
23F727:  ALIGN 2
23F728:  SUB.W           R0, R4, #0x1500; jumptable 0023F716 cases 5120-5123,5126
23F72C:  CMP             R0, #6
23F72E:  BHI             loc_23F750
23F730:  LDR.W           R2, =(unk_60A680 - 0x23F738)
23F734:  ADD             R2, PC; unk_60A680
23F736:  LDR.W           R0, [R2,R0,LSL#2]
23F73A:  B               loc_23F752
23F73C:  SUB.W           R0, R4, #0x1500; jumptable 0023F716 cases 5124,5125,5127-5129
23F740:  CMP             R0, #6
23F742:  BHI             loc_23F764
23F744:  LDR.W           R1, =(unk_60A680 - 0x23F74C)
23F748:  ADD             R1, PC; unk_60A680
23F74A:  LDR.W           R0, [R1,R0,LSL#2]
23F74E:  B               loc_23F766
23F750:  MOVS            R0, #0
23F752:  CMP             R1, #6
23F754:  STR             R4, [SP,#0x38+var_24]
23F756:  BHI             loc_23F7C4
23F758:  LDR.W           R2, =(unk_60A6D0 - 0x23F760)
23F75C:  ADD             R2, PC; unk_60A6D0
23F75E:  LDR.W           R1, [R2,R1,LSL#2]
23F762:  B               loc_23F7C6
23F764:  MOVS            R0, #0
23F766:  MOVW            R1, #0x1404
23F76A:  SUBS            R1, R2, R1
23F76C:  CMP             R1, #5
23F76E:  ITTE LS
23F770:  ADRLS           R2, dword_23FAD8
23F772:  LDRLS.W         R1, [R2,R1,LSL#2]
23F776:  MOVHI           R1, #0
23F778:  MUL.W           R5, R1, R0
23F77C:  MOV             R0, R6
23F77E:  MOV             R1, R5
23F780:  BLX             __aeabi_uidivmod
23F784:  CMP             R1, #0
23F786:  BEQ             loc_23F822
23F788:  LDR             R0, =(TrapALError_ptr - 0x23F78E)
23F78A:  ADD             R0, PC; TrapALError_ptr
23F78C:  LDR             R0, [R0]; TrapALError
23F78E:  LDRB            R0, [R0]
23F790:  CMP             R0, #0
23F792:  ITT NE
23F794:  MOVNE           R0, #5; sig
23F796:  BLXNE           raise
23F79A:  LDREX.W         R0, [R11,#0x50]
23F79E:  CMP             R0, #0
23F7A0:  BNE.W           loc_23FA80
23F7A4:  ADD.W           R0, R11, #0x50 ; 'P'
23F7A8:  MOVW            R1, #0xA003
23F7AC:  DMB.W           ISH
23F7B0:  STREX.W         R2, R1, [R0]
23F7B4:  CMP             R2, #0
23F7B6:  BEQ.W           loc_23FA84
23F7BA:  LDREX.W         R2, [R0]
23F7BE:  CMP             R2, #0
23F7C0:  BEQ             loc_23F7B0
23F7C2:  B               loc_23FA80
23F7C4:  MOVS            R1, #0
23F7C6:  MUL.W           R4, R1, R0
23F7CA:  MOV             R0, R6
23F7CC:  MOV             R1, R4
23F7CE:  BLX             __aeabi_uidivmod
23F7D2:  CBZ             R1, loc_23F836
23F7D4:  LDR             R0, =(TrapALError_ptr - 0x23F7DA)
23F7D6:  ADD             R0, PC; TrapALError_ptr
23F7D8:  LDR             R0, [R0]; TrapALError
23F7DA:  LDRB            R0, [R0]
23F7DC:  CMP             R0, #0
23F7DE:  ITT NE
23F7E0:  MOVNE           R0, #5; sig
23F7E2:  BLXNE           raise
23F7E6:  LDREX.W         R0, [R11,#0x50]
23F7EA:  CMP             R0, #0
23F7EC:  BNE.W           loc_23FA80
23F7F0:  ADD.W           R0, R11, #0x50 ; 'P'
23F7F4:  MOVW            R1, #0xA003
23F7F8:  DMB.W           ISH
23F7FC:  STREX.W         R2, R1, [R0]
23F800:  CMP             R2, #0
23F802:  BEQ.W           loc_23FA84
23F806:  LDREX.W         R2, [R0]
23F80A:  CMP             R2, #0
23F80C:  BEQ             loc_23F7FC
23F80E:  B               loc_23FA80
23F810:  SUB.W           R0, R4, #0x1500; jumptable 0023F716 cases 5130,5131
23F814:  CMP             R0, #6
23F816:  BHI             loc_23F8AC
23F818:  LDR             R1, =(unk_60A680 - 0x23F81E)
23F81A:  ADD             R1, PC; unk_60A680
23F81C:  LDR.W           R5, [R1,R0,LSL#2]
23F820:  B               loc_23F8AE
23F822:  MOVW            R0, #0x1501
23F826:  STR             R4, [SP,#0x38+var_24]
23F828:  SUBS            R0, R4, R0
23F82A:  CMP             R0, #5
23F82C:  BHI             loc_23F8F6
23F82E:  ADR             R1, dword_23FAF4
23F830:  LDR.W           R4, [R1,R0,LSL#2]
23F834:  B               loc_23F8FC
23F836:  MOV             R0, R6
23F838:  MOV             R1, R4
23F83A:  BLX             __aeabi_uidiv
23F83E:  LDR             R1, [SP,#0x38+var_24]
23F840:  MOV             R3, R0
23F842:  STR             R1, [SP,#0x38+var_38]
23F844:  MOVS            R0, #1
23F846:  LDR             R1, [SP,#0x38+var_20]
23F848:  MOV             R2, R5
23F84A:  STRD.W          R1, R8, [SP,#0x38+var_34]
23F84E:  MOV             R1, R10
23F850:  STR             R0, [SP,#0x38+var_2C]
23F852:  MOV             R0, R9
23F854:  BL              sub_23FB24
23F858:  MOV             R5, R0
23F85A:  CMP             R5, #0
23F85C:  BEQ.W           def_23F716; jumptable 0023F716 default case
23F860:  LDR             R0, =(TrapALError_ptr - 0x23F866)
23F862:  ADD             R0, PC; TrapALError_ptr
23F864:  LDR             R0, [R0]; TrapALError
23F866:  LDRB            R0, [R0]
23F868:  CMP             R0, #0
23F86A:  ITT NE
23F86C:  MOVNE           R0, #5; sig
23F86E:  BLXNE           raise
23F872:  LDREX.W         R0, [R11,#0x50]
23F876:  CMP             R0, #0
23F878:  BNE.W           loc_23FA80
23F87C:  ADD.W           R0, R11, #0x50 ; 'P'
23F880:  DMB.W           ISH
23F884:  STREX.W         R1, R5, [R0]
23F888:  CMP             R1, #0
23F88A:  BEQ.W           loc_23FA84
23F88E:  LDREX.W         R1, [R0]
23F892:  CMP             R1, #0
23F894:  BEQ             loc_23F884
23F896:  B               loc_23FA80
23F898:  SUB.W           R0, R4, #0x1500; jumptable 0023F716 case 5132
23F89C:  CMP             R0, #6
23F89E:  BHI.W           loc_23F9D0
23F8A2:  LDR             R1, =(unk_60A660 - 0x23F8A8)
23F8A4:  ADD             R1, PC; unk_60A660
23F8A6:  LDR.W           R5, [R1,R0,LSL#2]
23F8AA:  B               loc_23F9D2
23F8AC:  MOVS            R5, #0
23F8AE:  MOV             R0, R6
23F8B0:  MOV             R1, R5
23F8B2:  BLX             __aeabi_uidivmod
23F8B6:  CMP             R1, #0
23F8B8:  BEQ             loc_23F95E
23F8BA:  LDR             R0, =(TrapALError_ptr - 0x23F8C0)
23F8BC:  ADD             R0, PC; TrapALError_ptr
23F8BE:  LDR             R0, [R0]; TrapALError
23F8C0:  LDRB            R0, [R0]
23F8C2:  CMP             R0, #0
23F8C4:  ITT NE
23F8C6:  MOVNE           R0, #5; sig
23F8C8:  BLXNE           raise
23F8CC:  LDREX.W         R0, [R11,#0x50]
23F8D0:  CMP             R0, #0
23F8D2:  BNE.W           loc_23FA80
23F8D6:  ADD.W           R0, R11, #0x50 ; 'P'
23F8DA:  MOVW            R1, #0xA003
23F8DE:  DMB.W           ISH
23F8E2:  STREX.W         R2, R1, [R0]
23F8E6:  CMP             R2, #0
23F8E8:  BEQ.W           loc_23FA84
23F8EC:  LDREX.W         R2, [R0]
23F8F0:  CMP             R2, #0
23F8F2:  BEQ             loc_23F8E2
23F8F4:  B               loc_23FA80
23F8F6:  MOVS            R4, #0x10010
23F8FC:  MOV             R0, R6
23F8FE:  MOV             R1, R5
23F900:  BLX             __aeabi_uidiv
23F904:  LDR             R1, [SP,#0x38+var_24]
23F906:  MOV             R3, R0
23F908:  STR             R1, [SP,#0x38+var_38]
23F90A:  MOVS            R0, #1
23F90C:  LDR             R1, [SP,#0x38+var_20]
23F90E:  MOV             R2, R4
23F910:  STRD.W          R1, R8, [SP,#0x38+var_34]
23F914:  MOV             R1, R10
23F916:  STR             R0, [SP,#0x38+var_2C]
23F918:  MOV             R0, R9
23F91A:  BL              sub_23FB24
23F91E:  MOV             R5, R0
23F920:  CMP             R5, #0
23F922:  BEQ.W           def_23F716; jumptable 0023F716 default case
23F926:  LDR             R0, =(TrapALError_ptr - 0x23F92C)
23F928:  ADD             R0, PC; TrapALError_ptr
23F92A:  LDR             R0, [R0]; TrapALError
23F92C:  LDRB            R0, [R0]
23F92E:  CMP             R0, #0
23F930:  ITT NE
23F932:  MOVNE           R0, #5; sig
23F934:  BLXNE           raise
23F938:  LDREX.W         R0, [R11,#0x50]
23F93C:  CMP             R0, #0
23F93E:  BNE.W           loc_23FA80
23F942:  ADD.W           R0, R11, #0x50 ; 'P'
23F946:  DMB.W           ISH
23F94A:  STREX.W         R1, R5, [R0]
23F94E:  CMP             R1, #0
23F950:  BEQ.W           loc_23FA84
23F954:  LDREX.W         R1, [R0]
23F958:  CMP             R1, #0
23F95A:  BEQ             loc_23F94A
23F95C:  B               loc_23FA80
23F95E:  MOVW            R0, #0x1501
23F962:  STR             R4, [SP,#0x38+var_24]
23F964:  SUBS            R0, R4, R0
23F966:  CMP             R0, #5
23F968:  ITTE LS
23F96A:  ADRLS           R1, dword_23FAAC
23F96C:  LDRLS.W         R4, [R1,R0,LSL#2]
23F970:  MOVWHI          R4, #0x1101
23F974:  MOV             R0, R6
23F976:  MOV             R1, R5
23F978:  BLX             __aeabi_uidiv
23F97C:  LDR             R1, [SP,#0x38+var_24]
23F97E:  MOV             R3, R0
23F980:  STR             R1, [SP,#0x38+var_38]
23F982:  MOVS            R0, #1
23F984:  LDR             R1, [SP,#0x38+var_20]
23F986:  MOV             R2, R4
23F988:  STRD.W          R1, R8, [SP,#0x38+var_34]
23F98C:  MOV             R1, R10
23F98E:  STR             R0, [SP,#0x38+var_2C]
23F990:  MOV             R0, R9
23F992:  BL              sub_23FB24
23F996:  MOV             R5, R0
23F998:  CMP             R5, #0
23F99A:  BEQ             def_23F716; jumptable 0023F716 default case
23F99C:  LDR             R0, =(TrapALError_ptr - 0x23F9A2)
23F99E:  ADD             R0, PC; TrapALError_ptr
23F9A0:  LDR             R0, [R0]; TrapALError
23F9A2:  LDRB            R0, [R0]
23F9A4:  CMP             R0, #0
23F9A6:  ITT NE
23F9A8:  MOVNE           R0, #5; sig
23F9AA:  BLXNE           raise
23F9AE:  LDREX.W         R0, [R11,#0x50]
23F9B2:  CMP             R0, #0
23F9B4:  BNE             loc_23FA80
23F9B6:  ADD.W           R0, R11, #0x50 ; 'P'
23F9BA:  DMB.W           ISH
23F9BE:  STREX.W         R1, R5, [R0]
23F9C2:  CMP             R1, #0
23F9C4:  BEQ             loc_23FA84
23F9C6:  LDREX.W         R1, [R0]
23F9CA:  CMP             R1, #0
23F9CC:  BEQ             loc_23F9BE
23F9CE:  B               loc_23FA80
23F9D0:  MOVS            R5, #0
23F9D2:  MOV             R0, R6
23F9D4:  MOV             R1, R5
23F9D6:  BLX             __aeabi_uidivmod
23F9DA:  CBZ             R1, loc_23FA12
23F9DC:  LDR             R0, =(TrapALError_ptr - 0x23F9E2)
23F9DE:  ADD             R0, PC; TrapALError_ptr
23F9E0:  LDR             R0, [R0]; TrapALError
23F9E2:  LDRB            R0, [R0]
23F9E4:  CMP             R0, #0
23F9E6:  ITT NE
23F9E8:  MOVNE           R0, #5; sig
23F9EA:  BLXNE           raise
23F9EE:  LDREX.W         R0, [R11,#0x50]
23F9F2:  CMP             R0, #0
23F9F4:  BNE             loc_23FA80
23F9F6:  ADD.W           R0, R11, #0x50 ; 'P'
23F9FA:  MOVW            R1, #0xA003
23F9FE:  DMB.W           ISH
23FA02:  STREX.W         R2, R1, [R0]
23FA06:  CBZ             R2, loc_23FA84
23FA08:  LDREX.W         R2, [R0]
23FA0C:  CMP             R2, #0
23FA0E:  BEQ             loc_23FA02
23FA10:  B               loc_23FA80
23FA12:  MOVW            R0, #0x1501
23FA16:  STR             R4, [SP,#0x38+var_24]
23FA18:  SUBS            R0, R4, R0
23FA1A:  CMP             R0, #5
23FA1C:  ITTE LS
23FA1E:  ADRLS           R1, dword_23FAAC
23FA20:  LDRLS.W         R4, [R1,R0,LSL#2]
23FA24:  MOVWHI          R4, #0x1101
23FA28:  MOV             R0, R6
23FA2A:  MOV             R1, R5
23FA2C:  BLX             __aeabi_uidiv
23FA30:  MOVW            R2, #0x140C
23FA34:  LDR             R3, [SP,#0x38+var_24]
23FA36:  STRD.W          R3, R2, [SP,#0x38+var_38]
23FA3A:  MOVS            R1, #1
23FA3C:  ADD.W           R3, R0, R0,LSL#6
23FA40:  STRD.W          R8, R1, [SP,#0x38+var_30]
23FA44:  MOV             R0, R9
23FA46:  MOV             R1, R10
23FA48:  MOV             R2, R4
23FA4A:  BL              sub_23FB24
23FA4E:  MOV             R5, R0
23FA50:  CBZ             R5, def_23F716; jumptable 0023F716 default case
23FA52:  LDR             R0, =(TrapALError_ptr - 0x23FA58)
23FA54:  ADD             R0, PC; TrapALError_ptr
23FA56:  LDR             R0, [R0]; TrapALError
23FA58:  LDRB            R0, [R0]
23FA5A:  CMP             R0, #0
23FA5C:  ITT NE
23FA5E:  MOVNE           R0, #5; sig
23FA60:  BLXNE           raise
23FA64:  LDREX.W         R0, [R11,#0x50]
23FA68:  CBNZ            R0, loc_23FA80
23FA6A:  ADD.W           R0, R11, #0x50 ; 'P'
23FA6E:  DMB.W           ISH
23FA72:  STREX.W         R1, R5, [R0]
23FA76:  CBZ             R1, loc_23FA84
23FA78:  LDREX.W         R1, [R0]
23FA7C:  CMP             R1, #0
23FA7E:  BEQ             loc_23FA72
23FA80:  CLREX.W
23FA84:  DMB.W           ISH
23FA88:  MOV             R0, R11; jumptable 0023F716 default case
23FA8A:  ADD             SP, SP, #0x1C
23FA8C:  POP.W           {R8-R11}
23FA90:  POP.W           {R4-R7,LR}
23FA94:  B.W             ALCcontext_DecRef
