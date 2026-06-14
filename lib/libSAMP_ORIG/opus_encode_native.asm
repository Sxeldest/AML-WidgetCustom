; =========================================================
; Game Engine Function: opus_encode_native
; Address            : 0xC567C - 0xC7892
; =========================================================

C567C:  PUSH            {R4-R7,LR}
C567E:  ADD             R7, SP, #0xC
C5680:  PUSH.W          {R8-R11}
C5684:  SUB             SP, SP, #0x104
C5686:  MOV             R10, R0
C5688:  LDR.W           R0, =(__stack_chk_guard_ptr - 0xC5696)
C568C:  LDR             R5, [R7,#arg_0]
C568E:  MOVW            R11, #0x4FC
C5692:  ADD             R0, PC; __stack_chk_guard_ptr
C5694:  MOV             R6, SP
C5696:  CMP             R5, R11
C5698:  LDR             R0, [R0]; __stack_chk_guard
C569A:  LDR             R0, [R0]
C569C:  STR.W           R0, [R7,#var_24]
C56A0:  MOV.W           R0, #0
C56A4:  STR.W           R0, [R7,#var_3C]
C56A8:  STR.W           R0, [R10,#0x894]
C56AC:  IT LT
C56AE:  MOVLT           R11, R5
C56B0:  CMP             R2, #1
C56B2:  MOV.W           R5, #0xFFFFFFFF
C56B6:  IT GE
C56B8:  CMPGE.W         R11, #1
C56BC:  BLT.W           loc_C64B8
C56C0:  BNE             loc_C56D8
C56C2:  ADD.W           R0, R2, R2,LSL#2
C56C6:  LDR.W           R5, [R10,#0x90]
C56CA:  CMP.W           R5, R0,LSL#1
C56CE:  BNE             loc_C56D8
C56D0:  MOV             R5, #0xFFFFFFFE
C56D4:  B.W             loc_C64B8
C56D8:  LDRD.W          R0, R12, [R10]
C56DC:  MOVW            R5, #0x803
C56E0:  LDR.W           LR, [R10,#0x6C]
C56E4:  MOV             R4, R1
C56E6:  STR.W           R3, [R7,#src]
C56EA:  ADD             R0, R10
C56EC:  STRD.W          R12, R2, [R7,#var_AC]
C56F0:  CMP             LR, R5
C56F2:  ITE NE
C56F4:  LDRNE.W         R1, [R10,#0x74]
C56F8:  MOVEQ           R1, #0
C56FA:  LDR.W           R8, [R7,#arg_4]
C56FE:  SUB.W           R2, R7, #-var_40
C5702:  STR.W           R1, [R7,#var_D0]
C5706:  MOVW            R1, #0x271F
C570A:  LDR.W           R9, [R10,#0xA8]
C570E:  MOV             R5, R8
C5710:  STR.W           R0, [R7,#var_C0]
C5714:  BLX             j_opus_custom_encoder_ctl
C5718:  MOV.W           R0, #0xFFFFFFFF
C571C:  CMP             R9, R5
C571E:  STR.W           R0, [R10,#0x8C]
C5722:  IT GT
C5724:  MOVGT           R9, R5
C5726:  STR.W           R9, [R7,#var_C4]
C572A:  LDR.W           R0, [R10,#0x70]
C572E:  CMP             R0, #2
C5730:  BNE             loc_C5742
C5732:  LDR.W           R0, [R10,#0x78]
C5736:  LDR.W           R5, [R7,#var_A8]
C573A:  CMP             R0, #1
C573C:  BNE             loc_C574A
C573E:  MOVS            R0, #0
C5740:  B               loc_C575A
C5742:  MOVS            R0, #0
C5744:  LDR.W           R5, [R7,#var_A8]
C5748:  B               loc_C575A
C574A:  LDR.W           R2, [R10,#0x90]
C574E:  ADD.W           R3, R10, #0x100
C5752:  MOV             R0, R4
C5754:  MOV             R1, R5
C5756:  BLX             j_compute_stereo_width
C575A:  STR.W           R0, [R7,#var_D4]
C575E:  CMP             R5, #0
C5760:  MOV             R1, R5
C5762:  STR.W           R4, [R7,#var_B4]
C5766:  BNE             loc_C577E
C5768:  LDR.W           R0, [R10,#0x90]
C576C:  MOV             R1, #0x51EB851F
C5774:  SMMUL.W         R0, R0, R1
C5778:  ASRS            R1, R0, #7
C577A:  ADD.W           R1, R1, R0,LSR#31
C577E:  LDR.W           R8, [R10,#0xA4]
C5782:  CMN.W           R8, #0x3E8
C5786:  BEQ             loc_C57A6
C5788:  ADDS.W          R0, R8, #1
C578C:  BNE             loc_C57C4
C578E:  MOV             R0, R10
C5790:  LDR.W           R9, [R0,#0x90]!
C5794:  STR.W           R0, [R7,#var_BC]
C5798:  MUL.W           R0, R11, R9
C579C:  LSLS            R0, R0, #3
C579E:  BLX             sub_108848
C57A2:  MOV             R8, R0
C57A4:  B               loc_C57CE
C57A6:  MOV             R4, R10
C57A8:  LDR.W           R9, [R4,#0x90]!
C57AC:  RSB.W           R0, R9, R9,LSL#4
C57B0:  LSLS            R0, R0, #2
C57B2:  BLX             sub_108848
C57B6:  STR.W           R4, [R7,#var_BC]
C57BA:  LDR.W           R1, [R4,#-0x20]
C57BE:  MLA.W           R8, R1, R9, R0
C57C2:  B               loc_C57CE
C57C4:  MOV             R0, R10
C57C6:  LDR.W           R9, [R0,#0x90]!
C57CA:  STR.W           R0, [R7,#var_BC]
C57CE:  MOV             R0, R9
C57D0:  MOV             R1, R5
C57D2:  STR.W           R8, [R10,#0xA0]
C57D6:  BLX             sub_108848
C57DA:  MOV             R1, R5
C57DC:  LDR.W           R5, [R10,#0x94]
C57E0:  MOV             R3, R0
C57E2:  CMP             R5, #0
C57E4:  STR.W           R3, [R7,#var_B0]
C57E8:  BEQ             loc_C57EE
C57EA:  MOV             R1, R10
C57EC:  B               loc_C584A
C57EE:  ADD.W           R0, R9, R9,LSL#1
C57F2:  LSLS            R0, R0, #2
C57F4:  BLX             sub_108848
C57F8:  MOV             R4, R0
C57FA:  ADD.W           R0, R8, R8,LSL#1
C57FE:  SBFX.W          R1, R0, #0x1D, #1
C5802:  LSLS            R0, R0, #2
C5804:  ADD.W           R0, R0, R1,LSR#29
C5808:  ADD.W           R1, R4, R4,LSR#31
C580C:  ASRS            R1, R1, #1
C580E:  ADD.W           R0, R1, R0,ASR#3
C5812:  MOV             R1, R4
C5814:  BLX             sub_108848
C5818:  CMP             R0, R11
C581A:  MOVW            R1, #0xAAAB
C581E:  IT LT
C5820:  MOVLT           R11, R0
C5822:  MOVT            R1, #0x2AAA
C5826:  MUL.W           R0, R4, R11
C582A:  CMP.W           R11, #2
C582E:  MOV.W           R0, R0,LSL#3
C5832:  SMMUL.W         R0, R0, R1
C5836:  MOV.W           R1, R0,ASR#1
C583A:  ADD.W           R8, R1, R0,LSR#31
C583E:  MOV             R1, R10
C5840:  STR.W           R8, [R10,#0xA0]
C5844:  BLT             loc_C5914
C5846:  LDR.W           R3, [R7,#var_B0]
C584A:  CMP.W           R11, #3
C584E:  ITTT GE
C5850:  ADDGE.W         R0, R3, R3,LSL#1
C5854:  LSLGE           R0, R0, #3
C5856:  CMPGE           R8, R0
C5858:  BLT             loc_C591C
C585A:  MUL.W           R0, R11, R3
C585E:  CMP             R3, #0x31 ; '1'
C5860:  STR.W           R0, [R7,#var_D8]
C5864:  BGT             loc_C5876
C5866:  LDR.W           R0, [R7,#var_D8]
C586A:  CMP.W           R0, #0x12C
C586E:  IT GE
C5870:  CMPGE.W         R8, #0x960
C5874:  BLT             loc_C591C
C5876:  LDR             R0, [R1,#0x28]
C5878:  MOV             R10, R1
C587A:  STR.W           R0, [R7,#var_C8]
C587E:  CMP             R3, #0x33 ; '3'
C5880:  LDR             R4, [R1,#0x2C]
C5882:  MOV             R0, R8
C5884:  BLT             loc_C589C
C5886:  LDR.W           R0, [R10,#0x70]
C588A:  MOVS            R1, #0x14
C588C:  ADD.W           R0, R0, R0,LSL#2
C5890:  ADD.W           R0, R1, R0,LSL#3
C5894:  SUB.W           R1, R3, #0x32 ; '2'
C5898:  MLS.W           R0, R0, R1, R8
C589C:  CMP             R5, #0
C589E:  STR.W           R9, [R7,#var_EC]
C58A2:  BNE             loc_C58B8
C58A4:  MOV             R1, #0x2AAAAAAB
C58AC:  SMMUL.W         R1, R0, R1
C58B0:  ASRS            R2, R1, #1
C58B2:  ADD.W           R1, R2, R1,LSR#31
C58B6:  SUBS            R0, R0, R1
C58B8:  ADD.W           R1, R4, #0x5A ; 'Z'
C58BC:  STR.W           R1, [R7,#var_DC]
C58C0:  MULS            R0, R1
C58C2:  MOV             R1, #0x51EB851F
C58CA:  SMMUL.W         R0, R0, R1
C58CE:  ASRS            R1, R0, #5
C58D0:  ADD.W           R9, R1, R0,LSR#31
C58D4:  LDR.W           R1, [R7,#var_C8]
C58D8:  MUL.W           R0, R9, R1
C58DC:  ADD.W           R2, R1, R1,LSL#1
C58E0:  MOVS            R1, #0x14
C58E2:  ADD.W           R1, R1, R2,LSL#2
C58E6:  STR             R2, [R6,#0x20]
C58E8:  STR.W           R1, [R7,#var_E4]
C58EC:  BLX             sub_108848
C58F0:  LDR.W           R1, [R10,#0x7C]
C58F4:  MOVW            R2, #0xBB9
C58F8:  MOV             R3, R10
C58FA:  STR.W           R4, [R7,#var_F0]
C58FE:  CMP             R1, R2
C5900:  BEQ             loc_C59A8
C5902:  LDR.W           R12, [R7,#var_B0]
C5906:  MOVW            R2, #0xBBA
C590A:  CMP             R1, R2
C590C:  BNE             loc_C59B2
C590E:  MOV.W           LR, #0
C5912:  B               loc_C5AD8
C5914:  MOV.W           R11, #1
C5918:  LDR.W           R3, [R7,#var_B0]
C591C:  MOV             R9, R1
C591E:  CMP             R3, #0x19
C5920:  LDR.W           R4, [R9,#0xDC]
C5924:  MOV.W           R1, #0
C5928:  LDR.W           R8, [R9,#0xEC]
C592C:  IT EQ
C592E:  MOVEQ           R1, #1
C5930:  CMP             R4, #0
C5932:  MOV.W           R2, #0
C5936:  IT EQ
C5938:  MOVEQ.W         R4, #0x3E8
C593C:  CMP             R3, #0x64 ; 'd'
C593E:  IT GT
C5940:  MOVWGT          R4, #0x3EA
C5944:  MOVS            R0, #0
C5946:  CMP.W           R4, #0x3E8
C594A:  IT NE
C594C:  MOVNE           R2, #1
C594E:  ANDS            R2, R1
C5950:  IT NE
C5952:  MOVNE           R3, #0x32 ; '2'
C5954:  CMP.W           R8, #0
C5958:  IT EQ
C595A:  MOVWEQ          R8, #0x44D
C595E:  CMP             R3, #0x10
C5960:  BGT             loc_C599E
C5962:  LDR             R0, [R7,#arg_0]
C5964:  CMP             R0, #1
C5966:  BEQ             loc_C5972
C5968:  CMP.W           R4, #0x3E8
C596C:  BNE             loc_C59E0
C596E:  CMP             R3, #0xA
C5970:  BEQ             loc_C59E0
C5972:  MOVS            R5, #0x10
C5974:  CMP             R3, #0xC
C5976:  IT EQ
C5978:  MOVEQ           R5, #0x19
C597A:  CMP             R3, #0xD
C597C:  MOV.W           R2, #0
C5980:  MOV.W           R0, #0
C5984:  IT LT
C5986:  MOVLT           R2, #1
C5988:  MOV.W           R4, #0x3E8
C598C:  CMP.W           R8, #0x450
C5990:  BLT             loc_C59F2
C5992:  CMP.W           R4, #0x3E8
C5996:  BNE             loc_C59F2
C5998:  MOVW            R3, #0x44F
C599C:  B               loc_C5A1E
C599E:  MOV             R5, R3
C59A0:  CMP.W           R8, #0x450
C59A4:  BGE             loc_C5992
C59A6:  B               loc_C59F2
C59A8:  MOV.W           LR, #0x7F
C59AC:  LDR.W           R12, [R7,#var_B0]
C59B0:  B               loc_C5AD8
C59B2:  MOV             R4, R3
C59B4:  LDR.W           R1, [R4,#0x8C]
C59B8:  CMP             R1, #0
C59BA:  BLT.W           loc_C5AC8
C59BE:  MOVW            R2, #0x147
C59C2:  MULS            R1, R2
C59C4:  LDR             R2, [R4,#0x6C]
C59C6:  MOV.W           LR, R1,ASR#8
C59CA:  MOVW            R1, #0x801
C59CE:  CMP             R2, R1
C59D0:  BNE.W           loc_C5AD8
C59D4:  CMP.W           LR, #0x73 ; 's'
C59D8:  IT GE
C59DA:  MOVGE.W         LR, #0x73 ; 's'
C59DE:  B               loc_C5AD8
C59E0:  MOVS            R0, #0x32 ; '2'
C59E2:  MOV             R1, R3
C59E4:  MOVS            R5, #0x32 ; '2'
C59E6:  BLX             sub_108848
C59EA:  MOVS            R2, #3
C59EC:  CMP.W           R8, #0x450
C59F0:  BGE             loc_C5992
C59F2:  MOVW            R1, #0x44E
C59F6:  CMP             R8, R1
C59F8:  ITT EQ
C59FA:  MOVWEQ          R1, #0x3EA
C59FE:  CMPEQ           R4, R1
C5A00:  BNE             loc_C5A08
C5A02:  MOVW            R3, #0x44D
C5A06:  B               loc_C5A1E
C5A08:  MOVW            R1, #0x3E9
C5A0C:  CMP             R4, R1
C5A0E:  MOV             R3, R8
C5A10:  IT EQ
C5A12:  MOVEQ.W         R3, #0x450
C5A16:  CMP.W           R8, #0x450
C5A1A:  IT GT
C5A1C:  MOVGT           R3, R8
C5A1E:  LDR.W           R12, [R9,#0xBC]
C5A22:  CMP.W           R5, #0x190
C5A26:  LDR.W           LR, [R7,#src]
C5A2A:  MOV.W           R1, #0
C5A2E:  BGE             loc_C5A3A
C5A30:  ADDS            R1, #8
C5A32:  LSLS            R5, R5, #1
C5A34:  CMP.W           R5, #0x190
C5A38:  BLT             loc_C5A30
C5A3A:  MOVW            R5, #0x3EA
C5A3E:  CMP             R4, R5
C5A40:  BEQ             loc_C5A56
C5A42:  CMP.W           R4, #0x3E8
C5A46:  BNE             loc_C5A6E
C5A48:  MOVS            R5, #0x60 ; '`'
C5A4A:  ADD.W           R3, R5, R3,LSL#5
C5A4E:  SUBS            R1, #0x10
C5A50:  UXTB            R3, R3
C5A52:  ORRS            R1, R3
C5A54:  B               loc_C5A78
C5A56:  SUBW            R3, R3, #0x44E
C5A5A:  MOVS            R5, #0x60 ; '`'
C5A5C:  CMP             R3, #0
C5A5E:  IT LE
C5A60:  MOVLE           R3, #0
C5A62:  AND.W           R3, R5, R3,LSL#5
C5A66:  ORRS            R1, R3
C5A68:  ORR.W           R1, R1, #0x80
C5A6C:  B               loc_C5A78
C5A6E:  ADDS            R1, #0xF0
C5A70:  ORR.W           R1, R1, R3,LSL#4
C5A74:  ORR.W           R1, R1, #0x60 ; '`'
C5A78:  MOVS            R3, #0
C5A7A:  CMP.W           R12, #2
C5A7E:  IT EQ
C5A80:  MOVEQ           R3, #1
C5A82:  CMP             R2, #2
C5A84:  ORR.W           R3, R2, R3,LSL#2
C5A88:  MOV             R5, R11
C5A8A:  ORR.W           R1, R1, R3
C5A8E:  STRB.W          R1, [LR]
C5A92:  MOV.W           R1, #2
C5A96:  IT CC
C5A98:  MOVCC           R1, #1; n
C5A9A:  CMP             R5, R1
C5A9C:  IT LE
C5A9E:  MOVLE           R5, R1
C5AA0:  CMP             R2, #3
C5AA2:  IT EQ
C5AA4:  STRBEQ.W        R0, [LR,#1]
C5AA8:  LDR.W           R0, [R9,#0x94]
C5AAC:  CBZ             R0, loc_C5AB4
C5AAE:  MOV             R5, R1
C5AB0:  B.W             loc_C64B8
C5AB4:  MOV             R0, LR; src
C5AB6:  MOV             R2, R5
C5AB8:  BLX             j_opus_packet_pad
C5ABC:  CMP             R0, #0
C5ABE:  IT NE
C5AC0:  MOVNE           R5, #0xFFFFFFFD
C5AC4:  B.W             loc_C64B8
C5AC8:  LDR             R1, [R4,#0x6C]
C5ACA:  MOV.W           LR, #0x30 ; '0'
C5ACE:  CMP.W           R1, #0x800
C5AD2:  IT EQ
C5AD4:  MOVEQ.W         LR, #0x73 ; 's'
C5AD8:  MOV             R1, R3
C5ADA:  LDR.W           R10, [R1,#0x70]
C5ADE:  LDR             R1, [R1,#0x78]
C5AE0:  CMN.W           R1, #0x3E8
C5AE4:  BNE             loc_C5B2A
C5AE6:  CMP.W           R10, #2
C5AEA:  BNE             loc_C5B3C
C5AEC:  MUL.W           R1, LR, LR
C5AF0:  MOV.W           R2, #0x7D0
C5AF4:  SUB.W           R0, R9, R0
C5AF8:  MOV             R9, R3
C5AFA:  MOVW            R3, #0x4650
C5AFE:  MOV             R4, R9
C5B00:  MOV.W           R10, #1
C5B04:  MULS            R1, R2
C5B06:  LDR.W           R2, [R4,#0xBC]!
C5B0A:  CMP             R2, #2
C5B0C:  IT EQ
C5B0E:  MOVEQ.W         R3, #0x3E80
C5B12:  LDR.W           R12, [R7,#var_B0]
C5B16:  ADD.W           R1, R3, R1,LSR#14
C5B1A:  CMP             R0, R1
C5B1C:  IT GT
C5B1E:  MOVGT.W         R10, #2
C5B22:  STR             R4, [R6,#0x1C]
C5B24:  STR.W           R10, [R4]
C5B28:  B               loc_C5B46
C5B2A:  CMP.W           R10, #2
C5B2E:  BNE             loc_C5B3C
C5B30:  MOV             R9, R3
C5B32:  MOV             R10, R1
C5B34:  MOV             R0, R9
C5B36:  STR.W           R1, [R0,#0xBC]!
C5B3A:  B               loc_C5B44
C5B3C:  MOV             R9, R3
C5B3E:  MOV             R0, R9
C5B40:  STR.W           R10, [R0,#0xBC]!
C5B44:  STR             R0, [R6,#0x1C]
C5B46:  CMP.W           R12, #0x33 ; '3'
C5B4A:  MOV             R0, R8
C5B4C:  BLT             loc_C5B60
C5B4E:  ADD.W           R0, R10, R10,LSL#2
C5B52:  MOVS            R1, #0x14
C5B54:  ADD.W           R0, R1, R0,LSL#3
C5B58:  SUB.W           R1, R12, #0x32 ; '2'
C5B5C:  MLS.W           R0, R0, R1, R8
C5B60:  CMP             R5, #0
C5B62:  STR.W           R11, [R7,#var_F4]
C5B66:  STR.W           LR, [R7,#n]
C5B6A:  STR.W           R5, [R7,#var_E8]
C5B6E:  BNE             loc_C5B84
C5B70:  MOV             R1, #0x2AAAAAAB
C5B78:  SMMUL.W         R1, R0, R1
C5B7C:  ASRS            R2, R1, #1
C5B7E:  ADD.W           R1, R2, R1,LSR#31
C5B82:  SUBS            R0, R0, R1
C5B84:  LDR.W           R1, [R7,#var_DC]
C5B88:  LDR.W           R11, [R9,#0xB8]
C5B8C:  LDR.W           R5, [R9,#0x6C]
C5B90:  MULS            R0, R1
C5B92:  MOV             R1, #0x51EB851F
C5B9A:  SMMUL.W         R0, R0, R1
C5B9E:  ASRS            R1, R0, #5
C5BA0:  ADD.W           R4, R1, R0,LSR#31
C5BA4:  LDR.W           R0, [R7,#var_C8]
C5BA8:  STR.W           R11, [R9,#0x38]
C5BAC:  LDR.W           R1, [R7,#var_E4]
C5BB0:  MULS            R0, R4
C5BB2:  BLX             sub_108848
C5BB6:  MOVW            R1, #0x803
C5BBA:  CMP             R5, R1
C5BBC:  STR.W           R9, [R7,#var_CC]
C5BC0:  BNE             loc_C5BCE
C5BC2:  MOVW            R5, #0x3EA
C5BC6:  MOV             R11, R9
C5BC8:  STR.W           R5, [R11,#0xDC]!
C5BCC:  B               loc_C5CD8
C5BCE:  MOV             LR, R9
C5BD0:  LDR.W           R9, [LR,#0x88]
C5BD4:  CMN.W           R9, #0x3E8
C5BD8:  BNE             loc_C5C44
C5BDA:  SUB.W           R12, R4, R0
C5BDE:  LDR.W           R0, [R7,#var_D4]
C5BE2:  MOVW            R3, #0x7FFF
C5BE6:  MOVW            R1, #0xABE0
C5BEA:  SUBS            R3, R3, R0
C5BEC:  MOVW            R2, #0x2710
C5BF0:  MULS            R1, R0
C5BF2:  CMP.W           R5, #0x800
C5BF6:  SXTH            R3, R3
C5BF8:  SMULBB.W        R4, R0, R2
C5BFC:  MOV.W           R0, #0xFA00
C5C00:  MUL.W           R0, R3, R0
C5C04:  SMULBB.W        R2, R3, R2
C5C08:  MOV.W           R0, R0,ASR#15
C5C0C:  MOV.W           R2, R2,ASR#15
C5C10:  ADD.W           R3, R2, R4,ASR#15
C5C14:  ADD.W           R0, R0, R1,ASR#15
C5C18:  LDR.W           R1, [R7,#n]
C5C1C:  SUB.W           R0, R0, R3
C5C20:  LDR.W           R2, [LR,#0xE0]
C5C24:  MUL.W           R0, R1, R0
C5C28:  MUL.W           R0, R1, R0
C5C2C:  ADD.W           R1, R3, R0,ASR#14
C5C30:  MOVW            R0, #0x3EA
C5C34:  IT EQ
C5C36:  ADDEQ.W         R1, R1, #0x1F40
C5C3A:  CMP             R2, R0
C5C3C:  BNE             loc_C5C4C
C5C3E:  SUB.W           R1, R1, #0xFA0
C5C42:  B               loc_C5C54
C5C44:  MOV             R11, LR
C5C46:  STR.W           R9, [R11,#0xDC]!
C5C4A:  B               loc_C5CE0
C5C4C:  CMP             R2, #0
C5C4E:  IT GT
C5C50:  ADDGT.W         R1, R1, #0xFA0
C5C54:  MOV.W           R9, #0x3E8
C5C58:  CMP             R12, R1
C5C5A:  LDR.W           LR, [R7,#var_A8]
C5C5E:  LDR.W           R3, [R7,#var_B0]
C5C62:  IT GE
C5C64:  MOVWGE          R9, #0x3EA
C5C68:  LDR.W           R0, [R7,#var_CC]
C5C6C:  STR.W           R9, [R0,#0xDC]!
C5C70:  LDR.W           R4, [R7,#var_F4]
C5C74:  MOV             R1, R0
C5C76:  LDR.W           R0, [R0,#-0xAC]
C5C7A:  LDR.W           R2, [R7,#n]
C5C7E:  CBZ             R0, loc_C5C96
C5C80:  RSB.W           R0, R2, #0x80
C5C84:  LDR.W           R5, [R7,#var_C8]
C5C88:  CMP.W           R5, R0,ASR#4
C5C8C:  ITT GT
C5C8E:  MOVGT.W         R9, #0x3E8
C5C92:  STRGT.W         R9, [R1]
C5C96:  CMP             R2, #0x65 ; 'e'
C5C98:  BLT             loc_C5CAC
C5C9A:  CMP.W           R11, #0
C5C9E:  MOV             R11, R1
C5CA0:  ITT NE
C5CA2:  MOVNE.W         R9, #0x3E8
C5CA6:  STRNE.W         R9, [R11]
C5CAA:  B               loc_C5CAE
C5CAC:  MOV             R11, R1
C5CAE:  MOVW            R0, #0x1770
C5CB2:  CMP             R3, #0x32 ; '2'
C5CB4:  IT GT
C5CB6:  MOVWGT          R0, #0x2328
C5CBA:  LDR.W           R1, [R7,#var_EC]
C5CBE:  MUL.W           R0, R0, LR
C5CC2:  LSLS            R1, R1, #3
C5CC4:  BLX             sub_108848
C5CC8:  CMP             R4, R0
C5CCA:  BGE             loc_C5CE0
C5CCC:  MOVW            R5, #0x3EA
C5CD0:  STR.W           R5, [R11]
C5CD4:  LDR.W           R9, [R7,#var_CC]
C5CD8:  LDRD.W          LR, R12, [R7,#var_B0]
C5CDC:  MOV             R4, R10
C5CDE:  B               loc_C5D1A
C5CE0:  LDRD.W          LR, R12, [R7,#var_B0]
C5CE4:  MOVW            R5, #0x3EA
C5CE8:  MOV             R4, R10
C5CEA:  CMP             R9, R5
C5CEC:  BEQ             loc_C5D16
C5CEE:  LDR.W           R1, [R7,#var_EC]
C5CF2:  MOV             R0, #0x51EB851F
C5CFA:  SMMUL.W         R0, R1, R0
C5CFE:  ASRS            R1, R0, #5
C5D00:  ADD.W           R0, R1, R0,LSR#31
C5D04:  LDR.W           R1, [R7,#var_A8]
C5D08:  CMP             R0, R1
C5D0A:  ITTE GT
C5D0C:  MOVWGT          R5, #0x3EA
C5D10:  STRGT.W         R5, [R11]
C5D14:  MOVLE           R5, R9
C5D16:  LDR.W           R9, [R7,#var_CC]
C5D1A:  LDR.W           R0, [R9,#0xB0]
C5D1E:  CMP             R0, #0
C5D20:  ITT NE
C5D22:  MOVWNE          R5, #0x3EA
C5D26:  STRNE.W         R5, [R11]
C5D2A:  LDR.W           R3, [R9,#0xE0]
C5D2E:  CMP             R3, #1
C5D30:  BLT             loc_C5D54
C5D32:  MOVW            R0, #0x3EA
C5D36:  CMP             R3, R0
C5D38:  BNE.W           loc_C5E4C
C5D3C:  CMP             R5, R0
C5D3E:  BEQ.W           loc_C5E4C
C5D42:  MOVS            R0, #1
C5D44:  MOVS            R2, #0
C5D46:  STR.W           R0, [R7,#var_FC]
C5D4A:  MOV.W           R10, #1
C5D4E:  CMP             R4, #1
C5D50:  BEQ             loc_C5D64
C5D52:  B               loc_C5D76
C5D54:  MOVS            R2, #0
C5D56:  MOVS            R0, #0
C5D58:  MOV.W           R10, #0
C5D5C:  STR.W           R0, [R7,#var_FC]
C5D60:  CMP             R4, #1
C5D62:  BNE             loc_C5D76
C5D64:  LDR.W           R0, [R9,#0xE4]
C5D68:  CMP             R0, #2
C5D6A:  ITT EQ
C5D6C:  LDREQ.W         R0, [R9,#0x44]
C5D70:  CMPEQ           R0, #0
C5D72:  BEQ.W           loc_C5EE6
C5D76:  MOVS            R0, #0
C5D78:  CMP.W           LR, #0x33 ; '3'
C5D7C:  STR.W           R0, [R9,#0x44]
C5D80:  BLT             loc_C5D94
C5D82:  ADD.W           R0, R4, R4,LSL#2
C5D86:  MOVS            R1, #0x14
C5D88:  ADD.W           R0, R1, R0,LSL#3
C5D8C:  SUB.W           R1, LR, #0x32 ; '2'
C5D90:  MLS.W           R8, R0, R1, R8
C5D94:  ADD.W           R0, R9, R12
C5D98:  STR             R0, [R6,#0x18]
C5D9A:  LDR.W           R0, [R7,#var_E8]
C5D9E:  CBNZ            R0, loc_C5DB6
C5DA0:  MOV             R0, #0x2AAAAAAB
C5DA8:  SMMUL.W         R0, R8, R0
C5DAC:  ASRS            R1, R0, #1
C5DAE:  ADD.W           R0, R1, R0,LSR#31
C5DB2:  SUB.W           R8, R8, R0
C5DB6:  LDR.W           R0, [R7,#var_DC]
C5DBA:  MOV             R1, #0x51EB851F
C5DC2:  MOV             R4, #0xFFFFF800
C5DCA:  STR.W           R2, [R7,#var_EC]
C5DCE:  MUL.W           R0, R8, R0
C5DD2:  SMMUL.W         R0, R0, R1
C5DD6:  ASRS            R1, R0, #5
C5DD8:  ADD.W           R8, R1, R0,LSR#31
C5DDC:  ORR.W           R0, R5, #1
C5DE0:  MOVW            R1, #0x3E9
C5DE4:  CMP             R0, R1
C5DE6:  BNE             loc_C5E1A
C5DE8:  LDR.W           R0, [R7,#var_F0]
C5DEC:  MOV             R4, R3
C5DEE:  CMP             R0, #1
C5DF0:  BGT             loc_C5E08
C5DF2:  MOVW            R1, #0x6667
C5DF6:  MOV.W           R0, R8,LSL#2
C5DFA:  MOVT            R1, #0x6666
C5DFE:  SMMUL.W         R0, R0, R1
C5E02:  ASRS            R1, R0, #1
C5E04:  ADD.W           R8, R1, R0,LSR#31
C5E08:  LDR.W           R0, [R7,#var_C8]
C5E0C:  MOVS            R1, #0xA
C5E0E:  LDR             R2, [R6,#0x20]
C5E10:  MUL.W           R0, R8, R0
C5E14:  ADD.W           R1, R1, R2,LSL#1
C5E18:  B               loc_C5EA0
C5E1A:  MOVW            R0, #0x3EA
C5E1E:  CMP             R5, R0
C5E20:  BNE             loc_C5E92
C5E22:  LDR.W           R0, [R7,#var_F0]
C5E26:  CMP             R0, #4
C5E28:  BGT             loc_C5E40
C5E2A:  MOVW            R1, #0x6667
C5E2E:  ADD.W           R0, R8, R8,LSL#3
C5E32:  MOVT            R1, #0x6666
C5E36:  SMMUL.W         R0, R0, R1
C5E3A:  ASRS            R1, R0, #2
C5E3C:  ADD.W           R8, R1, R0,LSR#31
C5E40:  MOVS            R0, #0
C5E42:  STR.W           R0, [R7,#var_E4]
C5E46:  MOVW            R0, #0x3EA
C5E4A:  B               loc_C5F20
C5E4C:  MOVS            R2, #0
C5E4E:  CMP             R3, R0
C5E50:  BEQ.W           loc_C5D56
C5E54:  LDR.W           R1, [R7,#var_EC]
C5E58:  MOVW            R0, #0x3EA
C5E5C:  CMP             R5, R0
C5E5E:  MOV.W           R0, #0
C5E62:  MOV.W           R10, #0
C5E66:  STR.W           R0, [R7,#var_FC]
C5E6A:  BNE.W           loc_C5D60
C5E6E:  MOV             R0, #0x51EB851F
C5E76:  SMMUL.W         R0, R1, R0
C5E7A:  ASRS            R1, R0, #5
C5E7C:  ADD.W           R0, R1, R0,LSR#31
C5E80:  LDR.W           R1, [R7,#var_A8]
C5E84:  CMP             R0, R1
C5E86:  BLE.W           loc_C602A
C5E8A:  MOVS            R2, #0
C5E8C:  MOVW            R5, #0x3EA
C5E90:  B               loc_C5D56
C5E92:  LDR.W           R0, [R7,#var_C8]
C5E96:  MOV             R4, R3
C5E98:  LDR.W           R1, [R7,#var_E4]
C5E9C:  MUL.W           R0, R8, R0
C5EA0:  BLX             sub_108848
C5EA4:  SUB.W           R8, R8, R0
C5EA8:  MOVW            R0, #0x3EA
C5EAC:  CMP             R5, R0
C5EAE:  BNE             loc_C5EC0
C5EB0:  MOVS            R1, #0
C5EB2:  STR.W           R1, [R7,#var_E4]
C5EB6:  MOV             R4, #0xFFFFF800
C5EBE:  B               loc_C5F20
C5EC0:  CMP             R4, R0
C5EC2:  BNE             loc_C5EFE
C5EC4:  LDR.W           R1, [R9,#0xB4]
C5EC8:  SUB.W           R2, R7, #-var_A4
C5ECC:  LDR             R0, [R6,#0x18]
C5ECE:  BLX             j_silk_InitEncoder
C5ED2:  MOVS            R0, #1
C5ED4:  STR.W           R0, [R7,#var_E4]
C5ED8:  MOVW            R0, #0x3EA
C5EDC:  LDR.W           R5, [R11]
C5EE0:  CMP             R5, R0
C5EE2:  BEQ             loc_C5EB6
C5EE4:  B               loc_C5F04
C5EE6:  MOVW            R0, #0x3EA
C5EEA:  CMP             R5, R0
C5EEC:  IT NE
C5EEE:  CMPNE           R3, R0
C5EF0:  BEQ.W           loc_C5D76
C5EF4:  MOVS            R4, #2
C5EF6:  MOVS            R0, #1
C5EF8:  STR.W           R4, [R9,#0xBC]
C5EFC:  B               loc_C5D78
C5EFE:  MOVS            R0, #0
C5F00:  STR.W           R0, [R7,#var_E4]
C5F04:  LDR.W           R0, [R9,#0xF8]
C5F08:  MOV             R4, #0xFFFFF800
C5F10:  CMP             R0, #0
C5F12:  ITT EQ
C5F14:  LDREQ.W         R0, [R9,#0x54]
C5F18:  CMPEQ           R0, #0
C5F1A:  BEQ.W           loc_C68EE
C5F1E:  MOV             R0, R5
C5F20:  LDR.W           R1, [R7,#n]
C5F24:  MOV.W           R2, #0x7D0
C5F28:  MOVW            R3, #0x9C4
C5F2C:  LDR.W           R5, [R9,#0xF8]
C5F30:  MULS            R1, R1
C5F32:  CMP             R5, #0
C5F34:  MUL.W           R2, R1, R2
C5F38:  MUL.W           R1, R3, R1
C5F3C:  MOVW            R3, #0x2EE0
C5F40:  ADD.W           R3, R3, R2,ASR#14
C5F44:  MOVW            R2, #0x2AF8
C5F48:  ADD.W           R2, R2, R1,ASR#14
C5F4C:  BEQ             loc_C5F70
C5F4E:  CMP             R8, R3
C5F50:  BGE             loc_C5FD4
C5F52:  CMP             R8, R2
C5F54:  BGE             loc_C5FE0
C5F56:  MOVW            R1, #0x2327
C5F5A:  CMP             R8, R1
C5F5C:  BGT             loc_C6036
C5F5E:  MOVW            R1, #0x2328
C5F62:  MOVW            R2, #0x44E
C5F66:  CMP             R8, R1
C5F68:  IT LT
C5F6A:  MOVWLT          R2, #0x44D
C5F6E:  B               loc_C603A
C5F70:  LDR.W           R1, [R9,#0xF0]
C5F74:  ADD.W           R5, R4, #0x30 ; '0'
C5F78:  CMP.W           R1, #0x450
C5F7C:  IT LE
C5F7E:  MOVLE.W         R5, #0x7D0
C5F82:  ADD             R3, R5
C5F84:  CMP             R8, R3
C5F86:  BGE             loc_C5FDA
C5F88:  ADD.W           R3, R4, #0x418
C5F8C:  CMP.W           R1, #0x450
C5F90:  IT LT
C5F92:  MOVLT.W         R3, #0x3E8
C5F96:  ADD             R2, R3
C5F98:  CMP             R8, R2
C5F9A:  BGE             loc_C5FE6
C5F9C:  MOVW            R4, #0xFD44
C5FA0:  MOVW            R2, #0x44F
C5FA4:  MOVT            R4, #0xFFFF
C5FA8:  CMP             R1, R2
C5FAA:  MOV             R3, R4
C5FAC:  MOVW            R5, #0x2328
C5FB0:  IT LT
C5FB2:  MOVLT.W         R3, #0x2BC
C5FB6:  ADD             R3, R5
C5FB8:  CMP             R8, R3
C5FBA:  BGE             loc_C5FEA
C5FBC:  MOVW            R2, #0x44E
C5FC0:  CMP             R1, R2
C5FC2:  IT LT
C5FC4:  MOVLT.W         R4, #0x2BC
C5FC8:  ADDS            R1, R4, R5
C5FCA:  CMP             R8, R1
C5FCC:  IT LT
C5FCE:  MOVWLT          R2, #0x44D
C5FD2:  B               loc_C5FEA
C5FD4:  MOVW            R2, #0x451
C5FD8:  B               loc_C603A
C5FDA:  MOVW            R2, #0x451
C5FDE:  B               loc_C5FEA
C5FE0:  MOV.W           R2, #0x450
C5FE4:  B               loc_C603A
C5FE6:  MOV.W           R2, #0x450
C5FEA:  MOVW            R1, #0x44E
C5FEE:  CMP             R2, R1
C5FF0:  IT EQ
C5FF2:  MOVWEQ          R2, #0x44F
C5FF6:  MOV             R1, R9
C5FF8:  STR.W           R2, [R1,#0xEC]!
C5FFC:  STR.W           R1, [R7,#var_AC]
C6000:  STR             R2, [R1,#4]
C6002:  MOVW            R1, #0x3EA
C6006:  CMP             R0, R1
C6008:  BNE             loc_C6010
C600A:  MOVW            R0, #0x3EA
C600E:  B               loc_C6052
C6010:  CMP.W           R2, #0x450
C6014:  BCC             loc_C6052
C6016:  LDR.W           R1, [R9,#0x58]
C601A:  CMP             R1, #0
C601C:  ITTT EQ
C601E:  MOVWEQ          R2, #0x44F
C6022:  LDREQ.W         R1, [R7,#var_AC]
C6026:  STREQ           R2, [R1]
C6028:  B               loc_C6052
C602A:  MOVS            R0, #0
C602C:  MOVS            R2, #1
C602E:  MOV             R5, R3
C6030:  STR.W           R3, [R11]
C6034:  B               loc_C5D46
C6036:  MOVW            R2, #0x44F
C603A:  MOVW            R1, #0x44E
C603E:  CMP             R2, R1
C6040:  IT EQ
C6042:  MOVWEQ          R2, #0x44F
C6046:  MOV             R1, R9
C6048:  STR.W           R2, [R1,#0xEC]!
C604C:  STR.W           R1, [R7,#var_AC]
C6050:  STR             R2, [R1,#4]
C6052:  LDR.W           R1, [R9,#0x84]
C6056:  CMP             R2, R1
C6058:  ITTT GT
C605A:  LDRGT.W         R2, [R7,#var_AC]
C605E:  STRGT           R1, [R2]
C6060:  MOVGT           R2, R1
C6062:  LDR.W           R1, [R9,#0x80]
C6066:  CMN.W           R1, #0x3E8
C606A:  ITTT NE
C606C:  LDRNE.W         R2, [R7,#var_AC]
C6070:  STRNE           R1, [R2]
C6072:  MOVNE           R2, R1
C6074:  MOVW            R1, #0x752
C6078:  LDR.W           R3, [R7,#var_D8]
C607C:  CMP             R3, R1
C607E:  BGT             loc_C609C
C6080:  MOVW            R1, #0x3EA
C6084:  CMP             R0, R1
C6086:  BEQ             loc_C609C
C6088:  MOVW            R12, #0x44F
C608C:  CMP             R2, R12
C608E:  IT LT
C6090:  MOVLT           R12, R2
C6092:  LDR.W           R1, [R7,#var_AC]
C6096:  STR.W           R12, [R1]
C609A:  B               loc_C609E
C609C:  MOV             R12, R2
C609E:  LDR.W           R1, [R7,#var_BC]
C60A2:  LDR             R2, [R1]
C60A4:  MOVW            R1, #0x5DC0
C60A8:  CMP             R2, R1
C60AA:  BGT             loc_C610C
C60AC:  CMP.W           R12, #0x450
C60B0:  ITTT GT
C60B2:  MOVGT.W         R12, #0x450
C60B6:  LDRGT.W         R1, [R7,#var_AC]
C60BA:  STRGT.W         R12, [R1]
C60BE:  CMP.W           R2, #0x3E80
C60C2:  BGT             loc_C610C
C60C4:  CMP.W           R12, #0x450
C60C8:  ITTT GE
C60CA:  MOVWGE          R12, #0x44F
C60CE:  LDRGE.W         R1, [R7,#var_AC]
C60D2:  STRGE.W         R12, [R1]
C60D6:  MOVW            R1, #0x2EE0
C60DA:  CMP             R2, R1
C60DC:  BGT             loc_C610C
C60DE:  MOVW            R1, #0x44F
C60E2:  CMP             R12, R1
C60E4:  ITTT GE
C60E6:  MOVWGE          R12, #0x44E
C60EA:  LDRGE.W         R1, [R7,#var_AC]
C60EE:  STRGE.W         R12, [R1]
C60F2:  CMP.W           R2, #0x1F40
C60F6:  BGT             loc_C610C
C60F8:  MOVW            R1, #0x44E
C60FC:  CMP             R12, R1
C60FE:  ITTT GE
C6100:  MOVWGE          R12, #0x44D
C6104:  LDRGE.W         R1, [R7,#var_AC]
C6108:  STRGE.W         R12, [R1]
C610C:  LDR.W           R1, [R9,#0x30]
C6110:  MOVS            R2, #0
C6112:  STR.W           R8, [R7,#var_C8]
C6116:  CMP             R1, #0
C6118:  BEQ.W           loc_C62A2
C611C:  LDR.W           R5, [R9,#0x28]
C6120:  CMP             R5, #0
C6122:  ITT NE
C6124:  MOVWNE          R1, #0x3EA
C6128:  CMPNE           R0, R1
C612A:  BEQ.W           loc_C62A2
C612E:  CMP             R5, #0x19
C6130:  MOV             R0, R5
C6132:  IT GE
C6134:  MOVGE           R0, #0x19
C6136:  LDR.W           R1, [R9,#0x34]
C613A:  RSB.W           R0, R0, #0x7D ; '}'
C613E:  CMP             R1, #1
C6140:  BEQ             loc_C6166
C6142:  CBNZ            R1, loc_C61A0
C6144:  ADR             R1, dword_C64E0
C6146:  CMP             R5, #6
C6148:  BGE             loc_C620E
C614A:  MOVW            R2, #0xDD98
C614E:  MOVW            R3, #0xDD9C
C6152:  ADD.W           R1, R1, R12,LSL#3
C6156:  MOVT            R2, #0xFFFF
C615A:  MOVT            R3, #0xFFFF
C615E:  LDR             R2, [R1,R2]
C6160:  LDR             R1, [R1,R3]
C6162:  ADD             R1, R2
C6164:  B               loc_C6186
C6166:  ADR             R1, dword_C64E0
C6168:  CMP             R5, #6
C616A:  BGE             loc_C6252
C616C:  MOVW            R2, #0xDD9C
C6170:  MOVW            R3, #0xDD98
C6174:  ADD.W           R1, R1, R12,LSL#3
C6178:  MOVT            R2, #0xFFFF
C617C:  MOVT            R3, #0xFFFF
C6180:  LDR             R2, [R1,R2]
C6182:  LDR             R1, [R1,R3]
C6184:  SUBS            R1, R1, R2
C6186:  MULS            R0, R1
C6188:  MOVW            R2, #0x28F
C618C:  UXTH            R1, R0
C618E:  MULS            R1, R2
C6190:  LSRS            R1, R1, #0x10
C6192:  SMLATB.W        R0, R0, R2, R1
C6196:  MOVS            R2, #0
C6198:  CMP             R0, R8
C619A:  IT LT
C619C:  MOVLT           R2, #1
C619E:  B               loc_C62A2
C61A0:  ADR.W           LR, dword_C64E0
C61A4:  MOVW            R2, #0xDD98
C61A8:  ADD.W           R1, LR, R12,LSL#3
C61AC:  MOVT            R2, #0xFFFF
C61B0:  MOVW            R4, #0x28F
C61B4:  LDR             R1, [R1,R2]
C61B6:  MULS            R1, R0
C61B8:  UXTH            R2, R1
C61BA:  MULS            R2, R4
C61BC:  LSRS            R2, R2, #0x10
C61BE:  SMLATB.W        R1, R1, R4, R2
C61C2:  MOVS            R2, #0
C61C4:  CMP             R1, R8
C61C6:  IT LT
C61C8:  MOVLT           R2, #1
C61CA:  CMP             R5, #6
C61CC:  IT GE
C61CE:  CMPGE           R1, R8
C61D0:  BLT             loc_C62A2
C61D2:  MOVW            R8, #0xDD90
C61D6:  MOVW            R2, #0x44D
C61DA:  MOVT            R8, #0xFFFF
C61DE:  MOVW            R4, #0x28F
C61E2:  MOV             R1, R12
C61E4:  CMP             R1, R2
C61E6:  BLE             loc_C6294
C61E8:  ADD.W           R3, LR, R1,LSL#3
C61EC:  SUBS            R1, #1
C61EE:  LDR.W           R3, [R3,R8]
C61F2:  MULS            R3, R0
C61F4:  UXTH            R5, R3
C61F6:  MULS            R5, R4
C61F8:  LSRS            R5, R5, #0x10
C61FA:  SMLATB.W        R3, R3, R4, R5
C61FE:  LDR.W           R5, [R7,#var_AC]
C6202:  STR             R1, [R5]
C6204:  LDR.W           R5, [R7,#var_C8]
C6208:  CMP             R3, R5
C620A:  BGE             loc_C61E4
C620C:  B               loc_C62A0
C620E:  ADD.W           R1, R1, R12,LSL#3
C6212:  MOVW            R2, #0x2268
C6216:  SUBS            R2, R1, R2
C6218:  SUB.W           R3, R12, #1
C621C:  MOVW            R5, #0x28F
C6220:  MOVW            LR, #0x44E
C6224:  B               loc_C6234
C6226:  LDR.W           R1, [R7,#var_AC]
C622A:  SUBS            R2, #8
C622C:  STR             R3, [R1]
C622E:  SUBS            R3, #1
C6230:  LDR.W           R8, [R7,#var_C8]
C6234:  LDRD.W          R1, R4, [R2]
C6238:  ADD             R1, R4
C623A:  MULS            R1, R0
C623C:  UXTH            R4, R1
C623E:  MULS            R4, R5
C6240:  LSRS            R4, R4, #0x10
C6242:  SMLATB.W        R1, R1, R5, R4
C6246:  CMP             R1, R8
C6248:  BLT             loc_C62A0
C624A:  ADDS            R1, R3, #1
C624C:  CMP             R1, LR
C624E:  BGE             loc_C6226
C6250:  B               loc_C6294
C6252:  ADD.W           R1, R1, R12,LSL#3
C6256:  MOVW            R2, #0x2268
C625A:  SUBS            R2, R1, R2
C625C:  SUB.W           R3, R12, #1
C6260:  MOVW            R5, #0x28F
C6264:  MOVW            LR, #0x44E
C6268:  B               loc_C6278
C626A:  LDR.W           R1, [R7,#var_AC]
C626E:  SUBS            R2, #8
C6270:  STR             R3, [R1]
C6272:  SUBS            R3, #1
C6274:  LDR.W           R8, [R7,#var_C8]
C6278:  LDRD.W          R1, R4, [R2]
C627C:  SUBS            R1, R1, R4
C627E:  MULS            R1, R0
C6280:  UXTH            R4, R1
C6282:  MULS            R4, R5
C6284:  LSRS            R4, R4, #0x10
C6286:  SMLATB.W        R1, R1, R5, R4
C628A:  CMP             R1, R8
C628C:  BLT             loc_C62A0
C628E:  ADDS            R1, R3, #1
C6290:  CMP             R1, LR
C6292:  BGE             loc_C626A
C6294:  LDR.W           R0, [R7,#var_AC]
C6298:  MOVS            R2, #0
C629A:  STR.W           R12, [R0]
C629E:  B               loc_C62A2
C62A0:  MOVS            R2, #1
C62A2:  STR.W           R2, [R9,#0x34]
C62A6:  MOVW            R1, #0xFC4
C62AA:  LDR.W           R0, [R7,#var_C0]
C62AE:  LDR.W           R2, [R7,#var_C4]
C62B2:  BLX             j_opus_custom_encoder_ctl
C62B6:  LDR.W           R0, [R11]
C62BA:  MOVW            R1, #0x3EA
C62BE:  CMP             R0, R1
C62C0:  BNE             loc_C62DA
C62C2:  LDR.W           R1, [R7,#var_AC]
C62C6:  MOVW            R2, #0x44E
C62CA:  LDR             R1, [R1]
C62CC:  CMP             R1, R2
C62CE:  ITTT EQ
C62D0:  MOVWEQ          R1, #0x44F
C62D4:  LDREQ.W         R2, [R7,#var_AC]
C62D8:  STREQ           R1, [R2]
C62DA:  LDR.W           R1, [R9,#0xB0]
C62DE:  LDR.W           R8, [R7,#var_A8]
C62E2:  CMP             R1, #0
C62E4:  STR.W           R11, [R7,#var_F8]
C62E8:  BEQ             loc_C6308
C62EA:  LDR.W           R1, [R7,#var_AC]
C62EE:  MOVW            R5, #0x44D
C62F2:  STR             R5, [R1]
C62F4:  CMP.W           R5, #0x450
C62F8:  BGE             loc_C6322
C62FA:  MOVW            R1, #0x3E9
C62FE:  CMP             R0, R1
C6300:  BNE             loc_C6322
C6302:  MOV.W           R0, #0x3E8
C6306:  B               loc_C631E
C6308:  LDR.W           R1, [R7,#var_AC]
C630C:  LDR             R5, [R1]
C630E:  CMP.W           R5, #0x450
C6312:  BLT             loc_C62F4
C6314:  CMP.W           R0, #0x3E8
C6318:  BNE             loc_C62F4
C631A:  MOVW            R0, #0x3E9
C631E:  STR.W           R0, [R11]
C6322:  LDR.W           R1, [R7,#var_BC]
C6326:  LDR.W           R11, [R1]
C632A:  MOV             R1, #0x51EB851F
C6332:  SMMUL.W         R1, R11, R1
C6336:  ASRS            R2, R1, #4
C6338:  ADD.W           R4, R2, R1,LSR#31
C633C:  CMP             R4, R8
C633E:  BGE             loc_C634C
C6340:  CMP.W           R0, #0x3E8
C6344:  BEQ             loc_C634C
C6346:  LDR.W           R8, [R7,#var_B4]
C634A:  B               loc_C6482
C634C:  MOVW            R3, #0x851F
C6350:  ADD.W           R2, R11, R11,LSL#1
C6354:  MOVT            R3, #0x51EB
C6358:  SMMUL.W         R3, R2, R3
C635C:  ASRS            R2, R3, #4
C635E:  ADD.W           R2, R2, R3,LSR#31
C6362:  CMP             R2, R8
C6364:  BGE             loc_C6398
C6366:  LDR.W           R8, [R7,#var_B4]
C636A:  CMP.W           R0, #0x3E8
C636E:  BNE.W           loc_C6482
C6372:  MOVW            R5, #0x851F
C6376:  MOV.W           R0, R11,LSL#1
C637A:  MOVT            R5, #0x51EB
C637E:  SMMUL.W         R0, R0, R5
C6382:  ASRS            R5, R0, #3
C6384:  ADD.W           R0, R5, R0,LSR#31
C6388:  LDR.W           R5, [R7,#var_A8]
C638C:  CMP             R0, R5
C638E:  BNE             loc_C6476
C6390:  ASRS            R0, R1, #3
C6392:  ADD.W           R4, R0, R1,LSR#31
C6396:  B               loc_C6482
C6398:  LDR.W           R1, [R9,#0xF4]
C639C:  CBZ             R1, loc_C63B4
C639E:  MOVS            R1, #0
C63A0:  MOV.W           R10, #1
C63A4:  STR.W           R1, [R9,#0xF4]
C63A8:  MOVS            R1, #2
C63AA:  STR.W           R1, [R7,#var_E4]
C63AE:  MOVS            R1, #1
C63B0:  STR.W           R1, [R7,#var_FC]
C63B4:  STR.W           R5, [R7,#var_E8]
C63B8:  CMP.W           R10, #0
C63BC:  LDR.W           R1, [R9,#0xA0]
C63C0:  STR.W           R1, [R7,#var_C4]
C63C4:  MOV.W           R1, #0
C63C8:  STR.W           R1, [R7,#n]
C63CC:  LDR.W           R1, [R7,#var_B0]
C63D0:  BEQ.W           loc_C651C
C63D4:  MOVW            R2, #0x3EA
C63D8:  CMP             R0, R2
C63DA:  MOV.W           R0, #0
C63DE:  STR             R0, [R6,#0x20]
C63E0:  BEQ.W           loc_C6520
C63E4:  MOVW            R0, #0xBB80
C63E8:  BLX             sub_108848
C63EC:  LDR             R1, [R6,#0x1C]
C63EE:  MOVS            R2, #0x14
C63F0:  LDR.W           R8, [R1]
C63F4:  ADD.W           R1, R0, #0xF0
C63F8:  ADD.W           R0, R8, R8,LSL#2
C63FC:  ADD.W           R4, R2, R0,LSL#3
C6400:  LDR.W           R0, [R7,#var_F4]
C6404:  LSLS            R0, R0, #3
C6406:  SUB.W           R0, R0, R4,LSL#1
C640A:  RSB.W           R0, R0, R0,LSL#4
C640E:  LSLS            R0, R0, #4
C6410:  BLX             sub_108848
C6414:  LDR.W           R1, [R7,#var_B0]
C6418:  ADD             R0, R4
C641A:  LDR.W           R2, [R7,#var_C4]
C641E:  RSB.W           R1, R1, #0xC8
C6422:  MLA.W           R1, R4, R1, R2
C6426:  MOV             R2, #0x51EB851F
C642E:  ADD.W           R1, R1, R1,LSL#1
C6432:  SMMUL.W         R1, R1, R2
C6436:  ASRS            R2, R0, #0x1F
C6438:  ADD.W           R0, R0, R2,LSR#29
C643C:  ASRS            R2, R1, #0xA
C643E:  ADD.W           R1, R2, R1,LSR#31
C6442:  CMP.W           R1, R0,ASR#3
C6446:  IT GE
C6448:  ASRGE           R1, R0, #3
C644A:  MOVS            R0, #4
C644C:  CMP.W           R1, #0x100
C6450:  MOV             R2, R1
C6452:  ORR.W           R0, R0, R8,LSL#3
C6456:  IT GT
C6458:  MOVWGT          R2, #0x101
C645C:  CMP             R1, R0
C645E:  LDR.W           R8, [R7,#var_A8]
C6462:  IT LE
C6464:  MOVLE           R2, #0
C6466:  CMP             R2, #0
C6468:  STR.W           R2, [R7,#n]
C646C:  IT EQ
C646E:  MOVEQ           R10, R2
C6470:  STR.W           R10, [R6,#0x20]
C6474:  B               loc_C6520
C6476:  ASRS            R0, R3, #3
C6478:  ADD.W           R0, R0, R3,LSR#31
C647C:  CMP             R0, R5
C647E:  IT EQ
C6480:  MOVEQ           R4, R2
C6482:  LDR.W           R0, [R7,#var_A8]
C6486:  MOV             R1, R4
C6488:  LDR             R5, [R7,#arg_20]
C648A:  BLX             sub_108848
C648E:  MOV             R2, R0
C6490:  SUB             SP, SP, #0x18
C6492:  LDR.W           R0, [R7,#src]
C6496:  MOV             R1, R8
C6498:  STR             R0, [SP,#0x138+var_138]
C649A:  MOV             R3, R4
C649C:  LDR             R0, [R7,#arg_0]
C649E:  STR             R0, [SP,#0x138+var_134]
C64A0:  LDR.W           R0, [R7,#var_EC]
C64A4:  STR             R0, [SP,#0x138+var_130]
C64A6:  LDR.W           R0, [R7,#var_C4]
C64AA:  STRD.W          R0, R5, [SP,#0x138+var_12C]
C64AE:  MOV             R0, R9
C64B0:  BL              sub_C78A4
C64B4:  ADD             SP, SP, #0x18
C64B6:  MOV             R5, R0
C64B8:  LDR             R0, =(__stack_chk_guard_ptr - 0xC64C2)
C64BA:  LDR.W           R1, [R7,#var_24]
C64BE:  ADD             R0, PC; __stack_chk_guard_ptr
C64C0:  LDR             R0, [R0]; __stack_chk_guard
C64C2:  LDR             R0, [R0]
C64C4:  SUBS            R0, R0, R1
C64C6:  ITTTT EQ
C64C8:  MOVEQ           R0, R5
C64CA:  SUBEQ.W         R4, R7, #-var_1C
C64CE:  MOVEQ           SP, R4
C64D0:  POPEQ.W         {R8-R11}
C64D4:  IT EQ
C64D6:  POPEQ           {R4-R7,PC}
C64D8:  BLX             __stack_chk_fail
C64DC:  DCD __stack_chk_guard_ptr - 0xC5696
C64E0:  DCD 0x2EE0
C64E4:  DCD 0x3E8
C64E8:  DCD 0x36B0
C64EC:  DCD 0x3E8
C64F0:  DCD 0x3E80
C64F4:  DCD 0x3E8
C64F8:  DCD 0x4E20
C64FC:  DCD 0x3E8, 0x55F0, 0x3E8
C6508:  DCD __stack_chk_guard_ptr - 0xC64C2
C650C:  DCD 0xD, 0x11, 0x11, 0x13
C651C:  MOVS            R0, #0
C651E:  STR             R0, [R6,#0x20]
C6520:  LDR.W           R4, [R7,#var_F4]
C6524:  LDR.W           R0, [R7,#src]
C6528:  SUBS            R2, R4, #1
C652A:  ADDS            R1, R0, #1
C652C:  SUB.W           R0, R7, #-var_A4
C6530:  MOV             R3, R2
C6532:  STR             R1, [R6,#0xC]
C6534:  STR             R3, [R6,#0x14]
C6536:  BLX             j_ec_enc_init
C653A:  LDR.W           R2, [R7,#var_D0]
C653E:  LDR.W           R0, [R9,#0x70]
C6542:  ADD.W           R1, R2, R8
C6546:  STR             R1, [R6,#8]
C6548:  LSLS            R1, R1, #1
C654A:  STR             R1, [R6]
C654C:  MULS            R1, R0
C654E:  ADDS            R1, #7
C6550:  BIC.W           R1, R1, #7
C6554:  SUB.W           R5, SP, R1
C6558:  MOV             SP, R5
C655A:  LDR.W           R1, [R9,#0xAC]
C655E:  ADD.W           R3, R9, #0x110
C6562:  STR             R3, [R6,#0x10]
C6564:  SUBS            R1, R1, R2
C6566:  MULS            R1, R0
C6568:  MULS            R0, R2
C656A:  ADD.W           R1, R3, R1,LSL#1; src
C656E:  LSLS            R2, R0, #1; n
C6570:  MOV             R0, R5; dest
C6572:  BLX             j_memcpy
C6576:  LDR.W           R0, [R7,#n]
C657A:  MOV.W           R1, R11,LSL#3
C657E:  SUBS            R4, R4, R0
C6580:  LDR.W           R0, [R7,#var_C4]
C6584:  MUL.W           R0, R0, R8
C6588:  BLX             sub_108848
C658C:  MOV             R10, R0
C658E:  CMP             R4, R10
C6590:  IT LT
C6592:  MOVLT           R10, R4
C6594:  LDR.W           R0, [R7,#var_F8]
C6598:  MOVW            R1, #0x3EA
C659C:  LDR             R0, [R0]
C659E:  CMP             R0, R1
C65A0:  BNE             loc_C65AC
C65A2:  MOVS            R0, #0x3C ; '<'
C65A4:  BLX             j_silk_lin2log
C65A8:  LSLS            R0, R0, #8
C65AA:  B               loc_C65B0
C65AC:  LDR             R0, [R6,#0x18]
C65AE:  LDR             R0, [R0,#8]
C65B0:  LDR.W           R1, [R9,#0xC4]
C65B4:  MOVW            R3, #0x3D7
C65B8:  SUBS            R0, R0, R1
C65BA:  UXTH            R2, R0
C65BC:  SMLABT.W        R0, R3, R0, R1
C65C0:  MULS            R2, R3
C65C2:  ADD.W           R0, R0, R2,LSR#16
C65C6:  STR.W           R0, [R9,#0xC4]
C65CA:  ASRS            R0, R0, #8
C65CC:  BLX             j_silk_log2lin
C65D0:  LDRD.W          R2, R4, [R9,#0x6C]
C65D4:  LDR.W           R3, [R7,#var_D0]
C65D8:  LDR.W           R1, [R9,#0x90]
C65DC:  CMP.W           R2, #0x800
C65E0:  STR.W           R5, [R7,#var_F0]
C65E4:  MUL.W           R3, R4, R3
C65E8:  STR.W           R10, [R6,#4]
C65EC:  ADD.W           R8, R5, R3,LSL#1
C65F0:  BNE             loc_C66C0
C65F2:  ADD.W           R2, R9, #0xCC
C65F6:  STR.W           R2, [R7,#var_C4]
C65FA:  MOVW            R2, #0x4DD3
C65FE:  SXTH            R0, R0
C6600:  MOVT            R2, #0x1062
C6604:  STR.W           R4, [R7,#var_DC]
C6608:  SMMUL.W         R1, R1, R2
C660C:  MOVW            R2, #0x9A7
C6610:  SMULBB.W        R0, R0, R2
C6614:  ASRS            R2, R1, #6
C6616:  ADD.W           R1, R2, R1,LSR#31
C661A:  BLX             sub_108848
C661E:  MOV             R1, #0xFFFFFE29
C6622:  MOV.W           R12, #1
C6626:  MUL.W           LR, R0, R1
C662A:  UXTH.W          R11, R0
C662E:  ADD.W           R2, LR, #0x10000000
C6632:  STR.W           R2, [R7,#var_30]
C6636:  STR.W           R2, [R7,#var_28]
C663A:  ADD.W           R5, R12, R2,ASR#21
C663E:  ASRS            R3, R2, #6
C6640:  SBFX.W          R1, R2, #6, #0x10
C6644:  ASRS            R2, R2, #0x16
C6646:  ASRS            R5, R5, #1
C6648:  MULS            R5, R3
C664A:  SMLABB.W        R4, R1, R2, R5
C664E:  UXTH            R5, R3
C6650:  MUL.W           R9, R1, R5
C6654:  SXTH            R1, R0
C6656:  MUL.W           R1, R1, R11
C665A:  ASRS            R1, R1, #0x10
C665C:  SMLABT.W        R11, R0, R0, R1
C6660:  ADD.W           R1, R12, R0,ASR#15
C6664:  ASRS            R1, R1, #1
C6666:  MLA.W           R0, R1, R0, R11
C666A:  SUB.W           R0, R0, #0x800000
C666E:  SXTH            R1, R0
C6670:  ADD.W           R0, R12, R0,ASR#15
C6674:  MULS            R5, R1
C6676:  ASRS            R0, R0, #1
C6678:  SMULBB.W        R1, R1, R2
C667C:  ADD.W           R1, R1, R5,ASR#16
C6680:  MLA.W           R0, R0, R3, R1
C6684:  RSB.W           R1, LR, #0x70000000
C6688:  LSLS            R1, R1, #1
C668A:  STR.W           R1, [R7,#var_2C]
C668E:  ADD.W           R1, R4, R9,ASR#16
C6692:  STRD.W          R0, R1, [R7,#var_38]
C6696:  LDR.W           R0, [R7,#var_DC]
C669A:  CMP             R0, #1
C669C:  BNE             loc_C677A
C669E:  SUB             SP, SP, #8
C66A0:  LDR.W           R0, [R7,#var_A8]
C66A4:  SUB.W           R1, R7, #-var_30
C66A8:  STR.W           R8, [SP,#0x128+var_128]
C66AC:  SUB.W           R2, R7, #-var_38
C66B0:  STR             R0, [SP,#0x128+var_124]
C66B2:  LDR.W           R0, [R7,#var_B4]
C66B6:  LDR.W           R3, [R7,#var_C4]
C66BA:  BLX             j_silk_biquad_alt_stride1
C66BE:  B               loc_C679A
C66C0:  CMP             R4, #1
C66C2:  MOV             R2, R8
C66C4:  ITT GE
C66C6:  LDRGE.W         R0, [R7,#var_A8]
C66CA:  CMPGE           R0, #1
C66CC:  BLT             loc_C67A0
C66CE:  MOVW            R0, #0xAAAB
C66D2:  LSLS            R3, R4, #1
C66D4:  MOVT            R0, #0x2AAA
C66D8:  STR.W           R4, [R7,#var_DC]
C66DC:  SMMUL.W         R0, R1, R0
C66E0:  ASRS            R1, R0, #1
C66E2:  ADD.W           R0, R1, R0,LSR#31
C66E6:  CLZ.W           R0, R0
C66EA:  MOVS            R1, #1
C66EC:  RSB.W           R5, R0, #0x1F
C66F0:  MOVS            R0, #0
C66F2:  LSLS            R1, R5
C66F4:  ASRS            R1, R1, #1
C66F6:  STR.W           R0, [R7,#var_C4]
C66FA:  ADD.W           R0, R9, R0,LSL#3
C66FE:  LDR.W           R9, [R7,#var_A8]
C6702:  MOV.W           R8, #0
C6706:  LDR.W           R11, [R0,#0xCC]!
C670A:  LDR.W           LR, [R7,#var_B4]
C670E:  STR.W           R0, [R7,#var_D4]
C6712:  LDRSH.W         R10, [LR,R8]
C6716:  MOV             R12, #0xFFFF8001
C671E:  RSB.W           R4, R11, R10,LSL#14
C6722:  MOV             R10, R3
C6724:  ADD.W           R0, R4, #0x2000
C6728:  MOV             R3, R1
C672A:  ASRS            R1, R0, #0xE
C672C:  CMP             R1, R12
C672E:  IT GT
C6730:  MOVGT.W         R12, R0,ASR#14
C6734:  MOVW            R0, #0x7FFF
C6738:  CMP             R12, R0
C673A:  MOV             R1, R3
C673C:  IT GE
C673E:  MOVGE           R12, R0
C6740:  ADDS            R0, R4, R1
C6742:  STRH.W          R12, [R2,R8]
C6746:  MOV             R3, R10
C6748:  ASRS            R0, R5
C674A:  ADD             R8, R3
C674C:  ADD             R11, R0
C674E:  SUBS.W          R9, R9, #1
C6752:  BNE             loc_C6712
C6754:  LDR.W           R0, [R7,#var_D4]
C6758:  ADDS            R2, #2
C675A:  ADD.W           LR, LR, #2
C675E:  STR.W           R11, [R0]
C6762:  LDR.W           R0, [R7,#var_C4]
C6766:  LDR.W           R4, [R7,#var_DC]
C676A:  LDR.W           R9, [R7,#var_CC]
C676E:  ADDS            R0, #1
C6770:  CMP             R0, R4
C6772:  STR.W           LR, [R7,#var_B4]
C6776:  BNE             loc_C66F6
C6778:  B               loc_C67A0
C677A:  SUB             SP, SP, #8
C677C:  LDR.W           R0, [R7,#var_A8]
C6780:  SUB.W           R1, R7, #-var_30
C6784:  STR.W           R8, [SP,#0x128+var_128]
C6788:  SUB.W           R2, R7, #-var_38
C678C:  STR             R0, [SP,#0x128+var_124]
C678E:  LDR.W           R0, [R7,#var_B4]
C6792:  LDR.W           R3, [R7,#var_C4]
C6796:  BLX             j_silk_biquad_alt_stride2_c
C679A:  ADD             SP, SP, #8
C679C:  LDR.W           R9, [R7,#var_CC]
C67A0:  LDR.W           R11, [R7,#var_F8]
C67A4:  MOVW            R0, #0x3EA
C67A8:  LDR.W           R10, [R11]
C67AC:  CMP             R10, R0
C67AE:  BNE             loc_C6862
C67B0:  MOVW            R8, #0x7FFF
C67B4:  LDR.W           R0, [R7,#var_C0]
C67B8:  LDR.W           R4, [R7,#var_E8]
C67BC:  SUBW            R2, R4, #0x44D
C67C0:  STR.W           R4, [R7,#var_E8]
C67C4:  CMP             R2, #3
C67C6:  MOV             R4, R0
C67C8:  ITTE LS
C67CA:  ADRLS.W         R1, dword_C650C
C67CE:  LDRLS.W         R2, [R1,R2,LSL#2]
C67D2:  MOVHI           R2, #0x15
C67D4:  MOVW            R1, #0x271C
C67D8:  BLX             j_opus_custom_encoder_ctl
C67DC:  LDR             R0, [R6,#0x1C]
C67DE:  MOVW            R1, #0x2718
C67E2:  LDR             R2, [R0]
C67E4:  MOV             R0, R4
C67E6:  BLX             j_opus_custom_encoder_ctl
C67EA:  MOV             R0, R4
C67EC:  MOVW            R1, #0xFA2
C67F0:  MOV.W           R2, #0xFFFFFFFF
C67F4:  BLX             j_opus_custom_encoder_ctl
C67F8:  LDR.W           R0, [R11]
C67FC:  CMP.W           R0, #0x3E8
C6800:  BEQ.W           loc_C692C
C6804:  LDR.W           R5, [R7,#var_C0]
C6808:  MOVW            R1, #0xFA6
C680C:  MOVS            R2, #0
C680E:  MOVS            R4, #0
C6810:  MOV             R0, R5
C6812:  BLX             j_opus_custom_encoder_ctl
C6816:  LDR.W           R0, [R9,#0x4C]
C681A:  MOVW            R1, #0x2712
C681E:  CMP             R0, #0
C6820:  MOV             R0, R5
C6822:  IT EQ
C6824:  MOVEQ           R4, #2
C6826:  MOV             R2, R4
C6828:  BLX             j_opus_custom_encoder_ctl
C682C:  LDR.W           R0, [R9,#0x94]
C6830:  MOVW            R2, #0x3E9
C6834:  LDR.W           R1, [R11]
C6838:  CMP             R1, R2
C683A:  BNE             loc_C68FE
C683C:  CMP             R0, #0
C683E:  BEQ             loc_C692C
C6840:  LDR.W           R0, [R9,#0x24]
C6844:  LDR.W           R1, [R9,#0xA0]
C6848:  LDR.W           R4, [R7,#var_C0]
C684C:  SUBS            R2, R1, R0
C684E:  MOVW            R1, #0xFA2
C6852:  MOV             R0, R4
C6854:  BLX             j_opus_custom_encoder_ctl
C6858:  MOV             R0, R4
C685A:  MOVW            R1, #0xFB4
C685E:  MOVS            R2, #0
C6860:  B               loc_C6928
C6862:  LDR             R1, [R6,#4]
C6864:  MOV             R0, #0xFFFFFFF8
C6868:  LDR.W           R5, [R7,#var_A8]
C686C:  ADD.W           R0, R0, R1,LSL#3
C6870:  LDR.W           R1, [R7,#var_B0]
C6874:  MUL.W           R11, R0, R1
C6878:  MOVW            R0, #0x3E9
C687C:  CMP             R10, R0
C687E:  BNE             loc_C68CC
C6880:  MOVS            R0, #0x32 ; '2'
C6882:  MULS            R5, R0
C6884:  MOV             R0, R9
C6886:  LDR.W           R9, [R0,#0x34]
C688A:  LDRD.W          R4, R1, [R0,#0x90]
C688E:  STR.W           R1, [R7,#var_C4]
C6892:  LDR.W           R1, [R0,#0xBC]
C6896:  MOV             R0, R11
C6898:  STR.W           R1, [R7,#var_B4]
C689C:  BLX             sub_108848
C68A0:  MOV             R8, R0
C68A2:  CMP             R4, R5
C68A4:  MOV.W           R0, #1
C68A8:  MOV.W           R1, #1
C68AC:  IT EQ
C68AE:  MOVEQ           R0, #2
C68B0:  MOVW            R2, #0x2EE0
C68B4:  ADD.W           R0, R0, R9,LSL#1
C68B8:  CMP             R8, R2
C68BA:  BLT.W           loc_C718E
C68BE:  CMP.W           R8, #0x3E80
C68C2:  BGE.W           loc_C710C
C68C6:  MOVS            R1, #2
C68C8:  B.W             loc_C718E
C68CC:  MOV             R0, R9
C68CE:  MOVW            LR, #0xF800
C68D2:  LDR.W           R1, [R0,#0xFC]!
C68D6:  MOVT            LR, #0xFFFF
C68DA:  STR.W           R11, [R0,#-0xD8]
C68DE:  CMP             R1, #0
C68E0:  LDR.W           R12, [R7,#var_E8]
C68E4:  BEQ.W           loc_C7038
C68E8:  MOV             R4, R11
C68EA:  B.W             loc_C7212
C68EE:  MOV             R0, R9
C68F0:  LDR.W           R2, [R0,#0xEC]!
C68F4:  STR.W           R0, [R7,#var_AC]
C68F8:  MOV             R0, R5
C68FA:  B.W             loc_C6052
C68FE:  CBZ             R0, loc_C692C
C6900:  LDR.W           R4, [R7,#var_C0]
C6904:  MOVW            R1, #0xFA6
C6908:  MOVS            R2, #1
C690A:  MOV             R0, R4
C690C:  BLX             j_opus_custom_encoder_ctl
C6910:  LDR.W           R2, [R9,#0x98]
C6914:  MOV             R0, R4
C6916:  MOVW            R1, #0xFB4
C691A:  BLX             j_opus_custom_encoder_ctl
C691E:  LDR.W           R2, [R9,#0xA0]
C6922:  MOV             R0, R4
C6924:  MOVW            R1, #0xFA2
C6928:  BLX             j_opus_custom_encoder_ctl
C692C:  LDR.W           R10, [R9,#0x70]
C6930:  MOVW            R2, #0x851F
C6934:  LDR.W           R0, [R9,#0x90]
C6938:  MOVT            R2, #0x51EB
C693C:  MUL.W           R1, R0, R10
C6940:  SMMUL.W         R1, R1, R2
C6944:  ASRS            R2, R1, #7
C6946:  ADD.W           R1, R2, R1,LSR#31
C694A:  MOVS            R2, #7
C694C:  ADD.W           R2, R2, R1,LSL#1
C6950:  BIC.W           R2, R2, #7
C6954:  SUB.W           R4, SP, R2
C6958:  MOV             SP, R4
C695A:  LDR.W           R2, [R11]
C695E:  CMP.W           R2, #0x3E8
C6962:  ITT NE
C6964:  LDRNE.W         R3, [R9,#0xE0]
C6968:  CMPNE           R2, R3
C696A:  BEQ             loc_C69A2
C696C:  CMP             R3, #1
C696E:  BLT             loc_C69A2
C6970:  LSLS            R2, R1, #1; n
C6972:  MOV             R1, #0xAE147AE1
C697A:  SMMUL.W         R0, R0, R1
C697E:  LDR.W           R1, [R9,#0xAC]
C6982:  ASRS            R3, R0, #7
C6984:  ADD.W           R0, R3, R0,LSR#31
C6988:  LDR.W           R3, [R7,#var_D0]
C698C:  SUBS            R0, R0, R3
C698E:  ADD             R0, R1
C6990:  MUL.W           R0, R0, R10
C6994:  ADD.W           R0, R9, R0,LSL#1
C6998:  ADD.W           R1, R0, #0x110; src
C699C:  MOV             R0, R4; dest
C699E:  BLX             j_memcpy
C69A2:  STR.W           R4, [R7,#var_B4]
C69A6:  LDR.W           R0, [R9,#0xAC]
C69AA:  LDR             R2, [R6,#8]
C69AC:  SUBS            R1, R0, R2
C69AE:  MUL.W           R5, R1, R10
C69B2:  CMP             R5, #1
C69B4:  BLT             loc_C69DC
C69B6:  LDR.W           R0, [R7,#var_A8]
C69BA:  LSLS            R2, R5, #1; n
C69BC:  LDR             R4, [R6,#0x10]
C69BE:  MUL.W           R0, R10, R0
C69C2:  ADD.W           R1, R4, R0,LSL#1; src
C69C6:  MOV             R0, R4; dest
C69C8:  BLX             j_memmove
C69CC:  LDR             R0, [R6]
C69CE:  LDR.W           R1, [R7,#var_F0]
C69D2:  MUL.W           R2, R0, R10
C69D6:  ADD.W           R0, R4, R5,LSL#1
C69DA:  B               loc_C69F2
C69DC:  SUBS            R1, R2, R0
C69DE:  MUL.W           R0, R10, R0
C69E2:  LDR.W           R2, [R7,#var_F0]
C69E6:  MUL.W           R1, R1, R10
C69EA:  ADD.W           R1, R2, R1,LSL#1; src
C69EE:  LSLS            R2, R0, #1; n
C69F0:  LDR             R0, [R6,#0x10]; dest
C69F2:  BLX             j_memcpy
C69F6:  LDRH.W          R4, [R9,#0xC8]
C69FA:  UXTH.W          R2, R8
C69FE:  MOVW            R1, #0x7FFF
C6A02:  CMP             R2, R1
C6A04:  IT EQ
C6A06:  CMPEQ           R4, R1
C6A08:  BEQ             loc_C6A3C
C6A0A:  LDR.W           R1, [R7,#var_40]
C6A0E:  LDR.W           R2, [R9,#0x70]
C6A12:  LDR.W           R3, [R9,#0x90]
C6A16:  LDR             R5, [R1,#4]
C6A18:  LDR             R1, [R1,#0x34]
C6A1A:  SUB             SP, SP, #0x18
C6A1C:  LDR.W           R0, [R7,#var_F0]
C6A20:  STR             R5, [SP,#0x138+var_138]
C6A22:  LDR.W           R5, [R7,#var_A8]
C6A26:  STR             R5, [SP,#0x138+var_134]
C6A28:  STRD.W          R2, R1, [SP,#0x138+var_130]
C6A2C:  SXTH            R2, R4
C6A2E:  STR             R3, [SP,#0x138+var_128]
C6A30:  SXTH.W          R3, R8
C6A34:  MOV             R1, R0
C6A36:  BL              sub_C7B18
C6A3A:  ADD             SP, SP, #0x18
C6A3C:  STRH.W          R8, [R9,#0xC8]
C6A40:  MOVW            R0, #0x3E9
C6A44:  LDR.W           R4, [R11]
C6A48:  CMP             R4, R0
C6A4A:  BNE             loc_C6A54
C6A4C:  LDR             R0, [R6,#0x1C]
C6A4E:  LDR             R0, [R0]
C6A50:  CMP             R0, #1
C6A52:  BNE             loc_C6A86
C6A54:  LDR.W           R2, [R7,#var_C8]
C6A58:  CMP.W           R2, #0x7D00
C6A5C:  BLE             loc_C6A64
C6A5E:  MOV.W           R0, #0x4000
C6A62:  B               loc_C6A82
C6A64:  CMP.W           R2, #0x3E80
C6A68:  BGE             loc_C6A6E
C6A6A:  MOVS            R0, #0
C6A6C:  B               loc_C6A82
C6A6E:  MOVW            R0, #0x36B0
C6A72:  SUBS            R1, R2, R0
C6A74:  RSB.W           R0, R2, #0x7D00
C6A78:  LSLS            R0, R0, #0xB
C6A7A:  BLX             sub_108848
C6A7E:  RSB.W           R0, R0, #0x4000
C6A82:  STR.W           R0, [R9,#0x5C]
C6A86:  LDR.W           R0, [R9,#0xFC]
C6A8A:  CMP             R0, #0
C6A8C:  ITT EQ
C6A8E:  LDREQ.W         R0, [R9,#0x70]
C6A92:  CMPEQ           R0, #2
C6A94:  BEQ.W           loc_C6E70
C6A98:  MOVW            R0, #0x3EA
C6A9C:  CMP             R4, R0
C6A9E:  BEQ             loc_C6B4E
C6AA0:  LDR.W           R2, [R7,#var_88]
C6AA4:  MOVW            R0, #0x3E9
C6AA8:  LDR.W           R1, [R7,#var_90]
C6AAC:  MOV             R3, #0xFFFFFFF1
C6AB0:  CMP             R4, R0
C6AB2:  CLZ.W           R2, R2
C6AB6:  IT EQ
C6AB8:  MOVEQ           R3, #5
C6ABA:  ADD             R1, R3
C6ABC:  ADD             R1, R2
C6ABE:  LDR             R2, [R6,#0x14]
C6AC0:  CMP.W           R1, R2,LSL#3
C6AC4:  BGT             loc_C6B4E
C6AC6:  CMP             R4, R0
C6AC8:  BNE             loc_C6AD6
C6ACA:  LDR             R1, [R6,#0x20]
C6ACC:  SUB.W           R0, R7, #-var_A4
C6AD0:  MOVS            R2, #0xC
C6AD2:  BLX             j_ec_enc_bit_logp
C6AD6:  LDR             R0, [R6,#0x20]
C6AD8:  CBZ             R0, loc_C6B4E
C6ADA:  MOVS            R1, #1
C6ADC:  SUB.W           R0, R7, #-var_A4
C6AE0:  STR.W           R1, [R7,#var_B0]
C6AE4:  MOVS            R2, #1
C6AE6:  LDR.W           R1, [R7,#var_FC]
C6AEA:  BLX             j_ec_enc_bit_logp
C6AEE:  LDR.W           R0, [R11]
C6AF2:  MOVW            R5, #0x3E9
C6AF6:  MOVS            R1, #7
C6AF8:  LDR.W           R2, [R7,#var_90]
C6AFC:  LDR.W           R3, [R7,#var_88]
C6B00:  CMP             R0, R5
C6B02:  IT EQ
C6B04:  MOVEQ           R1, #0x12
C6B06:  ADD             R1, R2
C6B08:  CLZ.W           R2, R3
C6B0C:  ADD             R1, R2
C6B0E:  LDR             R2, [R6,#0x14]
C6B10:  SUBS            R1, #0x20 ; ' '
C6B12:  SUB.W           R1, R2, R1,ASR#3
C6B16:  LDR.W           R2, [R7,#n]
C6B1A:  CMP             R1, R2
C6B1C:  IT LT
C6B1E:  MOVLT           R2, R1
C6B20:  CMP             R2, #2
C6B22:  IT LE
C6B24:  MOVLE           R2, #2
C6B26:  CMP.W           R2, #0x100
C6B2A:  IT GT
C6B2C:  MOVWGT          R2, #0x101
C6B30:  CMP             R0, R5
C6B32:  BNE             loc_C6B60
C6B34:  SUBS            R1, R2, #2
C6B36:  SUB.W           R0, R7, #-var_A4
C6B3A:  MOV             R4, R2
C6B3C:  MOV.W           R2, #0x100
C6B40:  BLX             j_ec_enc_uint
C6B44:  MOVS            R0, #1
C6B46:  MOV             R2, R4
C6B48:  STR.W           R0, [R7,#var_B0]
C6B4C:  B               loc_C6B60
C6B4E:  MOVS            R0, #0
C6B50:  MOVS            R2, #0
C6B52:  STR.W           R0, [R7,#var_B0]
C6B56:  MOVS            R1, #0
C6B58:  MOVS            R0, #0
C6B5A:  STR.W           R1, [R9,#0xF4]
C6B5E:  STR             R0, [R6,#0x20]
C6B60:  LDR.W           R0, [R11]
C6B64:  MOVW            R1, #0x3EA
C6B68:  MOV.W           R9, #0x11
C6B6C:  CMP             R0, R1
C6B6E:  IT EQ
C6B70:  MOVEQ.W         R9, #0
C6B74:  CMP.W           R0, #0x3E8
C6B78:  STR.W           R2, [R7,#n]
C6B7C:  BNE             loc_C6BA0
C6B7E:  SUB.W           R0, R7, #-var_A4
C6B82:  LDR.W           R5, [R7,#var_90]
C6B86:  LDR.W           R4, [R7,#var_88]
C6B8A:  BLX             j_ec_enc_done
C6B8E:  CLZ.W           R0, R4
C6B92:  ADD             R0, R5
C6B94:  SUBS            R0, #0x19
C6B96:  MOV.W           R8, R0,ASR#3
C6B9A:  STR.W           R8, [R7,#var_AC]
C6B9E:  B               loc_C6BB6
C6BA0:  LDR             R0, [R6,#0x14]
C6BA2:  SUBS            R1, R0, R2
C6BA4:  SUB.W           R0, R7, #-var_A4
C6BA8:  MOV             R2, R1
C6BAA:  STR.W           R2, [R7,#var_AC]
C6BAE:  BLX             j_ec_enc_shrink
C6BB2:  MOV.W           R8, #0
C6BB6:  LDR.W           R0, [R11]
C6BBA:  MOVW            R1, #0x3E9
C6BBE:  CMP             R0, R1
C6BC0:  LDR.W           R0, [R7,#var_C0]
C6BC4:  BNE             loc_C6BE2
C6BC6:  LDR.W           R1, [R7,#var_CC]
C6BCA:  LDRD.W          R2, R1, [R1,#0x64]
C6BCE:  STRD.W          R2, R1, [R7,#var_30]
C6BD2:  SUB.W           R2, R7, #-var_30
C6BD6:  MOVW            R1, #0x272C
C6BDA:  BLX             j_opus_custom_encoder_ctl
C6BDE:  LDR.W           R0, [R7,#var_C0]
C6BE2:  LDR.W           R1, [R7,#var_FC]
C6BE6:  CMP             R1, #0
C6BE8:  IT NE
C6BEA:  MOVNE           R1, #1
C6BEC:  LDR.W           R2, [R7,#var_B0]
C6BF0:  AND.W           R10, R1, R2
C6BF4:  CMP.W           R10, #1
C6BF8:  BNE             loc_C6C78
C6BFA:  MOVW            R1, #0x271A
C6BFE:  MOVS            R2, #0
C6C00:  MOVS            R4, #0
C6C02:  MOV             R5, R0
C6C04:  BLX             j_opus_custom_encoder_ctl
C6C08:  MOV             R0, R5
C6C0A:  MOVW            R1, #0xFA6
C6C0E:  MOVS            R2, #0
C6C10:  BLX             j_opus_custom_encoder_ctl
C6C14:  MOV             R0, R5
C6C16:  MOVW            R1, #0xFA2
C6C1A:  MOV.W           R2, #0xFFFFFFFF
C6C1E:  BLX             j_opus_custom_encoder_ctl
C6C22:  LDR.W           R0, [R7,#var_BC]
C6C26:  MOV             R1, #0x51EB851F
C6C2E:  LDR             R0, [R0]
C6C30:  SMMUL.W         R0, R0, R1
C6C34:  SUB             SP, SP, #8
C6C36:  LDR.W           R1, [R7,#n]
C6C3A:  STRD.W          R1, R4, [SP,#0x128+var_128]
C6C3E:  ASRS            R1, R0, #6
C6C40:  ADD.W           R2, R1, R0,LSR#31
C6C44:  LDR             R0, [R6,#0xC]
C6C46:  LDR.W           R1, [R7,#var_AC]
C6C4A:  ADDS            R3, R0, R1
C6C4C:  LDR.W           R1, [R7,#var_F0]
C6C50:  MOV             R0, R5
C6C52:  BLX             j_celt_encode_with_ec
C6C56:  ADD             SP, SP, #8
C6C58:  CMP             R0, #0
C6C5A:  BLT.W           loc_C76B8
C6C5E:  SUB.W           R2, R7, #-var_3C
C6C62:  MOV             R0, R5
C6C64:  MOVW            R1, #0xFBF
C6C68:  BLX             j_opus_custom_encoder_ctl
C6C6C:  MOV             R0, R5
C6C6E:  MOVW            R1, #0xFBC
C6C72:  BLX             j_opus_custom_encoder_ctl
C6C76:  MOV             R0, R5
C6C78:  MOVW            R1, #0x271A
C6C7C:  MOV             R2, R9
C6C7E:  BLX             j_opus_custom_encoder_ctl
C6C82:  LDR.W           R0, [R11]
C6C86:  CMP.W           R0, #0x3E8
C6C8A:  BNE             loc_C6C9A
C6C8C:  LDR.W           R4, [R7,#src]
C6C90:  LDR.W           R5, [R7,#var_CC]
C6C94:  LDR.W           R0, [R7,#var_C0]
C6C98:  B               loc_C6D1A
C6C9A:  LDR.W           R5, [R7,#var_CC]
C6C9E:  LDR.W           R1, [R5,#0xE0]
C6CA2:  CMP             R0, R1
C6CA4:  BEQ             loc_C6CF6
C6CA6:  CMP             R1, #1
C6CA8:  BLT             loc_C6CF6
C6CAA:  LDR.W           R4, [R7,#var_C0]
C6CAE:  MOVW            R1, #0xFBC
C6CB2:  MOV             R0, R4
C6CB4:  BLX             j_opus_custom_encoder_ctl
C6CB8:  LDR.W           R0, [R7,#var_BC]
C6CBC:  MOV             R1, #0x51EB851F
C6CC4:  LDR             R0, [R0]
C6CC6:  SMMUL.W         R0, R0, R1
C6CCA:  SUB             SP, SP, #8
C6CCC:  MOVS            R1, #0
C6CCE:  MOVS            R2, #2
C6CD0:  STRD.W          R2, R1, [SP,#0x128+var_128]
C6CD4:  ASRS            R1, R0, #7
C6CD6:  ADD.W           R2, R1, R0,LSR#31
C6CDA:  LDR.W           R1, [R7,#var_B4]
C6CDE:  SUB.W           R3, R7, #-var_30
C6CE2:  MOV             R0, R4
C6CE4:  BLX             j_celt_encode_with_ec
C6CE8:  ADD             SP, SP, #8
C6CEA:  MOV             R0, R4
C6CEC:  MOVW            R1, #0x2712
C6CF0:  MOVS            R2, #0
C6CF2:  BLX             j_opus_custom_encoder_ctl
C6CF6:  LDR.W           R1, [R7,#var_88]
C6CFA:  LDR.W           R0, [R7,#var_90]
C6CFE:  CLZ.W           R1, R1
C6D02:  ADD             R0, R1
C6D04:  LDR.W           R1, [R7,#var_AC]
C6D08:  SUBS            R0, #0x20 ; ' '
C6D0A:  CMP.W           R0, R1,LSL#3
C6D0E:  LDR.W           R0, [R7,#var_C0]
C6D12:  BLE.W           loc_C6EA0
C6D16:  LDR.W           R4, [R7,#src]
C6D1A:  LDR.W           R1, [R7,#var_FC]
C6D1E:  CMP             R1, #0
C6D20:  BNE             loc_C6E1E
C6D22:  LDR             R1, [R6,#0x20]
C6D24:  CMP             R1, #0
C6D26:  BEQ             loc_C6E1E
C6D28:  LDR.W           R1, [R7,#var_BC]
C6D2C:  MOV             R5, R0
C6D2E:  LDR             R4, [R1]
C6D30:  MOVW            R1, #0xFBC
C6D34:  BLX             j_opus_custom_encoder_ctl
C6D38:  MOV             R0, R5
C6D3A:  MOVW            R1, #0x271A
C6D3E:  MOVS            R2, #0
C6D40:  MOV.W           R10, #0
C6D44:  BLX             j_opus_custom_encoder_ctl
C6D48:  MOV             R0, R5
C6D4A:  MOVW            R1, #0x2712
C6D4E:  MOVS            R2, #0
C6D50:  BLX             j_opus_custom_encoder_ctl
C6D54:  MOV             R0, R5
C6D56:  MOVW            R1, #0xFA6
C6D5A:  MOVS            R2, #0
C6D5C:  BLX             j_opus_custom_encoder_ctl
C6D60:  MOV             R0, R5
C6D62:  MOVW            R1, #0xFA2
C6D66:  MOV.W           R2, #0xFFFFFFFF
C6D6A:  BLX             j_opus_custom_encoder_ctl
C6D6E:  MOVW            R0, #0x851F
C6D72:  LDR.W           R3, [R11]
C6D76:  MOVT            R0, #0x51EB
C6D7A:  SMMUL.W         R0, R4, R0
C6D7E:  ASRS            R1, R0, #7
C6D80:  ADD.W           R2, R1, R0,LSR#31
C6D84:  ASRS            R1, R0, #6
C6D86:  ADD.W           R4, R1, R0,LSR#31
C6D8A:  MOVW            R0, #0x3E9
C6D8E:  CMP             R3, R0
C6D90:  BNE             loc_C6DA4
C6D92:  SUB.W           R0, R7, #-var_A4
C6D96:  MOV             R1, R8
C6D98:  MOV             R5, R2
C6D9A:  BLX             j_ec_enc_shrink
C6D9E:  MOV             R2, R5
C6DA0:  STR.W           R8, [R7,#var_AC]
C6DA4:  LDR.W           R9, [R7,#var_CC]
C6DA8:  LDR.W           R0, [R7,#var_A8]
C6DAC:  SUBS            R5, R0, R4
C6DAE:  LDR.W           R0, [R9,#0x70]
C6DB2:  SUBS            R1, R5, R2
C6DB4:  MULS            R0, R1
C6DB6:  SUB             SP, SP, #8
C6DB8:  MOVS            R1, #2
C6DBA:  SUB.W           R3, R7, #-var_30
C6DBE:  STRD.W          R1, R10, [SP,#0x128+var_128]
C6DC2:  LDR.W           R10, [R7,#var_F0]
C6DC6:  LDR.W           R11, [R7,#var_C0]
C6DCA:  ADD.W           R1, R10, R0,LSL#1
C6DCE:  MOV             R0, R11
C6DD0:  BLX             j_celt_encode_with_ec
C6DD4:  ADD             SP, SP, #8
C6DD6:  LDR.W           R0, [R9,#0x70]
C6DDA:  MULS            R0, R5
C6DDC:  SUB             SP, SP, #8
C6DDE:  LDR.W           R1, [R7,#n]
C6DE2:  STR             R1, [SP,#0x128+var_128]
C6DE4:  MOVS            R1, #0
C6DE6:  STR             R1, [SP,#0x128+var_124]
C6DE8:  LDR             R1, [R6,#0xC]
C6DEA:  LDR.W           R2, [R7,#var_AC]
C6DEE:  ADDS            R3, R1, R2
C6DF0:  ADD.W           R1, R10, R0,LSL#1
C6DF4:  MOV             R0, R11
C6DF6:  MOV             R2, R4
C6DF8:  BLX             j_celt_encode_with_ec
C6DFC:  ADD             SP, SP, #8
C6DFE:  CMP             R0, #0
C6E00:  BLT.W           loc_C76B8
C6E04:  SUB.W           R2, R7, #-var_3C
C6E08:  MOV             R0, R11
C6E0A:  MOVW            R1, #0xFBF
C6E0E:  BLX             j_opus_custom_encoder_ctl
C6E12:  LDR.W           R4, [R7,#src]
C6E16:  LDR.W           R5, [R7,#var_CC]
C6E1A:  LDR.W           R11, [R7,#var_F8]
C6E1E:  LDR.W           R0, [R7,#var_BC]
C6E22:  LDR.W           R1, [R7,#var_A8]
C6E26:  LDR             R0, [R0]
C6E28:  BLX             sub_108848
C6E2C:  LDR             R1, [R6,#0x1C]
C6E2E:  MOVS            R2, #0
C6E30:  LDR.W           R3, [R11]
C6E34:  CMP.W           R0, #0x190
C6E38:  LDR.W           R12, [R1]
C6E3C:  BGE             loc_C6E4E
C6E3E:  LDR.W           R1, [R7,#var_E8]
C6E42:  ADDS            R2, #8
C6E44:  LSLS            R0, R0, #1
C6E46:  CMP.W           R0, #0x190
C6E4A:  BLT             loc_C6E42
C6E4C:  B               loc_C6E52
C6E4E:  LDR.W           R1, [R7,#var_E8]
C6E52:  MOVW            R0, #0x3EA
C6E56:  CMP             R3, R0
C6E58:  BEQ             loc_C6F4E
C6E5A:  CMP.W           R3, #0x3E8
C6E5E:  BNE.W           loc_C6F66
C6E62:  MOVS            R0, #0x60 ; '`'
C6E64:  SUBS            R2, #0x10
C6E66:  ADD.W           R0, R0, R1,LSL#5
C6E6A:  UXTB            R0, R0
C6E6C:  ORRS            R2, R0
C6E6E:  B               loc_C6F72
C6E70:  LDRH.W          R0, [R9,#0xC0]
C6E74:  LDR.W           R2, [R9,#0x5C]
C6E78:  STR.W           R2, [R7,#var_AC]
C6E7C:  SXTH            R1, R0
C6E7E:  CMP.W           R1, #0x4000
C6E82:  BLT.W           loc_C7042
C6E86:  CMP.W           R2, #0x4000
C6E8A:  BGE.W           loc_C6A98
C6E8E:  CMP.W           R1, #0x4000
C6E92:  BNE.W           loc_C7042
C6E96:  STR.W           R4, [R7,#var_B0]
C6E9A:  MOVW            R4, #0x7FFF
C6E9E:  B               loc_C704A
C6EA0:  CMP.W           R10, #1
C6EA4:  BNE             loc_C6ECC
C6EA6:  LDR.W           R2, [R11]
C6EAA:  MOVW            R1, #0x3E9
C6EAE:  CMP             R2, R1
C6EB0:  BNE             loc_C6ECC
C6EB2:  LDR.W           R1, [R5,#0x94]
C6EB6:  CBZ             R1, loc_C6ECC
C6EB8:  LDR             R2, [R5,#0x24]
C6EBA:  LDR.W           R1, [R5,#0xA0]
C6EBE:  SUBS            R2, R1, R2
C6EC0:  MOVW            R1, #0xFA2
C6EC4:  BLX             j_opus_custom_encoder_ctl
C6EC8:  LDR.W           R0, [R7,#var_C0]
C6ECC:  LDR.W           R2, [R5,#0x94]
C6ED0:  MOVW            R1, #0xFA6
C6ED4:  MOV             R4, R0
C6ED6:  BLX             j_opus_custom_encoder_ctl
C6EDA:  SUB             SP, SP, #8
C6EDC:  LDR.W           R0, [R7,#var_AC]
C6EE0:  MOVS            R3, #0
C6EE2:  LDR.W           R1, [R7,#var_F0]
C6EE6:  LDR.W           R2, [R7,#var_A8]
C6EEA:  STR             R0, [SP,#0x128+var_128]
C6EEC:  SUB.W           R0, R7, #-var_A4
C6EF0:  STR             R0, [SP,#0x128+var_124]
C6EF2:  MOV             R0, R4
C6EF4:  BLX             j_celt_encode_with_ec
C6EF8:  ADD             SP, SP, #8
C6EFA:  MOV             R8, R0
C6EFC:  CMP.W           R8, #0
C6F00:  BLT.W           loc_C76B8
C6F04:  CMP.W           R10, #1
C6F08:  BNE.W           loc_C7168
C6F0C:  LDR.W           R0, [R11]
C6F10:  MOVW            R1, #0x3E9
C6F14:  LDR.W           R4, [R7,#src]
C6F18:  CMP             R0, R1
C6F1A:  LDR.W           R0, [R7,#var_C0]
C6F1E:  BNE.W           loc_C6D1A
C6F22:  LDR.W           R1, [R5,#0x94]
C6F26:  LDR.W           R9, [R7,#n]
C6F2A:  CMP             R1, #0
C6F2C:  BEQ.W           loc_C6D1A
C6F30:  LDR             R1, [R6,#0xC]
C6F32:  MOV             R2, R9; n
C6F34:  LDR.W           R10, [R7,#var_AC]
C6F38:  ADD.W           R0, R1, R8; dest
C6F3C:  ADD             R1, R10; src
C6F3E:  BLX             j_memmove
C6F42:  LDR.W           R0, [R7,#var_C0]
C6F46:  ADD             R10, R9
C6F48:  STR.W           R10, [R7,#var_AC]
C6F4C:  B               loc_C6D1A
C6F4E:  SUBW            R0, R1, #0x44E
C6F52:  MOVS            R3, #0x60 ; '`'
C6F54:  CMP             R0, #0
C6F56:  IT LE
C6F58:  MOVLE           R0, #0
C6F5A:  AND.W           R0, R3, R0,LSL#5
C6F5E:  ORRS            R0, R2
C6F60:  ORR.W           R2, R0, #0x80
C6F64:  B               loc_C6F72
C6F66:  ADD.W           R0, R2, #0xF0
C6F6A:  ORR.W           R0, R0, R1,LSL#4
C6F6E:  ORR.W           R2, R0, #0x60 ; '`'
C6F72:  CMP.W           R12, #2
C6F76:  MOV.W           R1, #0
C6F7A:  IT EQ
C6F7C:  MOVEQ           R1, #1
C6F7E:  MOVS            R0, #0
C6F80:  ORR.W           R1, R2, R1,LSL#2
C6F84:  STRB            R1, [R4]
C6F86:  LDR.W           R1, [R7,#var_88]
C6F8A:  LDR.W           R2, [R7,#var_3C]
C6F8E:  EORS            R2, R1
C6F90:  STR.W           R2, [R5,#0x894]
C6F94:  LDR.W           R2, [R7,#var_EC]
C6F98:  CLZ.W           R1, R1
C6F9C:  CMP             R2, #0
C6F9E:  ITE EQ
C6FA0:  LDREQ.W         R2, [R11]
C6FA4:  MOVWNE          R2, #0x3EA
C6FA8:  LDR.W           R3, [R5,#0xBC]
C6FAC:  STR.W           R0, [R5,#0xF8]
C6FB0:  STRD.W          R2, R3, [R5,#0xE0]
C6FB4:  LDR.W           R0, [R7,#var_A8]
C6FB8:  STR.W           R0, [R5,#0xE8]
C6FBC:  LDR.W           R0, [R7,#var_90]
C6FC0:  ADD             R0, R1
C6FC2:  LDR             R1, [R6,#0x14]
C6FC4:  SUBS            R0, #0x20 ; ' '
C6FC6:  CMP.W           R0, R1,LSL#3
C6FCA:  BLE             loc_C6FE8
C6FCC:  LDR.W           R0, [R7,#var_F4]
C6FD0:  LDR.W           R1, [R7,#n]
C6FD4:  CMP             R0, #2
C6FD6:  BLT.W           loc_C56D0
C6FDA:  LDR             R2, [R6,#0xC]
C6FDC:  MOVS            R0, #0
C6FDE:  STRB            R0, [R2]
C6FE0:  STR.W           R0, [R5,#0x894]
C6FE4:  MOVS            R0, #1
C6FE6:  B               loc_C701E
C6FE8:  LDR.W           R1, [R11]
C6FEC:  MOVS            R0, #0
C6FEE:  CMP.W           R1, #0x3E8
C6FF2:  IT NE
C6FF4:  MOVNE           R0, #1
C6FF6:  LDR.W           R1, [R7,#n]
C6FFA:  CMP.W           R8, #3
C6FFE:  BLT             loc_C701C
C7000:  LDR.W           R2, [R7,#var_B0]
C7004:  ORRS            R0, R2
C7006:  BNE             loc_C701C
C7008:  LDRB.W          R0, [R4,R8]
C700C:  CBNZ            R0, loc_C701C
C700E:  SUB.W           R0, R8, #1
C7012:  CMP.W           R8, #3
C7016:  MOV             R8, R0
C7018:  BGT             loc_C7008
C701A:  B               loc_C701E
C701C:  MOV             R0, R8
C701E:  LDR.W           R2, [R5,#0x94]
C7022:  ADD             R0, R1
C7024:  ADDS            R5, R0, #1
C7026:  CMP             R2, #0
C7028:  BNE.W           loc_C64B8
C702C:  MOV             R1, R5
C702E:  LDR.W           R5, [R7,#var_F4]
C7032:  MOV             R0, R4
C7034:  B.W             loc_C5AB6
C7038:  MOVW            R0, #0x7FFF
C703C:  STR.W           R11, [R7,#var_D4]
C7040:  B               loc_C73A6
C7042:  LSLS            R0, R0, #0x11
C7044:  STR.W           R4, [R7,#var_B0]
C7048:  ASRS            R4, R0, #0x10
C704A:  LDR.W           R0, [R7,#var_BC]
C704E:  LDR.W           R5, [R7,#var_F0]
C7052:  LDR             R1, [R0]
C7054:  MOVW            R0, #0xBB80
C7058:  BLX             sub_108848
C705C:  LDR.W           R1, [R7,#var_40]
C7060:  MOV             R8, R0
C7062:  LDR             R0, [R1,#4]
C7064:  LDR.W           R10, [R1,#0x34]
C7068:  MOV             R1, R8
C706A:  BLX             sub_108848
C706E:  LDR.W           R12, [R7,#var_AC]
C7072:  MOVW            R2, #0x7FFF
C7076:  MOV.W           R1, R12,LSL#1
C707A:  UXTH            R1, R1
C707C:  SUBS            R3, R2, R1
C707E:  UXTH.W          R1, R12
C7082:  CMP.W           R1, #0x4000
C7086:  IT EQ
C7088:  MOVEQ           R3, #0
C708A:  CMP             R0, #1
C708C:  BLT             loc_C7118
C708E:  MOVW            R1, #0x7FFF
C7092:  MOV.W           R8, R8,LSL#1
C7096:  SUBS            R1, R1, R4
C7098:  ADDS            R4, R5, #2
C709A:  STR.W           R3, [R7,#var_C8]
C709E:  SXTH.W          R9, R3
C70A2:  SXTH.W          LR, R1
C70A6:  STR.W           R0, [R7,#var_C4]
C70AA:  MOV             R3, R0
C70AC:  MOVW            R0, #0x7FFF
C70B0:  LDRSH.W         R1, [R10]
C70B4:  ADD             R10, R8
C70B6:  LDRSH.W         R12, [R4,#-2]
C70BA:  SUBS            R3, #1
C70BC:  SMULBB.W        R1, R1, R1
C70C0:  MOV.W           R1, R1,LSL#1
C70C4:  SUB.W           R2, R0, R1,ASR#16
C70C8:  SXTH            R2, R2
C70CA:  SMULBB.W        R2, R2, LR
C70CE:  SMLATB.W        R1, R1, R9, R2
C70D2:  LDRSH.W         R2, [R4]
C70D6:  SUB.W           R11, R12, R2
C70DA:  MOV.W           R11, R11,ASR#1
C70DE:  MOV.W           R1, R1,LSL#1
C70E2:  SMULTB.W        R1, R1, R11
C70E6:  SUB.W           R5, R12, R1,ASR#15
C70EA:  STRH.W          R5, [R4,#-2]
C70EE:  ADD.W           R1, R2, R1,ASR#15
C70F2:  STRH            R1, [R4]
C70F4:  ADD.W           R4, R4, #4
C70F8:  BNE             loc_C70B0
C70FA:  LDR.W           R11, [R7,#var_F8]
C70FE:  LDR.W           R12, [R7,#var_AC]
C7102:  LDR.W           R2, [R7,#var_C4]
C7106:  LDRD.W          R9, R3, [R7,#var_CC]
C710A:  B               loc_C711A
C710C:  MOVW            R1, #0x4E20
C7110:  CMP             R8, R1
C7112:  BGE             loc_C716E
C7114:  MOVS            R1, #3
C7116:  B               loc_C718E
C7118:  MOVS            R2, #0
C711A:  LDR.W           R0, [R7,#var_A8]
C711E:  CMP             R2, R0
C7120:  BGE             loc_C715E
C7122:  LDR.W           R0, [R7,#var_A8]
C7126:  SUBS            R1, R0, R2
C7128:  LDR.W           R0, [R7,#var_F0]
C712C:  ADD.W           R0, R0, R2,LSL#2
C7130:  SXTH            R2, R3
C7132:  ADDS            R0, #2
C7134:  LDRSH.W         R3, [R0]
C7138:  SUBS            R1, #1
C713A:  LDRSH.W         R5, [R0,#-2]
C713E:  SUB.W           R4, R5, R3
C7142:  MOV.W           R4, R4,ASR#1
C7146:  SMULBB.W        R4, R4, R2
C714A:  SUB.W           R5, R5, R4,ASR#15
C714E:  STRH.W          R5, [R0,#-2]
C7152:  ADD.W           R3, R3, R4,ASR#15
C7156:  STRH            R3, [R0]
C7158:  ADD.W           R0, R0, #4
C715C:  BNE             loc_C7134
C715E:  STRH.W          R12, [R9,#0xC0]
C7162:  LDR.W           R4, [R7,#var_B0]
C7166:  B               loc_C6A98
C7168:  LDR.W           R4, [R7,#src]
C716C:  B               loc_C6C94
C716E:  MOVW            R1, #0x5DC0
C7172:  CMP             R8, R1
C7174:  BGE             loc_C717A
C7176:  MOVS            R1, #4
C7178:  B               loc_C718E
C717A:  CMP.W           R8, #0x7D00
C717E:  BGE             loc_C7184
C7180:  MOVS            R1, #5
C7182:  B               loc_C718E
C7184:  CMP.W           R8, #0xFA00
C7188:  BGE.W           loc_C7862
C718C:  MOVS            R1, #6
C718E:  LDR.W           R2, =(unk_5C700 - 0xC719A)
C7192:  ADD.W           R1, R1, R1,LSL#2
C7196:  ADD             R2, PC; unk_5C700
C7198:  ADD.W           R3, R2, R1,LSL#2
C719C:  LDR.W           R1, [R2,R1,LSL#2]
C71A0:  LDR.W           R5, [R3,R0,LSL#2]
C71A4:  LDR.W           R4, [R3,#-0x14]!
C71A8:  SUB.W           R2, R8, R4
C71AC:  LDR.W           R0, [R3,R0,LSL#2]
C71B0:  SUB.W           R3, R1, R8
C71B4:  MULS            R2, R5
C71B6:  SUBS            R1, R1, R4
C71B8:  MLA.W           R0, R3, R0, R2
C71BC:  BLX             sub_108848
C71C0:  LDR.W           R1, [R7,#var_C4]
C71C4:  MOVW            R3, #0x2EDF
C71C8:  MOVW            LR, #0xF800
C71CC:  CMP             R1, #0
C71CE:  MOVT            LR, #0xFFFF
C71D2:  IT EQ
C71D4:  ADDEQ           R0, #0x64 ; 'd'
C71D6:  LDR.W           R12, [R7,#var_E8]
C71DA:  CMP.W           R12, #0x450
C71DE:  IT EQ
C71E0:  ADDEQ.W         R0, R0, #0x12C
C71E4:  LDR.W           R5, [R7,#var_B4]
C71E8:  LDR.W           R9, [R7,#var_CC]
C71EC:  CMP             R8, R3
C71EE:  MUL.W           R1, R0, R5
C71F2:  MOV             R0, R9
C71F4:  LDR.W           R2, [R0,#0xFC]!
C71F8:  MOV             R4, R1
C71FA:  IT GT
C71FC:  SUBGT.W         R4, R4, #0x3E8
C7200:  CMP             R5, #2
C7202:  IT NE
C7204:  MOVNE           R4, R1
C7206:  CMP             R2, #0
C7208:  STR.W           R4, [R0,#-0xD8]
C720C:  LDR.W           R5, [R7,#var_A8]
C7210:  BEQ             loc_C7224
C7212:  LDR.W           R1, [R9,#0x94]
C7216:  CBZ             R1, loc_C721E
C7218:  LDR.W           R1, [R9,#0xB0]
C721C:  CBZ             R1, loc_C7236
C721E:  MOVW            R0, #0x7FFF
C7222:  B               loc_C73A2
C7224:  SUB.W           R1, R4, R11
C7228:  SBFX.W          R0, R1, #0xA, #6
C722C:  CMP             R0, #0xE
C722E:  BLE             loc_C725C
C7230:  MOV.W           R0, #0x7F000000
C7234:  B               loc_C739A
C7236:  LDR.W           R1, [R7,#var_AC]
C723A:  MOV             R11, R4
C723C:  LDR.W           R8, [R1]
C7240:  MOVW            R1, #0x44D
C7244:  CMP             R8, R1
C7246:  BEQ             loc_C7266
C7248:  MOVW            R1, #0x44E
C724C:  CMP             R8, R1
C724E:  BNE             loc_C7272
C7250:  MOVW            R1, #0x2EE0
C7254:  STR.W           R1, [R7,#var_AC]
C7258:  MOVS            R1, #0xF
C725A:  B               loc_C727C
C725C:  CMN.W           R0, #0xF
C7260:  BGE             loc_C7340
C7262:  MOVS            R0, #0
C7264:  B               loc_C739A
C7266:  MOV.W           R1, #0x1F40
C726A:  STR.W           R1, [R7,#var_AC]
C726E:  MOVS            R1, #0xD
C7270:  B               loc_C727C
C7272:  MOV.W           R1, #0x3E80
C7276:  STR.W           R1, [R7,#var_AC]
C727A:  MOVS            R1, #0x11
C727C:  LDR.W           R9, [R9,#0x70]
C7280:  CMP.W           R9, #1
C7284:  BLT             loc_C72C6
C7286:  LDR             R2, [R0]
C7288:  MOV.W           R12, #0
C728C:  MOVS            R0, #0
C728E:  MOVS            R5, #0
C7290:  LDRSH.W         R4, [R2,R5,LSL#1]
C7294:  MOVS            R3, #0
C7296:  ADDS            R5, #1
C7298:  CMP.W           R4, #0x200
C729C:  IT GE
C729E:  MOVGE.W         R4, #0x200
C72A2:  CMN.W           R4, #0x800
C72A6:  IT LE
C72A8:  MOVLE           R4, LR
C72AA:  CMP             R4, #0
C72AC:  IT GT
C72AE:  MOVGT           R3, #1
C72B0:  CMP             R5, R1
C72B2:  ASR.W           R3, R4, R3
C72B6:  ADD             R0, R3
C72B8:  BLT             loc_C7290
C72BA:  ADD.W           R12, R12, #1
C72BE:  ADDS            R2, #0x2A ; '*'
C72C0:  CMP             R12, R9
C72C2:  BLT             loc_C728E
C72C4:  B               loc_C72C8
C72C6:  MOVS            R0, #0
C72C8:  BLX             sub_108848
C72CC:  MUL.W           R0, R9, R0
C72D0:  MOVS            R1, #0
C72D2:  MOVW            R2, #0x5556
C72D6:  SUB.W           R1, R1, R11,LSL#1
C72DA:  MOVT            R2, #0x5555
C72DE:  LDR.W           R3, [R7,#var_AC]
C72E2:  SMMUL.W         R1, R1, R2
C72E6:  MOV.W           R2, #0xCD0000
C72EA:  ADD.W           R0, R2, R0,LSL#16
C72EE:  MOV.W           R2, #0x200
C72F2:  SMLABT.W        R2, R3, R0, R2
C72F6:  ADD.W           R0, R1, R1,LSR#31
C72FA:  ASRS            R1, R2, #0xA
C72FC:  CMP             R1, R0
C72FE:  BIC.W           R1, R8, #1
C7302:  IT GT
C7304:  ASRGT           R0, R2, #0xA
C7306:  CMP.W           R1, #0x450
C730A:  BNE             loc_C7322
C730C:  MOVW            R1, #0x6667
C7310:  ADD.W           R0, R0, R0,LSL#1
C7314:  MOVT            R1, #0x6666
C7318:  SMMUL.W         R0, R0, R1
C731C:  ASRS            R1, R0, #1
C731E:  ADD.W           R0, R1, R0,LSR#31
C7322:  ADD             R11, R0
C7324:  LDR.W           R9, [R7,#var_CC]
C7328:  MOV             R0, R11
C732A:  STR.W           R0, [R7,#var_D4]
C732E:  MOVW            R0, #0x7FFF
C7332:  STR.W           R11, [R9,#0x24]
C7336:  LDR.W           R5, [R7,#var_A8]
C733A:  LDR.W           R12, [R7,#var_E8]
C733E:  B               loc_C73A6
C7340:  MOVW            R2, #0x3FF0
C7344:  AND.W           R1, R2, R1,LSL#4
C7348:  MOVS            R2, #0
C734A:  MOVW            R3, #0x4FB8
C734E:  MOVT            R2, #0x39E3
C7352:  SMLABB.W        R2, R1, R3, R2
C7356:  MOVS            R3, #0x7FFF0000
C735C:  LSRS            R2, R2, #0x10
C735E:  SMULBB.W        R2, R2, R1
C7362:  AND.W           R2, R3, R2,LSL#1
C7366:  ADD.W           R2, R2, #0x58000000
C736A:  ADD.W           R2, R2, #0x1140000
C736E:  SMULTB.W        R1, R2, R1
C7372:  MOVW            R2, #0xFFFF
C7376:  LSLS            R1, R1, #1
C7378:  BICS            R1, R2
C737A:  MOV             R2, #0xFFFFFFFE
C737E:  ADD.W           R1, R1, #0x3F000000
C7382:  SUBS            R2, R2, R0
C7384:  ADD.W           R1, R1, #0xFF0000
C7388:  NEGS            R0, R2
C738A:  CMP             R2, #0
C738C:  MOV.W           R1, R1,ASR#16
C7390:  LSL.W           R0, R1, R0
C7394:  IT GT
C7396:  ASRGT.W         R0, R1, R2
C739A:  MOVW            R1, #0x7FFF
C739E:  SUB.W           R0, R1, R0,LSR#1
C73A2:  STR.W           R4, [R7,#var_D4]
C73A6:  STR.W           R0, [R7,#var_C4]
C73AA:  MOVW            R2, #0x3E9
C73AE:  CMP             R10, R2
C73B0:  MOV.W           R1, #0x1F40
C73B4:  MOV.W           R0, #0x3E8
C73B8:  IT EQ
C73BA:  MOVEQ.W         R1, #0x3E80
C73BE:  MULS            R0, R5
C73C0:  STR.W           R1, [R9,#0x18]
C73C4:  MOV.W           R1, #0x3E80
C73C8:  MOVW            R2, #0x44E
C73CC:  CMP             R12, R2
C73CE:  MOV             R5, R9
C73D0:  STR.W           R1, [R9,#0x14]
C73D4:  IT EQ
C73D6:  MOVWEQ          R1, #0x2EE0
C73DA:  LDR.W           R11, [R5,#0xBC]
C73DE:  LDR.W           R2, [R9,#0x70]
C73E2:  LDR.W           R9, [R5,#0x90]
C73E6:  STR.W           R2, [R7,#var_B4]
C73EA:  STRD.W          R2, R11, [R5,#8]
C73EE:  MOVW            R2, #0x44D
C73F2:  CMP             R12, R2
C73F4:  IT EQ
C73F6:  MOVEQ.W         R1, #0x1F40
C73FA:  STR             R1, [R5,#0x1C]
C73FC:  MOV             R1, R9
C73FE:  BLX             sub_108848
C7402:  STR             R0, [R5,#0x20]
C7404:  CMP.W           R10, #0x3E8
C7408:  LDR.W           R0, [R7,#var_B0]
C740C:  LDR.W           R2, [R7,#n]
C7410:  BNE             loc_C746E
C7412:  CMP             R0, #0x33 ; '3'
C7414:  BLT             loc_C742E
C7416:  LDR.W           R0, [R7,#var_D8]
C741A:  MOV             R1, #0x55555556
C7422:  LSLS            R0, R0, #4
C7424:  SMMUL.W         R0, R0, R1
C7428:  ADD.W           R0, R0, R0,LSR#31
C742C:  B               loc_C7434
C742E:  LDR.W           R0, [R7,#var_D8]
C7432:  LSLS            R0, R0, #3
C7434:  LDR.W           R5, [R7,#var_CC]
C7438:  CMP.W           R0, #0x1F40
C743C:  BGE             loc_C746E
C743E:  LDR.W           R3, [R7,#var_E8]
C7442:  MOVW            R2, #0x44D
C7446:  MOVW            R1, #0x2EE0
C744A:  CMP             R3, R2
C744C:  MOVW            R2, #0x2EE0
C7450:  IT EQ
C7452:  MOVEQ.W         R2, #0x1F40
C7456:  STR             R2, [R5,#0x1C]
C7458:  LDR.W           R2, [R7,#n]
C745C:  STR             R1, [R5,#0x14]
C745E:  MOVW            R1, #0x1B57
C7462:  CMP             R0, R1
C7464:  ITTT LE
C7466:  MOVLE.W         R0, #0x1F40
C746A:  STRLE           R0, [R5,#0x1C]
C746C:  STRLE           R0, [R5,#0x14]
C746E:  LDR             R1, [R6,#0x14]
C7470:  LDR.W           R0, [R5,#0x94]
C7474:  LSLS            R4, R1, #3
C7476:  MOVS            R1, #0
C7478:  CMP             R0, #0
C747A:  IT EQ
C747C:  MOVEQ           R1, #1
C747E:  CMP             R2, #2
C7480:  STRD.W          R1, R4, [R5,#0x3C]
C7484:  BLT             loc_C74AE
C7486:  LDR             R1, [R6,#0x20]
C7488:  LDR.W           R8, [R7,#var_A8]
C748C:  CBZ             R1, loc_C74B8
C748E:  MOVS            R1, #1
C7490:  ORR.W           R1, R1, R2,LSL#3
C7494:  LDR.W           R2, [R7,#var_CC]
C7498:  SUBS            R4, R4, R1
C749A:  MOVW            R1, #0x3E9
C749E:  CMP             R10, R1
C74A0:  STR             R4, [R2,#0x40]
C74A2:  ITTT EQ
C74A4:  SUBEQ           R4, #0x14
C74A6:  STREQ           R4, [R2,#0x40]
C74A8:  MOVWEQ          R10, #0x3E9
C74AC:  B               loc_C74BC
C74AE:  LDR.W           R2, [R7,#var_CC]
C74B2:  LDR.W           R8, [R7,#var_A8]
C74B6:  B               loc_C74BC
C74B8:  LDR.W           R2, [R7,#var_CC]
C74BC:  CMP             R0, #0
C74BE:  MOVW            R0, #0x3E9
C74C2:  ADD.W           R1, R2, #8
C74C6:  STR.W           R1, [R7,#var_AC]
C74CA:  BEQ             loc_C7512
C74CC:  CMP             R10, R0
C74CE:  BNE             loc_C75C0
C74D0:  MUL.W           R0, R9, R4
C74D4:  MOV             R1, R8
C74D6:  BLX             sub_108848
C74DA:  MOVS            R1, #0x32 ; '2'
C74DC:  MUL.W           R5, R8, R1
C74E0:  MOV             R1, R11
C74E2:  BLX             sub_108848
C74E6:  MOV             R4, R0
C74E8:  LDR.W           R0, [R7,#var_CC]
C74EC:  CMP             R9, R5
C74EE:  MOV.W           R2, #1
C74F2:  MOV.W           R1, #1
C74F6:  LDR             R0, [R0,#0x34]
C74F8:  IT EQ
C74FA:  MOVEQ           R2, #2
C74FC:  ADD.W           R12, R2, R0,LSL#1
C7500:  MOVW            R2, #0x2EE0
C7504:  CMP             R4, R2
C7506:  BLT             loc_C7558
C7508:  CMP.W           R4, #0x3E80
C750C:  BGE             loc_C752C
C750E:  MOVS            R1, #2
C7510:  B               loc_C7558
C7512:  CMP             R10, R0
C7514:  BNE             loc_C75C0
C7516:  LDR.W           R0, [R7,#var_D4]
C751A:  MOV             R1, R9
C751C:  MUL.W           R0, R0, R8
C7520:  BLX             sub_108848
C7524:  CMP             R4, R0
C7526:  IT LT
C7528:  MOVLT           R0, R4
C752A:  B               loc_C75BA
C752C:  MOVW            R0, #0x4E20
C7530:  CMP             R4, R0
C7532:  BGE             loc_C7538
C7534:  MOVS            R1, #3
C7536:  B               loc_C7558
C7538:  MOVW            R0, #0x5DC0
C753C:  CMP             R4, R0
C753E:  BGE             loc_C7544
C7540:  MOVS            R1, #4
C7542:  B               loc_C7558
C7544:  CMP.W           R4, #0x7D00
C7548:  BGE             loc_C754E
C754A:  MOVS            R1, #5
C754C:  B               loc_C7558
C754E:  CMP.W           R4, #0xFA00
C7552:  BGE.W           loc_C787A
C7556:  MOVS            R1, #6
C7558:  LDR             R0, =(unk_5C700 - 0xC7562)
C755A:  ADD.W           R1, R1, R1,LSL#2
C755E:  ADD             R0, PC; unk_5C700
C7560:  ADD.W           R3, R0, R1,LSL#2
C7564:  LDR.W           R1, [R0,R1,LSL#2]
C7568:  LDR.W           R5, [R3,R12,LSL#2]
C756C:  LDR.W           R2, [R3,#-0x14]!
C7570:  LDR.W           R0, [R3,R12,LSL#2]
C7574:  SUBS            R3, R4, R2
C7576:  MULS            R3, R5
C7578:  SUBS            R5, R1, R4
C757A:  SUBS            R1, R1, R2
C757C:  MLA.W           R0, R5, R0, R3
C7580:  BLX             sub_108848
C7584:  LDR.W           R1, [R7,#var_E8]
C7588:  CMP.W           R1, #0x450
C758C:  MOVW            R1, #0x2EDF
C7590:  IT EQ
C7592:  ADDEQ.W         R0, R0, #0x12C
C7596:  CMP             R4, R1
C7598:  MUL.W           R0, R0, R11
C759C:  MOV             R1, R0
C759E:  IT GT
C75A0:  SUBGT.W         R1, R1, #0x3E8
C75A4:  CMP.W           R11, #2
C75A8:  IT NE
C75AA:  MOVNE           R1, R0
C75AC:  LDR.W           R8, [R7,#var_A8]
C75B0:  MUL.W           R0, R1, R8
C75B4:  MOV             R1, R9
C75B6:  BLX             sub_108848
C75BA:  LDR.W           R1, [R7,#var_CC]
C75BE:  STR             R0, [R1,#0x40]
C75C0:  LDR.W           R11, [R7,#var_E4]
C75C4:  CMP.W           R11, #0
C75C8:  BEQ             loc_C7670
C75CA:  LDR.W           R1, [R7,#var_40]
C75CE:  MOV.W           R10, #0
C75D2:  STR.W           R10, [R7,#var_30]
C75D6:  MOVW            R0, #0x851F
C75DA:  LDR.W           R5, [R7,#var_CC]
C75DE:  MOVT            R0, #0x51EB
C75E2:  LDR.W           R12, [R1,#4]
C75E6:  SMMUL.W         R0, R9, R0
C75EA:  LDR             R1, [R1,#0x34]
C75EC:  LDR             R2, [R5,#0x74]
C75EE:  LDR.W           R3, [R5,#0xAC]
C75F2:  SUB             SP, SP, #0x18
C75F4:  ASRS            R4, R0, #7
C75F6:  SUBS            R2, R3, R2
C75F8:  ADD.W           R0, R4, R0,LSR#31
C75FC:  LDR.W           R3, [R7,#var_B4]
C7600:  SUBS            R2, R2, R0
C7602:  STRD.W          R12, R0, [SP,#0x138+var_138]
C7606:  MUL.W           R4, R2, R3
C760A:  STRD.W          R3, R1, [SP,#0x138+var_130]
C760E:  MOVS            R2, #0
C7610:  MOVW            R3, #0x7FFF
C7614:  STR.W           R9, [SP,#0x138+var_128]
C7618:  ADD.W           R0, R5, R4,LSL#1
C761C:  ADD.W           R0, R0, #0x110
C7620:  MOV             R1, R0
C7622:  BL              sub_C7B18
C7626:  ADD             SP, SP, #0x18
C7628:  LSLS            R1, R4, #1; n
C762A:  LDR             R4, [R6,#0x10]
C762C:  MOV             R0, R4; int
C762E:  BLX             sub_10967C
C7632:  LDR.W           R3, [R5,#0xAC]
C7636:  SUB             SP, SP, #0x10
C7638:  SUB.W           R1, R7, #-var_30
C763C:  MOV.W           R0, #0xFFFFFFFF
C7640:  MOV             R2, R4
C7642:  STRD.W          R10, R1, [SP,#0x130+var_130]
C7646:  STRD.W          R11, R0, [SP,#0x130+var_128]
C764A:  LDR.W           R9, [R6,#0x18]
C764E:  LDR.W           R11, [R7,#var_AC]
C7652:  MOV             R0, R9
C7654:  MOV             R1, R11
C7656:  BLX             j_silk_Encode
C765A:  ADD             SP, SP, #0x10
C765C:  STR.W           R10, [R5,#0x48]
C7660:  LDR             R1, [R5,#0x70]
C7662:  LDR.W           R8, [R7,#var_A8]
C7666:  LDR.W           R10, [R7,#src]
C766A:  LDR.W           R5, [R7,#var_F8]
C766E:  B               loc_C7684
C7670:  LDR.W           R10, [R7,#src]
C7674:  LDR.W           R5, [R7,#var_F8]
C7678:  LDR.W           R9, [R6,#0x18]
C767C:  LDR.W           R11, [R7,#var_AC]
C7680:  LDR.W           R1, [R7,#var_B4]
C7684:  LDR.W           R0, [R7,#var_D0]
C7688:  MULS            R0, R1
C768A:  SUB             SP, SP, #0x10
C768C:  SUB.W           R3, R7, #-var_38
C7690:  MOV.W           R1, #0xFFFFFFFF
C7694:  MOVS            R2, #0
C7696:  SUB.W           R4, R7, #-var_A4
C769A:  STRD.W          R4, R3, [SP,#0x130+var_130]
C769E:  MOV             R3, R8
C76A0:  STRD.W          R2, R1, [SP,#0x130+var_128]
C76A4:  LDR.W           R1, [R7,#var_F0]
C76A8:  ADD.W           R2, R1, R0,LSL#1
C76AC:  MOV             R0, R9
C76AE:  MOV             R1, R11
C76B0:  BLX             j_silk_Encode
C76B4:  ADD             SP, SP, #0x10
C76B6:  CBZ             R0, loc_C76C0
C76B8:  MOV             R5, #0xFFFFFFFD
C76BC:  B.W             loc_C64B8
C76C0:  MOV             R11, R5
C76C2:  MOV             R9, R10
C76C4:  LDR.W           R10, [R11]
C76C8:  CMP.W           R10, #0x3E8
C76CC:  BNE             loc_C76FA
C76CE:  LDR.W           R0, [R7,#var_CC]
C76D2:  LDR.W           R1, [R7,#var_B0]
C76D6:  LDR.W           R4, [R7,#var_E8]
C76DA:  LDR             R0, [R0,#0x50]
C76DC:  CMP.W           R0, #0x1F40
C76E0:  BEQ.W           loc_C781A
C76E4:  CMP.W           R0, #0x3E80
C76E8:  BEQ.W           loc_C7820
C76EC:  MOVW            R2, #0x2EE0
C76F0:  CMP             R0, R2
C76F2:  IT EQ
C76F4:  MOVWEQ          R4, #0x44E
C76F8:  B               loc_C7702
C76FA:  LDR.W           R1, [R7,#var_B0]
C76FE:  LDR.W           R4, [R7,#var_E8]
C7702:  LDR.W           R2, [R7,#var_CC]
C7706:  MOVS            R0, #0
C7708:  LDR             R3, [R2,#0x60]
C770A:  CBZ             R3, loc_C7716
C770C:  LDR.W           R3, [R2,#0x890]
C7710:  CMP             R3, #0
C7712:  IT EQ
C7714:  MOVEQ           R0, #1
C7716:  STR             R0, [R2,#0x48]
C7718:  LDR.W           R3, [R7,#var_38]
C771C:  CMP             R3, #0
C771E:  BEQ             loc_C77CA
C7720:  CMP             R0, #1
C7722:  BNE             loc_C780E
C7724:  LDR.W           R9, [R7,#var_CC]
C7728:  MOV             R8, R1
C772A:  LDR.W           R0, [R9,#0xA0]
C772E:  STR.W           R0, [R7,#var_AC]
C7732:  MOVS            R0, #1
C7734:  LDR.W           R10, [R9,#0xBC]
C7738:  STR.W           R0, [R9,#0xF4]
C773C:  MOVW            R0, #0xBB80
C7740:  BLX             sub_108848
C7744:  ADD.W           R1, R0, #0xF0
C7748:  ADD.W           R0, R10, R10,LSL#2
C774C:  MOVS            R2, #0x14
C774E:  ADD.W           R5, R2, R0,LSL#3
C7752:  LDR.W           R0, [R7,#var_F4]
C7756:  LSLS            R0, R0, #3
C7758:  SUB.W           R0, R0, R5,LSL#1
C775C:  RSB.W           R0, R0, R0,LSL#4
C7760:  LSLS            R0, R0, #4
C7762:  BLX             sub_108848
C7766:  RSB.W           R1, R8, #0xC8
C776A:  LDR.W           R2, [R7,#var_AC]
C776E:  ADD             R0, R5
C7770:  MLA.W           R1, R5, R1, R2
C7774:  MOV             R2, #0x51EB851F
C777C:  ADD.W           R1, R1, R1,LSL#1
C7780:  SMMUL.W         R1, R1, R2
C7784:  ASRS            R2, R0, #0x1F
C7786:  ADD.W           R0, R0, R2,LSR#29
C778A:  ASRS            R2, R1, #0xA
C778C:  ADD.W           R1, R2, R1,LSR#31
C7790:  CMP.W           R1, R0,ASR#3
C7794:  MOV.W           R2, #0
C7798:  IT GE
C779A:  ASRGE           R1, R0, #3
C779C:  MOVS            R0, #4
C779E:  CMP.W           R1, #0x100
C77A2:  MOV             R3, R1
C77A4:  ORR.W           R0, R0, R10,LSL#3
C77A8:  IT GT
C77AA:  MOVWGT          R3, #0x101
C77AE:  CMP             R1, R0
C77B0:  MOV.W           R0, #0
C77B4:  STR.W           R0, [R7,#var_FC]
C77B8:  IT LE
C77BA:  MOVLE           R3, R2
C77BC:  CMP             R3, #0
C77BE:  STR.W           R3, [R7,#n]
C77C2:  IT NE
C77C4:  MOVNE           R3, #1
C77C6:  STR             R3, [R6,#0x20]
C77C8:  B               loc_C7812
C77CA:  LDR.W           R0, [R2,#0x90]
C77CE:  MOV             R1, R8
C77D0:  MOVS            R5, #0
C77D2:  LDR.W           R8, [R2,#0xBC]
C77D6:  STR.W           R5, [R2,#0x894]
C77DA:  BLX             sub_108848
C77DE:  CMP.W           R0, #0x190
C77E2:  BGE             loc_C77F0
C77E4:  MOVS            R5, #0
C77E6:  ADDS            R5, #8
C77E8:  LSLS            R0, R0, #1
C77EA:  CMP.W           R0, #0x190
C77EE:  BLT             loc_C77E6
C77F0:  MOVW            R0, #0x3EA
C77F4:  CMP             R10, R0
C77F6:  BEQ             loc_C7826
C77F8:  CMP.W           R10, #0x3E8
C77FC:  BNE             loc_C783E
C77FE:  MOVS            R0, #0x60 ; '`'
C7800:  SUB.W           R1, R5, #0x10
C7804:  ADD.W           R0, R0, R4,LSL#5
C7808:  UXTB            R0, R0
C780A:  ORRS            R0, R1
C780C:  B               loc_C784A
C780E:  LDR.W           R9, [R7,#var_CC]
C7812:  LDRD.W          R8, R0, [R7,#var_C4]
C7816:  B.W             loc_C67BC
C781A:  MOVW            R4, #0x44D
C781E:  B               loc_C7702
C7820:  MOVW            R4, #0x44F
C7824:  B               loc_C7702
C7826:  SUBW            R0, R4, #0x44E
C782A:  MOVS            R1, #0x60 ; '`'
C782C:  CMP             R0, #0
C782E:  IT LE
C7830:  MOVLE           R0, #0
C7832:  AND.W           R0, R1, R0,LSL#5
C7836:  ORRS            R0, R5
C7838:  ORR.W           R0, R0, #0x80
C783C:  B               loc_C784A
C783E:  ADD.W           R0, R5, #0xF0
C7842:  ORR.W           R0, R0, R4,LSL#4
C7846:  ORR.W           R0, R0, #0x60 ; '`'
C784A:  MOVS            R1, #0
C784C:  CMP.W           R8, #2
C7850:  IT EQ
C7852:  MOVEQ           R1, #1
C7854:  MOVS            R5, #1
C7856:  ORR.W           R0, R0, R1,LSL#2
C785A:  STRB.W          R0, [R9]
C785E:  B.W             loc_C64B8
C7862:  LDR             R1, =(unk_5C700 - 0xC7868)
C7864:  ADD             R1, PC; unk_5C700
C7866:  ADD.W           R0, R1, R0,LSL#2
C786A:  SUB.W           R1, R8, #0xFA00
C786E:  LDR             R0, [R0,#0x78]
C7870:  ADD.W           R1, R1, R1,LSR#31
C7874:  ADD.W           R0, R0, R1,ASR#1
C7878:  B               loc_C71C0
C787A:  LDR             R1, =(unk_5C700 - 0xC7880)
C787C:  ADD             R1, PC; unk_5C700
C787E:  ADD.W           R0, R1, R12,LSL#2
C7882:  SUB.W           R1, R4, #0xFA00
C7886:  LDR             R0, [R0,#0x78]
C7888:  ADD.W           R1, R1, R1,LSR#31
C788C:  ADD.W           R0, R0, R1,ASR#1
C7890:  B               loc_C7584
