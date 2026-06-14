; =========================================================
; Game Engine Function: silk_resampler_private_IIR_FIR
; Address            : 0x19391C - 0x193B0C
; =========================================================

19391C:  PUSH            {R4-R7,LR}
19391E:  ADD             R7, SP, #0xC
193920:  PUSH.W          {R8-R11}
193924:  SUB             SP, SP, #0x3C
193926:  MOV             R8, R1
193928:  LDR             R1, =(__stack_chk_guard_ptr - 0x19392E)
19392A:  ADD             R1, PC; __stack_chk_guard_ptr
19392C:  LDR             R1, [R1]; __stack_chk_guard
19392E:  LDR             R1, [R1]
193930:  STR.W           R1, [R7,#var_24]
193934:  MOVS            R1, #0x17
193936:  LDR.W           R4, [R0,#0x10C]
19393A:  ADD.W           R1, R1, R4,LSL#2
19393E:  BIC.W           R1, R1, #7
193942:  SUB.W           R10, SP, R1
193946:  MOV             SP, R10
193948:  MOV             R1, R0
19394A:  MOVW            R11, #0x8000
19394E:  LDR.W           LR, [R1,#0x18]!
193952:  MOVT            R11, #0xFFFF
193956:  LDR.W           R12, [R1,#4]
19395A:  LDR             R5, [R1,#8]
19395C:  LDR             R6, [R1,#0xC]
19395E:  STR.W           LR, [R10]
193962:  STR.W           R6, [R10,#0xC]
193966:  STR.W           R5, [R10,#8]
19396A:  STR.W           R12, [R10,#4]
19396E:  STR.W           R1, [R7,#var_54]
193972:  LDR.W           R9, [R1,#0xF8]
193976:  ADD.W           R1, R10, #0x10
19397A:  STR.W           R1, [R7,#var_4C]
19397E:  LDR             R1, =(silk_resampler_frac_FIR_12_ptr - 0x193988)
193980:  STR.W           R0, [R7,#var_50]
193984:  ADD             R1, PC; silk_resampler_frac_FIR_12_ptr
193986:  STR.W           R9, [R7,#var_3C]
19398A:  LDR             R6, [R1]; silk_resampler_frac_FIR_12
19398C:  STR.W           R6, [R7,#var_28]
193990:  B               loc_1939BC
193992:  ADD.W           R1, R10, R5,LSL#2
193996:  LDR.W           R0, [R10,R5,LSL#2]
19399A:  LDRD.W          R2, R6, [R1,#4]
19399E:  LDR             R1, [R1,#0xC]
1939A0:  STM.W           R10, {R0,R2,R6}
1939A4:  LDR.W           R0, [R7,#var_50]
1939A8:  LDR.W           R2, [R7,#var_48]
1939AC:  STR.W           R1, [R10,#0xC]
1939B0:  LDR.W           R6, [R7,#var_28]
1939B4:  ADD.W           R2, R2, R5,LSL#1
1939B8:  LDR.W           R4, [R0,#0x10C]
1939BC:  CMP             R3, R4
1939BE:  STR.W           R3, [R7,#var_40]
1939C2:  IT LT
1939C4:  MOVLT           R4, R3
1939C6:  LDR.W           R1, [R7,#var_4C]
1939CA:  MOV             R3, R4
1939CC:  STR.W           R2, [R7,#var_48]
1939D0:  BLX             j_silk_resampler_private_up2_HQ
1939D4:  LSLS            R0, R4, #0x11
1939D6:  CMP             R0, #1
1939D8:  STR.W           R4, [R7,#var_44]
1939DC:  BLT             loc_193AC6
1939DE:  MOVS            R1, #0
1939E0:  STR.W           R0, [R7,#var_38]
1939E4:  UXTH            R2, R1
1939E6:  MOV             LR, R11
1939E8:  LSLS            R2, R2, #1
1939EA:  UXTAH.W         R2, R2, R1
1939EE:  UBFX.W          R3, R2, #0xE, #0x10
1939F2:  LSLS            R2, R2, #2
1939F4:  ADD.W           R5, R6, R3,LSL#3
1939F8:  ASRS            R6, R1, #0x10
1939FA:  LDRSH.W         R0, [R5,#4]
1939FE:  STR.W           R0, [R7,#var_34]
193A02:  LDRSH.W         R0, [R5,#6]
193A06:  LDRSH.W         R4, [R5,#2]
193A0A:  ADD.W           R5, R10, R6,LSL#1
193A0E:  STR.W           R0, [R7,#var_2C]
193A12:  MOV             R0, R8
193A14:  MOV             R8, R10
193A16:  LDRSH.W         R10, [R5,#2]
193A1A:  LDRSH.W         R12, [R5,#4]
193A1E:  LDRSH.W         R11, [R5,#6]
193A22:  SMULBB.W        R4, R4, R10
193A26:  MOV             R10, R8
193A28:  MOV             R8, R0
193A2A:  LDR.W           R0, [R7,#var_28]
193A2E:  LDRSH.W         R6, [R10,R6,LSL#1]
193A32:  LDRSH.W         R9, [R5,#8]
193A36:  LDRSH.W         R3, [R0,R3,LSL#3]
193A3A:  LDR.W           R0, [R7,#var_34]
193A3E:  STR.W           R9, [R7,#var_30]
193A42:  LDR.W           R9, [R7,#var_3C]
193A46:  SMLABB.W        R3, R3, R6, R4
193A4A:  LDR.W           R6, [R7,#var_30]
193A4E:  SMLABB.W        R0, R0, R12, R3
193A52:  MOVS            R3, #0xB
193A54:  SUB.W           R2, R3, R2,LSR#16
193A58:  LDR.W           R3, [R7,#var_28]
193A5C:  ADD             R1, R9
193A5E:  LDRSH.W         R12, [R3,R2,LSL#3]
193A62:  LDR.W           R3, [R7,#var_28]
193A66:  ADD.W           R2, R3, R2,LSL#3
193A6A:  LDR.W           R3, [R7,#var_2C]
193A6E:  LDRSH.W         R4, [R2,#4]
193A72:  SMLABB.W        R0, R3, R11, R0
193A76:  MOV             R11, LR
193A78:  LDRSH.W         LR, [R2,#2]
193A7C:  LDRSH.W         R2, [R2,#6]
193A80:  LDRSH.W         R3, [R5,#0xC]
193A84:  SMLABB.W        R0, R2, R6, R0
193A88:  LDRSH.W         R2, [R5,#0xE]
193A8C:  LDRSH.W         R5, [R5,#0xA]
193A90:  LDR.W           R6, [R7,#var_28]
193A94:  SMLABB.W        R0, R4, R5, R0
193A98:  SMLABB.W        R0, LR, R3, R0
193A9C:  MOVW            R3, #0x7FFF
193AA0:  SMLABB.W        R0, R12, R2, R0
193AA4:  MOVS            R2, #1
193AA6:  ADD.W           R0, R2, R0,ASR#14
193AAA:  ASRS            R2, R0, #1
193AAC:  CMP             R2, R11
193AAE:  MOV             R2, R11
193AB0:  IT GT
193AB2:  ASRGT           R2, R0, #1
193AB4:  LDR.W           R0, [R7,#var_38]
193AB8:  CMP             R2, R3
193ABA:  IT GE
193ABC:  MOVGE           R2, R3
193ABE:  CMP             R1, R0
193AC0:  STRH.W          R2, [R8],#2
193AC4:  BLT             loc_1939E4
193AC6:  LDRD.W          R5, R3, [R7,#var_44]
193ACA:  SUBS            R3, R3, R5
193ACC:  CMP             R3, #1
193ACE:  BGE.W           loc_193992
193AD2:  LDR.W           R6, [R7,#var_54]
193AD6:  ADD.W           R1, R10, R5,LSL#2
193ADA:  LDR.W           R0, [R10,R5,LSL#2]
193ADE:  LDR             R2, [R1,#4]
193AE0:  LDR             R3, [R1,#8]
193AE2:  LDR             R1, [R1,#0xC]
193AE4:  STR             R0, [R6]
193AE6:  LDR             R0, =(__stack_chk_guard_ptr - 0x193AEE)
193AE8:  STR             R1, [R6,#0xC]
193AEA:  ADD             R0, PC; __stack_chk_guard_ptr
193AEC:  STR             R3, [R6,#8]
193AEE:  STR             R2, [R6,#4]
193AF0:  LDR             R0, [R0]; __stack_chk_guard
193AF2:  LDR.W           R1, [R7,#var_24]
193AF6:  LDR             R0, [R0]
193AF8:  SUBS            R0, R0, R1
193AFA:  ITTTT EQ
193AFC:  SUBEQ.W         R4, R7, #-var_1C
193B00:  MOVEQ           SP, R4
193B02:  POPEQ.W         {R8-R11}
193B06:  POPEQ           {R4-R7,PC}
193B08:  BLX             __stack_chk_fail
