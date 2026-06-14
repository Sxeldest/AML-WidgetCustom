; =========================================================
; Game Engine Function: silk_residual_energy_FIX
; Address            : 0x1B1E54 - 0x1B1FAC
; =========================================================

1B1E54:  PUSH            {R4-R7,LR}
1B1E56:  ADD             R7, SP, #0xC
1B1E58:  PUSH.W          {R8-R11}
1B1E5C:  SUB             SP, SP, #0x24
1B1E5E:  MOV             R8, R0
1B1E60:  LDR             R0, =(__stack_chk_guard_ptr - 0x1B1E6C)
1B1E62:  STR.W           R1, [R7,#var_40]
1B1E66:  MOV             R6, R3
1B1E68:  ADD             R0, PC; __stack_chk_guard_ptr
1B1E6A:  MOV             R4, R2
1B1E6C:  LDR             R1, [R7,#arg_C]
1B1E6E:  LDR             R0, [R0]; __stack_chk_guard
1B1E70:  LDRD.W          R3, R2, [R7,#arg_4]
1B1E74:  LDR             R0, [R0]
1B1E76:  STR.W           R0, [R7,#var_24]
1B1E7A:  ADDS            R0, R1, R3
1B1E7C:  MOVS            R1, #7
1B1E7E:  ADD.W           R1, R1, R0,LSL#2
1B1E82:  BIC.W           R1, R1, #7
1B1E86:  SUB.W           R1, SP, R1
1B1E8A:  STR.W           R1, [R7,#var_2C]
1B1E8E:  MOV             SP, R1
1B1E90:  MOV.W           R10, R2,ASR#1
1B1E94:  CMP.W           R10, #1
1B1E98:  BLT             loc_1B1F32
1B1E9A:  LSLS            R1, R0, #1
1B1E9C:  LDR.W           R2, [R7,#var_2C]
1B1EA0:  STR.W           R1, [R7,#var_30]
1B1EA4:  MOV             R11, R8
1B1EA6:  LDR             R1, [R7,#arg_C]
1B1EA8:  ADD.W           R1, R2, R1,LSL#1
1B1EAC:  STR.W           R1, [R7,#var_34]
1B1EB0:  ADD.W           R1, R1, R0,LSL#1
1B1EB4:  LSLS            R0, R0, #2
1B1EB6:  STR.W           R0, [R7,#var_3C]
1B1EBA:  LDR.W           R0, [R7,#var_40]
1B1EBE:  STR.W           R1, [R7,#var_38]
1B1EC2:  ADD.W           R9, R0, #4
1B1EC6:  SUB             SP, SP, #8
1B1EC8:  LDR             R0, [R7,#arg_C]
1B1ECA:  MOV             R1, R4
1B1ECC:  STR             R0, [SP,#0x48+var_48]
1B1ECE:  MOV             R2, R6
1B1ED0:  LDR             R0, [R7,#arg_10]
1B1ED2:  STR             R0, [SP,#0x48+var_44]
1B1ED4:  LDR.W           R0, [R7,#var_2C]
1B1ED8:  LDR.W           R3, [R7,#var_30]
1B1EDC:  BLX             j_silk_LPC_analysis_filter
1B1EE0:  ADD             SP, SP, #8
1B1EE2:  LDR             R5, [R7,#arg_4]
1B1EE4:  SUB.W           R1, R7, #-var_28
1B1EE8:  LDR.W           R2, [R7,#var_34]
1B1EEC:  MOV             R0, R11
1B1EEE:  MOV             R3, R5
1B1EF0:  BLX             j_silk_sum_sqr_shift
1B1EF4:  LDR.W           R0, [R7,#var_28]
1B1EF8:  SUB.W           R1, R7, #-var_28
1B1EFC:  MOV             R3, R5
1B1EFE:  NEGS            R0, R0
1B1F00:  STR.W           R0, [R9,#-4]
1B1F04:  LDR.W           R2, [R7,#var_38]
1B1F08:  ADD.W           R0, R11, #4
1B1F0C:  BLX             j_silk_sum_sqr_shift
1B1F10:  LDR.W           R0, [R7,#var_28]
1B1F14:  ADD.W           R11, R11, #8
1B1F18:  ADDS            R6, #0x20 ; ' '
1B1F1A:  SUBS.W          R10, R10, #1
1B1F1E:  RSB.W           R0, R0, #0
1B1F22:  STR.W           R0, [R9]
1B1F26:  LDR.W           R0, [R7,#var_3C]
1B1F2A:  ADD.W           R9, R9, #8
1B1F2E:  ADD             R4, R0
1B1F30:  BNE             loc_1B1EC6
1B1F32:  LDR.W           LR, [R7,#arg_8]
1B1F36:  LDR.W           R5, [R7,#var_40]
1B1F3A:  CMP.W           LR, #1
1B1F3E:  BLT             loc_1B1F8C
1B1F40:  LDR             R0, [R7,#arg_0]
1B1F42:  LDR.W           R1, [R0],#4
1B1F46:  SUBS.W          LR, LR, #1
1B1F4A:  LDR.W           R2, [R8]
1B1F4E:  CLZ.W           R3, R1
1B1F52:  SUB.W           R3, R3, #1
1B1F56:  CLZ.W           R6, R2
1B1F5A:  SUB.W           R4, R6, #1
1B1F5E:  LSL.W           R1, R1, R3
1B1F62:  SMMUL.W         R1, R1, R1
1B1F66:  LSL.W           R2, R2, R4
1B1F6A:  UMULL.W         R4, R12, R1, R2
1B1F6E:  MOV.W           R2, R2,ASR#31
1B1F72:  MLA.W           R1, R1, R2, R12
1B1F76:  STR.W           R1, [R8],#4
1B1F7A:  LDR             R1, [R5]
1B1F7C:  ADD             R1, R6
1B1F7E:  ADD.W           R1, R1, R3,LSL#1
1B1F82:  SUB.W           R1, R1, #0x41 ; 'A'
1B1F86:  STR.W           R1, [R5],#4
1B1F8A:  BNE             loc_1B1F42
1B1F8C:  LDR             R0, =(__stack_chk_guard_ptr - 0x1B1F96)
1B1F8E:  LDR.W           R1, [R7,#var_24]
1B1F92:  ADD             R0, PC; __stack_chk_guard_ptr
1B1F94:  LDR             R0, [R0]; __stack_chk_guard
1B1F96:  LDR             R0, [R0]
1B1F98:  SUBS            R0, R0, R1
1B1F9A:  ITTTT EQ
1B1F9C:  SUBEQ.W         R4, R7, #-var_1C
1B1FA0:  MOVEQ           SP, R4
1B1FA2:  POPEQ.W         {R8-R11}
1B1FA6:  POPEQ           {R4-R7,PC}
1B1FA8:  BLX             __stack_chk_fail
