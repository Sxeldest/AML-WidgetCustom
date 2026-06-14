; =========================================================
; Game Engine Function: silk_LPC_analysis_filter
; Address            : 0xB4836 - 0xB49BE
; =========================================================

B4836:  PUSH            {R4-R7,LR}
B4838:  ADD             R7, SP, #0xC
B483A:  PUSH.W          {R8-R11}
B483E:  SUB             SP, SP, #0xC
B4840:  LDR.W           R12, [R7,#arg_0]
B4844:  STR             R0, [SP,#0x28+var_24]
B4846:  CMP             R12, R3
B4848:  STR             R3, [SP,#0x28+var_20]
B484A:  BGE.W           loc_B49AC
B484E:  CMP.W           R12, #6
B4852:  BLE             loc_B4918
B4854:  ADD.W           R4, R1, R12,LSL#1
B4858:  MOV             R11, R12
B485A:  SUB.W           R10, R4, #0x10
B485E:  STR             R1, [SP,#0x28+var_28]
B4860:  ADD.W           R9, R1, R11,LSL#1
B4864:  LDRSH.W         R5, [R2,#2]
B4868:  LDRSH.W         R4, [R2]
B486C:  LDRSH.W         R0, [R9,#-4]
B4870:  LDRSH.W         LR, [R9,#-2]
B4874:  LDRSH.W         R6, [R2,#4]
B4878:  SMULBB.W        R0, R5, R0
B487C:  LDRSH.W         R5, [R9,#-8]
B4880:  SMLABB.W        R3, R4, LR, R0
B4884:  LDRSH.W         LR, [R9,#-0xC]
B4888:  LDRSH.W         R4, [R9,#-0xA]
B488C:  LDRSH.W         R9, [R9,#-6]
B4890:  LDRSH.W         R8, [R2,#6]
B4894:  LDRSH.W         R0, [R2,#8]
B4898:  SMLABB.W        R3, R6, R9, R3
B489C:  LDRSH.W         R1, [R2,#0xA]
B48A0:  SMLABB.W        R3, R8, R5, R3
B48A4:  MOV             R5, R10
B48A6:  SMLABB.W        R0, R0, R4, R3
B48AA:  MOVS            R4, #0
B48AC:  SMLABB.W        R6, R1, LR, R0
B48B0:  ADD.W           R3, R2, R4,LSL#1
B48B4:  LDRSH.W         R1, [R5,#2]
B48B8:  LDRSH.W         LR, [R5]
B48BC:  SUBS            R5, #4
B48BE:  LDRSH.W         R0, [R3,#0xC]
B48C2:  LDRSH.W         R3, [R3,#0xE]
B48C6:  SMLABB.W        R0, R0, R1, R6
B48CA:  SMLABB.W        R6, R3, LR, R0
B48CE:  ADD.W           R0, R4, #8
B48D2:  ADDS            R4, #2
B48D4:  CMP             R0, R12
B48D6:  BLT             loc_B48B0
B48D8:  LDR             R1, [SP,#0x28+var_28]
B48DA:  MOVS            R3, #1
B48DC:  ADD.W           R10, R10, #2
B48E0:  LDRSH.W         R0, [R1,R11,LSL#1]
B48E4:  RSB.W           R0, R6, R0,LSL#12
B48E8:  ADD.W           R0, R3, R0,ASR#11
B48EC:  MOV             R3, #0xFFFF8000
B48F4:  ASRS            R6, R0, #1
B48F6:  CMP             R6, R3
B48F8:  IT GT
B48FA:  ASRGT           R3, R0, #1
B48FC:  MOVW            R0, #0x7FFF
B4900:  CMP             R3, R0
B4902:  IT GE
B4904:  MOVGE           R3, R0
B4906:  LDR             R0, [SP,#0x28+var_24]
B4908:  STRH.W          R3, [R0,R11,LSL#1]
B490C:  ADD.W           R11, R11, #1
B4910:  LDR             R0, [SP,#0x28+var_20]
B4912:  CMP             R11, R0
B4914:  BNE             loc_B4860
B4916:  B               loc_B49AC
B4918:  LDR             R0, [SP,#0x28+var_20]
B491A:  ADD.W           R1, R1, R12,LSL#1
B491E:  SUBS            R6, R1, #6
B4920:  SUB.W           R3, R0, R12
B4924:  LDR             R0, [SP,#0x28+var_24]
B4926:  MOV             R1, R6
B4928:  ADD.W           R4, R0, R12,LSL#1
B492C:  LDRSH.W         R0, [R2,#6]
B4930:  LDRSH.W         R11, [R2]
B4934:  LDRSH.W         R5, [R2,#2]
B4938:  LDRSH.W         R9, [R2,#4]
B493C:  STR             R0, [SP,#0x28+var_20]
B493E:  LDRSH.W         R0, [R1,#2]!
B4942:  LDRSH.W         LR, [R6,#4]
B4946:  LDRSH.W         R8, [R2,#8]
B494A:  SMULBB.W        R0, R5, R0
B494E:  LDRSH.W         R5, [R6]
B4952:  SMLABB.W        R0, R11, LR, R0
B4956:  LDRSH.W         R11, [R6,#-4]
B495A:  LDRSH.W         R10, [R2,#0xA]
B495E:  SMLABB.W        R9, R9, R5, R0
B4962:  LDRSH.W         R0, [R6,#-2]
B4966:  LDR             R5, [SP,#0x28+var_20]
B4968:  LDRSH.W         LR, [R6,#-6]
B496C:  LDRSH.W         R6, [R6,#6]
B4970:  SMLABB.W        R0, R5, R0, R9
B4974:  MOVW            R5, #0x8000
B4978:  SMLABB.W        R0, R8, R11, R0
B497C:  MOVT            R5, #0xFFFF
B4980:  SMLABB.W        R0, R10, LR, R0
B4984:  RSB.W           R0, R0, R6,LSL#12
B4988:  MOVS            R6, #1
B498A:  ADD.W           R0, R6, R0,ASR#11
B498E:  ASRS            R6, R0, #1
B4990:  CMP             R6, R5
B4992:  MOV             R6, R5
B4994:  IT GT
B4996:  ASRGT           R6, R0, #1
B4998:  MOVW            R0, #0x7FFF
B499C:  CMP             R6, R0
B499E:  IT GE
B49A0:  MOVGE           R6, R0
B49A2:  SUBS            R3, #1
B49A4:  STRH.W          R6, [R4],#2
B49A8:  MOV             R6, R1
B49AA:  BNE             loc_B492C
B49AC:  LDR             R0, [SP,#0x28+var_24]; int
B49AE:  MOV.W           R1, R12,LSL#1; n
B49B2:  BLX             sub_10967C
B49B6:  ADD             SP, SP, #0xC
B49B8:  POP.W           {R8-R11}
B49BC:  POP             {R4-R7,PC}
