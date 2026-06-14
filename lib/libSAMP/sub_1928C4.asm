; =========================================================
; Game Engine Function: sub_1928C4
; Address            : 0x1928C4 - 0x1929FC
; =========================================================

1928C4:  PUSH            {R4-R7,LR}
1928C6:  ADD             R7, SP, #0xC
1928C8:  PUSH.W          {R8-R11}
1928CC:  SUB             SP, SP, #0x14
1928CE:  MOV             R5, R2
1928D0:  LDR             R2, =(__stack_chk_guard_ptr - 0x1928DC)
1928D2:  LDR.W           R9, [R7,#arg_8]
1928D6:  MOV             R4, R3
1928D8:  ADD             R2, PC; __stack_chk_guard_ptr
1928DA:  LDR             R2, [R2]; __stack_chk_guard
1928DC:  LDR             R2, [R2]
1928DE:  STR.W           R2, [R7,#var_24]
1928E2:  MOVS            R2, #7
1928E4:  ADD.W           R2, R2, R9,LSL#2
1928E8:  BIC.W           R2, R2, #7
1928EC:  SUB.W           R2, SP, R2
1928F0:  MOV             SP, R2
1928F2:  CMP.W           R9, #0
1928F6:  BLE             loc_1929C6
1928F8:  STRD.W          R1, R5, [R7,#var_30]
1928FC:  MOVW            LR, #0x8000
192900:  LDR             R1, [R7,#arg_C]
192902:  MOVT            LR, #0xFFFF
192906:  STR.W           R4, [R7,#var_28]
19290A:  MOVW            R12, #0x7FFF
19290E:  SUBS            R1, #2
192910:  LDRD.W          R6, R3, [R7,#arg_0]
192914:  LDR             R3, [R3]
192916:  MOV             R11, R9
192918:  MUL.W           R1, R1, R9
19291C:  ADD.W           R5, R6, R1,LSL#2
192920:  MOVS            R1, #1
192922:  ADD.W           R1, R1, R3,ASR#15
192926:  SXTH            R6, R3
192928:  MOV.W           R8, R1,ASR#1
19292C:  MOV             R1, R2
19292E:  LDR.W           R9, [R5],#4
192932:  UXTH.W          R10, R9
192936:  MUL.W           R4, R6, R10
19293A:  ASRS            R4, R4, #0x10
19293C:  SMLABT.W        R4, R6, R9, R4
192940:  MLA.W           R4, R8, R9, R4
192944:  ASRS            R3, R4, #8
192946:  CMP             R3, LR
192948:  MOV             R3, LR
19294A:  IT GT
19294C:  ASRGT           R3, R4, #8
19294E:  CMP             R3, R12
192950:  IT GE
192952:  MOVGE           R3, R12
192954:  SUBS.W          R11, R11, #1
192958:  STRH.W          R3, [R2],#2
19295C:  BNE             loc_19292E
19295E:  LDR             R2, [R7,#arg_C]
192960:  MOVW            R11, #0x7FFF
192964:  LDR.W           R9, [R7,#arg_8]
192968:  SUBS            R2, #1
19296A:  LDR             R3, [R7,#arg_4]
19296C:  LDR             R6, [R7,#arg_0]
19296E:  MUL.W           R2, R2, R9
192972:  ADD.W           R10, R1, R9,LSL#1
192976:  LDR             R3, [R3,#4]
192978:  SXTH.W          R8, R3
19297C:  ADD.W           R5, R6, R2,LSL#2
192980:  MOVS            R2, #1
192982:  ADD.W           R2, R2, R3,ASR#15
192986:  MOV             R6, R9
192988:  MOV.W           R12, R2,ASR#1
19298C:  MOV             R2, R10
19298E:  LDR.W           R3, [R5],#4
192992:  UXTH            R4, R3
192994:  MUL.W           R4, R8, R4
192998:  ASRS            R4, R4, #0x10
19299A:  SMLABT.W        R4, R8, R3, R4
19299E:  MLA.W           R3, R12, R3, R4
1929A2:  ASRS            R4, R3, #8
1929A4:  CMP             R4, LR
1929A6:  MOV             R4, LR
1929A8:  IT GT
1929AA:  ASRGT           R4, R3, #8
1929AC:  CMP             R4, R11
1929AE:  IT GE
1929B0:  MOVGE           R4, R11
1929B2:  SUBS            R6, #1
1929B4:  STRH.W          R4, [R2],#2
1929B8:  BNE             loc_19298E
1929BA:  LDRD.W          R5, R4, [R7,#var_2C]
1929BE:  MOV             R2, R1
1929C0:  LDR.W           R1, [R7,#var_30]
1929C4:  B               loc_1929CA
1929C6:  ADD.W           R10, R2, R9,LSL#1
1929CA:  MOV             R3, R9
1929CC:  BLX             j_silk_sum_sqr_shift
1929D0:  MOV             R0, R5
1929D2:  MOV             R1, R4
1929D4:  MOV             R2, R10
1929D6:  MOV             R3, R9
1929D8:  BLX             j_silk_sum_sqr_shift
1929DC:  LDR             R0, =(__stack_chk_guard_ptr - 0x1929E6)
1929DE:  LDR.W           R1, [R7,#var_24]
1929E2:  ADD             R0, PC; __stack_chk_guard_ptr
1929E4:  LDR             R0, [R0]; __stack_chk_guard
1929E6:  LDR             R0, [R0]
1929E8:  SUBS            R0, R0, R1
1929EA:  ITTTT EQ
1929EC:  SUBEQ.W         R4, R7, #-var_1C
1929F0:  MOVEQ           SP, R4
1929F2:  POPEQ.W         {R8-R11}
1929F6:  POPEQ           {R4-R7,PC}
1929F8:  BLX             __stack_chk_fail
