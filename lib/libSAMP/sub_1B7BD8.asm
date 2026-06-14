; =========================================================
; Game Engine Function: sub_1B7BD8
; Address            : 0x1B7BD8 - 0x1B7FA6
; =========================================================

1B7BD8:  PUSH            {R4-R7,LR}
1B7BDA:  ADD             R7, SP, #0xC
1B7BDC:  PUSH.W          {R8-R11}
1B7BE0:  SUB             SP, SP, #0x44
1B7BE2:  MOV             R9, R0
1B7BE4:  LDR.W           R0, =(__stack_chk_guard_ptr - 0x1B7BF0)
1B7BE8:  MOV             R11, R1
1B7BEA:  MOV             R6, R3
1B7BEC:  ADD             R0, PC; __stack_chk_guard_ptr
1B7BEE:  LDR             R0, [R0]; __stack_chk_guard
1B7BF0:  LDR             R0, [R0]
1B7BF2:  LDRD.W          R5, R1, [R7,#arg_4]
1B7BF6:  STR.W           R0, [R7,#var_24]
1B7BFA:  MOVS            R0, #7
1B7BFC:  ADD.W           R0, R0, R11,LSL#1
1B7C00:  BIC.W           R0, R0, #7
1B7C04:  SUB.W           R8, SP, R0
1B7C08:  MOV             SP, R8
1B7C0A:  MOVS            R3, #0
1B7C0C:  MOV.W           R12, #4
1B7C10:  CMP             R5, #0
1B7C12:  STR             R3, [R1]
1B7C14:  IT NE
1B7C16:  MOVNE.W         R12, #5
1B7C1A:  MOV             R0, R2
1B7C1C:  CMP             R2, #1
1B7C1E:  STR.W           R0, [R7,#var_34]
1B7C22:  BLT.W           loc_1B7F24
1B7C26:  ADD.W           R0, R11, R11,LSR#31
1B7C2A:  MOV             R1, #0xFFFFFF9A
1B7C2E:  STR.W           R6, [R7,#var_60]
1B7C32:  MOV.W           LR, #0
1B7C36:  MOV.W           R10, R0,ASR#1
1B7C3A:  ADD.W           R0, R10, R10,LSL#1
1B7C3E:  ADD.W           R0, R1, R0,LSL#1
1B7C42:  STR.W           R0, [R7,#var_3C]
1B7C46:  MOVS            R0, #1
1B7C48:  MOVW            R1, #0x8001
1B7C4C:  LSL.W           R0, R0, R12
1B7C50:  MOVT            R1, #0xFFFF
1B7C54:  LSRS            R4, R0, #1
1B7C56:  SUB.W           R0, R8, #2
1B7C5A:  STR.W           R0, [R7,#var_5C]
1B7C5E:  ADD.W           R0, R8, #2
1B7C62:  STR.W           R0, [R7,#var_50]
1B7C66:  SUB.W           R0, R11, #1
1B7C6A:  STR.W           R0, [R7,#var_54]
1B7C6E:  MOV.W           R0, R11,LSL#2
1B7C72:  STR.W           R0, [R7,#var_44]
1B7C76:  SUB.W           R0, R10, #5
1B7C7A:  STR.W           R0, [R7,#var_58]
1B7C7E:  MOV.W           R0, R10,LSL#20
1B7C82:  STR.W           R0, [R7,#var_48]
1B7C86:  SBFX.W          R0, R10, #1, #0x10
1B7C8A:  STR.W           R0, [R7,#var_4C]
1B7C8E:  MOVS            R0, #0
1B7C90:  STR.W           R0, [R7,#var_28]
1B7C94:  STR.W           R12, [R7,#var_38]
1B7C98:  STR.W           R10, [R7,#var_30]
1B7C9C:  STR.W           R4, [R7,#var_40]
1B7CA0:  CMP.W           R11, #0
1B7CA4:  MOV.W           R0, #0
1B7CA8:  STR.W           LR, [R7,#var_2C]
1B7CAC:  BLE             loc_1B7D0A
1B7CAE:  MOV             LR, R1
1B7CB0:  MOVW            R10, #0x7FFF
1B7CB4:  MOVS            R2, #0
1B7CB6:  MOVS            R1, #0
1B7CB8:  LDR.W           R3, [R9,R0,LSL#2]
1B7CBC:  ADD.W           R2, R2, R3,ASR#12
1B7CC0:  ASRS            R3, R3, #0xC
1B7CC2:  ADDS            R5, R2, #2
1B7CC4:  ADD             R1, R2
1B7CC6:  ASRS            R6, R5, #2
1B7CC8:  CMP             R6, LR
1B7CCA:  MOV             R6, LR
1B7CCC:  IT GT
1B7CCE:  ASRGT           R6, R5, #2
1B7CD0:  CMP             R6, R10
1B7CD2:  IT GE
1B7CD4:  MOVGE           R6, R10
1B7CD6:  STRH.W          R6, [R8,R0,LSL#1]
1B7CDA:  SUB.W           R6, R3, R2,ASR#1
1B7CDE:  SUB.W           R2, R1, R3,LSL#1
1B7CE2:  ADDS            R0, #1
1B7CE4:  MOV             R1, R6
1B7CE6:  CMP             R11, R0
1B7CE8:  BNE             loc_1B7CB8
1B7CEA:  MOVS            R0, #0
1B7CEC:  CMP.W           R11, #1
1B7CF0:  STRD.W          R0, R0, [R8]
1B7CF4:  STRD.W          R0, R0, [R8,#8]
1B7CF8:  STRD.W          R0, R0, [R8,#0x10]
1B7CFC:  BLT             loc_1B7D1A
1B7CFE:  BNE             loc_1B7D22
1B7D00:  MOVS            R1, #0
1B7D02:  MOVS            R0, #0
1B7D04:  LDR.W           R10, [R7,#var_30]
1B7D08:  B               loc_1B7D46
1B7D0A:  STRD.W          R0, R0, [R8]
1B7D0E:  MOVS            R1, #0
1B7D10:  STRD.W          R0, R0, [R8,#8]
1B7D14:  STRD.W          R0, R0, [R8,#0x10]
1B7D18:  B               loc_1B7D48
1B7D1A:  MOVS            R1, #0
1B7D1C:  LDR.W           R10, [R7,#var_30]
1B7D20:  B               loc_1B7D48
1B7D22:  LDRD.W          R3, R2, [R7,#var_54]
1B7D26:  MOVS            R0, #0
1B7D28:  LDR.W           R10, [R7,#var_30]
1B7D2C:  MOVS            R1, #0
1B7D2E:  LDRSH.W         R6, [R2],#2
1B7D32:  SXTH            R5, R0
1B7D34:  CMP             R5, R6
1B7D36:  SXTH            R5, R1
1B7D38:  IT GE
1B7D3A:  MOVGE           R0, R6
1B7D3C:  CMP             R5, R6
1B7D3E:  IT LE
1B7D40:  MOVLE           R1, R6
1B7D42:  SUBS            R3, #1
1B7D44:  BNE             loc_1B7D2E
1B7D46:  SXTH            R1, R1
1B7D48:  SXTH            R0, R0
1B7D4A:  NEGS            R0, R0
1B7D4C:  CMP             R1, R0
1B7D4E:  IT GT
1B7D50:  MOVGT           R0, R1
1B7D52:  CMP             R0, #1
1B7D54:  BLT             loc_1B7D64
1B7D56:  CMP.W           R11, #1
1B7D5A:  BLT             loc_1B7D68
1B7D5C:  BNE             loc_1B7D6E
1B7D5E:  MOVS            R1, #0
1B7D60:  MOVS            R0, #0
1B7D62:  B               loc_1B7D8E
1B7D64:  MOVS            R0, #1
1B7D66:  B               loc_1B7D9A
1B7D68:  MOVS            R0, #0
1B7D6A:  MOVS            R1, #0
1B7D6C:  B               loc_1B7D90
1B7D6E:  LDRD.W          R3, R2, [R7,#var_54]
1B7D72:  MOVS            R0, #0
1B7D74:  MOVS            R1, #0
1B7D76:  LDRSH.W         R6, [R2],#2
1B7D7A:  SXTH            R5, R0
1B7D7C:  CMP             R5, R6
1B7D7E:  SXTH            R5, R1
1B7D80:  IT GE
1B7D82:  MOVGE           R0, R6
1B7D84:  CMP             R5, R6
1B7D86:  IT LE
1B7D88:  MOVLE           R1, R6
1B7D8A:  SUBS            R3, #1
1B7D8C:  BNE             loc_1B7D76
1B7D8E:  SXTH            R1, R1
1B7D90:  SXTH            R0, R0
1B7D92:  NEGS            R0, R0
1B7D94:  CMP             R1, R0
1B7D96:  IT GT
1B7D98:  MOVGT           R0, R1
1B7D9A:  CLZ.W           R0, R0
1B7D9E:  SUBS            R0, #0x11
1B7DA0:  BEQ             loc_1B7DC4
1B7DA2:  CMP.W           R11, #1
1B7DA6:  BLT             loc_1B7DC4
1B7DA8:  MOV.W           R1, #0
1B7DAC:  STRH.W          R1, [R8]
1B7DB0:  LDRD.W          R2, R1, [R7,#var_54]
1B7DB4:  BEQ             loc_1B7DC4
1B7DB6:  LDRH            R3, [R1]
1B7DB8:  SUBS            R2, #1
1B7DBA:  LSL.W           R3, R3, R0
1B7DBE:  STRH.W          R3, [R1],#2
1B7DC2:  BNE             loc_1B7DB6
1B7DC4:  CMP.W           R11, #2
1B7DC8:  BLT             loc_1B7E36
1B7DCA:  MOVS            R1, #0
1B7DCC:  MOVS            R2, #0
1B7DCE:  MOVS            R0, #0
1B7DD0:  ADD.W           R6, R8, R1,LSL#2
1B7DD4:  LDRSH.W         R3, [R8,R1,LSL#2]
1B7DD8:  LDRSH.W         R6, [R6,#2]
1B7DDC:  SMULBB.W        R3, R3, R3
1B7DE0:  SMLABB.W        R3, R6, R6, R3
1B7DE4:  SUBS            R6, R4, R2
1B7DE6:  ADD.W           R3, R3, #0x8000
1B7DEA:  ADD.W           R6, R6, R3,LSR#16
1B7DEE:  ADD.W           R0, R0, R3,LSR#16
1B7DF2:  ASR.W           R6, R6, R12
1B7DF6:  ADD             R2, R6
1B7DF8:  STRH.W          R2, [R8,R1,LSL#1]
1B7DFC:  ADDS            R1, #1
1B7DFE:  SXTH            R2, R2
1B7E00:  CMP             R10, R1
1B7E02:  BNE             loc_1B7DD0
1B7E04:  CMP.W           R11, #2
1B7E08:  BLT             loc_1B7E38
1B7E0A:  LDR.W           R5, [R7,#var_5C]
1B7E0E:  MOV             R1, R10
1B7E10:  MOVS            R2, #0
1B7E12:  MOV.W           R10, #0
1B7E16:  LDRSH.W         R3, [R5,R1,LSL#1]
1B7E1A:  RSB.W           R6, R2, #4
1B7E1E:  ADD             R3, R6
1B7E20:  ADD.W           R2, R2, R3,LSR#3
1B7E24:  STRH.W          R2, [R5,R1,LSL#1]
1B7E28:  SXTH            R2, R2
1B7E2A:  CMP             R2, R10
1B7E2C:  IT GE
1B7E2E:  MOVGE           R10, R2
1B7E30:  SUBS            R1, #1
1B7E32:  BGT             loc_1B7E16
1B7E34:  B               loc_1B7E3C
1B7E36:  MOVS            R0, #0
1B7E38:  MOV.W           R10, #0
1B7E3C:  BLX             j_celt_sqrt
1B7E40:  MOV             R5, R0
1B7E42:  LDR.W           R0, [R7,#var_4C]
1B7E46:  MUL.W           R0, R10, R0
1B7E4A:  BLX             j_celt_sqrt
1B7E4E:  SMULBB.W        R0, R0, R5
1B7E52:  MOVS            R1, #1
1B7E54:  ADD.W           R1, R1, R0,ASR#1
1B7E58:  LDR.W           R0, [R7,#var_48]
1B7E5C:  BLX             sub_220A40
1B7E60:  CMP.W           R11, #0x24 ; '$'
1B7E64:  BLT             loc_1B7EB2
1B7E66:  LDR.W           LR, =(unk_C3EEF - 0x1B7E7A)
1B7E6A:  UXTH            R1, R0
1B7E6C:  LDR.W           R10, [R7,#var_30]
1B7E70:  ASRS            R0, R0, #0x10
1B7E72:  LDR.W           R4, [R7,#var_58]
1B7E76:  ADD             LR, PC; unk_C3EEF
1B7E78:  LSLS            R2, R0, #1
1B7E7A:  MOVS            R0, #0
1B7E7C:  MOVS            R3, #0xC
1B7E7E:  MOV.W           R12, #0x10000
1B7E82:  LDRH.W          R6, [R8,R3,LSL#1]
1B7E86:  ADDS            R3, #4
1B7E88:  ADD.W           R6, R12, R6,LSL#16
1B7E8C:  ASRS            R6, R6, #0x10
1B7E8E:  MUL.W           R5, R6, R1
1B7E92:  MULS            R6, R2
1B7E94:  ADD.W           R6, R6, R5,ASR#15
1B7E98:  CMP             R6, #0x7F
1B7E9A:  MOV             R5, R6
1B7E9C:  IT GE
1B7E9E:  MOVGE           R5, #0x7F
1B7EA0:  CMP             R6, #0
1B7EA2:  MOV             R6, LR
1B7EA4:  IT GT
1B7EA6:  ADDGT           R6, R6, R5
1B7EA8:  CMP             R3, R4
1B7EAA:  LDRB            R6, [R6]
1B7EAC:  ADD             R0, R6
1B7EAE:  BLT             loc_1B7E82
1B7EB0:  B               loc_1B7EB8
1B7EB2:  MOVS            R0, #0
1B7EB4:  LDR.W           R10, [R7,#var_30]
1B7EB8:  LDR.W           R1, [R7,#var_3C]
1B7EBC:  LSLS            R0, R0, #8
1B7EBE:  BLX             sub_220A40
1B7EC2:  LDR.W           LR, [R7,#var_2C]
1B7EC6:  LDR.W           R2, [R7,#var_28]
1B7ECA:  CMP             R0, LR
1B7ECC:  ITTT GT
1B7ECE:  LDRGT           R1, [R7,#arg_0]
1B7ED0:  STRGT           R2, [R1]
1B7ED2:  MOVGT           LR, R0
1B7ED4:  ADDS            R2, #1
1B7ED6:  LDR.W           R0, [R7,#var_44]
1B7EDA:  MOV             R1, R2
1B7EDC:  LDR.W           R12, [R7,#var_38]
1B7EE0:  ADD             R9, R0
1B7EE2:  LDR.W           R0, [R7,#var_34]
1B7EE6:  LDR.W           R4, [R7,#var_40]
1B7EEA:  STR.W           R1, [R7,#var_28]
1B7EEE:  MOVW            R1, #0x8001
1B7EF2:  CMP             R2, R0
1B7EF4:  MOVT            R1, #0xFFFF
1B7EF8:  BNE.W           loc_1B7CA0
1B7EFC:  LDR             R0, [R7,#arg_4]
1B7EFE:  MOVS            R4, #0
1B7F00:  CMP.W           LR, #0xC8
1B7F04:  IT GT
1B7F06:  MOVGT           R4, #1
1B7F08:  CBZ             R0, loc_1B7F28
1B7F0A:  SUB.W           R0, LR, #0xC9
1B7F0E:  LDR.W           R6, [R7,#var_60]
1B7F12:  CMP.W           R0, #0x18E
1B7F16:  MOV             R3, LR
1B7F18:  ITTTT LS
1B7F1A:  MOVLS           R0, #1
1B7F1C:  LDRLS           R1, [R7,#arg_8]
1B7F1E:  STRLS           R0, [R1]
1B7F20:  MOVLS           R4, #0
1B7F22:  B               loc_1B7F2E
1B7F24:  MOVS            R4, #0
1B7F26:  B               loc_1B7F2E
1B7F28:  MOV             R3, LR
1B7F2A:  LDR.W           R6, [R7,#var_60]
1B7F2E:  MOVS            R0, #0x1B
1B7F30:  MUL.W           R5, R3, R0
1B7F34:  MOV             R0, R5
1B7F36:  BLX             j_celt_sqrt
1B7F3A:  CMP             R0, #0x2A ; '*'
1B7F3C:  BGE             loc_1B7F42
1B7F3E:  MOVS            R0, #0
1B7F40:  B               loc_1B7F54
1B7F42:  MOV             R0, R5
1B7F44:  BLX             j_celt_sqrt
1B7F48:  MOVS            R1, #0xFFD60000
1B7F4E:  ADD.W           R0, R1, R0,LSL#16
1B7F52:  ASRS            R0, R0, #0x10
1B7F54:  CMP             R0, #0xA3
1B7F56:  MOV.W           R1, #0x1C4000
1B7F5A:  IT GE
1B7F5C:  MOVGE           R0, #0xA3
1B7F5E:  MOVW            R3, #0xA7F0
1B7F62:  MUL.W           R2, R0, R1
1B7F66:  MOVT            R3, #0xFDC6
1B7F6A:  MLA.W           R0, R0, R1, R3
1B7F6E:  MOV             R1, #0x2395810
1B7F76:  CMP             R2, R1
1B7F78:  IT LT
1B7F7A:  MOVLT           R0, #0
1B7F7C:  BLX             j_celt_sqrt
1B7F80:  STRH            R0, [R6]
1B7F82:  LDR             R0, =(__stack_chk_guard_ptr - 0x1B7F8C)
1B7F84:  LDR.W           R1, [R7,#var_24]
1B7F88:  ADD             R0, PC; __stack_chk_guard_ptr
1B7F8A:  LDR             R0, [R0]; __stack_chk_guard
1B7F8C:  LDR             R0, [R0]
1B7F8E:  SUBS            R0, R0, R1
1B7F90:  ITTTT EQ
1B7F92:  MOVEQ           R0, R4
1B7F94:  SUBEQ.W         R4, R7, #-var_1C
1B7F98:  MOVEQ           SP, R4
1B7F9A:  POPEQ.W         {R8-R11}
1B7F9E:  IT EQ
1B7FA0:  POPEQ           {R4-R7,PC}
1B7FA2:  BLX             __stack_chk_fail
