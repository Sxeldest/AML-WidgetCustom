; =========================================================
; Game Engine Function: silk_encode_signs
; Address            : 0x195768 - 0x195938
; =========================================================

195768:  PUSH            {R4-R7,LR}
19576A:  ADD             R7, SP, #0xC
19576C:  PUSH.W          {R8-R11}
195770:  SUB             SP, SP, #0xC
195772:  MOV             R5, R0
195774:  LDR             R0, =(__stack_chk_guard_ptr - 0x19577C)
195776:  MOV             R4, R1
195778:  ADD             R0, PC; __stack_chk_guard_ptr
19577A:  LDR             R0, [R0]; __stack_chk_guard
19577C:  LDR             R0, [R0]
19577E:  STR             R0, [SP,#0x28+var_20]
195780:  MOVS            R0, #0
195782:  STRB.W          R0, [R7,#var_21]
195786:  ADD.W           R0, R2, #8
19578A:  MOV.W           R9, R0,ASR#4
19578E:  CMP.W           R9, #1
195792:  BLT.W           loc_19591E
195796:  LDR             R0, =(silk_sign_iCDF_ptr - 0x1957A6)
195798:  SUB.W           R8, R7, #-var_22
19579C:  LDR             R1, [R7,#arg_0]
19579E:  MOV.W           R11, #1
1957A2:  ADD             R0, PC; silk_sign_iCDF_ptr
1957A4:  LDR             R6, [R7,#arg_4]
1957A6:  ADD.W           R1, R1, R3,LSL#1
1957AA:  LDR             R0, [R0]; silk_sign_iCDF
1957AC:  SXTH            R1, R1
1957AE:  RSB.W           R1, R1, R1,LSL#3
1957B2:  ADD.W           R10, R0, R1
1957B6:  LDR             R0, [R6]
1957B8:  CMP             R0, #1
1957BA:  BLT.W           loc_195910
1957BE:  AND.W           R0, R0, #0x1F
1957C2:  CMP             R0, #6
1957C4:  IT CS
1957C6:  MOVCS           R0, #6
1957C8:  LDRB.W          R0, [R10,R0]
1957CC:  STRB.W          R0, [R7,#var_22]
1957D0:  LDRSB.W         R0, [R4]
1957D4:  CBZ             R0, loc_1957E4
1957D6:  ADD.W           R1, R11, R0,ASR#15
1957DA:  MOV             R0, R5
1957DC:  MOV             R2, R8
1957DE:  MOVS            R3, #8
1957E0:  BLX             j_ec_enc_icdf
1957E4:  LDRSB.W         R0, [R4,#1]
1957E8:  CBZ             R0, loc_1957F8
1957EA:  ADD.W           R1, R11, R0,ASR#15
1957EE:  MOV             R0, R5
1957F0:  MOV             R2, R8
1957F2:  MOVS            R3, #8
1957F4:  BLX             j_ec_enc_icdf
1957F8:  LDRSB.W         R0, [R4,#2]
1957FC:  CBZ             R0, loc_19580C
1957FE:  ADD.W           R1, R11, R0,ASR#15
195802:  MOV             R0, R5
195804:  MOV             R2, R8
195806:  MOVS            R3, #8
195808:  BLX             j_ec_enc_icdf
19580C:  LDRSB.W         R0, [R4,#3]
195810:  CBZ             R0, loc_195820
195812:  ADD.W           R1, R11, R0,ASR#15
195816:  MOV             R0, R5
195818:  MOV             R2, R8
19581A:  MOVS            R3, #8
19581C:  BLX             j_ec_enc_icdf
195820:  LDRSB.W         R0, [R4,#4]
195824:  CBZ             R0, loc_195834
195826:  ADD.W           R1, R11, R0,ASR#15
19582A:  MOV             R0, R5
19582C:  MOV             R2, R8
19582E:  MOVS            R3, #8
195830:  BLX             j_ec_enc_icdf
195834:  LDRSB.W         R0, [R4,#5]
195838:  CBZ             R0, loc_195848
19583A:  ADD.W           R1, R11, R0,ASR#15
19583E:  MOV             R0, R5
195840:  MOV             R2, R8
195842:  MOVS            R3, #8
195844:  BLX             j_ec_enc_icdf
195848:  LDRSB.W         R0, [R4,#6]
19584C:  CBZ             R0, loc_19585C
19584E:  ADD.W           R1, R11, R0,ASR#15
195852:  MOV             R0, R5
195854:  MOV             R2, R8
195856:  MOVS            R3, #8
195858:  BLX             j_ec_enc_icdf
19585C:  LDRSB.W         R0, [R4,#7]
195860:  CBZ             R0, loc_195870
195862:  ADD.W           R1, R11, R0,ASR#15
195866:  MOV             R0, R5
195868:  MOV             R2, R8
19586A:  MOVS            R3, #8
19586C:  BLX             j_ec_enc_icdf
195870:  LDRSB.W         R0, [R4,#8]
195874:  CBZ             R0, loc_195884
195876:  ADD.W           R1, R11, R0,ASR#15
19587A:  MOV             R0, R5
19587C:  MOV             R2, R8
19587E:  MOVS            R3, #8
195880:  BLX             j_ec_enc_icdf
195884:  LDRSB.W         R0, [R4,#9]
195888:  CBZ             R0, loc_195898
19588A:  ADD.W           R1, R11, R0,ASR#15
19588E:  MOV             R0, R5
195890:  MOV             R2, R8
195892:  MOVS            R3, #8
195894:  BLX             j_ec_enc_icdf
195898:  LDRSB.W         R0, [R4,#0xA]
19589C:  CBZ             R0, loc_1958AC
19589E:  ADD.W           R1, R11, R0,ASR#15
1958A2:  MOV             R0, R5
1958A4:  MOV             R2, R8
1958A6:  MOVS            R3, #8
1958A8:  BLX             j_ec_enc_icdf
1958AC:  LDRSB.W         R0, [R4,#0xB]
1958B0:  CBZ             R0, loc_1958C0
1958B2:  ADD.W           R1, R11, R0,ASR#15
1958B6:  MOV             R0, R5
1958B8:  MOV             R2, R8
1958BA:  MOVS            R3, #8
1958BC:  BLX             j_ec_enc_icdf
1958C0:  LDRSB.W         R0, [R4,#0xC]
1958C4:  CBZ             R0, loc_1958D4
1958C6:  ADD.W           R1, R11, R0,ASR#15
1958CA:  MOV             R0, R5
1958CC:  MOV             R2, R8
1958CE:  MOVS            R3, #8
1958D0:  BLX             j_ec_enc_icdf
1958D4:  LDRSB.W         R0, [R4,#0xD]
1958D8:  CBZ             R0, loc_1958E8
1958DA:  ADD.W           R1, R11, R0,ASR#15
1958DE:  MOV             R0, R5
1958E0:  MOV             R2, R8
1958E2:  MOVS            R3, #8
1958E4:  BLX             j_ec_enc_icdf
1958E8:  LDRSB.W         R0, [R4,#0xE]
1958EC:  CBZ             R0, loc_1958FC
1958EE:  ADD.W           R1, R11, R0,ASR#15
1958F2:  MOV             R0, R5
1958F4:  MOV             R2, R8
1958F6:  MOVS            R3, #8
1958F8:  BLX             j_ec_enc_icdf
1958FC:  LDRSB.W         R0, [R4,#0xF]
195900:  CBZ             R0, loc_195910
195902:  ADD.W           R1, R11, R0,ASR#15
195906:  MOV             R0, R5
195908:  MOV             R2, R8
19590A:  MOVS            R3, #8
19590C:  BLX             j_ec_enc_icdf
195910:  ADDS            R6, #4
195912:  SUBS.W          R9, R9, #1
195916:  ADD.W           R4, R4, #0x10
19591A:  BNE.W           loc_1957B6
19591E:  LDR             R0, =(__stack_chk_guard_ptr - 0x195926)
195920:  LDR             R1, [SP,#0x28+var_20]
195922:  ADD             R0, PC; __stack_chk_guard_ptr
195924:  LDR             R0, [R0]; __stack_chk_guard
195926:  LDR             R0, [R0]
195928:  SUBS            R0, R0, R1
19592A:  ITTT EQ
19592C:  ADDEQ           SP, SP, #0xC
19592E:  POPEQ.W         {R8-R11}
195932:  POPEQ           {R4-R7,PC}
195934:  BLX             __stack_chk_fail
