; =========================================================
; Game Engine Function: sub_1A5664
; Address            : 0x1A5664 - 0x1A58CE
; =========================================================

1A5664:  PUSH            {R4-R7,LR}
1A5666:  ADD             R7, SP, #0xC
1A5668:  PUSH.W          {R8-R11}
1A566C:  SUB             SP, SP, #0x34
1A566E:  MOV             R8, R0
1A5670:  LDR             R0, =(__stack_chk_guard_ptr - 0x1A567C)
1A5672:  STR.W           R3, [R7,#var_28]
1A5676:  LSLS            R4, R2, #1
1A5678:  ADD             R0, PC; __stack_chk_guard_ptr
1A567A:  STR.W           R1, [R7,#var_34]
1A567E:  LDR             R6, [R7,#arg_4]
1A5680:  CMP             R2, #2
1A5682:  LDR             R0, [R0]; __stack_chk_guard
1A5684:  LDR             R0, [R0]
1A5686:  STR.W           R0, [R7,#var_24]
1A568A:  LDR.W           R0, [R8,#0x94]
1A568E:  STR.W           R2, [R7,#var_2C]
1A5692:  IT EQ
1A5694:  MOVEQ           R4, #3
1A5696:  CBNZ            R0, loc_1A56C8
1A5698:  LDR.W           R0, [R8,#0xA4]
1A569C:  ADDS            R0, #1
1A569E:  BEQ             loc_1A56C8
1A56A0:  LDR.W           R0, [R8,#0x90]
1A56A4:  LDR.W           R5, [R8,#0xA0]
1A56A8:  LDRD.W          R1, R2, [R7,#var_2C]
1A56AC:  ADD.W           R0, R0, R0,LSL#1
1A56B0:  MULS            R1, R2
1A56B2:  LSLS            R0, R0, #3
1A56B4:  BLX             sub_220A40
1A56B8:  MOV             R1, R0
1A56BA:  ADD.W           R0, R5, R5,LSL#1
1A56BE:  BLX             sub_220A40
1A56C2:  CMP             R0, R6
1A56C4:  IT LT
1A56C6:  MOVLT           R6, R0
1A56C8:  SUBS            R0, R6, R4
1A56CA:  LDR.W           R4, [R7,#var_2C]
1A56CE:  MOV             R1, R4
1A56D0:  BLX             sub_220A40
1A56D4:  MOVW            R1, #0x4FB
1A56D8:  ADD.W           R11, R0, #1
1A56DC:  CMP             R0, R1
1A56DE:  IT GT
1A56E0:  MOVWGT          R11, #0x4FC
1A56E4:  MUL.W           R0, R11, R4
1A56E8:  ADDS            R0, #7
1A56EA:  BIC.W           R0, R0, #7
1A56EE:  SUB.W           R5, SP, R0
1A56F2:  MOV             SP, R5
1A56F4:  SUB.W           R0, SP, #0x130
1A56F8:  MOV             SP, R0
1A56FA:  STR.W           R0, [R7,#var_30]
1A56FE:  BLX             j_opus_repacketizer_init
1A5702:  LDR.W           R0, [R8,#0x78]
1A5706:  LDR.W           R1, [R8,#0x44]
1A570A:  STR.W           R0, [R7,#var_44]
1A570E:  LDR.W           R0, [R8,#0x80]
1A5712:  CMP             R1, #0
1A5714:  STR.W           R0, [R7,#var_4C]
1A5718:  LDR.W           R0, [R8,#0x88]
1A571C:  STR.W           R0, [R7,#var_48]
1A5720:  LDR.W           R0, [R8,#0xDC]
1A5724:  STR.W           R0, [R8,#0x88]
1A5728:  LDR.W           R0, [R8,#0xEC]
1A572C:  STR.W           R0, [R8,#0x80]
1A5730:  LDR.W           R0, [R8,#0xBC]
1A5734:  STR.W           R0, [R8,#0x78]
1A5738:  STR.W           R1, [R7,#var_40]
1A573C:  STR.W           R6, [R7,#var_3C]
1A5740:  ITEE EQ
1A5742:  STREQ.W         R0, [R8,#0xE4]
1A5746:  MOVNE           R0, #1
1A5748:  STRNE.W         R0, [R8,#0x78]
1A574C:  LDR.W           R0, [R7,#var_2C]
1A5750:  CMP             R0, #1
1A5752:  BLT.W           loc_1A5856
1A5756:  LDR             R0, [R7,#arg_8]
1A5758:  LDR.W           R1, [R7,#var_2C]
1A575C:  CMP             R0, #0
1A575E:  SUB.W           R1, R1, #1
1A5762:  STR.W           R1, [R7,#var_38]
1A5766:  BEQ             loc_1A57E8
1A5768:  MOVS            R4, #0
1A576A:  MOVW            R6, #0x3EA
1A576E:  MOV.W           R9, #0
1A5772:  MOV.W           R10, #0
1A5776:  LDR.W           R1, [R7,#var_38]
1A577A:  MOVS            R0, #0
1A577C:  CMP             R10, R1
1A577E:  IT LT
1A5780:  MOVLT           R0, #1
1A5782:  CMP             R1, R10
1A5784:  STR.W           R0, [R8,#0x890]
1A5788:  STR.W           R4, [R8,#0x44]
1A578C:  IT EQ
1A578E:  STREQ.W         R6, [R8,#0x88]
1A5792:  LDR.W           R0, [R8,#0x70]
1A5796:  MUL.W           R0, R9, R0
1A579A:  SUB             SP, SP, #0x28 ; '('
1A579C:  LDR             R1, [R7,#arg_10]
1A579E:  MOV             R3, R5
1A57A0:  STR             R1, [SP,#0x78+var_58]
1A57A2:  LDR             R1, [R7,#arg_C]
1A57A4:  STR.W           R11, [SP,#0x78+var_78]
1A57A8:  STR             R1, [SP,#0x78+var_74]
1A57AA:  LDR.W           R1, [R7,#var_34]
1A57AE:  LDR.W           R2, [R7,#var_28]
1A57B2:  ADD.W           R1, R1, R0,LSL#1
1A57B6:  MOV             R0, R8
1A57B8:  BLX             j_opus_encode_native
1A57BC:  ADD             SP, SP, #0x28 ; '('
1A57BE:  MOV             R2, R0
1A57C0:  CMP             R2, #0
1A57C2:  BLT             loc_1A58AA
1A57C4:  LDR.W           R0, [R7,#var_30]
1A57C8:  MOV             R1, R5
1A57CA:  BLX             j_opus_repacketizer_cat
1A57CE:  CMP             R0, #0
1A57D0:  BLT             loc_1A58AA
1A57D2:  LDR.W           R0, [R7,#var_28]
1A57D6:  ADD.W           R10, R10, #1
1A57DA:  ADD             R5, R11
1A57DC:  ADD             R9, R0
1A57DE:  LDR.W           R0, [R7,#var_2C]
1A57E2:  CMP             R10, R0
1A57E4:  BLT             loc_1A5776
1A57E6:  B               loc_1A5856
1A57E8:  MOV.W           R9, #0
1A57EC:  MOVS            R6, #0
1A57EE:  MOVS            R4, #0
1A57F0:  LDR.W           R1, [R7,#var_38]
1A57F4:  LDR.W           R0, [R8,#0x70]
1A57F8:  CMP             R4, R1
1A57FA:  MOV.W           R1, #0
1A57FE:  IT LT
1A5800:  MOVLT           R1, #1
1A5802:  STR.W           R1, [R8,#0x890]
1A5806:  MULS            R0, R6
1A5808:  STR.W           R9, [R8,#0x44]
1A580C:  SUB             SP, SP, #0x28 ; '('
1A580E:  LDR             R1, [R7,#arg_10]
1A5810:  MOV             R3, R5
1A5812:  STR             R1, [SP,#0x78+var_58]
1A5814:  LDR             R1, [R7,#arg_C]
1A5816:  STR.W           R11, [SP,#0x78+var_78]
1A581A:  STR             R1, [SP,#0x78+var_74]
1A581C:  LDR.W           R1, [R7,#var_34]
1A5820:  LDR.W           R2, [R7,#var_28]
1A5824:  ADD.W           R1, R1, R0,LSL#1
1A5828:  MOV             R0, R8
1A582A:  BLX             j_opus_encode_native
1A582E:  ADD             SP, SP, #0x28 ; '('
1A5830:  MOV             R2, R0
1A5832:  CMP             R2, #0
1A5834:  BLT             loc_1A58AA
1A5836:  LDR.W           R0, [R7,#var_30]
1A583A:  MOV             R1, R5
1A583C:  BLX             j_opus_repacketizer_cat
1A5840:  CMP             R0, #0
1A5842:  BLT             loc_1A58AA
1A5844:  LDR.W           R0, [R7,#var_28]
1A5848:  ADDS            R4, #1
1A584A:  ADD             R5, R11
1A584C:  ADD             R6, R0
1A584E:  LDR.W           R0, [R7,#var_2C]
1A5852:  CMP             R4, R0
1A5854:  BLT             loc_1A57F0
1A5856:  LDR.W           R0, [R8,#0x94]
1A585A:  MOVS            R1, #0
1A585C:  LDR             R3, [R7,#arg_0]
1A585E:  CMP             R0, #0
1A5860:  MOV.W           R0, #0
1A5864:  IT EQ
1A5866:  MOVEQ           R0, #1
1A5868:  SUB             SP, SP, #0x10
1A586A:  LDR.W           R2, [R7,#var_3C]
1A586E:  STRD.W          R2, R1, [SP,#0x60+var_60]
1A5872:  MOVS            R1, #0
1A5874:  STR             R0, [SP,#0x60+var_58]
1A5876:  LDR.W           R0, [R7,#var_30]
1A587A:  LDR.W           R2, [R7,#var_2C]
1A587E:  BLX             j_opus_repacketizer_out_range_impl
1A5882:  ADD             SP, SP, #0x10
1A5884:  CMP             R0, #0
1A5886:  BLT             loc_1A58AA
1A5888:  LDR.W           R1, [R7,#var_4C]
1A588C:  STR.W           R1, [R8,#0x80]
1A5890:  LDR.W           R1, [R7,#var_48]
1A5894:  STR.W           R1, [R8,#0x88]
1A5898:  LDR.W           R1, [R7,#var_44]
1A589C:  STR.W           R1, [R8,#0x78]
1A58A0:  LDR.W           R1, [R7,#var_40]
1A58A4:  STR.W           R1, [R8,#0x44]
1A58A8:  B               loc_1A58AE
1A58AA:  MOV             R0, #0xFFFFFFFD
1A58AE:  LDR             R1, =(__stack_chk_guard_ptr - 0x1A58B8)
1A58B0:  LDR.W           R2, [R7,#var_24]
1A58B4:  ADD             R1, PC; __stack_chk_guard_ptr
1A58B6:  LDR             R1, [R1]; __stack_chk_guard
1A58B8:  LDR             R1, [R1]
1A58BA:  SUBS            R1, R1, R2
1A58BC:  ITTTT EQ
1A58BE:  SUBEQ.W         R4, R7, #-var_1C
1A58C2:  MOVEQ           SP, R4
1A58C4:  POPEQ.W         {R8-R11}
1A58C8:  POPEQ           {R4-R7,PC}
1A58CA:  BLX             __stack_chk_fail
