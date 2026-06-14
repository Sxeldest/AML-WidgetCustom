; =========================================================
; Game Engine Function: silk_decode_signs
; Address            : 0xB7720 - 0xB7970
; =========================================================

B7720:  PUSH            {R4-R7,LR}
B7722:  ADD             R7, SP, #0xC
B7724:  PUSH.W          {R8-R11}
B7728:  SUB             SP, SP, #0xC
B772A:  MOV             R5, R0
B772C:  LDR             R0, =(__stack_chk_guard_ptr - 0xB7734)
B772E:  MOV             R4, R1
B7730:  ADD             R0, PC; __stack_chk_guard_ptr
B7732:  LDR             R0, [R0]; __stack_chk_guard
B7734:  LDR             R0, [R0]
B7736:  STR             R0, [SP,#0x28+var_20]
B7738:  MOVS            R0, #0
B773A:  STRB.W          R0, [R7,#var_21]
B773E:  ADD.W           R0, R2, #8
B7742:  MOV.W           R9, R0,ASR#4
B7746:  CMP.W           R9, #1
B774A:  BLT.W           loc_B7956
B774E:  LDR             R0, =(silk_sign_iCDF_ptr - 0xB775E)
B7750:  SUB.W           R8, R7, #-var_22
B7754:  LDR             R1, [R7,#arg_0]
B7756:  MOV.W           R11, #0xFFFFFFFF
B775A:  ADD             R0, PC; silk_sign_iCDF_ptr
B775C:  LDR             R6, [R7,#arg_4]
B775E:  ADD.W           R1, R1, R3,LSL#1
B7762:  LDR             R0, [R0]; silk_sign_iCDF
B7764:  SXTH            R1, R1
B7766:  RSB.W           R1, R1, R1,LSL#3
B776A:  ADD.W           R10, R0, R1
B776E:  LDR             R0, [R6]
B7770:  CMP             R0, #1
B7772:  BLT.W           loc_B7948
B7776:  AND.W           R0, R0, #0x1F
B777A:  CMP             R0, #6
B777C:  IT CS
B777E:  MOVCS           R0, #6
B7780:  LDRB.W          R0, [R10,R0]
B7784:  STRB.W          R0, [R7,#var_22]
B7788:  LDRSH.W         R0, [R4]
B778C:  CMP             R0, #1
B778E:  BLT             loc_B77A4
B7790:  MOV             R0, R5
B7792:  MOV             R1, R8
B7794:  MOVS            R2, #8
B7796:  BLX             j_ec_dec_icdf
B779A:  LDRH            R1, [R4]
B779C:  ADD.W           R0, R11, R0,LSL#1
B77A0:  MULS            R0, R1
B77A2:  STRH            R0, [R4]
B77A4:  LDRSH.W         R0, [R4,#2]
B77A8:  CMP             R0, #0
B77AA:  BLE             loc_B77C0
B77AC:  MOV             R0, R5
B77AE:  MOV             R1, R8
B77B0:  MOVS            R2, #8
B77B2:  BLX             j_ec_dec_icdf
B77B6:  LDRH            R1, [R4,#2]
B77B8:  ADD.W           R0, R11, R0,LSL#1
B77BC:  MULS            R0, R1
B77BE:  STRH            R0, [R4,#2]
B77C0:  LDRSH.W         R0, [R4,#4]
B77C4:  CMP             R0, #1
B77C6:  BLT             loc_B77DC
B77C8:  MOV             R0, R5
B77CA:  MOV             R1, R8
B77CC:  MOVS            R2, #8
B77CE:  BLX             j_ec_dec_icdf
B77D2:  LDRH            R1, [R4,#4]
B77D4:  ADD.W           R0, R11, R0,LSL#1
B77D8:  MULS            R0, R1
B77DA:  STRH            R0, [R4,#4]
B77DC:  LDRSH.W         R0, [R4,#6]
B77E0:  CMP             R0, #1
B77E2:  BLT             loc_B77F8
B77E4:  MOV             R0, R5
B77E6:  MOV             R1, R8
B77E8:  MOVS            R2, #8
B77EA:  BLX             j_ec_dec_icdf
B77EE:  LDRH            R1, [R4,#6]
B77F0:  ADD.W           R0, R11, R0,LSL#1
B77F4:  MULS            R0, R1
B77F6:  STRH            R0, [R4,#6]
B77F8:  LDRSH.W         R0, [R4,#8]
B77FC:  CMP             R0, #1
B77FE:  BLT             loc_B7814
B7800:  MOV             R0, R5
B7802:  MOV             R1, R8
B7804:  MOVS            R2, #8
B7806:  BLX             j_ec_dec_icdf
B780A:  LDRH            R1, [R4,#8]
B780C:  ADD.W           R0, R11, R0,LSL#1
B7810:  MULS            R0, R1
B7812:  STRH            R0, [R4,#8]
B7814:  LDRSH.W         R0, [R4,#0xA]
B7818:  CMP             R0, #1
B781A:  BLT             loc_B7830
B781C:  MOV             R0, R5
B781E:  MOV             R1, R8
B7820:  MOVS            R2, #8
B7822:  BLX             j_ec_dec_icdf
B7826:  LDRH            R1, [R4,#0xA]
B7828:  ADD.W           R0, R11, R0,LSL#1
B782C:  MULS            R0, R1
B782E:  STRH            R0, [R4,#0xA]
B7830:  LDRSH.W         R0, [R4,#0xC]
B7834:  CMP             R0, #1
B7836:  BLT             loc_B784C
B7838:  MOV             R0, R5
B783A:  MOV             R1, R8
B783C:  MOVS            R2, #8
B783E:  BLX             j_ec_dec_icdf
B7842:  LDRH            R1, [R4,#0xC]
B7844:  ADD.W           R0, R11, R0,LSL#1
B7848:  MULS            R0, R1
B784A:  STRH            R0, [R4,#0xC]
B784C:  LDRSH.W         R0, [R4,#0xE]
B7850:  CMP             R0, #1
B7852:  BLT             loc_B7868
B7854:  MOV             R0, R5
B7856:  MOV             R1, R8
B7858:  MOVS            R2, #8
B785A:  BLX             j_ec_dec_icdf
B785E:  LDRH            R1, [R4,#0xE]
B7860:  ADD.W           R0, R11, R0,LSL#1
B7864:  MULS            R0, R1
B7866:  STRH            R0, [R4,#0xE]
B7868:  LDRSH.W         R0, [R4,#0x10]
B786C:  CMP             R0, #1
B786E:  BLT             loc_B7884
B7870:  MOV             R0, R5
B7872:  MOV             R1, R8
B7874:  MOVS            R2, #8
B7876:  BLX             j_ec_dec_icdf
B787A:  LDRH            R1, [R4,#0x10]
B787C:  ADD.W           R0, R11, R0,LSL#1
B7880:  MULS            R0, R1
B7882:  STRH            R0, [R4,#0x10]
B7884:  LDRSH.W         R0, [R4,#0x12]
B7888:  CMP             R0, #1
B788A:  BLT             loc_B78A0
B788C:  MOV             R0, R5
B788E:  MOV             R1, R8
B7890:  MOVS            R2, #8
B7892:  BLX             j_ec_dec_icdf
B7896:  LDRH            R1, [R4,#0x12]
B7898:  ADD.W           R0, R11, R0,LSL#1
B789C:  MULS            R0, R1
B789E:  STRH            R0, [R4,#0x12]
B78A0:  LDRSH.W         R0, [R4,#0x14]
B78A4:  CMP             R0, #1
B78A6:  BLT             loc_B78BC
B78A8:  MOV             R0, R5
B78AA:  MOV             R1, R8
B78AC:  MOVS            R2, #8
B78AE:  BLX             j_ec_dec_icdf
B78B2:  LDRH            R1, [R4,#0x14]
B78B4:  ADD.W           R0, R11, R0,LSL#1
B78B8:  MULS            R0, R1
B78BA:  STRH            R0, [R4,#0x14]
B78BC:  LDRSH.W         R0, [R4,#0x16]
B78C0:  CMP             R0, #1
B78C2:  BLT             loc_B78D8
B78C4:  MOV             R0, R5
B78C6:  MOV             R1, R8
B78C8:  MOVS            R2, #8
B78CA:  BLX             j_ec_dec_icdf
B78CE:  LDRH            R1, [R4,#0x16]
B78D0:  ADD.W           R0, R11, R0,LSL#1
B78D4:  MULS            R0, R1
B78D6:  STRH            R0, [R4,#0x16]
B78D8:  LDRSH.W         R0, [R4,#0x18]
B78DC:  CMP             R0, #1
B78DE:  BLT             loc_B78F4
B78E0:  MOV             R0, R5
B78E2:  MOV             R1, R8
B78E4:  MOVS            R2, #8
B78E6:  BLX             j_ec_dec_icdf
B78EA:  LDRH            R1, [R4,#0x18]
B78EC:  ADD.W           R0, R11, R0,LSL#1
B78F0:  MULS            R0, R1
B78F2:  STRH            R0, [R4,#0x18]
B78F4:  LDRSH.W         R0, [R4,#0x1A]
B78F8:  CMP             R0, #1
B78FA:  BLT             loc_B7910
B78FC:  MOV             R0, R5
B78FE:  MOV             R1, R8
B7900:  MOVS            R2, #8
B7902:  BLX             j_ec_dec_icdf
B7906:  LDRH            R1, [R4,#0x1A]
B7908:  ADD.W           R0, R11, R0,LSL#1
B790C:  MULS            R0, R1
B790E:  STRH            R0, [R4,#0x1A]
B7910:  LDRSH.W         R0, [R4,#0x1C]
B7914:  CMP             R0, #1
B7916:  BLT             loc_B792C
B7918:  MOV             R0, R5
B791A:  MOV             R1, R8
B791C:  MOVS            R2, #8
B791E:  BLX             j_ec_dec_icdf
B7922:  LDRH            R1, [R4,#0x1C]
B7924:  ADD.W           R0, R11, R0,LSL#1
B7928:  MULS            R0, R1
B792A:  STRH            R0, [R4,#0x1C]
B792C:  LDRSH.W         R0, [R4,#0x1E]
B7930:  CMP             R0, #1
B7932:  BLT             loc_B7948
B7934:  MOV             R0, R5
B7936:  MOV             R1, R8
B7938:  MOVS            R2, #8
B793A:  BLX             j_ec_dec_icdf
B793E:  LDRH            R1, [R4,#0x1E]
B7940:  ADD.W           R0, R11, R0,LSL#1
B7944:  MULS            R0, R1
B7946:  STRH            R0, [R4,#0x1E]
B7948:  ADDS            R6, #4
B794A:  SUBS.W          R9, R9, #1
B794E:  ADD.W           R4, R4, #0x20 ; ' '
B7952:  BNE.W           loc_B776E
B7956:  LDR             R0, =(__stack_chk_guard_ptr - 0xB795E)
B7958:  LDR             R1, [SP,#0x28+var_20]
B795A:  ADD             R0, PC; __stack_chk_guard_ptr
B795C:  LDR             R0, [R0]; __stack_chk_guard
B795E:  LDR             R0, [R0]
B7960:  SUBS            R0, R0, R1
B7962:  ITTT EQ
B7964:  ADDEQ           SP, SP, #0xC
B7966:  POPEQ.W         {R8-R11}
B796A:  POPEQ           {R4-R7,PC}
B796C:  BLX             __stack_chk_fail
