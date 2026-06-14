; =========================================================
; Game Engine Function: sub_18D6E0
; Address            : 0x18D6E0 - 0x18DA26
; =========================================================

18D6E0:  PUSH            {R4-R7,LR}
18D6E2:  ADD             R7, SP, #0xC
18D6E4:  PUSH.W          {R8-R11}
18D6E8:  SUB             SP, SP, #0x20
18D6EA:  MOV             R9, R2
18D6EC:  MOV             R12, R1
18D6EE:  LDM.W           R0, {R1,R2,R10}
18D6F2:  LDR             R0, [R0,#0xC]
18D6F4:  LDRD.W          R4, R5, [R9]
18D6F8:  STR             R0, [SP,#0x3C+var_24]
18D6FA:  LDRD.W          R3, R8, [R9,#8]
18D6FE:  EOR.W           R11, R4, R1
18D702:  LDR             R6, =(unk_2395B8 - 0x18D70C)
18D704:  UXTB.W          R4, R11
18D708:  ADD             R6, PC; unk_2395B8
18D70A:  LDR.W           R0, [R6,R4,LSL#2]
18D70E:  EOR.W           R4, R5, R2
18D712:  LDR             R1, =(unk_2399B8 - 0x18D71E)
18D714:  UBFX.W          R2, R4, #8, #8
18D718:  STR             R6, [SP,#0x3C+var_20]
18D71A:  ADD             R1, PC; unk_2399B8
18D71C:  LDR.W           R2, [R1,R2,LSL#2]
18D720:  MOV             LR, R1
18D722:  EORS            R0, R2
18D724:  EOR.W           R2, R3, R10
18D728:  MOV             R10, R6
18D72A:  LDR             R6, =(unk_239DB8 - 0x18D736)
18D72C:  UBFX.W          R3, R2, #0x10, #8
18D730:  LDR             R1, [SP,#0x3C+var_24]
18D732:  ADD             R6, PC; unk_239DB8
18D734:  LDR.W           R3, [R6,R3,LSL#2]
18D738:  EORS            R0, R3
18D73A:  EOR.W           R3, R8, R1
18D73E:  LDR             R1, =(unk_23A1B8 - 0x18D74A)
18D740:  MOV             R8, R12
18D742:  LSRS            R5, R3, #0x18
18D744:  STR             R6, [SP,#0x3C+var_30]
18D746:  ADD             R1, PC; unk_23A1B8
18D748:  STR             R1, [SP,#0x3C+var_34]
18D74A:  LDR.W           R5, [R1,R5,LSL#2]
18D74E:  EORS            R0, R5
18D750:  UBFX.W          R5, R2, #8, #8
18D754:  STR.W           R0, [R12]
18D758:  STR             R0, [SP,#0x3C+var_24]
18D75A:  UXTB            R0, R4
18D75C:  LDR.W           R0, [R10,R0,LSL#2]
18D760:  LDR.W           R5, [LR,R5,LSL#2]
18D764:  EORS            R0, R5
18D766:  UBFX.W          R5, R3, #0x10, #8
18D76A:  LDR.W           R5, [R6,R5,LSL#2]
18D76E:  EORS            R0, R5
18D770:  MOV.W           R5, R11,LSR#24
18D774:  LDR.W           R5, [R1,R5,LSL#2]
18D778:  EORS            R0, R5
18D77A:  UBFX.W          R5, R3, #8, #8
18D77E:  STR.W           R0, [R12,#4]
18D782:  STR             R0, [SP,#0x3C+var_38]
18D784:  UXTB            R0, R2
18D786:  LDR.W           R0, [R10,R0,LSL#2]
18D78A:  LSRS            R2, R2, #0x18
18D78C:  LDR.W           R5, [LR,R5,LSL#2]
18D790:  EORS            R0, R5
18D792:  UBFX.W          R5, R11, #0x10, #8
18D796:  LDR.W           R5, [R6,R5,LSL#2]
18D79A:  EORS            R0, R5
18D79C:  LSRS            R5, R4, #0x18
18D79E:  LDR.W           R5, [R1,R5,LSL#2]
18D7A2:  EORS            R0, R5
18D7A4:  STR.W           R0, [R12,#8]
18D7A8:  LDR.W           R5, [R1,R2,LSL#2]
18D7AC:  UBFX.W          R2, R4, #0x10, #8
18D7B0:  UBFX.W          R1, R11, #8, #8
18D7B4:  LDR.W           R4, [R6,R2,LSL#2]
18D7B8:  UXTB            R2, R3
18D7BA:  STR             R0, [SP,#0x3C+var_28]
18D7BC:  LDR.W           R2, [R10,R2,LSL#2]
18D7C0:  LDR.W           R1, [LR,R1,LSL#2]
18D7C4:  LDR             R0, =(dword_382770 - 0x18D7CA)
18D7C6:  ADD             R0, PC; dword_382770
18D7C8:  EORS            R1, R2
18D7CA:  EORS            R1, R4
18D7CC:  STR             R0, [SP,#0x3C+var_2C]
18D7CE:  LDR             R2, [R0]
18D7D0:  EOR.W           R10, R1, R5
18D7D4:  STR.W           R10, [R12,#0xC]
18D7D8:  CMP             R2, #3
18D7DA:  BLT.W           loc_18D8EA
18D7DE:  MOV             R3, LR
18D7E0:  MOV             R6, R10
18D7E2:  LDR.W           R10, [SP,#0x3C+var_38]
18D7E6:  ADD.W           R5, R9, #0x10
18D7EA:  LDRD.W          R11, R1, [SP,#0x3C+var_28]
18D7EE:  MOVS            R4, #1
18D7F0:  LDR.W           LR, [SP,#0x3C+var_30]
18D7F4:  STR.W           R9, [SP,#0x3C+var_3C]
18D7F8:  STR             R4, [SP,#0x3C+var_28]
18D7FA:  MOV             R12, R8
18D7FC:  LDRD.W          R2, R4, [R5]
18D800:  MOV             R8, R3
18D802:  EOR.W           R4, R4, R10
18D806:  LDR             R0, [R5,#8]
18D808:  EOR.W           R3, R2, R1
18D80C:  LDR             R1, [SP,#0x3C+var_20]
18D80E:  LDR.W           R9, [R5,#0xC]
18D812:  ADDS            R5, #0x10
18D814:  UXTB            R2, R3
18D816:  LDR.W           R10, [SP,#0x3C+var_34]
18D81A:  LDR.W           R2, [R1,R2,LSL#2]
18D81E:  UBFX.W          R1, R4, #8, #8
18D822:  LDR.W           R1, [R8,R1,LSL#2]
18D826:  EORS            R1, R2
18D828:  EOR.W           R2, R0, R11
18D82C:  UBFX.W          R0, R2, #0x10, #8
18D830:  LDR.W           R0, [LR,R0,LSL#2]
18D834:  EORS            R0, R1
18D836:  EOR.W           R1, R9, R6
18D83A:  LSRS            R6, R1, #0x18
18D83C:  LDR.W           R6, [R10,R6,LSL#2]
18D840:  EORS            R0, R6
18D842:  LDR             R6, [SP,#0x3C+var_20]
18D844:  STR             R0, [SP,#0x3C+var_24]
18D846:  STR.W           R0, [R12]
18D84A:  UXTB            R0, R4
18D84C:  LDR.W           R0, [R6,R0,LSL#2]
18D850:  UBFX.W          R6, R2, #8, #8
18D854:  LDR.W           R6, [R8,R6,LSL#2]
18D858:  EORS            R0, R6
18D85A:  UBFX.W          R6, R1, #0x10, #8
18D85E:  LDR.W           R6, [LR,R6,LSL#2]
18D862:  EORS            R0, R6
18D864:  LSRS            R6, R3, #0x18
18D866:  LDR.W           R6, [R10,R6,LSL#2]
18D86A:  EOR.W           R9, R0, R6
18D86E:  LDR             R6, [SP,#0x3C+var_20]
18D870:  STR.W           R9, [R12,#4]
18D874:  UXTB            R0, R2
18D876:  LDR.W           R0, [R6,R0,LSL#2]
18D87A:  UBFX.W          R6, R1, #8, #8
18D87E:  LDR.W           R6, [R8,R6,LSL#2]
18D882:  EORS            R0, R6
18D884:  UBFX.W          R6, R3, #0x10, #8
18D888:  LDR.W           R6, [LR,R6,LSL#2]
18D88C:  EORS            R0, R6
18D88E:  LSRS            R6, R4, #0x18
18D890:  LDR.W           R6, [R10,R6,LSL#2]
18D894:  EOR.W           R11, R0, R6
18D898:  UXTB            R0, R1
18D89A:  LDR             R1, [SP,#0x3C+var_20]
18D89C:  STR.W           R11, [R12,#8]
18D8A0:  LDR.W           R0, [R1,R0,LSL#2]
18D8A4:  UBFX.W          R1, R3, #8, #8
18D8A8:  MOV             R3, R8
18D8AA:  LDR.W           R1, [R8,R1,LSL#2]
18D8AE:  MOV             R8, R12
18D8B0:  EORS            R0, R1
18D8B2:  LSRS            R1, R2, #0x18
18D8B4:  UBFX.W          R2, R4, #0x10, #8
18D8B8:  LDR.W           R1, [R10,R1,LSL#2]
18D8BC:  LDR             R4, [SP,#0x3C+var_28]
18D8BE:  LDR.W           R2, [LR,R2,LSL#2]
18D8C2:  MOV             R10, R9
18D8C4:  ADDS            R4, #1
18D8C6:  EORS            R0, R2
18D8C8:  LDR             R2, [SP,#0x3C+var_2C]
18D8CA:  EOR.W           R6, R0, R1
18D8CE:  LDR             R1, [SP,#0x3C+var_24]
18D8D0:  STR.W           R6, [R12,#0xC]
18D8D4:  LDR             R2, [R2]
18D8D6:  SUBS            R2, #1
18D8D8:  CMP             R4, R2
18D8DA:  BLT             loc_18D7F8
18D8DC:  LDR.W           R9, [SP,#0x3C+var_3C]
18D8E0:  MOV             R12, R10
18D8E2:  MOV             R10, R6
18D8E4:  STR.W           R11, [SP,#0x3C+var_28]
18D8E8:  B               loc_18D8F0
18D8EA:  SUBS            R2, #1
18D8EC:  LDR.W           R12, [SP,#0x3C+var_38]
18D8F0:  LSLS            R0, R2, #4
18D8F2:  LDR             R3, [SP,#0x3C+var_24]
18D8F4:  LDR.W           R0, [R9,R0]
18D8F8:  ADD.W           R1, R9, R2,LSL#4
18D8FC:  LDR             R4, [SP,#0x3C+var_20]
18D8FE:  LDRD.W          R2, R6, [R1,#4]
18D902:  EORS            R3, R0
18D904:  LDR             R1, [R1,#0xC]
18D906:  EOR.W           R2, R2, R12
18D90A:  UXTB            R0, R3
18D90C:  EOR.W           R1, R1, R10
18D910:  ADD.W           R0, R4, R0,LSL#2
18D914:  LDRB            R0, [R0,#1]
18D916:  STRB.W          R0, [R8]
18D91A:  UBFX.W          R0, R2, #8, #8
18D91E:  ADD.W           R0, R4, R0,LSL#2
18D922:  LDRB            R0, [R0,#1]
18D924:  STRB.W          R0, [R8,#1]
18D928:  LDR             R0, [SP,#0x3C+var_28]
18D92A:  EORS            R0, R6
18D92C:  UBFX.W          R6, R0, #0x10, #8
18D930:  ADD.W           R6, R4, R6,LSL#2
18D934:  LDRB            R6, [R6,#1]
18D936:  STRB.W          R6, [R8,#2]
18D93A:  LSRS            R6, R1, #0x18
18D93C:  ADD.W           R6, R4, R6,LSL#2
18D940:  LDRB            R6, [R6,#1]
18D942:  STRB.W          R6, [R8,#3]
18D946:  UXTB            R6, R2
18D948:  ADD.W           R6, R4, R6,LSL#2
18D94C:  LDRB            R6, [R6,#1]
18D94E:  STRB.W          R6, [R8,#4]
18D952:  UBFX.W          R6, R0, #8, #8
18D956:  ADD.W           R6, R4, R6,LSL#2
18D95A:  LDRB            R6, [R6,#1]
18D95C:  STRB.W          R6, [R8,#5]
18D960:  UBFX.W          R6, R1, #0x10, #8
18D964:  ADD.W           R6, R4, R6,LSL#2
18D968:  LDRB            R6, [R6,#1]
18D96A:  STRB.W          R6, [R8,#6]
18D96E:  LSRS            R6, R3, #0x18
18D970:  ADD.W           R6, R4, R6,LSL#2
18D974:  LDRB            R6, [R6,#1]
18D976:  STRB.W          R6, [R8,#7]
18D97A:  UXTB            R6, R0
18D97C:  ADD.W           R6, R4, R6,LSL#2
18D980:  LSRS            R0, R0, #0x18
18D982:  ADD.W           R0, R4, R0,LSL#2
18D986:  LDRB            R6, [R6,#1]
18D988:  STRB.W          R6, [R8,#8]
18D98C:  UBFX.W          R6, R1, #8, #8
18D990:  UXTB            R1, R1
18D992:  ADD.W           R6, R4, R6,LSL#2
18D996:  ADD.W           R1, R4, R1,LSL#2
18D99A:  LDRB            R6, [R6,#1]
18D99C:  STRB.W          R6, [R8,#9]
18D9A0:  UBFX.W          R6, R3, #0x10, #8
18D9A4:  ADD.W           R6, R4, R6,LSL#2
18D9A8:  LDRB            R6, [R6,#1]
18D9AA:  STRB.W          R6, [R8,#0xA]
18D9AE:  LSRS            R6, R2, #0x18
18D9B0:  ADD.W           R6, R4, R6,LSL#2
18D9B4:  LDRB            R6, [R6,#1]
18D9B6:  STRB.W          R6, [R8,#0xB]
18D9BA:  LDRB            R1, [R1,#1]
18D9BC:  STRB.W          R1, [R8,#0xC]
18D9C0:  UBFX.W          R1, R3, #8, #8
18D9C4:  LDR             R3, [SP,#0x3C+var_2C]
18D9C6:  ADD.W           R1, R4, R1,LSL#2
18D9CA:  LDRB            R1, [R1,#1]
18D9CC:  STRB.W          R1, [R8,#0xD]
18D9D0:  UBFX.W          R1, R2, #0x10, #8
18D9D4:  ADD.W           R1, R4, R1,LSL#2
18D9D8:  LDRB            R1, [R1,#1]
18D9DA:  STRB.W          R1, [R8,#0xE]
18D9DE:  LDRB            R0, [R0,#1]
18D9E0:  STRB.W          R0, [R8,#0xF]
18D9E4:  LDR             R0, [R3]
18D9E6:  LDR.W           R1, [R8]
18D9EA:  LDR.W           R2, [R8,#0xC]
18D9EE:  LSLS            R0, R0, #4
18D9F0:  LDR.W           R0, [R9,R0]
18D9F4:  EORS            R0, R1
18D9F6:  STR.W           R0, [R8]
18D9FA:  LDR             R0, [R3]
18D9FC:  LDRD.W          R1, R3, [R8,#4]
18DA00:  ADD.W           R0, R9, R0,LSL#4
18DA04:  LDR             R6, [R0,#4]
18DA06:  EORS            R1, R6
18DA08:  STR.W           R1, [R8,#4]
18DA0C:  LDR             R1, [R0,#8]
18DA0E:  EORS            R1, R3
18DA10:  STR.W           R1, [R8,#8]
18DA14:  LDR             R0, [R0,#0xC]
18DA16:  EORS            R0, R2
18DA18:  STR.W           R0, [R8,#0xC]
18DA1C:  MOVS            R0, #0
18DA1E:  ADD             SP, SP, #0x20 ; ' '
18DA20:  POP.W           {R8-R11}
18DA24:  POP             {R4-R7,PC}
