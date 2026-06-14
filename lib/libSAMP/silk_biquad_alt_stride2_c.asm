; =========================================================
; Game Engine Function: silk_biquad_alt_stride2_c
; Address            : 0x1AB76C - 0x1AB94C
; =========================================================

1AB76C:  PUSH            {R4-R7,LR}
1AB76E:  ADD             R7, SP, #0xC
1AB770:  PUSH.W          {R8-R11}
1AB774:  SUB             SP, SP, #0x34
1AB776:  LDR             R4, [R7,#arg_4]
1AB778:  MOV             R12, R1
1AB77A:  STR             R3, [SP,#0x50+var_40]
1AB77C:  CMP             R4, #1
1AB77E:  BLT.W           loc_1AB944
1AB782:  LDRD.W          R1, R2, [R2]
1AB786:  NEGS            R6, R2
1AB788:  LDR.W           LR, [R7,#arg_0]
1AB78C:  ADD.W           R10, R0, #2
1AB790:  MOV             R2, R6
1AB792:  NEGS            R1, R1
1AB794:  BFC.W           R2, #0xE, #0x12
1AB798:  STR             R2, [SP,#0x50+var_44]
1AB79A:  MOV             R2, R1
1AB79C:  ADD.W           R5, LR, #2
1AB7A0:  BFC.W           R2, #0xE, #0x12
1AB7A4:  STR             R2, [SP,#0x50+var_48]
1AB7A6:  LDR             R2, [SP,#0x50+var_40]
1AB7A8:  LDR             R3, [R2]
1AB7AA:  STR             R3, [SP,#0x50+var_20]
1AB7AC:  LDRD.W          R3, R11, [R2,#4]
1AB7B0:  LDR.W           R8, [R2,#0xC]
1AB7B4:  SBFX.W          R0, R6, #0xE, #0x10
1AB7B8:  STR             R0, [SP,#0x50+var_4C]
1AB7BA:  SBFX.W          R0, R1, #0xE, #0x10
1AB7BE:  STR             R0, [SP,#0x50+var_50]
1AB7C0:  STRD.W          R3, R8, [SP,#0x50+var_3C]
1AB7C4:  MOVS            R3, #1
1AB7C6:  STRD.W          R5, R4, [SP,#0x50+var_28]
1AB7CA:  LDR.W           R2, [R12]
1AB7CE:  LDRSH.W         R8, [R10]
1AB7D2:  LDR.W           LR, [SP,#0x50+var_44]
1AB7D6:  UXTH            R6, R2
1AB7D8:  LDR.W           R9, [SP,#0x50+var_4C]
1AB7DC:  MUL.W           R0, R6, R8
1AB7E0:  SMLABT.W        R1, R8, R2, R11
1AB7E4:  ADD.W           R0, R1, R0,ASR#16
1AB7E8:  STR             R0, [SP,#0x50+var_2C]
1AB7EA:  LSLS            R4, R0, #2
1AB7EC:  UXTH            R0, R4
1AB7EE:  MUL.W           R5, R0, LR
1AB7F2:  MUL.W           R1, R0, R9
1AB7F6:  LSRS            R5, R5, #0x10
1AB7F8:  SMLATB.W        R5, R4, LR, R5
1AB7FC:  ASRS            R1, R1, #0x10
1AB7FE:  SMLATB.W        R11, R4, R9, R1
1AB802:  MOVS            R1, #1
1AB804:  ADD.W           R5, R1, R5,ASR#13
1AB808:  ADD.W           R1, R11, R5,ASR#1
1AB80C:  STR             R1, [SP,#0x50+var_34]
1AB80E:  LDRSH.W         R1, [R10,#-2]
1AB812:  LDR             R5, [SP,#0x50+var_20]
1AB814:  LDR.W           R11, [SP,#0x50+var_50]
1AB818:  MULS            R6, R1
1AB81A:  SMLABT.W        R2, R1, R2, R5
1AB81E:  ADD.W           R2, R2, R6,ASR#16
1AB822:  STR             R2, [SP,#0x50+var_30]
1AB824:  LSLS            R2, R2, #2
1AB826:  UXTH            R5, R2
1AB828:  MUL.W           R6, R5, R9
1AB82C:  ASRS            R6, R6, #0x10
1AB82E:  SMLATB.W        R9, R2, R9, R6
1AB832:  MUL.W           R6, R5, LR
1AB836:  LSRS            R6, R6, #0x10
1AB838:  SMLATB.W        R6, R2, LR, R6
1AB83C:  LDR.W           LR, [SP,#0x50+var_48]
1AB840:  ADD.W           R6, R3, R6,ASR#13
1AB844:  ADD.W           R9, R9, R6,ASR#1
1AB848:  MUL.W           R6, R5, LR
1AB84C:  MUL.W           R5, R5, R11
1AB850:  LSRS            R6, R6, #0x10
1AB852:  SMLATB.W        R6, R2, LR, R6
1AB856:  ADD.W           R6, R3, R6,ASR#13
1AB85A:  LDR             R3, [SP,#0x50+var_3C]
1AB85C:  ADD.W           R6, R3, R6,ASR#1
1AB860:  MOVS            R3, #1
1AB862:  SMLABT.W        R2, R11, R2, R6
1AB866:  LDR             R6, [SP,#0x50+var_40]
1AB868:  ADD.W           R2, R2, R5,ASR#16
1AB86C:  MUL.W           R5, R0, LR
1AB870:  MUL.W           R0, R0, R11
1AB874:  LSRS            R5, R5, #0x10
1AB876:  SMLATB.W        R5, R4, LR, R5
1AB87A:  MOVW            LR, #0x3FFF
1AB87E:  ADD.W           R5, R3, R5,ASR#13
1AB882:  LDR             R3, [SP,#0x50+var_38]
1AB884:  ADD.W           R5, R3, R5,ASR#1
1AB888:  SMLABT.W        R4, R11, R4, R5
1AB88C:  ADD.W           R0, R4, R0,ASR#16
1AB890:  STR             R0, [R6,#8]
1AB892:  STR             R2, [R6]
1AB894:  LDR.W           R4, [R12,#4]
1AB898:  SMLABT.W        R2, R1, R4, R2
1AB89C:  UXTH            R4, R4
1AB89E:  MULS            R1, R4
1AB8A0:  LDR             R4, [SP,#0x50+var_24]
1AB8A2:  ADD.W           R2, R2, R1,ASR#16
1AB8A6:  MOV             R1, R2
1AB8A8:  STR             R1, [SP,#0x50+var_20]
1AB8AA:  STR             R2, [R6]
1AB8AC:  LDR.W           R1, [R12,#4]
1AB8B0:  LDR             R5, [SP,#0x50+var_28]
1AB8B2:  STR.W           R9, [R6,#4]
1AB8B6:  SMLABT.W        R0, R8, R1, R0
1AB8BA:  UXTH            R1, R1
1AB8BC:  MUL.W           R1, R1, R8
1AB8C0:  LDR             R2, [SP,#0x50+var_34]
1AB8C2:  ADD.W           R11, R0, R1,ASR#16
1AB8C6:  STRD.W          R11, R2, [R6,#8]
1AB8CA:  LDR.W           R0, [R12,#8]
1AB8CE:  LDRSH.W         R1, [R10,#-2]
1AB8D2:  SMLABT.W        R3, R1, R0, R9
1AB8D6:  UXTH            R0, R0
1AB8D8:  MULS            R0, R1
1AB8DA:  ADD.W           R3, R3, R0,ASR#16
1AB8DE:  STR             R3, [R6,#4]
1AB8E0:  LDRSH.W         R1, [R10]
1AB8E4:  ADD.W           R10, R10, #4
1AB8E8:  LDR.W           R0, [R12,#8]
1AB8EC:  SMLABT.W        R2, R1, R0, R2
1AB8F0:  UXTH            R0, R0
1AB8F2:  MULS            R0, R1
1AB8F4:  ADD.W           R8, R2, R0,ASR#16
1AB8F8:  STR.W           R8, [R6,#0xC]
1AB8FC:  LDR             R0, [SP,#0x50+var_2C]
1AB8FE:  MOV             R2, #0xFFFF8000
1AB906:  MOVW            R6, #0x7FFF
1AB90A:  ADD.W           R0, LR, R0,LSL#2
1AB90E:  ASRS            R1, R0, #0xE
1AB910:  CMP             R1, R2
1AB912:  MOV             R1, R2
1AB914:  IT GT
1AB916:  ASRGT           R1, R0, #0xE
1AB918:  CMP             R1, R6
1AB91A:  IT GE
1AB91C:  MOVGE           R1, R6
1AB91E:  STRH            R1, [R5]
1AB920:  LDR             R0, [SP,#0x50+var_30]
1AB922:  ADD.W           R0, LR, R0,LSL#2
1AB926:  ASRS            R1, R0, #0xE
1AB928:  CMP             R1, R2
1AB92A:  MOV             R1, R2
1AB92C:  IT GT
1AB92E:  ASRGT           R1, R0, #0xE
1AB930:  CMP             R1, R6
1AB932:  IT GE
1AB934:  MOVGE           R1, R6
1AB936:  SUBS            R4, #1
1AB938:  STRH.W          R1, [R5,#-2]
1AB93C:  ADD.W           R5, R5, #4
1AB940:  BNE.W           loc_1AB7C0
1AB944:  ADD             SP, SP, #0x34 ; '4'
1AB946:  POP.W           {R8-R11}
1AB94A:  POP             {R4-R7,PC}
