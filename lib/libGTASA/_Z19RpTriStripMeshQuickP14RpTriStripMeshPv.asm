; =========================================================
; Game Engine Function: _Z19RpTriStripMeshQuickP14RpTriStripMeshPv
; Address            : 0x21A64C - 0x21AAE0
; =========================================================

21A64C:  PUSH            {R4-R7,LR}
21A64E:  ADD             R7, SP, #0xC
21A650:  PUSH.W          {R8-R11}
21A654:  SUB             SP, SP, #0x44
21A656:  ADD.W           R9, SP, #0x60+var_3C
21A65A:  MOV             R12, R0
21A65C:  ADD.W           R2, R9, #8
21A660:  STRD.W          R9, R9, [SP,#0x60+var_3C]
21A664:  STR             R2, [SP,#0x60+var_34]
21A666:  MOV             R1, R2
21A668:  STR             R2, [SP,#0x60+var_30]
21A66A:  ADD.W           R2, R9, #0x10
21A66E:  STR             R1, [SP,#0x60+var_50]
21A670:  STR             R2, [SP,#0x60+var_28]
21A672:  MOV             R1, R2
21A674:  STR             R2, [SP,#0x60+var_2C]
21A676:  ADD.W           R2, R9, #0x18
21A67A:  STR             R1, [SP,#0x60+var_54]
21A67C:  MOV             R1, R2
21A67E:  STR             R2, [SP,#0x60+var_20]
21A680:  STR             R2, [SP,#0x60+var_24]
21A682:  STRD.W          R0, R1, [SP,#0x60+var_5C]
21A686:  LDR.W           LR, [R12,#0xC]!
21A68A:  CMP             LR, R12
21A68C:  BNE             loc_21A6B6
21A68E:  B               loc_21A6EC
21A690:  MOVS            R2, #0
21A692:  ADD.W           R0, R9, R2,LSL#3
21A696:  LDR.W           R1, [R9,R2,LSL#3]
21A69A:  STR.W           R0, [LR,#0xC]
21A69E:  MOV             R0, LR
21A6A0:  STR.W           R1, [R0,#8]!
21A6A4:  LDR.W           R1, [R9,R2,LSL#3]
21A6A8:  STR             R0, [R1,#4]
21A6AA:  STR.W           R0, [R9,R2,LSL#3]
21A6AE:  LDR.W           LR, [LR]
21A6B2:  CMP             LR, R12
21A6B4:  BEQ             loc_21A6EC
21A6B6:  LDR.W           R3, [LR,#0x10]
21A6BA:  CMP             R3, #0
21A6BC:  BEQ             loc_21A690
21A6BE:  SUB.W           R6, LR, #8
21A6C2:  ADD.W           R5, LR, #0x14
21A6C6:  MOVS            R2, #0
21A6C8:  MOVS            R4, #0
21A6CA:  LDR.W           R0, [R5,R4,LSL#2]
21A6CE:  LDR             R1, [R0,#0x10]
21A6D0:  CMP             R1, #0
21A6D2:  IT NE
21A6D4:  CMPNE           R1, R6
21A6D6:  BNE             loc_21A6E2
21A6D8:  LDR             R0, [R0,#0x14]
21A6DA:  CMP             R0, #0
21A6DC:  IT NE
21A6DE:  CMPNE           R0, R6
21A6E0:  BEQ             loc_21A6E4
21A6E2:  ADDS            R2, #1
21A6E4:  ADDS            R4, #1
21A6E6:  CMP             R4, R3
21A6E8:  BCC             loc_21A6CA
21A6EA:  B               loc_21A692
21A6EC:  MOV.W           R11, #0
21A6F0:  B               loc_21AAB0
21A6F2:  SUB.W           R5, R4, #0x10
21A6F6:  MOVS            R6, #0
21A6F8:  MOV.W           R10, #0
21A6FC:  MOV.W           R8, #0
21A700:  ADD.W           R0, R4, #0xC
21A704:  STR             R0, [SP,#0x60+var_44]
21A706:  STRD.W          R5, R4, [SP,#0x60+var_4C]
21A70A:  MOVW            R0, #0xAAAB
21A70E:  STR             R6, [SP,#0x60+var_40]
21A710:  MOVT            R0, #0xAAAA
21A714:  UMULL.W         R0, R1, R8, R0
21A718:  LSRS            R0, R1, #1
21A71A:  LDR             R1, [SP,#0x60+var_44]
21A71C:  ADD.W           R0, R0, R0,LSL#1
21A720:  SUB.W           R0, R8, R0
21A724:  LDR.W           R6, [R1,R0,LSL#2]
21A728:  MOV             R0, R6
21A72A:  LDR.W           R1, [R0,#0x10]!
21A72E:  CMP             R1, R5
21A730:  IT EQ
21A732:  ADDEQ.W         R0, R6, #0x14
21A736:  LDR             R1, [R0]
21A738:  CBZ             R1, loc_21A760
21A73A:  LDR             R0, [R1,#0x10]
21A73C:  MOV.W           R9, #1
21A740:  CBZ             R0, loc_21A7BA
21A742:  ADD.W           R0, R6, #0x1A
21A746:  CMP.W           R8, #3
21A74A:  IT CC
21A74C:  ADDCC.W         R0, R6, #0x18
21A750:  ADDS.W          R11, R11, #1
21A754:  IT EQ
21A756:  MOVEQ           R11, R9
21A758:  LDRH            R5, [R0]
21A75A:  STR.W           R11, [R4,#0x20]
21A75E:  B               loc_21A776
21A760:  MOV.W           R9, #1
21A764:  B               loc_21A7BA
21A766:  MOV             R1, R0
21A768:  MOV             R6, R0
21A76A:  LDR.W           R2, [R1,#0x10]!
21A76E:  CMP             R4, R2
21A770:  IT EQ
21A772:  ADDEQ           R1, #4
21A774:  LDR             R1, [R1]
21A776:  MOV             R4, R1
21A778:  CMP             R4, #0
21A77A:  ITT NE
21A77C:  LDRNE           R0, [R4,#0x30]
21A77E:  CMPNE           R11, R0
21A780:  BEQ             loc_21A7B6
21A782:  UXTH            R2, R5
21A784:  MOV             R0, R6
21A786:  MOV             R1, R4
21A788:  MOV             R3, R11
21A78A:  STR.W           R11, [R4,#0x30]
21A78E:  BL              sub_21AAE0
21A792:  ADD.W           R9, R9, #1
21A796:  MOVS            R1, #0
21A798:  CMP             R0, #0
21A79A:  BEQ             loc_21A776
21A79C:  MOV             R1, R6
21A79E:  LDRH            R2, [R0,#0x18]
21A7A0:  LDRH.W          R5, [R1,#0x18]!
21A7A4:  CMP             R5, R2
21A7A6:  BEQ             loc_21A766
21A7A8:  LDRH            R2, [R0,#0x1A]
21A7AA:  CMP             R5, R2
21A7AC:  IT NE
21A7AE:  ADDNE.W         R1, R6, #0x1A
21A7B2:  LDRH            R5, [R1]
21A7B4:  B               loc_21A766
21A7B6:  LDRD.W          R5, R4, [SP,#0x60+var_4C]
21A7BA:  LDR             R6, [SP,#0x60+var_40]
21A7BC:  CMP             R9, R10
21A7BE:  ITT HI
21A7C0:  MOVHI           R6, R8
21A7C2:  MOVHI           R10, R9
21A7C4:  ADD.W           R8, R8, #1
21A7C8:  CMP.W           R8, #6
21A7CC:  BNE             loc_21A70A
21A7CE:  MOVW            R2, #0xAAAB
21A7D2:  LDRD.W          R0, R1, [R4]
21A7D6:  MOVT            R2, #0xAAAA
21A7DA:  STR             R0, [R1]
21A7DC:  UMULL.W         R2, R3, R6, R2
21A7E0:  LDRD.W          R0, R1, [R4]
21A7E4:  MOV.W           R10, #0
21A7E8:  MOV             R2, R6
21A7EA:  STR             R1, [R0,#4]
21A7EC:  MOV.W           R9, #1
21A7F0:  STRD.W          R10, R10, [R4]
21A7F4:  LDR             R1, [SP,#0x60+var_44]
21A7F6:  LSRS            R0, R3, #1
21A7F8:  ADD.W           R0, R0, R0,LSL#1
21A7FC:  SUBS            R0, R6, R0
21A7FE:  LDR.W           R6, [R1,R0,LSL#2]
21A802:  MOV             R0, R6
21A804:  LDR.W           R1, [R0,#0x10]!
21A808:  CMP             R1, R5
21A80A:  IT EQ
21A80C:  ADDEQ.W         R0, R6, #0x14
21A810:  LDR             R5, [R0]
21A812:  CMP             R5, #0
21A814:  ITT NE
21A816:  LDRNE           R0, [R5,#0x10]
21A818:  CMPNE           R0, #0
21A81A:  BEQ             loc_21A8A0
21A81C:  ADD.W           R0, R6, #0x1A
21A820:  CMP             R2, #3
21A822:  IT CC
21A824:  ADDCC.W         R0, R6, #0x18
21A828:  LDRH.W          R8, [R0]
21A82C:  B               loc_21A84E
21A82E:  LDRD.W          R1, R2, [R4]
21A832:  MOV             R6, R0
21A834:  STR             R1, [R2]
21A836:  LDRD.W          R1, R2, [R4]
21A83A:  STR             R2, [R1,#4]
21A83C:  MOV             R1, R0
21A83E:  STRD.W          R10, R10, [R4]
21A842:  LDR.W           R2, [R1,#0x10]!
21A846:  CMP             R4, R2
21A848:  IT EQ
21A84A:  ADDEQ           R1, #4
21A84C:  LDR             R5, [R1]
21A84E:  MOV             R4, R5
21A850:  CMP             R4, #0
21A852:  ITT NE
21A854:  LDRNE           R0, [R4,#0x30]
21A856:  CMPNE           R0, #0
21A858:  BEQ             loc_21A8A0
21A85A:  STR.W           R9, [R6,#0x1C]
21A85E:  MOVS            R5, #0
21A860:  LDRD.W          R0, R1, [R4,#0x10]
21A864:  UXTH.W          R2, R8
21A868:  STR             R5, [R4,#0x30]
21A86A:  MOVS            R3, #0
21A86C:  STR             R0, [R1]
21A86E:  LDRD.W          R0, R1, [R4,#0x10]
21A872:  STR             R1, [R0,#4]
21A874:  MOV             R0, R6
21A876:  MOV             R1, R4
21A878:  STRD.W          R5, R5, [R4,#0x10]
21A87C:  BL              sub_21AAE0
21A880:  CMP             R0, #0
21A882:  BEQ             loc_21A84E
21A884:  MOV             R1, R6
21A886:  LDRH            R2, [R0,#0x18]
21A888:  LDRH.W          R8, [R1,#0x18]!
21A88C:  CMP             R8, R2
21A88E:  BEQ             loc_21A82E
21A890:  LDRH            R2, [R0,#0x1A]
21A892:  CMP             R8, R2
21A894:  IT NE
21A896:  ADDNE.W         R1, R6, #0x1A
21A89A:  LDRH.W          R8, [R1]
21A89E:  B               loc_21A82E
21A8A0:  LDR             R0, [SP,#0x60+var_48]
21A8A2:  LDR             R0, [R0,#8]
21A8A4:  CBZ             R0, loc_21A8D4
21A8A6:  LDR             R4, [SP,#0x60+var_4C]
21A8A8:  ADD.W           R9, SP, #0x60+var_3C
21A8AC:  MOVS            R1, #0
21A8AE:  LDR             R2, [SP,#0x60+var_44]
21A8B0:  LDR.W           R2, [R2,R1,LSL#2]
21A8B4:  LDR             R3, [R2,#0x1C]
21A8B6:  CMP             R3, #0
21A8B8:  ITTT NE
21A8BA:  MOVNE           R3, R2
21A8BC:  LDRNE.W         R6, [R3,#0x10]!
21A8C0:  CMPNE           R6, #0
21A8C2:  BEQ             loc_21A8CA
21A8C4:  LDR.W           R5, [R2,#0x14]!
21A8C8:  CBNZ            R5, loc_21A8DE
21A8CA:  ADDS            R1, #1
21A8CC:  CMP             R1, R0
21A8CE:  BCC             loc_21A8AE
21A8D0:  MOVS            R2, #0
21A8D2:  B               loc_21A944
21A8D4:  MOVS            R2, #0
21A8D6:  ADD.W           R9, SP, #0x60+var_3C
21A8DA:  LDR             R4, [SP,#0x60+var_4C]
21A8DC:  B               loc_21A944
21A8DE:  CMP             R6, R4
21A8E0:  IT EQ
21A8E2:  MOVEQ           R3, R2
21A8E4:  LDR             R0, [R3]
21A8E6:  CBZ             R0, loc_21A930
21A8E8:  MOV             R2, R4
21A8EA:  MOV             R4, R0
21A8EC:  LDR.W           R12, [R4,#0x18]
21A8F0:  CMP.W           R12, #0
21A8F4:  BEQ             loc_21A944
21A8F6:  MOVS            R1, #0
21A8F8:  ADD.W           R3, R4, R1,LSL#2
21A8FC:  LDR             R3, [R3,#0x1C]
21A8FE:  LDR             R6, [R3,#0x1C]
21A900:  CMP             R6, #0
21A902:  ITTT NE
21A904:  MOVNE           R6, R3
21A906:  LDRNE.W         R5, [R6,#0x10]!
21A90A:  CMPNE           R5, R2
21A90C:  BEQ             loc_21A91A
21A90E:  MOV             R0, R4
21A910:  LDR.W           R4, [R3,#0x14]!
21A914:  CMP             R4, R2
21A916:  MOV             R4, R0
21A918:  BNE             loc_21A922
21A91A:  ADDS            R1, #1
21A91C:  CMP             R1, R12
21A91E:  BCC             loc_21A8F8
21A920:  B               loc_21A944
21A922:  CMP             R5, R4
21A924:  IT EQ
21A926:  MOVEQ           R6, R3
21A928:  LDR             R0, [R6]
21A92A:  CMP             R0, #0
21A92C:  BNE             loc_21A8E8
21A92E:  B               loc_21A944
21A930:  MOVS            R2, #0
21A932:  B               loc_21A944
21A934:  MOVS            R2, #0
21A936:  MOV             R4, R12
21A938:  B               loc_21A944
21A93A:  CMP             R4, R12
21A93C:  MOV             R4, R12
21A93E:  IT EQ
21A940:  MOVEQ           R1, R3
21A942:  LDR             R2, [R1]
21A944:  MOV             R12, R2
21A946:  MOV             LR, R4
21A948:  MOVS            R2, #0
21A94A:  ADD.W           R0, LR, R2,LSL#2
21A94E:  LDR             R0, [R0,#0x1C]
21A950:  LDR.W           R1, [R0,#0x10]!
21A954:  CMP             LR, R1
21A956:  IT EQ
21A958:  ADDEQ           R0, #4
21A95A:  LDR             R3, [R0]
21A95C:  CMP             R3, #0
21A95E:  ITTT NE
21A960:  MOVNE           R8, R3
21A962:  LDRNE.W         R0, [R8,#0x10]!
21A966:  CMPNE           R0, #0
21A968:  BEQ.W           loc_21AA6C
21A96C:  LDR             R1, [R3,#0x14]
21A96E:  STR             R0, [R1]
21A970:  LDRD.W          R0, R1, [R3,#0x10]
21A974:  STR             R1, [R0,#4]
21A976:  LDR             R4, [R3,#0x18]
21A978:  STRD.W          R10, R10, [R3,#0x10]
21A97C:  CMP             R4, #0
21A97E:  BEQ             loc_21AA1E
21A980:  MOVS            R5, #0
21A982:  MOVS            R0, #0
21A984:  ADD.W           R1, R3, R5,LSL#2
21A988:  LDR             R1, [R1,#0x1C]
21A98A:  LDR             R6, [R1,#0x10]
21A98C:  CMP             R6, #0
21A98E:  IT NE
21A990:  CMPNE           R6, R3
21A992:  BEQ             loc_21A998
21A994:  LDR             R6, [R6,#0x10]
21A996:  CBNZ            R6, loc_21A9A6
21A998:  LDR             R1, [R1,#0x14]
21A99A:  CBZ             R1, loc_21A9A8
21A99C:  CMP             R1, R3
21A99E:  ITT NE
21A9A0:  LDRNE           R1, [R1,#0x10]
21A9A2:  CMPNE           R1, #0
21A9A4:  BEQ             loc_21A9A8
21A9A6:  ADDS            R0, #1
21A9A8:  ADDS            R5, #1
21A9AA:  CMP             R4, R5
21A9AC:  BNE             loc_21A984
21A9AE:  LDR.W           R0, [R9,R0,LSL#3]
21A9B2:  MOVS            R5, #0
21A9B4:  STR.W           R0, [R8]
21A9B8:  MOVS            R0, #0
21A9BA:  ADD.W           R1, R3, R0,LSL#2
21A9BE:  LDR             R1, [R1,#0x1C]
21A9C0:  LDR             R6, [R1,#0x10]
21A9C2:  CMP             R6, #0
21A9C4:  IT NE
21A9C6:  CMPNE           R6, R3
21A9C8:  BEQ             loc_21A9CE
21A9CA:  LDR             R6, [R6,#0x10]
21A9CC:  CBNZ            R6, loc_21A9DC
21A9CE:  LDR             R1, [R1,#0x14]
21A9D0:  CBZ             R1, loc_21A9DE
21A9D2:  CMP             R1, R3
21A9D4:  ITT NE
21A9D6:  LDRNE           R1, [R1,#0x10]
21A9D8:  CMPNE           R1, #0
21A9DA:  BEQ             loc_21A9DE
21A9DC:  ADDS            R5, #1
21A9DE:  ADDS            R0, #1
21A9E0:  CMP             R4, R0
21A9E2:  BNE             loc_21A9BA
21A9E4:  CMP             R4, #0
21A9E6:  ADD.W           R0, R9, R5,LSL#3
21A9EA:  STR             R0, [R3,#0x14]
21A9EC:  BEQ             loc_21AA28
21A9EE:  MOVS            R0, #0
21A9F0:  MOVS            R5, #0
21A9F2:  ADD.W           R1, R3, R0,LSL#2
21A9F6:  LDR             R1, [R1,#0x1C]
21A9F8:  LDR             R6, [R1,#0x10]
21A9FA:  CMP             R6, #0
21A9FC:  IT NE
21A9FE:  CMPNE           R6, R3
21AA00:  BEQ             loc_21AA06
21AA02:  LDR             R6, [R6,#0x10]
21AA04:  CBNZ            R6, loc_21AA14
21AA06:  LDR             R1, [R1,#0x14]
21AA08:  CBZ             R1, loc_21AA16
21AA0A:  CMP             R1, R3
21AA0C:  ITT NE
21AA0E:  LDRNE           R1, [R1,#0x10]
21AA10:  CMPNE           R1, #0
21AA12:  BEQ             loc_21AA16
21AA14:  ADDS            R5, #1
21AA16:  ADDS            R0, #1
21AA18:  CMP             R4, R0
21AA1A:  BNE             loc_21A9F2
21AA1C:  B               loc_21AA2A
21AA1E:  LDR             R0, [SP,#0x60+var_3C]
21AA20:  MOVS            R5, #0
21AA22:  STRD.W          R0, R9, [R3,#0x10]
21AA26:  B               loc_21AA2A
21AA28:  MOVS            R5, #0
21AA2A:  LDR.W           R0, [R9,R5,LSL#3]
21AA2E:  STR.W           R8, [R0,#4]
21AA32:  LDR             R5, [R3,#0x18]
21AA34:  CBZ             R5, loc_21AA66
21AA36:  MOVS            R0, #0
21AA38:  MOVS            R4, #0
21AA3A:  ADD.W           R1, R3, R0,LSL#2
21AA3E:  LDR             R1, [R1,#0x1C]
21AA40:  LDR             R6, [R1,#0x10]
21AA42:  CMP             R6, #0
21AA44:  IT NE
21AA46:  CMPNE           R6, R3
21AA48:  BEQ             loc_21AA4E
21AA4A:  LDR             R6, [R6,#0x10]
21AA4C:  CBNZ            R6, loc_21AA5C
21AA4E:  LDR             R1, [R1,#0x14]
21AA50:  CBZ             R1, loc_21AA5E
21AA52:  CMP             R1, R3
21AA54:  ITT NE
21AA56:  LDRNE           R1, [R1,#0x10]
21AA58:  CMPNE           R1, #0
21AA5A:  BEQ             loc_21AA5E
21AA5C:  ADDS            R4, #1
21AA5E:  ADDS            R0, #1
21AA60:  CMP             R5, R0
21AA62:  BNE             loc_21AA3A
21AA64:  B               loc_21AA68
21AA66:  MOVS            R4, #0
21AA68:  STR.W           R8, [R9,R4,LSL#3]
21AA6C:  ADDS            R2, #1
21AA6E:  CMP             R2, #3
21AA70:  BNE.W           loc_21A94A
21AA74:  CMP.W           R12, #0
21AA78:  BEQ             loc_21AAB0
21AA7A:  LDR.W           R0, [R12,#0x18]
21AA7E:  MOVS            R2, #0
21AA80:  MOV             R4, R12
21AA82:  CMP             R0, #0
21AA84:  BEQ.W           loc_21A944
21AA88:  MOVS            R2, #0
21AA8A:  ADD.W           R1, R12, R2,LSL#2
21AA8E:  LDR             R3, [R1,#0x1C]
21AA90:  LDR             R1, [R3,#0x1C]
21AA92:  CBZ             R1, loc_21AAA8
21AA94:  MOV             R1, R3
21AA96:  LDR.W           R4, [R1,#0x10]!
21AA9A:  CMP             R4, LR
21AA9C:  ITT NE
21AA9E:  LDRNE.W         R5, [R3,#0x14]!
21AAA2:  CMPNE           R5, LR
21AAA4:  BNE.W           loc_21A93A
21AAA8:  ADDS            R2, #1
21AAAA:  CMP             R2, R0
21AAAC:  BCC             loc_21AA8A
21AAAE:  B               loc_21A934
21AAB0:  LDR             R4, [SP,#0x60+var_3C]
21AAB2:  CMP             R4, R9
21AAB4:  BNE.W           loc_21A6F2
21AAB8:  LDR             R4, [SP,#0x60+var_34]
21AABA:  LDR             R0, [SP,#0x60+var_50]
21AABC:  CMP             R4, R0
21AABE:  BNE.W           loc_21A6F2
21AAC2:  LDR             R4, [SP,#0x60+var_2C]
21AAC4:  LDR             R0, [SP,#0x60+var_54]
21AAC6:  CMP             R4, R0
21AAC8:  BNE.W           loc_21A6F2
21AACC:  LDR             R4, [SP,#0x60+var_24]
21AACE:  LDR             R0, [SP,#0x60+var_58]
21AAD0:  CMP             R4, R0
21AAD2:  BNE.W           loc_21A6F2
21AAD6:  LDR             R0, [SP,#0x60+var_5C]
21AAD8:  ADD             SP, SP, #0x44 ; 'D'
21AADA:  POP.W           {R8-R11}
21AADE:  POP             {R4-R7,PC}
