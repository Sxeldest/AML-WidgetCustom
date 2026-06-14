; =========================================================
; Game Engine Function: sub_6F598
; Address            : 0x6F598 - 0x6FA0A
; =========================================================

6F598:  PUSH            {R4-R7,LR}
6F59A:  ADD             R7, SP, #0xC
6F59C:  PUSH.W          {R8-R11}
6F5A0:  SUB             SP, SP, #0x24
6F5A2:  STRD.W          R2, R3, [SP,#0x40+var_40]
6F5A6:  MOV             R4, R0
6F5A8:  LDR.W           R0, =(__stack_chk_guard_ptr - 0x6F5B2)
6F5AC:  MOV             R6, R1
6F5AE:  ADD             R0, PC; __stack_chk_guard_ptr
6F5B0:  LDR             R0, [R0]; __stack_chk_guard
6F5B2:  LDR             R0, [R0]
6F5B4:  STR             R0, [SP,#0x40+var_20]
6F5B6:  LDR             R1, [R1,#0xC]
6F5B8:  LDR             R0, [R6,#0x10]
6F5BA:  CMP             R0, R1
6F5BC:  BCS             loc_6F5C4
6F5BE:  ADDS            R0, #1
6F5C0:  STR             R0, [R6,#0x10]
6F5C2:  B               loc_6F604
6F5C4:  LDRB            R0, [R6,#0x1C]
6F5C6:  CBNZ            R0, loc_6F604
6F5C8:  LDRD.W          R1, R5, [R6,#0x14]
6F5CC:  MOV.W           R8, #1
6F5D0:  LDRD.W          R3, R0, [R6]; stream
6F5D4:  LDR             R2, [R6,#8]; n
6F5D6:  ADD             R1, R5
6F5D8:  STR             R1, [R6,#0x18]
6F5DA:  MOVS            R1, #1; size
6F5DC:  BLX             fread
6F5E0:  LDRD.W          R2, R3, [R6,#4]
6F5E4:  CMP             R0, R3
6F5E6:  STR             R0, [R6,#0x14]
6F5E8:  ADD.W           R1, R2, R0
6F5EC:  SUB.W           R5, R1, #1
6F5F0:  STRD.W          R5, R2, [R6,#0xC]
6F5F4:  BCS             loc_6F604
6F5F6:  MOVS            R0, #0
6F5F8:  STRB            R0, [R1]
6F5FA:  LDR             R0, [R6,#0xC]
6F5FC:  STRB.W          R8, [R6,#0x1C]
6F600:  ADDS            R0, #1
6F602:  STR             R0, [R6,#0xC]
6F604:  MOV.W           R9, #0
6F608:  STRD.W          R4, R4, [SP,#0x40+var_34]
6F60C:  STR.W           R9, [SP,#0x40+var_2C]
6F610:  MOV.W           R8, #1
6F614:  LDR             R0, =(unk_50E8C - 0x6F61A)
6F616:  ADD             R0, PC; unk_50E8C
6F618:  STR             R0, [SP,#0x40+var_38]
6F61A:  LDR             R4, [R6,#0x10]
6F61C:  LDRB.W          R10, [R4]
6F620:  CMP.W           R10, #0x5C ; '\'
6F624:  BEQ             loc_6F69E
6F626:  CMP.W           R10, #0x22 ; '"'
6F62A:  BEQ.W           loc_6F8DC
6F62E:  CMP.W           R10, #0x1F
6F632:  BLS.W           loc_6F8EC
6F636:  LDR             R0, [R6,#0xC]
6F638:  CMP             R4, R0
6F63A:  BCS             loc_6F642
6F63C:  ADDS            R0, R4, #1
6F63E:  STR             R0, [R6,#0x10]
6F640:  B               loc_6F67E
6F642:  LDRB            R0, [R6,#0x1C]
6F644:  CBNZ            R0, loc_6F67E
6F646:  LDRD.W          R1, R5, [R6,#0x14]
6F64A:  LDRD.W          R3, R0, [R6]; stream
6F64E:  LDR             R2, [R6,#8]; n
6F650:  ADD             R1, R5
6F652:  STR             R1, [R6,#0x18]
6F654:  MOVS            R1, #1; size
6F656:  BLX             fread
6F65A:  LDRD.W          R2, R3, [R6,#4]
6F65E:  CMP             R0, R3
6F660:  STR             R0, [R6,#0x14]
6F662:  ADD.W           R1, R2, R0
6F666:  SUB.W           R5, R1, #1
6F66A:  STRD.W          R5, R2, [R6,#0xC]
6F66E:  BCS             loc_6F67E
6F670:  STRB.W          R9, [R1]
6F674:  LDR             R0, [R6,#0xC]
6F676:  STRB.W          R8, [R6,#0x1C]
6F67A:  ADDS            R0, #1
6F67C:  STR             R0, [R6,#0xC]
6F67E:  LDR.W           R11, [SP,#0x40+var_30]
6F682:  LDRD.W          R5, R0, [R11,#0xC]
6F686:  SUBS            R1, R0, R5
6F688:  CMP             R1, #0
6F68A:  BLE             loc_6F6B2
6F68C:  ADDS            R0, R5, #1
6F68E:  STR.W           R0, [R11,#0xC]
6F692:  STRB.W          R10, [R5]
6F696:  LDR             R0, [SP,#0x40+var_2C]
6F698:  ADDS            R0, #1
6F69A:  STR             R0, [SP,#0x40+var_2C]
6F69C:  B               loc_6F61A
6F69E:  LDR             R1, [R6,#0xC]
6F6A0:  LDR.W           R10, [R6,#4]
6F6A4:  LDR.W           R11, [R6,#0x18]
6F6A8:  CMP             R4, R1
6F6AA:  BCS             loc_6F6C6
6F6AC:  ADDS            R2, R4, #1
6F6AE:  STR             R2, [R6,#0x10]
6F6B0:  B               loc_6F704
6F6B2:  LDR.W           R2, [R11,#8]
6F6B6:  CMP             R2, #0
6F6B8:  BEQ             loc_6F768
6F6BA:  SUBS            R0, R0, R2
6F6BC:  ADDS            R1, R0, #1
6F6BE:  ADD.W           R4, R0, R1,LSR#1
6F6C2:  MOV             R0, R2
6F6C4:  B               loc_6F782
6F6C6:  LDRB            R0, [R6,#0x1C]
6F6C8:  MOV             R2, R4
6F6CA:  CBNZ            R0, loc_6F704
6F6CC:  LDR             R0, [R6,#0x14]
6F6CE:  MOVS            R1, #1; size
6F6D0:  LDR             R3, [R6]; stream
6F6D2:  LDR             R2, [R6,#8]; n
6F6D4:  ADD             R0, R11
6F6D6:  STR             R0, [R6,#0x18]
6F6D8:  MOV             R0, R10; ptr
6F6DA:  BLX             fread
6F6DE:  LDRD.W          R2, R5, [R6,#4]
6F6E2:  CMP             R0, R5
6F6E4:  STR             R0, [R6,#0x14]
6F6E6:  ADD.W           R3, R2, R0
6F6EA:  SUB.W           R1, R3, #1
6F6EE:  STRD.W          R1, R2, [R6,#0xC]
6F6F2:  BCS             loc_6F704
6F6F4:  STRB.W          R9, [R3]
6F6F8:  LDRD.W          R0, R2, [R6,#0xC]
6F6FC:  STRB.W          R8, [R6,#0x1C]
6F700:  ADDS            R1, R0, #1
6F702:  STR             R1, [R6,#0xC]
6F704:  LDRB            R0, [R2]
6F706:  LDR             R3, [SP,#0x40+var_38]
6F708:  LDRB            R5, [R3,R0]
6F70A:  CMP             R5, #0
6F70C:  BEQ             loc_6F7AC
6F70E:  CMP             R2, R1
6F710:  BCS             loc_6F718
6F712:  ADDS            R0, R2, #1
6F714:  STR             R0, [R6,#0x10]
6F716:  B               loc_6F754
6F718:  LDRB            R0, [R6,#0x1C]
6F71A:  CBNZ            R0, loc_6F754
6F71C:  LDRD.W          R1, R4, [R6,#0x14]
6F720:  LDRD.W          R3, R0, [R6]; stream
6F724:  LDR             R2, [R6,#8]; n
6F726:  ADD             R1, R4
6F728:  STR             R1, [R6,#0x18]
6F72A:  MOVS            R1, #1; size
6F72C:  BLX             fread
6F730:  LDRD.W          R2, R3, [R6,#4]
6F734:  CMP             R0, R3
6F736:  STR             R0, [R6,#0x14]
6F738:  ADD.W           R1, R2, R0
6F73C:  SUB.W           R4, R1, #1
6F740:  STRD.W          R4, R2, [R6,#0xC]
6F744:  BCS             loc_6F754
6F746:  STRB.W          R9, [R1]
6F74A:  LDR             R0, [R6,#0xC]
6F74C:  STRB.W          R8, [R6,#0x1C]
6F750:  ADDS            R0, #1
6F752:  STR             R0, [R6,#0xC]
6F754:  LDR             R4, [SP,#0x40+var_30]
6F756:  LDRD.W          R0, R1, [R4,#0xC]
6F75A:  SUBS            R1, R1, R0
6F75C:  CMP             R1, #0
6F75E:  BLE             loc_6F7EE
6F760:  ADDS            R1, R0, #1
6F762:  STR             R1, [R4,#0xC]
6F764:  STRB            R5, [R0]
6F766:  B               loc_6F696
6F768:  LDR.W           R0, [R11]
6F76C:  CBNZ            R0, loc_6F77C
6F76E:  MOVS            R0, #1; unsigned int
6F770:  MOV             R4, R2
6F772:  BLX             j__Znwj; operator new(uint)
6F776:  MOV             R2, R4
6F778:  STRD.W          R0, R0, [R11]
6F77C:  LDR.W           R4, [R11,#0x14]
6F780:  MOVS            R0, #0
6F782:  SUBS            R5, R5, R0
6F784:  ADDS            R0, R5, #1
6F786:  CMP             R4, R0
6F788:  IT CC
6F78A:  MOVCC           R4, R0
6F78C:  MOV             R0, R2; ptr
6F78E:  CBZ             R4, loc_6F798
6F790:  MOV             R1, R4; size
6F792:  BLX             realloc
6F796:  B               loc_6F79E
6F798:  BLX             free
6F79C:  MOVS            R0, #0
6F79E:  ADD             R5, R0
6F7A0:  ADDS            R1, R0, R4
6F7A2:  STR.W           R1, [R11,#0x10]
6F7A6:  STR.W           R0, [R11,#8]
6F7AA:  B               loc_6F68C
6F7AC:  ADD.W           R1, R11, R4
6F7B0:  CMP             R0, #0x75 ; 'u'
6F7B2:  SUB.W           R5, R1, R10
6F7B6:  BNE.W           loc_6FA02
6F7BA:  MOV             R0, R6
6F7BC:  BL              sub_6F00E
6F7C0:  LDR             R4, [SP,#0x40+var_34]
6F7C2:  MOV             R1, R6
6F7C4:  MOV             R2, R5
6F7C6:  MOV             R0, R4
6F7C8:  BL              sub_71068
6F7CC:  MOV             R10, R0
6F7CE:  LDR             R0, [R4,#0x18]
6F7D0:  CMP             R0, #0
6F7D2:  BNE.W           loc_6F9CE
6F7D6:  MOVW            R0, #0x7FF
6F7DA:  BIC.W           R0, R10, R0
6F7DE:  CMP.W           R0, #0xD800
6F7E2:  BEQ             loc_6F7FA
6F7E4:  ADD             R0, SP, #0x40+var_30
6F7E6:  MOV             R1, R10
6F7E8:  BL              sub_71120
6F7EC:  B               loc_6F61A
6F7EE:  MOV             R0, R4
6F7F0:  MOVS            R1, #1
6F7F2:  BL              sub_712D0
6F7F6:  LDR             R0, [R4,#0xC]
6F7F8:  B               loc_6F760
6F7FA:  MOV.W           R0, R10,LSR#10
6F7FE:  CMP             R0, #0x36 ; '6'
6F800:  BHI.W           loc_6FA06
6F804:  LDR             R1, [R6,#0x10]
6F806:  LDRB            R0, [R1]
6F808:  CMP             R0, #0x5C ; '\'
6F80A:  BNE.W           loc_6FA06
6F80E:  LDR             R2, [R6,#0xC]
6F810:  CMP             R1, R2
6F812:  BCS             loc_6F81A
6F814:  ADDS            R1, #1
6F816:  STR             R1, [R6,#0x10]
6F818:  B               loc_6F858
6F81A:  LDRB            R0, [R6,#0x1C]
6F81C:  CBNZ            R0, loc_6F858
6F81E:  LDRD.W          R12, R1, [R6,#0x14]
6F822:  LDRD.W          R3, R0, [R6]; stream
6F826:  LDR             R2, [R6,#8]; n
6F828:  ADD             R1, R12
6F82A:  STR             R1, [R6,#0x18]
6F82C:  MOVS            R1, #1; size
6F82E:  BLX             fread
6F832:  LDRD.W          R1, R12, [R6,#4]
6F836:  CMP             R0, R12
6F838:  STR             R0, [R6,#0x14]
6F83A:  ADD.W           R3, R1, R0
6F83E:  SUB.W           R2, R3, #1
6F842:  STRD.W          R2, R1, [R6,#0xC]
6F846:  BCS             loc_6F858
6F848:  STRB.W          R9, [R3]
6F84C:  LDRD.W          R0, R1, [R6,#0xC]
6F850:  STRB.W          R8, [R6,#0x1C]
6F854:  ADDS            R2, R0, #1
6F856:  STR             R2, [R6,#0xC]
6F858:  LDRB            R0, [R1]
6F85A:  CMP             R0, #0x75 ; 'u'
6F85C:  BNE.W           loc_6FA06
6F860:  CMP             R1, R2
6F862:  BCS             loc_6F86A
6F864:  ADDS            R0, R1, #1
6F866:  STR             R0, [R6,#0x10]
6F868:  B               loc_6F8A6
6F86A:  LDRB            R0, [R6,#0x1C]
6F86C:  CBNZ            R0, loc_6F8A6
6F86E:  LDRD.W          R12, R1, [R6,#0x14]
6F872:  LDRD.W          R3, R0, [R6]; stream
6F876:  LDR             R2, [R6,#8]; n
6F878:  ADD             R1, R12
6F87A:  STR             R1, [R6,#0x18]
6F87C:  MOVS            R1, #1; size
6F87E:  BLX             fread
6F882:  LDRD.W          R2, R12, [R6,#4]
6F886:  CMP             R0, R12
6F888:  STR             R0, [R6,#0x14]
6F88A:  ADD.W           R1, R2, R0
6F88E:  SUB.W           R3, R1, #1
6F892:  STRD.W          R3, R2, [R6,#0xC]
6F896:  BCS             loc_6F8A6
6F898:  STRB.W          R9, [R1]
6F89C:  LDR             R0, [R6,#0xC]
6F89E:  STRB.W          R8, [R6,#0x1C]
6F8A2:  ADDS            R0, #1
6F8A4:  STR             R0, [R6,#0xC]
6F8A6:  LDR             R4, [SP,#0x40+var_34]
6F8A8:  MOV             R1, R6
6F8AA:  MOV             R2, R5
6F8AC:  MOV             R0, R4
6F8AE:  BL              sub_71068
6F8B2:  LDR             R1, [R4,#0x18]
6F8B4:  CMP             R1, #0
6F8B6:  BNE.W           loc_6F9CE
6F8BA:  SUB.W           R1, R0, #0xE000
6F8BE:  CMN.W           R1, #0x400
6F8C2:  BCC.W           loc_6FA06
6F8C6:  MOVS            R1, #0
6F8C8:  SUB.W           R0, R0, #0xDC00
6F8CC:  MOVT            R1, #0xFCA0
6F8D0:  ADD.W           R1, R1, R10,LSL#10
6F8D4:  ORRS            R0, R1
6F8D6:  ADD.W           R10, R0, #0x10000
6F8DA:  B               loc_6F7E4
6F8DC:  LDR             R0, [R6,#0xC]
6F8DE:  CMP             R4, R0
6F8E0:  BCS             loc_6F906
6F8E2:  ADDS            R0, R4, #1
6F8E4:  STR             R0, [R6,#0x10]
6F8E6:  LDR.W           R9, [SP,#0x40+var_34]
6F8EA:  B               loc_6F946
6F8EC:  LDR             R2, [R6,#0x18]
6F8EE:  MOVS            R0, #0xC
6F8F0:  LDR             R1, [R6,#4]
6F8F2:  CMP.W           R10, #0
6F8F6:  ADD             R2, R4
6F8F8:  IT EQ
6F8FA:  MOVEQ           R0, #0xB
6F8FC:  SUBS            R5, R2, R1
6F8FE:  LDR             R1, [SP,#0x40+var_34]
6F900:  STRD.W          R0, R5, [R1,#0x18]
6F904:  B               loc_6F9CE
6F906:  LDRB            R0, [R6,#0x1C]
6F908:  LDR.W           R9, [SP,#0x40+var_34]
6F90C:  CBNZ            R0, loc_6F946
6F90E:  LDRD.W          R1, R5, [R6,#0x14]
6F912:  MOVS            R4, #1
6F914:  LDRD.W          R3, R0, [R6]; stream
6F918:  LDR             R2, [R6,#8]; n
6F91A:  ADD             R1, R5
6F91C:  STR             R1, [R6,#0x18]
6F91E:  MOVS            R1, #1; size
6F920:  BLX             fread
6F924:  LDRD.W          R2, R3, [R6,#4]
6F928:  CMP             R0, R3
6F92A:  STR             R0, [R6,#0x14]
6F92C:  ADD.W           R1, R2, R0
6F930:  SUB.W           R5, R1, #1
6F934:  STRD.W          R5, R2, [R6,#0xC]
6F938:  BCS             loc_6F946
6F93A:  MOVS            R0, #0
6F93C:  STRB            R0, [R1]
6F93E:  LDR             R0, [R6,#0xC]
6F940:  STRB            R4, [R6,#0x1C]
6F942:  ADDS            R0, #1
6F944:  STR             R0, [R6,#0xC]
6F946:  LDR             R4, [SP,#0x40+var_30]
6F948:  LDRD.W          R0, R1, [R4,#0xC]
6F94C:  SUBS            R1, R1, R0
6F94E:  CMP             R1, #0
6F950:  BLE             loc_6F9E8
6F952:  ADDS            R1, R0, #1
6F954:  STR             R1, [R4,#0xC]
6F956:  MOVS            R1, #0
6F958:  STRB            R1, [R0]
6F95A:  LDR             R5, [SP,#0x40+var_2C]
6F95C:  LDR.W           R0, [R9,#0x18]
6F960:  ADDS            R1, R5, #1
6F962:  STR             R1, [SP,#0x40+var_2C]
6F964:  CBNZ            R0, loc_6F9CE
6F966:  LDR             R0, [SP,#0x40+var_30]
6F968:  MVNS            R1, R5
6F96A:  LDR.W           R8, [R0,#0xC]
6F96E:  ADD.W           R4, R8, R1
6F972:  STR             R4, [R0,#0xC]
6F974:  LDR             R0, [SP,#0x40+var_3C]
6F976:  CBZ             R0, loc_6F99C
6F978:  LDR             R0, [SP,#0x40+var_40]
6F97A:  MOV             R1, R4
6F97C:  MOV             R2, R5
6F97E:  MOVS            R3, #1
6F980:  BL              sub_70F08
6F984:  CBNZ            R0, loc_6F9CE
6F986:  LDR             R1, [R6,#0x10]
6F988:  MOVS            R3, #0x10
6F98A:  LDR             R2, [R6,#0x18]
6F98C:  LDR             R0, [R6,#4]
6F98E:  ADD             R1, R2
6F990:  SUBS            R0, R1, R0
6F992:  STRD.W          R3, R0, [R9,#0x18]
6F996:  B               loc_6F9CE
6F998:  DCD unk_50E8C - 0x6F61A
6F99C:  LDR             R6, [SP,#0x40+var_40]
6F99E:  LDRD.W          R0, R1, [R6,#0x24]; dest
6F9A2:  SUBS            R1, R1, R0
6F9A4:  CMP             R1, #0xF
6F9A6:  BLE             loc_6F9F4
6F9A8:  LDR             R1, =(unk_50F8C - 0x6F9B8)
6F9AA:  VMOV.I32        Q8, #0
6F9AE:  LDR             R2, [R6,#0x10]
6F9B0:  ADD.W           R3, R0, #0x10
6F9B4:  ADD             R1, PC; unk_50F8C
6F9B6:  STR             R3, [R6,#0x24]
6F9B8:  VST1.64         {D16-D17}, [R0]
6F9BC:  CMP.W           R8, #0
6F9C0:  STR             R5, [SP,#0x40+var_24]
6F9C2:  IT EQ
6F9C4:  MOVEQ           R4, R1
6F9C6:  ADD             R1, SP, #0x40+var_28
6F9C8:  STR             R4, [SP,#0x40+var_28]
6F9CA:  BL              sub_71334
6F9CE:  LDR             R0, [SP,#0x40+var_20]
6F9D0:  LDR             R1, =(__stack_chk_guard_ptr - 0x6F9D6)
6F9D2:  ADD             R1, PC; __stack_chk_guard_ptr
6F9D4:  LDR             R1, [R1]; __stack_chk_guard
6F9D6:  LDR             R1, [R1]
6F9D8:  CMP             R1, R0
6F9DA:  ITTT EQ
6F9DC:  ADDEQ           SP, SP, #0x24 ; '$'
6F9DE:  POPEQ.W         {R8-R11}
6F9E2:  POPEQ           {R4-R7,PC}
6F9E4:  BLX             __stack_chk_fail
6F9E8:  MOV             R0, R4
6F9EA:  MOVS            R1, #1
6F9EC:  BL              sub_712D0
6F9F0:  LDR             R0, [R4,#0xC]
6F9F2:  B               loc_6F952
6F9F4:  ADD.W           R0, R6, #0x18
6F9F8:  MOVS            R1, #1
6F9FA:  BL              sub_70EA2
6F9FE:  LDR             R0, [R6,#0x24]
6FA00:  B               loc_6F9A8
6FA02:  MOVS            R0, #0xA
6FA04:  B               loc_6F8FE
6FA06:  MOVS            R0, #9
6FA08:  B               loc_6F8FE
