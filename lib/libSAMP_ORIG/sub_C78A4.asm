; =========================================================
; Game Engine Function: sub_C78A4
; Address            : 0xC78A4 - 0xC7B0E
; =========================================================

C78A4:  PUSH            {R4-R7,LR}
C78A6:  ADD             R7, SP, #0xC
C78A8:  PUSH.W          {R8-R11}
C78AC:  SUB             SP, SP, #0x34
C78AE:  MOV             R8, R0
C78B0:  LDR             R0, =(__stack_chk_guard_ptr - 0xC78BC)
C78B2:  STR.W           R3, [R7,#var_28]
C78B6:  LSLS            R4, R2, #1
C78B8:  ADD             R0, PC; __stack_chk_guard_ptr
C78BA:  STR.W           R1, [R7,#var_34]
C78BE:  LDR             R6, [R7,#arg_4]
C78C0:  CMP             R2, #2
C78C2:  LDR             R0, [R0]; __stack_chk_guard
C78C4:  LDR             R0, [R0]
C78C6:  STR.W           R0, [R7,#var_24]
C78CA:  LDR.W           R0, [R8,#0x94]
C78CE:  STR.W           R2, [R7,#var_2C]
C78D2:  IT EQ
C78D4:  MOVEQ           R4, #3
C78D6:  CBNZ            R0, loc_C7908
C78D8:  LDR.W           R0, [R8,#0xA4]
C78DC:  ADDS            R0, #1
C78DE:  BEQ             loc_C7908
C78E0:  LDR.W           R0, [R8,#0x90]
C78E4:  LDR.W           R5, [R8,#0xA0]
C78E8:  LDRD.W          R1, R2, [R7,#var_2C]
C78EC:  ADD.W           R0, R0, R0,LSL#1
C78F0:  MULS            R1, R2
C78F2:  LSLS            R0, R0, #3
C78F4:  BLX             sub_108848
C78F8:  MOV             R1, R0
C78FA:  ADD.W           R0, R5, R5,LSL#1
C78FE:  BLX             sub_108848
C7902:  CMP             R0, R6
C7904:  IT LT
C7906:  MOVLT           R6, R0
C7908:  SUBS            R0, R6, R4
C790A:  LDR.W           R4, [R7,#var_2C]
C790E:  MOV             R1, R4
C7910:  BLX             sub_108848
C7914:  MOVW            R1, #0x4FB
C7918:  ADD.W           R11, R0, #1
C791C:  CMP             R0, R1
C791E:  IT GT
C7920:  MOVWGT          R11, #0x4FC
C7924:  MUL.W           R0, R11, R4
C7928:  ADDS            R0, #7
C792A:  BIC.W           R0, R0, #7
C792E:  SUB.W           R5, SP, R0
C7932:  MOV             SP, R5
C7934:  SUB.W           R0, SP, #0x130
C7938:  MOV             SP, R0
C793A:  STR.W           R0, [R7,#var_30]
C793E:  BLX             j_opus_repacketizer_init
C7942:  LDR.W           R0, [R8,#0x78]
C7946:  LDR.W           R1, [R8,#0x44]
C794A:  STR.W           R0, [R7,#var_44]
C794E:  LDR.W           R0, [R8,#0x80]
C7952:  CMP             R1, #0
C7954:  STR.W           R0, [R7,#var_4C]
C7958:  LDR.W           R0, [R8,#0x88]
C795C:  STR.W           R0, [R7,#var_48]
C7960:  LDR.W           R0, [R8,#0xDC]
C7964:  STR.W           R0, [R8,#0x88]
C7968:  LDR.W           R0, [R8,#0xEC]
C796C:  STR.W           R0, [R8,#0x80]
C7970:  LDR.W           R0, [R8,#0xBC]
C7974:  STR.W           R0, [R8,#0x78]
C7978:  STR.W           R1, [R7,#var_40]
C797C:  STR.W           R6, [R7,#var_3C]
C7980:  ITEE EQ
C7982:  STREQ.W         R0, [R8,#0xE4]
C7986:  MOVNE           R0, #1
C7988:  STRNE.W         R0, [R8,#0x78]
C798C:  LDR.W           R0, [R7,#var_2C]
C7990:  CMP             R0, #1
C7992:  BLT.W           loc_C7A96
C7996:  LDR             R0, [R7,#arg_8]
C7998:  LDR.W           R1, [R7,#var_2C]
C799C:  CMP             R0, #0
C799E:  SUB.W           R1, R1, #1
C79A2:  STR.W           R1, [R7,#var_38]
C79A6:  BEQ             loc_C7A28
C79A8:  MOVS            R4, #0
C79AA:  MOVW            R6, #0x3EA
C79AE:  MOV.W           R9, #0
C79B2:  MOV.W           R10, #0
C79B6:  LDR.W           R1, [R7,#var_38]
C79BA:  MOVS            R0, #0
C79BC:  CMP             R10, R1
C79BE:  IT LT
C79C0:  MOVLT           R0, #1
C79C2:  CMP             R1, R10
C79C4:  STR.W           R0, [R8,#0x890]
C79C8:  STR.W           R4, [R8,#0x44]
C79CC:  IT EQ
C79CE:  STREQ.W         R6, [R8,#0x88]
C79D2:  LDR.W           R0, [R8,#0x70]
C79D6:  MUL.W           R0, R9, R0
C79DA:  SUB             SP, SP, #0x28 ; '('
C79DC:  LDR             R1, [R7,#arg_10]
C79DE:  MOV             R3, R5
C79E0:  STR             R1, [SP,#0x78+var_58]
C79E2:  LDR             R1, [R7,#arg_C]
C79E4:  STR.W           R11, [SP,#0x78+var_78]
C79E8:  STR             R1, [SP,#0x78+var_74]
C79EA:  LDR.W           R1, [R7,#var_34]
C79EE:  LDR.W           R2, [R7,#var_28]
C79F2:  ADD.W           R1, R1, R0,LSL#1
C79F6:  MOV             R0, R8
C79F8:  BLX             j_opus_encode_native
C79FC:  ADD             SP, SP, #0x28 ; '('
C79FE:  MOV             R2, R0
C7A00:  CMP             R2, #0
C7A02:  BLT             loc_C7AEA
C7A04:  LDR.W           R0, [R7,#var_30]
C7A08:  MOV             R1, R5
C7A0A:  BLX             j_opus_repacketizer_cat
C7A0E:  CMP             R0, #0
C7A10:  BLT             loc_C7AEA
C7A12:  LDR.W           R0, [R7,#var_28]
C7A16:  ADD.W           R10, R10, #1
C7A1A:  ADD             R5, R11
C7A1C:  ADD             R9, R0
C7A1E:  LDR.W           R0, [R7,#var_2C]
C7A22:  CMP             R10, R0
C7A24:  BLT             loc_C79B6
C7A26:  B               loc_C7A96
C7A28:  MOV.W           R9, #0
C7A2C:  MOVS            R6, #0
C7A2E:  MOVS            R4, #0
C7A30:  LDR.W           R1, [R7,#var_38]
C7A34:  LDR.W           R0, [R8,#0x70]
C7A38:  CMP             R4, R1
C7A3A:  MOV.W           R1, #0
C7A3E:  IT LT
C7A40:  MOVLT           R1, #1
C7A42:  STR.W           R1, [R8,#0x890]
C7A46:  MULS            R0, R6
C7A48:  STR.W           R9, [R8,#0x44]
C7A4C:  SUB             SP, SP, #0x28 ; '('
C7A4E:  LDR             R1, [R7,#arg_10]
C7A50:  MOV             R3, R5
C7A52:  STR             R1, [SP,#0x78+var_58]
C7A54:  LDR             R1, [R7,#arg_C]
C7A56:  STR.W           R11, [SP,#0x78+var_78]
C7A5A:  STR             R1, [SP,#0x78+var_74]
C7A5C:  LDR.W           R1, [R7,#var_34]
C7A60:  LDR.W           R2, [R7,#var_28]
C7A64:  ADD.W           R1, R1, R0,LSL#1
C7A68:  MOV             R0, R8
C7A6A:  BLX             j_opus_encode_native
C7A6E:  ADD             SP, SP, #0x28 ; '('
C7A70:  MOV             R2, R0
C7A72:  CMP             R2, #0
C7A74:  BLT             loc_C7AEA
C7A76:  LDR.W           R0, [R7,#var_30]
C7A7A:  MOV             R1, R5
C7A7C:  BLX             j_opus_repacketizer_cat
C7A80:  CMP             R0, #0
C7A82:  BLT             loc_C7AEA
C7A84:  LDR.W           R0, [R7,#var_28]
C7A88:  ADDS            R4, #1
C7A8A:  ADD             R5, R11
C7A8C:  ADD             R6, R0
C7A8E:  LDR.W           R0, [R7,#var_2C]
C7A92:  CMP             R4, R0
C7A94:  BLT             loc_C7A30
C7A96:  LDR.W           R0, [R8,#0x94]
C7A9A:  MOVS            R1, #0
C7A9C:  LDR             R3, [R7,#arg_0]
C7A9E:  CMP             R0, #0
C7AA0:  MOV.W           R0, #0
C7AA4:  IT EQ
C7AA6:  MOVEQ           R0, #1
C7AA8:  SUB             SP, SP, #0x10
C7AAA:  LDR.W           R2, [R7,#var_3C]
C7AAE:  STRD.W          R2, R1, [SP,#0x60+var_60]
C7AB2:  MOVS            R1, #0
C7AB4:  STR             R0, [SP,#0x60+var_58]
C7AB6:  LDR.W           R0, [R7,#var_30]
C7ABA:  LDR.W           R2, [R7,#var_2C]
C7ABE:  BLX             j_opus_repacketizer_out_range_impl
C7AC2:  ADD             SP, SP, #0x10
C7AC4:  CMP             R0, #0
C7AC6:  BLT             loc_C7AEA
C7AC8:  LDR.W           R1, [R7,#var_4C]
C7ACC:  STR.W           R1, [R8,#0x80]
C7AD0:  LDR.W           R1, [R7,#var_48]
C7AD4:  STR.W           R1, [R8,#0x88]
C7AD8:  LDR.W           R1, [R7,#var_44]
C7ADC:  STR.W           R1, [R8,#0x78]
C7AE0:  LDR.W           R1, [R7,#var_40]
C7AE4:  STR.W           R1, [R8,#0x44]
C7AE8:  B               loc_C7AEE
C7AEA:  MOV             R0, #0xFFFFFFFD
C7AEE:  LDR             R1, =(__stack_chk_guard_ptr - 0xC7AF8)
C7AF0:  LDR.W           R2, [R7,#var_24]
C7AF4:  ADD             R1, PC; __stack_chk_guard_ptr
C7AF6:  LDR             R1, [R1]; __stack_chk_guard
C7AF8:  LDR             R1, [R1]
C7AFA:  SUBS            R1, R1, R2
C7AFC:  ITTTT EQ
C7AFE:  SUBEQ.W         R4, R7, #-var_1C
C7B02:  MOVEQ           SP, R4
C7B04:  POPEQ.W         {R8-R11}
C7B08:  POPEQ           {R4-R7,PC}
C7B0A:  BLX             __stack_chk_fail
