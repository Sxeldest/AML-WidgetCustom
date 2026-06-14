; =========================================================
; Game Engine Function: silk_biquad_alt_stride1
; Address            : 0xCD8A4 - 0xCD9AC
; =========================================================

CD8A4:  PUSH            {R4-R7,LR}
CD8A6:  ADD             R7, SP, #0xC
CD8A8:  PUSH.W          {R8-R11}
CD8AC:  SUB             SP, SP, #0x14
CD8AE:  LDR.W           R12, [R7,#arg_4]
CD8B2:  STR             R3, [SP,#0x30+var_20]
CD8B4:  CMP.W           R12, #1
CD8B8:  BLT             loc_CD9A4
CD8BA:  LDRD.W          R4, R6, [R2]
CD8BE:  NEGS            R5, R6
CD8C0:  LDR.W           LR, [R7,#arg_0]
CD8C4:  MOV             R2, R5
CD8C6:  NEGS            R6, R4
CD8C8:  BFC.W           R2, #0xE, #0x12
CD8CC:  STR             R2, [SP,#0x30+var_24]
CD8CE:  MOV             R2, R6
CD8D0:  BFC.W           R2, #0xE, #0x12
CD8D4:  STR             R2, [SP,#0x30+var_28]
CD8D6:  LDR             R2, [SP,#0x30+var_20]
CD8D8:  LDRD.W          R9, R10, [R2]
CD8DC:  SBFX.W          R2, R5, #0xE, #0x10
CD8E0:  STR             R2, [SP,#0x30+var_2C]
CD8E2:  SBFX.W          R2, R6, #0xE, #0x10
CD8E6:  STR             R2, [SP,#0x30+var_30]
CD8E8:  LDR             R4, [R1]
CD8EA:  MOVS            R3, #1
CD8EC:  LDRSH.W         R8, [R0],#2
CD8F0:  LDR             R2, [SP,#0x30+var_28]
CD8F2:  UXTH            R5, R4
CD8F4:  MUL.W           R5, R5, R8
CD8F8:  SMLABT.W        R4, R8, R4, R9
CD8FC:  ADD.W           R11, R4, R5,ASR#16
CD900:  MOV.W           R4, R11,LSL#2
CD904:  UXTH            R5, R4
CD906:  MUL.W           R6, R5, R2
CD90A:  LSRS            R6, R6, #0x10
CD90C:  SMLATB.W        R6, R4, R2, R6
CD910:  ADD.W           R9, R3, R6,ASR#13
CD914:  LDR             R6, [SP,#0x30+var_30]
CD916:  SMLABT.W        R2, R6, R4, R10
CD91A:  MULS            R6, R5
CD91C:  ADD.W           R2, R2, R6,ASR#16
CD920:  ADD.W           R10, R2, R9,ASR#1
CD924:  LDR             R2, [SP,#0x30+var_2C]
CD926:  MUL.W           R6, R5, R2
CD92A:  ASRS            R6, R6, #0x10
CD92C:  SMLATB.W        R9, R4, R2, R6
CD930:  LDR             R6, [SP,#0x30+var_24]
CD932:  MULS            R5, R6
CD934:  LSRS            R5, R5, #0x10
CD936:  SMLATB.W        R4, R4, R6, R5
CD93A:  ADD.W           R4, R3, R4,ASR#13
CD93E:  LDR             R3, [SP,#0x30+var_20]
CD940:  ADD.W           R4, R9, R4,ASR#1
CD944:  STR.W           R10, [R3]
CD948:  LDR             R5, [R1,#4]
CD94A:  STR             R4, [R3,#4]
CD94C:  UXTH            R6, R5
CD94E:  MUL.W           R6, R6, R8
CD952:  ASRS            R6, R6, #0x10
CD954:  SMLATB.W        R5, R5, R8, R6
CD958:  ADD.W           R9, R5, R10
CD95C:  STR.W           R9, [R3]
CD960:  LDR             R2, [R1,#8]
CD962:  UXTH            R5, R2
CD964:  MUL.W           R5, R5, R8
CD968:  ASRS            R5, R5, #0x10
CD96A:  SMLATB.W        R2, R2, R8, R5
CD96E:  MOV             R5, #0xFFFF8000
CD976:  ADD.W           R10, R2, R4
CD97A:  MOVW            R2, #0x3FFF
CD97E:  ADD.W           R2, R2, R11,LSL#2
CD982:  STR.W           R10, [R3,#4]
CD986:  ASRS            R4, R2, #0xE
CD988:  CMP             R4, R5
CD98A:  MOV             R4, R5
CD98C:  IT GT
CD98E:  ASRGT           R4, R2, #0xE
CD990:  MOVW            R2, #0x7FFF
CD994:  CMP             R4, R2
CD996:  IT GE
CD998:  MOVGE           R4, R2
CD99A:  SUBS.W          R12, R12, #1
CD99E:  STRH.W          R4, [LR],#2
CD9A2:  BNE             loc_CD8E8
CD9A4:  ADD             SP, SP, #0x14
CD9A6:  POP.W           {R8-R11}
CD9AA:  POP             {R4-R7,PC}
