; =========================================================
; Game Engine Function: silk_LP_variable_cutoff
; Address            : 0xCD648 - 0xCD87C
; =========================================================

CD648:  PUSH            {R4-R7,LR}
CD64A:  ADD             R7, SP, #0xC
CD64C:  PUSH.W          {R8-R11}
CD650:  SUB             SP, SP, #0x34
CD652:  MOV             R12, R0
CD654:  LDR             R0, =(__stack_chk_guard_ptr - 0xCD65A)
CD656:  ADD             R0, PC; __stack_chk_guard_ptr
CD658:  LDR             R0, [R0]; __stack_chk_guard
CD65A:  LDR             R0, [R0]
CD65C:  STR             R0, [SP,#0x50+var_20]
CD65E:  LDR.W           R10, [R12,#0xC]
CD662:  CMP.W           R10, #0
CD666:  BEQ.W           loc_CD862
CD66A:  LDR.W           LR, [R12,#8]
CD66E:  RSB.W           R3, LR, #0x100
CD672:  SBFX.W          R4, R3, #6, #0x10
CD676:  CMP             R4, #3
CD678:  BGT             loc_CD73A
CD67A:  LSLS            R5, R3, #0xA
CD67C:  MOVW            R6, #0xFFFF
CD680:  BICS            R5, R6
CD682:  RSB.W           R6, R5, R3,LSL#10
CD686:  CMP             R6, #1
CD688:  BLT             loc_CD75C
CD68A:  ADDS            R0, R4, #1
CD68C:  SXTH            R3, R6
CD68E:  CMP.W           R6, #0x8000
CD692:  STR             R2, [SP,#0x50+var_3C]
CD694:  BGE             loc_CD78E
CD696:  LDR             R5, =(silk_Transition_LP_B_Q28_ptr - 0xCD6A6)
CD698:  ADD.W           R2, R0, R0,LSL#1
CD69C:  ADD.W           R9, R4, R4,LSL#1
CD6A0:  STR             R2, [SP,#0x50+var_44]
CD6A2:  ADD             R5, PC; silk_Transition_LP_B_Q28_ptr
CD6A4:  LDR.W           R8, [R5]; silk_Transition_LP_B_Q28
CD6A8:  LDR.W           R6, [R8,R9,LSL#2]
CD6AC:  LDR.W           R5, [R8,R2,LSL#2]
CD6B0:  SUBS            R5, R5, R6
CD6B2:  SMLABT.W        R6, R3, R5, R6
CD6B6:  UXTH            R5, R5
CD6B8:  MULS            R5, R3
CD6BA:  ADD.W           R5, R6, R5,ASR#16
CD6BE:  LDR             R6, =(silk_Transition_LP_A_Q28_ptr - 0xCD6C6)
CD6C0:  STR             R5, [SP,#0x50+var_30]
CD6C2:  ADD             R6, PC; silk_Transition_LP_A_Q28_ptr
CD6C4:  LDR             R6, [R6]; silk_Transition_LP_A_Q28
CD6C6:  ADD.W           R5, R6, R4,LSL#3
CD6CA:  ADD.W           R11, R6, R0,LSL#3
CD6CE:  LDR.W           R4, [R6,R4,LSL#3]
CD6D2:  LDR             R2, [R5,#4]
CD6D4:  LDR.W           R5, [R11,#4]
CD6D8:  LDR.W           R6, [R6,R0,LSL#3]
CD6DC:  SUBS            R5, R5, R2
CD6DE:  SMLABT.W        R2, R3, R5, R2
CD6E2:  SUBS            R6, R6, R4
CD6E4:  UXTH            R5, R5
CD6E6:  SMLABT.W        R0, R3, R6, R4
CD6EA:  UXTH            R6, R6
CD6EC:  STR             R2, [SP,#0x50+var_40]
CD6EE:  ADD.W           R2, R8, R9,LSL#2
CD6F2:  LDRD.W          R9, R2, [R2,#4]
CD6F6:  MUL.W           R11, R5, R3
CD6FA:  LDR             R4, [SP,#0x50+var_44]
CD6FC:  MULS            R6, R3
CD6FE:  ADD.W           R4, R8, R4,LSL#2
CD702:  LDRD.W          R8, R4, [R4,#4]
CD706:  SUBS            R4, R4, R2
CD708:  SUB.W           R8, R8, R9
CD70C:  SMLABT.W        R2, R3, R4, R2
CD710:  UXTH            R4, R4
CD712:  MULS            R4, R3
CD714:  UXTH.W          R5, R8
CD718:  SMLABT.W        R9, R3, R8, R9
CD71C:  MULS            R3, R5
CD71E:  ADD.W           R2, R2, R4,ASR#16
CD722:  ADD.W           R3, R9, R3,ASR#16
CD726:  STR             R3, [SP,#0x50+var_2C]
CD728:  STR             R2, [SP,#0x50+var_28]
CD72A:  ADD.W           R2, R0, R6,ASR#16
CD72E:  LDR             R0, [SP,#0x50+var_40]
CD730:  STR             R2, [SP,#0x50+var_38]
CD732:  ADD.W           R2, R0, R11,ASR#16
CD736:  STR             R2, [SP,#0x50+var_34]
CD738:  B               loc_CD836
CD73A:  LDR             R4, =(silk_Transition_LP_B_Q28_ptr - 0xCD742)
CD73C:  LDR             R3, =(silk_Transition_LP_A_Q28_ptr - 0xCD744)
CD73E:  ADD             R4, PC; silk_Transition_LP_B_Q28_ptr
CD740:  ADD             R3, PC; silk_Transition_LP_A_Q28_ptr
CD742:  LDR             R6, [R4]; silk_Transition_LP_B_Q28
CD744:  LDR             R3, [R3]; silk_Transition_LP_A_Q28
CD746:  LDRD.W          R4, R5, [R6,#(dword_57A70 - 0x57A40)]
CD74A:  LDR             R0, [R6,#(dword_57A78 - 0x57A40)]
CD74C:  LDRD.W          R6, R3, [R3,#(dword_57A9C - 0x57A7C)]
CD750:  STRD.W          R4, R5, [SP,#0x50+var_30]
CD754:  STR             R0, [SP,#0x50+var_28]
CD756:  STRD.W          R6, R3, [SP,#0x50+var_38]
CD75A:  B               loc_CD838
CD75C:  LDR             R5, =(silk_Transition_LP_A_Q28_ptr - 0xCD768)
CD75E:  ADD.W           R6, R4, R4,LSL#1
CD762:  LDR             R3, =(silk_Transition_LP_B_Q28_ptr - 0xCD76A)
CD764:  ADD             R5, PC; silk_Transition_LP_A_Q28_ptr
CD766:  ADD             R3, PC; silk_Transition_LP_B_Q28_ptr
CD768:  LDR             R5, [R5]; silk_Transition_LP_A_Q28
CD76A:  LDR             R3, [R3]; silk_Transition_LP_B_Q28
CD76C:  LDR.W           R8, [R5,R4,LSL#3]
CD770:  ADD.W           R4, R5, R4,LSL#3
CD774:  LDR.W           R9, [R3,R6,LSL#2]
CD778:  ADD.W           R3, R3, R6,LSL#2
CD77C:  LDRD.W          R6, R3, [R3,#4]
CD780:  LDR             R4, [R4,#4]
CD782:  STRD.W          R9, R6, [SP,#0x50+var_30]
CD786:  STR             R3, [SP,#0x50+var_28]
CD788:  STRD.W          R8, R4, [SP,#0x50+var_38]
CD78C:  B               loc_CD838
CD78E:  LDR             R6, =(silk_Transition_LP_B_Q28_ptr - 0xCD79C)
CD790:  ADD.W           R9, R4, R4,LSL#1
CD794:  ADD.W           R2, R0, R0,LSL#1
CD798:  ADD             R6, PC; silk_Transition_LP_B_Q28_ptr
CD79A:  LDR.W           R11, [R6]; silk_Transition_LP_B_Q28
CD79E:  LDR.W           R8, [R11,R9,LSL#2]
CD7A2:  LDR.W           R6, [R11,R2,LSL#2]
CD7A6:  SUB.W           R5, R6, R8
CD7AA:  SMLABT.W        R6, R3, R5, R6
CD7AE:  UXTH            R5, R5
CD7B0:  MULS            R5, R3
CD7B2:  ADD.W           R5, R6, R5,ASR#16
CD7B6:  LDR             R6, =(silk_Transition_LP_A_Q28_ptr - 0xCD7BE)
CD7B8:  STR             R5, [SP,#0x50+var_30]
CD7BA:  ADD             R6, PC; silk_Transition_LP_A_Q28_ptr
CD7BC:  LDR             R6, [R6]; silk_Transition_LP_A_Q28
CD7BE:  ADD.W           R5, R6, R4,LSL#3
CD7C2:  LDR.W           R4, [R6,R4,LSL#3]
CD7C6:  LDR.W           R8, [R5,#4]
CD7CA:  ADD.W           R5, R6, R0,LSL#3
CD7CE:  LDR.W           R6, [R6,R0,LSL#3]
CD7D2:  LDR             R5, [R5,#4]
CD7D4:  SUBS            R4, R6, R4
CD7D6:  SUB.W           R8, R5, R8
CD7DA:  SMLABT.W        R0, R3, R4, R6
CD7DE:  ADD.W           R6, R11, R2,LSL#2
CD7E2:  SMLABT.W        R5, R3, R8, R5
CD7E6:  UXTH            R4, R4
CD7E8:  STR             R5, [SP,#0x50+var_40]
CD7EA:  UXTH.W          R5, R8
CD7EE:  MULS            R5, R3
CD7F0:  MUL.W           R8, R4, R3
CD7F4:  STR             R5, [SP,#0x50+var_44]
CD7F6:  ADD.W           R5, R11, R9,LSL#2
CD7FA:  LDRD.W          R9, R5, [R5,#4]
CD7FE:  LDRD.W          R11, R6, [R6,#4]
CD802:  SUBS            R5, R6, R5
CD804:  SUB.W           R9, R11, R9
CD808:  SMLABT.W        R6, R3, R5, R6
CD80C:  UXTH            R5, R5
CD80E:  UXTH.W          R4, R9
CD812:  MULS            R5, R3
CD814:  SMLABT.W        R11, R3, R9, R11
CD818:  MULS            R3, R4
CD81A:  ADD.W           R3, R11, R3,ASR#16
CD81E:  STR             R3, [SP,#0x50+var_2C]
CD820:  ADD.W           R3, R6, R5,ASR#16
CD824:  STR             R3, [SP,#0x50+var_28]
CD826:  ADD.W           R3, R0, R8,ASR#16
CD82A:  STR             R3, [SP,#0x50+var_38]
CD82C:  LDRD.W          R2, R0, [SP,#0x50+var_44]
CD830:  ADD.W           R3, R0, R2,ASR#16
CD834:  STR             R3, [SP,#0x50+var_34]
CD836:  LDR             R2, [SP,#0x50+var_3C]
CD838:  ADD.W           R0, R10, LR
CD83C:  ADD             R3, SP, #0x50+var_30
CD83E:  CMP             R0, #0
CD840:  IT LE
CD842:  MOVLE           R0, #0
CD844:  CMP.W           R0, #0x100
CD848:  IT GE
CD84A:  MOVGE.W         R0, #0x100
CD84E:  STR.W           R0, [R12,#8]
CD852:  MOV             R0, R1
CD854:  STRD.W          R1, R2, [SP,#0x50+var_50]
CD858:  ADD             R2, SP, #0x50+var_38
CD85A:  MOV             R1, R3
CD85C:  MOV             R3, R12
CD85E:  BLX             j_silk_biquad_alt_stride1
CD862:  LDR             R0, =(__stack_chk_guard_ptr - 0xCD86A)
CD864:  LDR             R1, [SP,#0x50+var_20]
CD866:  ADD             R0, PC; __stack_chk_guard_ptr
CD868:  LDR             R0, [R0]; __stack_chk_guard
CD86A:  LDR             R0, [R0]
CD86C:  SUBS            R0, R0, R1
CD86E:  ITTT EQ
CD870:  ADDEQ           SP, SP, #0x34 ; '4'
CD872:  POPEQ.W         {R8-R11}
CD876:  POPEQ           {R4-R7,PC}
CD878:  BLX             __stack_chk_fail
