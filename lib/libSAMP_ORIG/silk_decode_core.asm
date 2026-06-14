; =========================================================
; Game Engine Function: silk_decode_core
; Address            : 0xB8590 - 0xB8FAA
; =========================================================

B8590:  PUSH            {R4-R7,LR}
B8592:  ADD             R7, SP, #0xC
B8594:  PUSH.W          {R8-R11}
B8598:  SUB             SP, SP, #0x94
B859A:  MOV             R6, R0
B859C:  LDR.W           R0, =(__stack_chk_guard_ptr - 0xB85AA)
B85A0:  STR.W           R2, [R7,#src]
B85A4:  MOV             R10, R1
B85A6:  ADD             R0, PC; __stack_chk_guard_ptr
B85A8:  MOVS            R1, #7
B85AA:  LDR             R0, [R0]; __stack_chk_guard
B85AC:  LDR             R0, [R0]
B85AE:  STR.W           R0, [R7,#var_24]
B85B2:  LDR.W           R0, [R6,#0x920]
B85B6:  ADD.W           R2, R1, R0,LSL#1
B85BA:  BIC.W           R2, R2, #7
B85BE:  SUB.W           R2, SP, R2
B85C2:  STR.W           R2, [R7,#var_94]
B85C6:  MOV             SP, R2
B85C8:  LDR.W           R2, [R6,#0x918]
B85CC:  ADD             R0, R2
B85CE:  ADD.W           R0, R1, R0,LSL#2
B85D2:  BIC.W           R0, R0, #7
B85D6:  SUB.W           R0, SP, R0
B85DA:  STR.W           R0, [R7,#var_98]
B85DE:  MOV             SP, R0
B85E0:  LDR.W           R0, [R6,#0x91C]
B85E4:  ADD.W           R1, R1, R0,LSL#2
B85E8:  BIC.W           R1, R1, #7
B85EC:  SUB.W           R5, SP, R1
B85F0:  MOVS            R1, #0x47 ; 'G'
B85F2:  ADD.W           R0, R1, R0,LSL#2
B85F6:  MOV             R8, R5
B85F8:  BIC.W           R0, R0, #7
B85FC:  MOV             SP, R5
B85FE:  SUB.W           R0, SP, R0
B8602:  STR.W           R0, [R7,#var_7C]
B8606:  MOV             SP, R0
B8608:  LDRSB.W         R0, [R6,#0xACF]
B860C:  CMP             R2, #1
B860E:  STR.W           R0, [R7,#var_9C]
B8612:  MOV             R0, R6
B8614:  STR.W           R0, [R7,#var_60]
B8618:  BLT             loc_B86A2
B861A:  LDR.W           R0, =(silk_Quantization_Offsets_Q10_ptr - 0xB862E)
B861E:  MOV             R2, #0xFFFFFFFC
B8622:  LDRSB.W         R1, [R6,#0xACD]
B8626:  MOVW            R12, #0x636B
B862A:  ADD             R0, PC; silk_Quantization_Offsets_Q10_ptr
B862C:  LDR.W           R6, [R7,#var_60]
B8630:  MOVW            LR, #0x8435
B8634:  MOVT            R12, #0x3619
B8638:  LDR             R0, [R0]; silk_Quantization_Offsets_Q10
B863A:  AND.W           R1, R2, R1,LSL#1
B863E:  LDRSB.W         R6, [R6,#0xACE]
B8642:  MOVT            LR, #0xBB3
B8646:  ADD             R0, R1
B8648:  LDR.W           R2, [R7,#var_60]
B864C:  LDRSH.W         R0, [R0,R6,LSL#1]
B8650:  ADDS            R1, R2, #4
B8652:  LDRSB.W         R5, [R2,#0xAD2]
B8656:  MOVS            R2, #0
B8658:  LSLS            R0, R0, #4
B865A:  B               loc_B8662
B865C:  ORR.W           R5, R5, #0x500
B8660:  B               loc_B867A
B8662:  MLA.W           R6, R5, LR, R12
B8666:  LDRSH.W         R4, [R3,R2,LSL#1]
B866A:  CMP             R4, #1
B866C:  MOV.W           R5, R4,LSL#14
B8670:  STR.W           R5, [R1,R2,LSL#2]
B8674:  BLT             loc_B8680
B8676:  SUB.W           R5, R5, #0x500
B867A:  STR.W           R5, [R1,R2,LSL#2]
B867E:  B               loc_B8686
B8680:  CMP.W           R4, #0xFFFFFFFF
B8684:  BLE             loc_B865C
B8686:  ADD             R5, R0
B8688:  CMP             R6, #0
B868A:  IT LT
B868C:  NEGLT           R5, R5
B868E:  STR.W           R5, [R1,R2,LSL#2]
B8692:  ADDS            R5, R6, R4
B8694:  ADDS            R2, #1
B8696:  LDR.W           R6, [R7,#var_60]
B869A:  LDR.W           R4, [R6,#0x918]
B869E:  CMP             R2, R4
B86A0:  BLT             loc_B8662
B86A2:  ADDW            R12, R6, #0x504
B86A6:  STR.W           R12, [R7,#var_AC]
B86AA:  LDR.W           R1, [R7,#var_7C]
B86AE:  MOV             LR, R8
B86B0:  LDM.W           R12!, {R2-R6}
B86B4:  STM             R1!, {R2-R6}
B86B6:  LDM.W           R12!, {R2-R6}
B86BA:  STM             R1!, {R2-R6}
B86BC:  LDM.W           R12, {R0,R2-R6}
B86C0:  STM             R1!, {R0,R2-R6}
B86C2:  LDR.W           R6, [R7,#var_60]
B86C6:  LDR.W           R0, [R6,#0x914]
B86CA:  CMP             R0, #1
B86CC:  BLT.W           loc_B8F6E
B86D0:  MOVW            R0, #0x1044
B86D4:  ADD.W           R9, R6, #4
B86D8:  ADD             R0, R6
B86DA:  STR.W           R0, [R7,#var_90]
B86DE:  LDR.W           R0, [R7,#var_98]
B86E2:  MOV.W           R11, #0
B86E6:  SUBS            R0, #4
B86E8:  STR.W           R0, [R7,#var_A0]
B86EC:  LDR.W           R0, [R7,#var_94]
B86F0:  SUBS            R0, #2
B86F2:  STR.W           R0, [R7,#var_A8]
B86F6:  ADD.W           R0, R6, #0x1040
B86FA:  STR.W           R0, [R7,#var_88]
B86FE:  LDR.W           R0, [R6,#0x920]
B8702:  STR.W           R0, [R7,#var_84]
B8706:  LDR.W           R0, [R7,#src]
B870A:  STR.W           R0, [R7,#var_64]
B870E:  STR.W           R10, [R7,#var_8C]
B8712:  STR.W           LR, [R7,#var_78]
B8716:  MOV             R0, #0xFFFFFFE0
B871A:  LDR.W           R2, [R6,#0x924]
B871E:  AND.W           R0, R0, R11,LSL#4
B8722:  ADD             R0, R10
B8724:  ADD.W           R1, R0, #0x20 ; ' '; src
B8728:  SUB.W           R0, R7, #-dest; dest
B872C:  LSLS            R2, R2, #1; n
B872E:  STR.W           R1, [R7,#var_50]
B8732:  BLX             j_memcpy
B8736:  ADD.W           R0, R10, R11,LSL#2
B873A:  LDR.W           R4, [R0,#0x10]!
B873E:  STR.W           R0, [R7,#var_4C]
B8742:  CMP             R4, #0
B8744:  MOV             R0, R4
B8746:  IT MI
B8748:  NEGMI           R0, R4
B874A:  CLZ.W           R8, R0
B874E:  SUB.W           R0, R8, #1
B8752:  LSL.W           R5, R4, R0
B8756:  MOV             R0, #0x1FFFFFFF
B875A:  ASRS            R1, R5, #0x10
B875C:  BLX             sub_108848
B8760:  UXTH            R2, R5
B8762:  SXTH            R1, R0
B8764:  MULS            R2, R1
B8766:  MOVS            R3, #1
B8768:  ADD.W           R3, R3, R0,ASR#15
B876C:  LDRB.W          R12, [R6,#0xACD]
B8770:  ASRS            R3, R3, #1
B8772:  STR.W           R4, [R7,#var_6C]
B8776:  ASRS            R2, R2, #0x10
B8778:  SMLABT.W        R2, R0, R5, R2
B877C:  NEGS            R2, R2
B877E:  LSLS            R2, R2, #3
B8780:  MULS            R3, R2
B8782:  ADD.W           R3, R3, R0,LSL#16
B8786:  SMLATB.W        R0, R2, R0, R3
B878A:  UXTH            R2, R2
B878C:  MULS            R2, R1
B878E:  ADD.W           R3, R0, R2,ASR#16
B8792:  ADD.W           R0, R11, R11,LSL#2
B8796:  ADD.W           LR, R10, R0,LSL#1
B879A:  RSB.W           R0, R8, #0x3E ; '>'
B879E:  CMP             R0, #0x2F ; '/'
B87A0:  BGT             loc_B87C4
B87A2:  RSB.W           R6, R0, #0x2F ; '/'
B87A6:  MOV             R0, #0x7FFFFFFF
B87AA:  MOV.W           R2, #0x80000000
B87AE:  LSRS            R0, R6
B87B0:  ASRS            R2, R6
B87B2:  CMP             R2, R0
B87B4:  BLE             loc_B87DA
B87B6:  CMP             R3, R2
B87B8:  MOV             R4, R2
B87BA:  BGT             loc_B87E8
B87BC:  CMP             R3, R0
B87BE:  IT LT
B87C0:  MOVLT           R3, R0
B87C2:  B               loc_B87E6
B87C4:  SUB.W           R2, R0, #0x2F ; '/'
B87C8:  CMP             R0, #0x4F ; 'O'
B87CA:  MOV.W           R0, #0
B87CE:  IT LT
B87D0:  ASRLT.W         R0, R3, R2
B87D4:  STR.W           R0, [R7,#var_54]
B87D8:  B               loc_B87F8
B87DA:  CMP             R3, R0
B87DC:  MOV             R4, R0
B87DE:  BGT             loc_B87E8
B87E0:  CMP             R3, R2
B87E2:  IT LT
B87E4:  MOVLT           R3, R2
B87E6:  MOV             R4, R3
B87E8:  LSL.W           R0, R4, R6
B87EC:  LDR.W           R6, [R7,#var_60]
B87F0:  STR.W           R0, [R7,#var_54]
B87F4:  LDR.W           R4, [R7,#var_6C]
B87F8:  ADD.W           R0, LR, #0x60 ; '`'
B87FC:  STR.W           R0, [R7,#var_5C]
B8800:  LDR             R0, [R6]
B8802:  CMP             R4, R0
B8804:  BNE             loc_B880E
B8806:  MOV.W           LR, #0x10000
B880A:  MOV             R0, R4
B880C:  B               loc_B8A26
B880E:  CMP             R0, #0
B8810:  MOV             R2, R0
B8812:  IT MI
B8814:  NEGMI           R2, R0
B8816:  CLZ.W           R3, R2
B881A:  SUBS            R2, R3, #1
B881C:  LSLS            R0, R2
B881E:  UXTH            R2, R0
B8820:  MULS            R2, R1
B8822:  ASRS            R2, R2, #0x10
B8824:  SMLABT.W        R2, R1, R0, R2
B8828:  SMMUL.W         R6, R2, R5
B882C:  SUB.W           R0, R0, R6,LSL#3
B8830:  UXTH            R6, R0
B8832:  SMLABT.W        R0, R1, R0, R2
B8836:  MULS            R6, R1
B8838:  ADD.W           R2, R0, R6,ASR#16
B883C:  RSB.W           R0, R8, #1
B8840:  ADD             R0, R3
B8842:  ADDS            R0, #0x1C
B8844:  CMP             R0, #0xF
B8846:  BGT             loc_B886A
B8848:  RSB.W           R1, R0, #0x10
B884C:  MOV             R0, #0x7FFFFFFF
B8850:  MOV.W           R3, #0x80000000
B8854:  LSRS            R0, R1
B8856:  ASRS            R3, R1
B8858:  CMP             R3, R0
B885A:  BLE             loc_B887C
B885C:  CMP             R2, R3
B885E:  MOV             R6, R3
B8860:  BGT             loc_B888A
B8862:  CMP             R2, R0
B8864:  IT LT
B8866:  MOVLT           R2, R0
B8868:  B               loc_B8888
B886A:  SUB.W           R3, R0, #0x10
B886E:  CMP             R0, #0x30 ; '0'
B8870:  MOV.W           LR, #0
B8874:  IT LT
B8876:  ASRLT.W         LR, R2, R3
B887A:  B               loc_B888E
B887C:  CMP             R2, R0
B887E:  MOV             R6, R0
B8880:  BGT             loc_B888A
B8882:  CMP             R2, R3
B8884:  IT LT
B8886:  MOVLT           R2, R3
B8888:  MOV             R6, R2
B888A:  LSL.W           LR, R6, R1
B888E:  LDR.W           R1, [R7,#var_7C]
B8892:  UXTH.W          R2, LR
B8896:  MOV.W           R8, #1
B889A:  LDRD.W          R0, R6, [R1]
B889E:  LDRD.W          R5, R3, [R1,#8]
B88A2:  SXTH            R4, R0
B88A4:  MULS            R4, R2
B88A6:  ASRS            R4, R4, #0x10
B88A8:  SMLABT.W        R4, R0, LR, R4
B88AC:  ADD.W           R0, R8, R0,ASR#15
B88B0:  ASRS            R0, R0, #1
B88B2:  MLA.W           R0, R0, LR, R4
B88B6:  STR             R0, [R1]
B88B8:  SXTH            R0, R6
B88BA:  MULS            R0, R2
B88BC:  ASRS            R0, R0, #0x10
B88BE:  SMLABT.W        R0, R6, LR, R0
B88C2:  ADD.W           R6, R8, R6,ASR#15
B88C6:  ASRS            R6, R6, #1
B88C8:  MLA.W           R0, R6, LR, R0
B88CC:  ADD.W           R6, R8, R5,ASR#15
B88D0:  ASRS            R6, R6, #1
B88D2:  STR             R0, [R1,#4]
B88D4:  SXTH            R0, R5
B88D6:  MULS            R0, R2
B88D8:  ASRS            R0, R0, #0x10
B88DA:  SMLABT.W        R0, R5, LR, R0
B88DE:  MLA.W           R0, R6, LR, R0
B88E2:  STR             R0, [R1,#8]
B88E4:  LDR             R0, [R1,#0x24]
B88E6:  SXTH            R6, R0
B88E8:  MULS            R6, R2
B88EA:  ASRS            R6, R6, #0x10
B88EC:  SMLABT.W        R6, R0, LR, R6
B88F0:  ADD.W           R0, R8, R0,ASR#15
B88F4:  ASRS            R0, R0, #1
B88F6:  MLA.W           R6, R0, LR, R6
B88FA:  LDR             R0, [R1,#0x20]
B88FC:  SXTH            R5, R0
B88FE:  MULS            R5, R2
B8900:  ASRS            R5, R5, #0x10
B8902:  SMLABT.W        R5, R0, LR, R5
B8906:  ADD.W           R0, R8, R0,ASR#15
B890A:  ASRS            R0, R0, #1
B890C:  MLA.W           R5, R0, LR, R5
B8910:  LDR             R0, [R1,#0x1C]
B8912:  SXTH            R4, R0
B8914:  MULS            R4, R2
B8916:  ASRS            R4, R4, #0x10
B8918:  SMLABT.W        R4, R0, LR, R4
B891C:  ADD.W           R0, R8, R0,ASR#15
B8920:  ASRS            R0, R0, #1
B8922:  MLA.W           R4, R0, LR, R4
B8926:  SXTH            R0, R3
B8928:  MULS            R0, R2
B892A:  ASRS            R0, R0, #0x10
B892C:  SMLABT.W        R0, R3, LR, R0
B8930:  ADD.W           R3, R8, R3,ASR#15
B8934:  ASRS            R3, R3, #1
B8936:  MLA.W           R0, R3, LR, R0
B893A:  STR             R0, [R1,#0xC]
B893C:  LDR             R0, [R1,#0x10]
B893E:  SXTH            R3, R0
B8940:  MULS            R3, R2
B8942:  ASRS            R3, R3, #0x10
B8944:  SMLABT.W        R3, R0, LR, R3
B8948:  ADD.W           R0, R8, R0,ASR#15
B894C:  ASRS            R0, R0, #1
B894E:  MLA.W           R0, R0, LR, R3
B8952:  STR             R0, [R1,#0x10]
B8954:  LDR             R0, [R1,#0x14]
B8956:  SXTH            R3, R0
B8958:  MULS            R3, R2
B895A:  ASRS            R3, R3, #0x10
B895C:  SMLABT.W        R3, R0, LR, R3
B8960:  ADD.W           R0, R8, R0,ASR#15
B8964:  ASRS            R0, R0, #1
B8966:  MLA.W           R0, R0, LR, R3
B896A:  STR             R0, [R1,#0x14]
B896C:  LDR             R0, [R1,#0x18]
B896E:  SXTH            R3, R0
B8970:  MULS            R3, R2
B8972:  ASRS            R3, R3, #0x10
B8974:  SMLABT.W        R3, R0, LR, R3
B8978:  ADD.W           R0, R8, R0,ASR#15
B897C:  ASRS            R0, R0, #1
B897E:  MLA.W           R0, R0, LR, R3
B8982:  ADD.W           R3, R1, #0x18
B8986:  STM             R3!, {R0,R4-R6}
B8988:  LDR             R0, [R1,#0x28]
B898A:  LDR.W           R6, [R7,#var_60]
B898E:  LDR.W           R4, [R7,#var_6C]
B8992:  SXTH            R3, R0
B8994:  MULS            R3, R2
B8996:  ASRS            R3, R3, #0x10
B8998:  SMLABT.W        R3, R0, LR, R3
B899C:  ADD.W           R0, R8, R0,ASR#15
B89A0:  ASRS            R0, R0, #1
B89A2:  MLA.W           R0, R0, LR, R3
B89A6:  STR             R0, [R1,#0x28]
B89A8:  LDR             R0, [R1,#0x2C]
B89AA:  SXTH            R3, R0
B89AC:  MULS            R3, R2
B89AE:  ASRS            R3, R3, #0x10
B89B0:  SMLABT.W        R3, R0, LR, R3
B89B4:  ADD.W           R0, R8, R0,ASR#15
B89B8:  ASRS            R0, R0, #1
B89BA:  MLA.W           R0, R0, LR, R3
B89BE:  STR             R0, [R1,#0x2C]
B89C0:  LDR             R0, [R1,#0x30]
B89C2:  SXTH            R3, R0
B89C4:  MULS            R3, R2
B89C6:  ASRS            R3, R3, #0x10
B89C8:  SMLABT.W        R3, R0, LR, R3
B89CC:  ADD.W           R0, R8, R0,ASR#15
B89D0:  ASRS            R0, R0, #1
B89D2:  MLA.W           R0, R0, LR, R3
B89D6:  STR             R0, [R1,#0x30]
B89D8:  LDR             R0, [R1,#0x34]
B89DA:  SXTH            R3, R0
B89DC:  MULS            R3, R2
B89DE:  ASRS            R3, R3, #0x10
B89E0:  SMLABT.W        R3, R0, LR, R3
B89E4:  ADD.W           R0, R8, R0,ASR#15
B89E8:  ASRS            R0, R0, #1
B89EA:  MLA.W           R0, R0, LR, R3
B89EE:  STR             R0, [R1,#0x34]
B89F0:  LDR             R0, [R1,#0x38]
B89F2:  SXTH            R3, R0
B89F4:  MULS            R3, R2
B89F6:  ASRS            R3, R3, #0x10
B89F8:  SMLABT.W        R3, R0, LR, R3
B89FC:  ADD.W           R0, R8, R0,ASR#15
B8A00:  ASRS            R0, R0, #1
B8A02:  MLA.W           R0, R0, LR, R3
B8A06:  STR             R0, [R1,#0x38]
B8A08:  LDR             R0, [R1,#0x3C]
B8A0A:  SXTH            R3, R0
B8A0C:  MULS            R2, R3
B8A0E:  ASRS            R2, R2, #0x10
B8A10:  SMLABT.W        R2, R0, LR, R2
B8A14:  ADD.W           R0, R8, R0,ASR#15
B8A18:  ASRS            R0, R0, #1
B8A1A:  MLA.W           R0, R0, LR, R2
B8A1E:  STR             R0, [R1,#0x3C]
B8A20:  LDR.W           R0, [R7,#var_4C]
B8A24:  LDR             R0, [R0]
B8A26:  STR             R0, [R6]
B8A28:  LDR.W           R0, [R7,#var_88]
B8A2C:  LDR             R0, [R0]
B8A2E:  STR.W           R9, [R7,#var_74]
B8A32:  CBZ             R0, loc_B8A7C
B8A34:  LDR.W           R0, [R7,#var_90]
B8A38:  LDR             R0, [R0]
B8A3A:  CMP             R0, #2
B8A3C:  BNE             loc_B8A7C
B8A3E:  CMP.W           R11, #1
B8A42:  BGT             loc_B8A7C
B8A44:  LDRB.W          R0, [R6,#0xACD]
B8A48:  CMP             R0, #2
B8A4A:  BEQ             loc_B8A7C
B8A4C:  LDR.W           R1, [R7,#var_5C]
B8A50:  MOVS            R0, #0
B8A52:  STR             R0, [R1,#4]
B8A54:  STRH            R0, [R1,#8]
B8A56:  STR             R0, [R1]
B8A58:  MOV.W           R0, #0x1000
B8A5C:  STRH            R0, [R1,#4]
B8A5E:  LDR.W           R9, [R6,#0x904]
B8A62:  STR.W           R9, [R10,R11,LSL#2]
B8A66:  CMP.W           R11, #0
B8A6A:  BNE             loc_B8A8C
B8A6C:  LDR.W           R0, [R6,#0x920]
B8A70:  LDR.W           R1, [R6,#0x924]
B8A74:  SUB.W           R2, R0, R9
B8A78:  SUBS            R2, R2, R1
B8A7A:  B               loc_B8ADA
B8A7C:  CMP.W           R12, #2
B8A80:  BNE             loc_B8B1A
B8A82:  LDR.W           R9, [R10,R11,LSL#2]
B8A86:  CMP.W           R11, #0
B8A8A:  BEQ             loc_B8A6C
B8A8C:  LDR.W           R0, [R7,#var_9C]
B8A90:  CMP             R0, #3
B8A92:  BGT             loc_B8B2A
B8A94:  CMP.W           R11, #2
B8A98:  BNE             loc_B8B2A
B8A9A:  LDR.W           R0, [R7,#var_60]
B8A9E:  LDR.W           R1, [R6,#0x91C]
B8AA2:  LDR.W           R4, [R6,#0x920]
B8AA6:  LDR.W           R6, [R0,#0x924]
B8AAA:  LDR.W           R0, [R7,#var_60]
B8AAE:  LSLS            R2, R1, #2; n
B8AB0:  LDR.W           R1, [R7,#src]; src
B8AB4:  ADD.W           R0, R0, R4,LSL#1
B8AB8:  ADDW            R0, R0, #0x544; dest
B8ABC:  BLX             j_memcpy
B8AC0:  LDR.W           R0, [R7,#var_60]
B8AC4:  SUB.W           R2, R4, R9
B8AC8:  LDR.W           R1, [R7,#var_60]
B8ACC:  SUBS            R2, R2, R6
B8ACE:  LDR.W           R6, [R7,#var_60]
B8AD2:  LDR.W           R0, [R0,#0x920]
B8AD6:  LDR.W           R1, [R1,#0x924]
B8ADA:  LDR.W           R3, [R6,#0x91C]
B8ADE:  SUBS            R2, #2
B8AE0:  MLA.W           R3, R3, R11, R2
B8AE4:  SUB             SP, SP, #8
B8AE6:  STR             R1, [SP,#0xB8+var_B8]
B8AE8:  LDR             R1, [R7,#arg_0]
B8AEA:  STR             R1, [SP,#0xB8+var_B4]
B8AEC:  ADD.W           R1, R6, R3,LSL#1
B8AF0:  SUBS            R3, R0, R2
B8AF2:  LDR.W           R0, [R7,#var_94]
B8AF6:  ADDW            R1, R1, #0x544
B8AFA:  ADD.W           R0, R0, R2,LSL#1
B8AFE:  LDR.W           R2, [R7,#var_50]
B8B02:  BLX             j_silk_LPC_analysis_filter
B8B06:  ADD             SP, SP, #8
B8B08:  CMP.W           R11, #0
B8B0C:  BEQ             loc_B8B76
B8B0E:  LDR.W           R6, [R7,#var_54]
B8B12:  CMP.W           R9, #0xFFFFFFFF
B8B16:  BGE             loc_B8B90
B8B18:  B               loc_B8BCC
B8B1A:  LDR.W           R5, [R6,#0x91C]
B8B1E:  STR.W           R9, [R7,#var_68]
B8B22:  CMP             R5, #1
B8B24:  BGE.W           loc_B8CDA
B8B28:  B               loc_B8F2E
B8B2A:  CMP.W           LR, #0x10000
B8B2E:  BEQ             loc_B8BCC
B8B30:  CMP.W           R9, #0xFFFFFFFF
B8B34:  BLT             loc_B8BCC
B8B36:  LDR.W           R1, [R7,#var_84]
B8B3A:  ADD.W           R2, R9, #2
B8B3E:  LDR.W           R0, [R7,#var_A0]
B8B42:  UXTH.W          R12, LR
B8B46:  MOV.W           R6, LR,ASR#16
B8B4A:  ADD.W           R0, R0, R1,LSL#2
B8B4E:  LDR             R5, [R0]
B8B50:  MOVS            R1, #1
B8B52:  SUBS            R2, #1
B8B54:  SXTH            R4, R5
B8B56:  ADD.W           R5, R1, R5,ASR#15
B8B5A:  MUL.W           R3, R4, R12
B8B5E:  MOV.W           R5, R5,ASR#1
B8B62:  SMULBB.W        R4, R4, R6
B8B66:  ADD.W           R3, R4, R3,ASR#16
B8B6A:  MLA.W           R3, R5, LR, R3
B8B6E:  STR.W           R3, [R0],#-4
B8B72:  BNE             loc_B8B4E
B8B74:  B               loc_B8BCC
B8B76:  LDR.W           R2, [R7,#var_54]
B8B7A:  LDRSH.W         R0, [R10,#0x88]
B8B7E:  UXTH            R1, R2
B8B80:  MULS            R1, R0
B8B82:  ASRS            R1, R1, #0x10
B8B84:  SMLABT.W        R0, R0, R2, R1
B8B88:  LSLS            R6, R0, #2
B8B8A:  CMP.W           R9, #0xFFFFFFFF
B8B8E:  BLT             loc_B8BCC
B8B90:  LDR.W           R0, [R7,#var_60]
B8B94:  UXTH            R3, R6
B8B96:  LDR.W           R2, [R7,#var_84]
B8B9A:  ASRS            R6, R6, #0x10
B8B9C:  LDR.W           R1, [R0,#0x920]
B8BA0:  LDR.W           R0, [R7,#var_A0]
B8BA4:  ADD.W           R0, R0, R2,LSL#2
B8BA8:  LDR.W           R2, [R7,#var_A8]
B8BAC:  ADD.W           R1, R2, R1,LSL#1
B8BB0:  ADD.W           R2, R9, #2
B8BB4:  LDRSH.W         R4, [R1],#-2
B8BB8:  SUBS            R2, #1
B8BBA:  MUL.W           R5, R3, R4
B8BBE:  SMULBB.W        R4, R6, R4
B8BC2:  ADD.W           R5, R4, R5,ASR#16
B8BC6:  STR.W           R5, [R0],#-4
B8BCA:  BNE             loc_B8BB4
B8BCC:  LDR.W           R0, [R7,#var_60]
B8BD0:  LDR.W           R5, [R0,#0x91C]
B8BD4:  CMP             R5, #1
B8BD6:  BLT.W           loc_B8F2A
B8BDA:  LDR.W           R1, [R7,#var_5C]
B8BDE:  MOVS            R0, #8
B8BE0:  STR.W           R11, [R7,#var_80]
B8BE4:  SUB.W           R10, R0, R9,LSL#2
B8BE8:  LDR.W           R2, [R7,#var_84]
B8BEC:  MOV             R3, R1
B8BEE:  LDRSH.W         R1, [R3]
B8BF2:  STR.W           R1, [R7,#var_4C]
B8BF6:  LDRSH.W         R1, [R3,#2]
B8BFA:  STR.W           R1, [R7,#var_50]
B8BFE:  LDRSH.W         R0, [R3,#4]
B8C02:  STR.W           R0, [R7,#var_54]
B8C06:  LDR.W           R1, [R7,#var_98]
B8C0A:  LDRSH.W         R0, [R3,#6]
B8C0E:  STR.W           R0, [R7,#var_58]
B8C12:  ADD.W           R11, R1, R2,LSL#2
B8C16:  LDRSH.W         R0, [R3,#8]
B8C1A:  MOVS            R2, #0
B8C1C:  STR.W           R0, [R7,#var_5C]
B8C20:  MOV             R8, R5
B8C22:  ADD.W           R5, R11, R10
B8C26:  SUB.W           R12, R5, #0x10
B8C2A:  LDR.W           R6, [R11,R10]
B8C2E:  ADD.W           R10, R10, #4
B8C32:  LDM.W           R12, {R3,R4,R12}
B8C36:  UXTH.W          LR, R6
B8C3A:  LDR.W           R9, [R7,#var_4C]
B8C3E:  LDR.W           R5, [R5,#-4]
B8C42:  LDR.W           R0, [R7,#var_50]
B8C46:  MUL.W           R1, LR, R9
B8C4A:  LDR.W           LR, [R7,#var_78]
B8C4E:  ASRS            R1, R1, #0x10
B8C50:  SMLABT.W        R1, R9, R6, R1
B8C54:  UXTH            R6, R5
B8C56:  MULS            R6, R0
B8C58:  SMLATB.W        R1, R5, R0, R1
B8C5C:  LDR.W           R0, [R7,#var_54]
B8C60:  UXTH            R5, R3
B8C62:  ADD.W           R1, R1, R6,ASR#16
B8C66:  UXTH.W          R6, R12
B8C6A:  MULS            R6, R0
B8C6C:  SMLATB.W        R1, R12, R0, R1
B8C70:  LDR.W           R0, [R7,#var_58]
B8C74:  ADD.W           R1, R1, R6,ASR#16
B8C78:  UXTH            R6, R4
B8C7A:  MULS            R6, R0
B8C7C:  SMLATB.W        R1, R4, R0, R1
B8C80:  LDR.W           R0, [R7,#var_5C]
B8C84:  MULS            R5, R0
B8C86:  ADD.W           R1, R1, R6,ASR#16
B8C8A:  SMLATB.W        R1, R3, R0, R1
B8C8E:  LDR.W           R0, [R7,#var_74]
B8C92:  LDR.W           R3, [R0,R2,LSL#2]
B8C96:  ADD.W           R1, R1, R5,ASR#16
B8C9A:  MOV             R5, R8
B8C9C:  ADD.W           R1, R3, R1,LSL#1
B8CA0:  ADDS            R1, #4
B8CA2:  STR.W           R1, [LR,R2,LSL#2]
B8CA6:  LSLS            R1, R1, #1
B8CA8:  STR.W           R1, [R11,R2,LSL#2]
B8CAC:  ADDS            R2, #1
B8CAE:  CMP             R2, R5
B8CB0:  BLT             loc_B8C20
B8CB2:  LDR.W           R10, [R7,#var_8C]
B8CB6:  LDR.W           R6, [R7,#var_60]
B8CBA:  LDR.W           R9, [R7,#var_74]
B8CBE:  LDR.W           R11, [R7,#var_80]
B8CC2:  LDR.W           R4, [R7,#var_6C]
B8CC6:  LDR.W           R0, [R7,#var_84]
B8CCA:  STR.W           LR, [R7,#var_68]
B8CCE:  ADD             R0, R2
B8CD0:  STR.W           R0, [R7,#var_84]
B8CD4:  CMP             R5, #1
B8CD6:  BLT.W           loc_B8F2E
B8CDA:  LDR.W           R12, [R7,#var_7C]
B8CDE:  MOV             R2, R4
B8CE0:  MOVS            R0, #1
B8CE2:  ADD.W           R2, R0, R2,ASR#21
B8CE6:  LSRS            R1, R4, #6
B8CE8:  STR.W           R11, [R7,#var_80]
B8CEC:  ASRS            R0, R2, #1
B8CEE:  LDR.W           R10, [R12,#0x1C]
B8CF2:  LDR.W           R8, [R12,#0x24]
B8CF6:  MOV.W           R11, #0
B8CFA:  LDR.W           LR, [R12,#0x2C]
B8CFE:  LDR.W           R9, [R12,#0x3C]
B8D02:  STR.W           R0, [R7,#var_6C]
B8D06:  SXTH            R0, R1
B8D08:  STR.W           R0, [R7,#var_70]
B8D0C:  MOVS            R0, #0x40 ; '@'
B8D0E:  STR.W           R0, [R7,#var_4C]
B8D12:  LDRSH.W         R1, [R7,#dest]
B8D16:  UXTH.W          R3, R9
B8D1A:  LDR.W           R4, [R6,#0x924]
B8D1E:  LDRSH.W         R2, [R7,#var_46]
B8D22:  MULS            R3, R1
B8D24:  LDRSH.W         R5, [R7,#var_44]
B8D28:  ASRS            R6, R4, #1
B8D2A:  SMLABT.W        R1, R1, R9, R6
B8D2E:  STR.W           R4, [R7,#var_5C]
B8D32:  LDRSH.W         R0, [R7,#var_42]
B8D36:  ADD.W           R3, R1, R3,ASR#16
B8D3A:  ADD.W           R1, R12, R11,LSL#2
B8D3E:  LDR             R6, [R1,#0x38]
B8D40:  LDR             R4, [R1,#0x30]
B8D42:  STR.W           R4, [R7,#var_50]
B8D46:  SMLATB.W        R3, R6, R2, R3
B8D4A:  UXTH            R6, R6
B8D4C:  MULS            R2, R6
B8D4E:  LDR.W           R9, [R1,#0x18]
B8D52:  ADD.W           R2, R3, R2,ASR#16
B8D56:  LDR             R3, [R1,#0x34]
B8D58:  UXTH            R6, R3
B8D5A:  SMLATB.W        R2, R3, R5, R2
B8D5E:  MULS            R6, R5
B8D60:  UXTH            R3, R4
B8D62:  LDR             R5, [R1,#0x28]
B8D64:  MULS            R3, R0
B8D66:  STR.W           R5, [R7,#var_54]
B8D6A:  ADD.W           R6, R2, R6,ASR#16
B8D6E:  LDR             R2, [R1,#0x20]
B8D70:  SMLATB.W        R0, R4, R0, R6
B8D74:  LDRSH.W         R6, [R7,#var_40]
B8D78:  LDRSH.W         R4, [R7,#var_3E]
B8D7C:  STR.W           R2, [R7,#var_58]
B8D80:  ADD.W           R0, R0, R3,ASR#16
B8D84:  UXTH.W          R3, LR
B8D88:  MULS            R3, R6
B8D8A:  SMLATB.W        R0, LR, R6, R0
B8D8E:  ADD.W           R0, R0, R3,ASR#16
B8D92:  UXTH            R3, R5
B8D94:  MULS            R3, R4
B8D96:  SMLATB.W        R0, R5, R4, R0
B8D9A:  LDRSH.W         R4, [R7,#var_3C]
B8D9E:  ADD.W           R0, R0, R3,ASR#16
B8DA2:  UXTH.W          R3, R8
B8DA6:  MULS            R3, R4
B8DA8:  SMLATB.W        R0, R8, R4, R0
B8DAC:  LDRSH.W         R4, [R7,#var_3A]
B8DB0:  ADD.W           R0, R0, R3,ASR#16
B8DB4:  UXTH            R3, R2
B8DB6:  MULS            R3, R4
B8DB8:  SMLATB.W        R0, R2, R4, R0
B8DBC:  LDRSH.W         R4, [R7,#var_38]
B8DC0:  LDR.W           R2, [R7,#var_5C]
B8DC4:  CMP             R2, #0x10
B8DC6:  ADD.W           R0, R0, R3,ASR#16
B8DCA:  UXTH.W          R3, R10
B8DCE:  MUL.W           R3, R4, R3
B8DD2:  SMLATB.W        R0, R10, R4, R0
B8DD6:  LDRSH.W         R4, [R7,#var_36]
B8DDA:  MOV             R10, R12
B8DDC:  ADD.W           R0, R0, R3,ASR#16
B8DE0:  UXTH.W          R3, R9
B8DE4:  MUL.W           R3, R4, R3
B8DE8:  SMLATB.W        R0, R9, R4, R0
B8DEC:  ADD.W           R0, R0, R3,ASR#16
B8DF0:  BNE             loc_B8E6E
B8DF2:  LDRSH.W         R2, [R7,#var_34]
B8DF6:  LDRSH.W         R3, [R7,#var_32]
B8DFA:  LDRSH.W         R6, [R7,#var_30]
B8DFE:  LDRSH.W         R8, [R7,#var_2E]
B8E02:  LDRD.W          R12, R9, [R1,#4]
B8E06:  LDRD.W          R4, R5, [R1,#0xC]
B8E0A:  LDR             R1, [R1,#0x14]
B8E0C:  SMLABT.W        R0, R2, R1, R0
B8E10:  UXTH            R1, R1
B8E12:  MULS            R1, R2
B8E14:  UXTH            R2, R4
B8E16:  MULS            R2, R6
B8E18:  ADD.W           R0, R0, R1,ASR#16
B8E1C:  UXTH            R1, R5
B8E1E:  MULS            R1, R3
B8E20:  SMLATB.W        R0, R5, R3, R0
B8E24:  LDRSH.W         R3, [R7,#var_2A]
B8E28:  ADD.W           R0, R0, R1,ASR#16
B8E2C:  UXTH.W          R1, R9
B8E30:  SMLATB.W        R0, R4, R6, R0
B8E34:  LDR.W           R6, [R7,#var_4C]
B8E38:  MUL.W           R1, R1, R8
B8E3C:  UXTH.W          R4, R12
B8E40:  ADD.W           R5, R10, R6
B8E44:  ADD.W           R0, R0, R2,ASR#16
B8E48:  LDRSH.W         R2, [R7,#var_2C]
B8E4C:  SMLATB.W        R0, R9, R8, R0
B8E50:  LDR.W           R5, [R5,#-0x40]
B8E54:  MULS            R4, R2
B8E56:  ADD.W           R0, R0, R1,ASR#16
B8E5A:  UXTH            R1, R5
B8E5C:  SMLATB.W        R0, R12, R2, R0
B8E60:  MULS            R1, R3
B8E62:  ADD.W           R0, R0, R4,ASR#16
B8E66:  SMLATB.W        R0, R5, R3, R0
B8E6A:  ADD.W           R0, R0, R1,ASR#16
B8E6E:  LDR.W           R1, [R7,#var_68]
B8E72:  CMP.W           R0, #0xF8000000
B8E76:  MOV             R2, #0x7FFFFFF
B8E7A:  LDR.W           R1, [R1,R11,LSL#2]
B8E7E:  IT LE
B8E80:  MOVLE.W         R0, #0xF8000000
B8E84:  CMP             R0, R2
B8E86:  IT GE
B8E88:  MOVGE           R0, R2
B8E8A:  ADD.W           R9, R1, R0,LSL#4
B8E8E:  LSLS            R0, R0, #4
B8E90:  CMP.W           R9, #0
B8E94:  BLT             loc_B8EA2
B8E96:  ANDS            R0, R1
B8E98:  CMP             R0, #0
B8E9A:  IT LT
B8E9C:  MOVLT.W         R9, #0x80000000
B8EA0:  B               loc_B8EAE
B8EA2:  ORRS            R0, R1
B8EA4:  CMP.W           R0, #0xFFFFFFFF
B8EA8:  IT GT
B8EAA:  MOVGT           R9, #0x7FFFFFFF
B8EAE:  LDR.W           R0, [R7,#var_6C]
B8EB2:  UXTH.W          R1, R9
B8EB6:  LDR.W           R2, [R7,#var_70]
B8EBA:  MOV             R12, R10
B8EBC:  LDR.W           R3, [R7,#var_4C]
B8EC0:  MUL.W           R0, R9, R0
B8EC4:  LDR.W           R6, [R7,#var_60]
B8EC8:  MULS            R1, R2
B8ECA:  STR.W           R9, [R10,R3]
B8ECE:  SMLABT.W        R0, R2, R9, R0
B8ED2:  MOV             R2, #0xFFFF8000
B8EDA:  ADDS            R3, #4
B8EDC:  ADD.W           R0, R0, R1,ASR#16
B8EE0:  MOVS            R1, #1
B8EE2:  ADD.W           R0, R1, R0,ASR#7
B8EE6:  ASRS            R1, R0, #1
B8EE8:  CMP             R1, R2
B8EEA:  MOV             R1, R2
B8EEC:  IT GT
B8EEE:  ASRGT           R1, R0, #1
B8EF0:  MOVW            R0, #0x7FFF
B8EF4:  CMP             R1, R0
B8EF6:  IT GE
B8EF8:  MOVGE           R1, R0
B8EFA:  LDR.W           R0, [R7,#var_64]
B8EFE:  STRH.W          R1, [R0,R11,LSL#1]
B8F02:  ADD.W           R11, R11, #1
B8F06:  STR.W           R3, [R7,#var_4C]
B8F0A:  LDR.W           R5, [R6,#0x91C]
B8F0E:  LDRD.W          R10, R8, [R7,#var_58]
B8F12:  LDR.W           LR, [R7,#var_50]
B8F16:  CMP             R11, R5
B8F18:  BLT.W           loc_B8D12
B8F1C:  LDR.W           R10, [R7,#var_8C]
B8F20:  LDR.W           R9, [R7,#var_74]
B8F24:  LDR.W           R11, [R7,#var_80]
B8F28:  B               loc_B8F2E
B8F2A:  LDR.W           R9, [R7,#var_74]
B8F2E:  LDR.W           R0, [R7,#var_7C]
B8F32:  MOV             R8, R5
B8F34:  ADD.W           R9, R9, R8,LSL#2
B8F38:  ADD.W           R11, R11, #1
B8F3C:  ADD.W           R12, R0, R5,LSL#2
B8F40:  MOV             R1, R0
B8F42:  LDM.W           R12!, {R2-R6}
B8F46:  STM             R1!, {R2-R6}
B8F48:  LDM.W           R12!, {R2-R6}
B8F4C:  STM             R1!, {R2-R6}
B8F4E:  LDM.W           R12, {R0,R2-R6}
B8F52:  STM             R1!, {R0,R2-R6}
B8F54:  LDR.W           R0, [R7,#var_64]
B8F58:  LDR.W           R6, [R7,#var_60]
B8F5C:  ADD.W           R0, R0, R8,LSL#1
B8F60:  STR.W           R0, [R7,#var_64]
B8F64:  LDR.W           R0, [R6,#0x914]
B8F68:  CMP             R11, R0
B8F6A:  BLT.W           loc_B8716
B8F6E:  LDR.W           R4, [R7,#var_7C]
B8F72:  LDR.W           R12, [R7,#var_AC]
B8F76:  LDM             R4!, {R0-R3,R6}
B8F78:  STM.W           R12!, {R0-R3,R6}
B8F7C:  LDM             R4!, {R0-R3,R6}
B8F7E:  STM.W           R12!, {R0-R3,R6}
B8F82:  LDM.W           R4, {R0-R3,R5,R6}
B8F86:  STM.W           R12, {R0-R3,R5,R6}
B8F8A:  LDR             R0, =(__stack_chk_guard_ptr - 0xB8F94)
B8F8C:  LDR.W           R1, [R7,#var_24]
B8F90:  ADD             R0, PC; __stack_chk_guard_ptr
B8F92:  LDR             R0, [R0]; __stack_chk_guard
B8F94:  LDR             R0, [R0]
B8F96:  SUBS            R0, R0, R1
B8F98:  ITTTT EQ
B8F9A:  SUBEQ.W         R4, R7, #-var_1C
B8F9E:  MOVEQ           SP, R4
B8FA0:  POPEQ.W         {R8-R11}
B8FA4:  POPEQ           {R4-R7,PC}
B8FA6:  BLX             __stack_chk_fail
