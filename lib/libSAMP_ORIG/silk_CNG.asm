; =========================================================
; Game Engine Function: silk_CNG
; Address            : 0xB2A04 - 0xB3030
; =========================================================

B2A04:  PUSH            {R4-R7,LR}
B2A06:  ADD             R7, SP, #0xC
B2A08:  PUSH.W          {R8-R11}
B2A0C:  SUB             SP, SP, #0x9C
B2A0E:  MOV             R8, R0
B2A10:  LDR.W           R0, =(__stack_chk_guard_ptr - 0xB2A1E)
B2A14:  STR.W           R2, [R7,#var_60]
B2A18:  MOV             R10, R1
B2A1A:  ADD             R0, PC; __stack_chk_guard_ptr
B2A1C:  MOV             R11, R3
B2A1E:  LDR             R0, [R0]; __stack_chk_guard
B2A20:  LDR             R0, [R0]
B2A22:  STR.W           R0, [R7,#var_24]
B2A26:  MOVW            R0, #0x103C
B2A2A:  LDR.W           R1, [R8,R0]
B2A2E:  LDR.W           R5, [R8,#0x90C]
B2A32:  CMP             R5, R1
B2A34:  BEQ             loc_B2A84
B2A36:  LDR.W           R6, [R8,#0x924]
B2A3A:  ADD.W           R4, R8, R0
B2A3E:  MOVW            R0, #0x7FFF
B2A42:  ADDS            R1, R6, #1
B2A44:  BLX             sub_108848
B2A48:  CMP             R6, #1
B2A4A:  BLT             loc_B2A68
B2A4C:  ADDW            R1, R8, #0xFD4
B2A50:  MOVS            R2, #0
B2A52:  MOV             R3, R0
B2A54:  STRH.W          R3, [R1,R2,LSL#1]
B2A58:  ADD             R3, R0
B2A5A:  ADDS            R2, #1
B2A5C:  LDR.W           R6, [R8,#0x924]
B2A60:  CMP             R2, R6
B2A62:  BLT             loc_B2A54
B2A64:  LDR.W           R5, [R8,#0x90C]
B2A68:  MOVW            R1, #0x7880
B2A6C:  MOVW            R0, #0x1038
B2A70:  MOVT            R1, #0x30 ; '0'
B2A74:  STR.W           R1, [R8,R0]
B2A78:  MOVW            R0, #0x1034
B2A7C:  MOVS            R1, #0
B2A7E:  STR.W           R1, [R8,R0]
B2A82:  STR             R5, [R4]
B2A84:  MOV.W           R0, #0x1040
B2A88:  LDR.W           R0, [R8,R0]
B2A8C:  STR.W           R11, [R7,#var_5C]
B2A90:  CMP             R0, #0
B2A92:  BNE             loc_B2B88
B2A94:  MOVW            R0, #0x1044
B2A98:  ADD.W           R11, R8, #0x1040
B2A9C:  LDR.W           R0, [R8,R0]
B2AA0:  CMP             R0, #0
B2AA2:  BNE             loc_B2B7C
B2AA4:  LDR.W           R0, [R8,#0x924]
B2AA8:  ADDW            R9, R8, #0xAD4
B2AAC:  CMP             R0, #1
B2AAE:  BLT             loc_B2AE4
B2AB0:  ADDW            R0, R8, #0xFD4
B2AB4:  ADDW            R1, R8, #0x928
B2AB8:  MOVS            R2, #0
B2ABA:  MOVW            R3, #0x3FDC
B2ABE:  LDRSH.W         R6, [R0,R2,LSL#1]
B2AC2:  LDRSH.W         R5, [R1,R2,LSL#1]
B2AC6:  SUBS            R5, R5, R6
B2AC8:  UXTH            R4, R5
B2ACA:  LSRS            R5, R5, #0x10
B2ACC:  MULS            R4, R3
B2ACE:  MLA.W           R6, R5, R3, R6
B2AD2:  ADD.W           R6, R6, R4,LSR#16
B2AD6:  STRH.W          R6, [R0,R2,LSL#1]
B2ADA:  ADDS            R2, #1
B2ADC:  LDR.W           R6, [R8,#0x924]
B2AE0:  CMP             R2, R6
B2AE2:  BLT             loc_B2ABE
B2AE4:  LDR.W           R0, [R8,#0x914]
B2AE8:  CMP             R0, #1
B2AEA:  BLT             loc_B2B0A
B2AEC:  ADD.W           R1, R10, #0x10
B2AF0:  MOVS            R2, #0
B2AF2:  MOVS            R5, #0
B2AF4:  MOVS            R3, #0
B2AF6:  LDR.W           R6, [R1,R2,LSL#2]
B2AFA:  CMP             R6, R3
B2AFC:  ITT GT
B2AFE:  MOVGT           R5, R2
B2B00:  MOVGT           R3, R6
B2B02:  ADDS            R2, #1
B2B04:  CMP             R2, R0
B2B06:  BLT             loc_B2AF6
B2B08:  B               loc_B2B0C
B2B0A:  MOVS            R5, #0
B2B0C:  LDR.W           R1, [R8,#0x91C]
B2B10:  MOV             R2, #0xFFFFFFFC
B2B14:  ADD.W           R0, R2, R0,LSL#2
B2B18:  MUL.W           R2, R0, R1; n
B2B1C:  ADD.W           R0, R8, R1,LSL#2
B2B20:  ADDW            R0, R0, #0xAD4; dest
B2B24:  MOV             R1, R9; src
B2B26:  BLX             j_memmove
B2B2A:  LDR.W           R0, [R8,#0x91C]
B2B2E:  MUL.W           R1, R0, R5
B2B32:  LSLS            R2, R0, #2; n
B2B34:  MOV             R0, R9; dest
B2B36:  ADD.W           R1, R8, R1,LSL#2
B2B3A:  ADDS            R1, #4; src
B2B3C:  BLX             j_memcpy
B2B40:  LDR.W           R12, [R8,#0x914]
B2B44:  CMP.W           R12, #1
B2B48:  BLT             loc_B2B7C
B2B4A:  MOVW            R1, #0x1034
B2B4E:  ADD.W           R3, R10, #0x10
B2B52:  LDR.W           R2, [R8,R1]
B2B56:  ADD             R1, R8
B2B58:  MOVS            R6, #0
B2B5A:  MOVW            R5, #0x121A
B2B5E:  LDR.W           R4, [R3,R6,LSL#2]
B2B62:  ADDS            R6, #1
B2B64:  CMP             R6, R12
B2B66:  SUB.W           R4, R4, R2
B2B6A:  UXTH            R0, R4
B2B6C:  SMLABT.W        R2, R5, R4, R2
B2B70:  MUL.W           R0, R5, R0
B2B74:  ADD.W           R2, R2, R0,LSR#16
B2B78:  STR             R2, [R1]
B2B7A:  BLT             loc_B2B5E
B2B7C:  LDR.W           R0, [R11]
B2B80:  LDR.W           R11, [R7,#var_5C]
B2B84:  CMP             R0, #0
B2B86:  BEQ             loc_B2C3C
B2B88:  MOVS            R0, #0x47 ; 'G'
B2B8A:  ADD.W           R0, R0, R11,LSL#2
B2B8E:  BIC.W           R0, R0, #7
B2B92:  SUB.W           R4, SP, R0
B2B96:  MOV             SP, R4
B2B98:  MOVW            R0, #0x1084
B2B9C:  MOVW            R1, #0x1098
B2BA0:  LDRSH.W         R0, [R8,R0]
B2BA4:  LDR.W           R1, [R8,R1]
B2BA8:  UXTH            R2, R0
B2BAA:  SXTH            R3, R1
B2BAC:  MULS            R2, R3
B2BAE:  MOVS            R3, #1
B2BB0:  ASRS            R2, R2, #0x10
B2BB2:  SMLABT.W        R2, R1, R0, R2
B2BB6:  ADD.W           R1, R3, R1,ASR#15
B2BBA:  ASRS            R1, R1, #1
B2BBC:  MLA.W           R1, R1, R0, R2
B2BC0:  MOVW            R0, #0x1034
B2BC4:  LDR.W           R0, [R8,R0]
B2BC8:  CMP.W           R1, #0x200000
B2BCC:  MOV.W           R2, R1,ASR#16
B2BD0:  BGE             loc_B2C0C
B2BD2:  CMP.W           R0, #0x800000
B2BD6:  BGT             loc_B2C0C
B2BD8:  SXTH            R6, R1
B2BDA:  UXTH            R3, R1
B2BDC:  MULS            R3, R6
B2BDE:  SXTH            R5, R0
B2BE0:  SMULBB.W        R2, R6, R2
B2BE4:  UXTH            R6, R0
B2BE6:  MULS            R6, R5
B2BE8:  ADD.W           R2, R2, R3,ASR#16
B2BEC:  MOVS            R3, #1
B2BEE:  ADD.W           R5, R3, R1,ASR#15
B2BF2:  ADD.W           R3, R3, R0,ASR#15
B2BF6:  ASRS            R5, R5, #1
B2BF8:  ASRS            R3, R3, #1
B2BFA:  MLA.W           R1, R5, R1, R2
B2BFE:  ASRS            R2, R6, #0x10
B2C00:  SMLABT.W        R2, R0, R0, R2
B2C04:  MLA.W           R0, R3, R0, R2
B2C08:  MOVS            R2, #8
B2C0A:  B               loc_B2C16
B2C0C:  SMULBB.W        R1, R2, R2
B2C10:  MOVS            R2, #0x10
B2C12:  SMULTT.W        R0, R0, R0
B2C16:  SUB.W           R1, R0, R1,LSL#5
B2C1A:  STR.W           R2, [R7,#var_48]
B2C1E:  CMP             R1, #1
B2C20:  BLT             loc_B2C36
B2C22:  CLZ.W           R0, R1
B2C26:  RSBS.W          R2, R0, #0x18
B2C2A:  BEQ             loc_B2C58
B2C2C:  CMP.W           R2, #0xFFFFFFFF
B2C30:  BLE             loc_B2C4C
B2C32:  RORS            R1, R2
B2C34:  B               loc_B2C58
B2C36:  MOV.W           R9, #0
B2C3A:  B               loc_B2C88
B2C3C:  LDR.W           R1, [R8,#0x924]
B2C40:  ADDW            R0, R8, #0xFF4; int
B2C44:  LSLS            R1, R1, #2; n
B2C46:  BLX             sub_10967C
B2C4A:  B               loc_B3010
B2C4C:  NEGS            R3, R2
B2C4E:  ADDS            R2, #0x20 ; ' '
B2C50:  LSL.W           R3, R1, R3
B2C54:  LSRS            R1, R2
B2C56:  ORRS            R1, R3
B2C58:  AND.W           R1, R1, #0x7F
B2C5C:  MOV.W           R2, #0xD50000
B2C60:  TST.W           R0, #1
B2C64:  MOV.W           R0, R0,LSR#1
B2C68:  MUL.W           R1, R2, R1
B2C6C:  MOV.W           R2, #0x8000
B2C70:  IT EQ
B2C72:  MOVWEQ          R2, #0xB486
B2C76:  LSR.W           R0, R2, R0
B2C7A:  UXTH            R2, R0
B2C7C:  LSRS            R1, R1, #0x10
B2C7E:  MULS            R2, R1
B2C80:  SMLABT.W        R0, R1, R0, R0
B2C84:  ADD.W           R9, R0, R2,LSR#16
B2C88:  ADD.W           R0, R4, #0x40 ; '@'
B2C8C:  MOV             R10, R4
B2C8E:  MOVS            R2, #0xFF
B2C90:  MOV             R1, R2
B2C92:  CMP             R1, R11
B2C94:  MOV.W           R2, R1,ASR#1
B2C98:  BGT             loc_B2C90
B2C9A:  MOVW            R3, #0x1038
B2C9E:  ADD.W           R12, R8, R3
B2CA2:  LDR.W           R2, [R8,R3]
B2CA6:  CMP.W           R11, #1
B2CAA:  BLT             loc_B2CD6
B2CAC:  MOVW            R5, #0x636B
B2CB0:  MOVW            R4, #0x8435
B2CB4:  MOVT            R5, #0x3619
B2CB8:  MOVT            R4, #0xBB3
B2CBC:  MOV             R6, R11
B2CBE:  MLA.W           R2, R2, R4, R5
B2CC2:  SUBS            R6, #1
B2CC4:  AND.W           R3, R1, R2,ASR#24
B2CC8:  ADD.W           R3, R8, R3,LSL#2
B2CCC:  LDR.W           R3, [R3,#0xAD4]
B2CD0:  STR.W           R3, [R0],#4
B2CD4:  BNE             loc_B2CBE
B2CD6:  STR.W           R2, [R12]
B2CDA:  MOVW            R0, #0x1048
B2CDE:  LDR.W           R3, [R8,R0]
B2CE2:  ADDW            R1, R8, #0xFD4
B2CE6:  LDR.W           R2, [R8,#0x924]
B2CEA:  SUB.W           R0, R7, #-var_44
B2CEE:  BLX             j_silk_NLSF2A
B2CF2:  ADDW            R1, R8, #0xFF4
B2CF6:  STR.W           R1, [R7,#var_B8]
B2CFA:  MOV             R12, R10
B2CFC:  CMP.W           R11, #1
B2D00:  LDM             R1!, {R2-R6}
B2D02:  STM.W           R12!, {R2-R6}
B2D06:  LDM             R1!, {R2-R6}
B2D08:  STM.W           R12!, {R2-R6}
B2D0C:  LDM.W           R1, {R0,R2-R6}
B2D10:  STM.W           R12, {R0,R2-R6}
B2D14:  MOV             R12, R10
B2D16:  BLT.W           loc_B2FF4
B2D1A:  LDR.W           R0, [R7,#var_48]
B2D1E:  MOVS            R1, #1
B2D20:  LDR.W           R10, [R12,#0x1C]
B2D24:  MOV.W           LR, #0
B2D28:  LDR.W           R2, [R12,#0x24]
B2D2C:  LSL.W           R0, R9, R0
B2D30:  LDR.W           R9, [R12,#0x2C]
B2D34:  ADD.W           R1, R1, R0,ASR#21
B2D38:  LDR.W           R5, [R12,#0x34]
B2D3C:  LDR.W           R4, [R12,#0x3C]
B2D40:  ASRS            R1, R1, #1
B2D42:  STR.W           R1, [R7,#var_64]
B2D46:  SBFX.W          R0, R0, #6, #0x10
B2D4A:  STR.W           R0, [R7,#var_68]
B2D4E:  LDRSH.W         R3, [R7,#var_26]
B2D52:  LDR.W           R1, [R8,#0x924]
B2D56:  MOV.W           R8, #0x40 ; '@'
B2D5A:  STR.W           R3, [R7,#var_A0]
B2D5E:  LDRSH.W         R3, [R7,#var_28]
B2D62:  STR.W           R3, [R7,#var_A4]
B2D66:  LDRSH.W         R3, [R7,#var_2A]
B2D6A:  STR.W           R3, [R7,#var_A8]
B2D6E:  LDRSH.W         R3, [R7,#var_2C]
B2D72:  STR.W           R3, [R7,#var_AC]
B2D76:  LDRSH.W         R3, [R7,#var_2E]
B2D7A:  STR.W           R3, [R7,#var_B0]
B2D7E:  LDRSH.W         R3, [R7,#var_30]
B2D82:  STR.W           R3, [R7,#var_B4]
B2D86:  LDRSH.W         R3, [R7,#var_32]
B2D8A:  STR.W           R3, [R7,#var_70]
B2D8E:  LDRSH.W         R3, [R7,#var_34]
B2D92:  STR.W           R3, [R7,#var_74]
B2D96:  LDRSH.W         R3, [R7,#var_36]
B2D9A:  STR.W           R3, [R7,#var_78]
B2D9E:  LDRSH.W         R3, [R7,#var_38]
B2DA2:  STR.W           R3, [R7,#var_7C]
B2DA6:  LDRSH.W         R3, [R7,#var_3A]
B2DAA:  STR.W           R3, [R7,#var_80]
B2DAE:  LDRSH.W         R3, [R7,#var_3C]
B2DB2:  STR.W           R3, [R7,#var_84]
B2DB6:  LDRSH.W         R3, [R7,#var_44]
B2DBA:  STR.W           R3, [R7,#var_88]
B2DBE:  LDRSH.W         R3, [R7,#var_42]
B2DC2:  STR.W           R3, [R7,#var_8C]
B2DC6:  LDRSH.W         R3, [R7,#var_40]
B2DCA:  STR.W           R3, [R7,#var_90]
B2DCE:  LDRSH.W         R3, [R7,#var_3E]
B2DD2:  STR.W           R1, [R7,#var_6C]
B2DD6:  ASRS            R1, R1, #1
B2DD8:  STR.W           R3, [R7,#var_94]
B2DDC:  STRD.W          R12, R1, [R7,#var_9C]
B2DE0:  LDR.W           R1, [R7,#var_88]
B2DE4:  UXTH            R3, R4
B2DE6:  ADD.W           R11, R12, LR,LSL#2
B2DEA:  LDR.W           R6, [R7,#var_98]
B2DEE:  STR.W           R8, [R7,#var_54]
B2DF2:  MULS            R3, R1
B2DF4:  LDR.W           R0, [R11,#0x38]
B2DF8:  STR.W           R0, [R7,#var_48]
B2DFC:  SMLABT.W        R4, R1, R4, R6
B2E00:  LDR.W           R6, [R7,#var_8C]
B2E04:  UXTH            R1, R0
B2E06:  LDR.W           R8, [R11,#0x20]
B2E0A:  STR.W           R8, [R7,#var_58]
B2E0E:  MULS            R1, R6
B2E10:  ADD.W           R3, R4, R3,ASR#16
B2E14:  SMLATB.W        R3, R0, R6, R3
B2E18:  LDR.W           R6, [R7,#var_90]
B2E1C:  UXTH            R4, R5
B2E1E:  LDR.W           R0, [R11,#0x28]
B2E22:  STR.W           R0, [R7,#var_50]
B2E26:  MUL.W           R12, R4, R6
B2E2A:  LDR.W           R4, [R11,#0x18]
B2E2E:  ADD.W           R1, R3, R1,ASR#16
B2E32:  SMLATB.W        R3, R5, R6, R1
B2E36:  LDR.W           R6, [R11,#0x30]
B2E3A:  LDR.W           R1, [R7,#var_94]
B2E3E:  STR.W           R6, [R7,#var_4C]
B2E42:  UXTH            R5, R6
B2E44:  MULS            R5, R1
B2E46:  ADD.W           R3, R3, R12,ASR#16
B2E4A:  SMLATB.W        R3, R6, R1, R3
B2E4E:  LDR.W           R1, [R7,#var_84]
B2E52:  ADD.W           R3, R3, R5,ASR#16
B2E56:  UXTH.W          R5, R9
B2E5A:  MULS            R5, R1
B2E5C:  SMLATB.W        R3, R9, R1, R3
B2E60:  LDR.W           R1, [R7,#var_80]
B2E64:  ADD.W           R3, R3, R5,ASR#16
B2E68:  UXTH            R5, R0
B2E6A:  MULS            R5, R1
B2E6C:  SMLATB.W        R3, R0, R1, R3
B2E70:  LDR.W           R1, [R7,#var_7C]
B2E74:  LDR.W           R0, [R7,#var_9C]
B2E78:  ADD.W           R3, R3, R5,ASR#16
B2E7C:  UXTH            R5, R2
B2E7E:  MULS            R5, R1
B2E80:  SMLATB.W        R2, R2, R1, R3
B2E84:  LDR.W           R1, [R7,#var_78]
B2E88:  UXTH.W          R3, R8
B2E8C:  MULS            R3, R1
B2E8E:  ADD.W           R2, R2, R5,ASR#16
B2E92:  SMLATB.W        R2, R8, R1, R2
B2E96:  LDR.W           R1, [R7,#var_74]
B2E9A:  LDR.W           R8, [R7,#var_54]
B2E9E:  ADD.W           R2, R2, R3,ASR#16
B2EA2:  UXTH.W          R3, R10
B2EA6:  MULS            R3, R1
B2EA8:  SMLATB.W        R2, R10, R1, R2
B2EAC:  LDR.W           R1, [R7,#var_70]
B2EB0:  ADD.W           R2, R2, R3,ASR#16
B2EB4:  UXTH            R3, R4
B2EB6:  MULS            R3, R1
B2EB8:  SMLATB.W        R2, R4, R1, R2
B2EBC:  LDR.W           R1, [R7,#var_6C]
B2EC0:  CMP             R1, #0x10
B2EC2:  ADD.W           R2, R2, R3,ASR#16
B2EC6:  BNE             loc_B2F40
B2EC8:  LDRD.W          R12, R9, [R11,#4]
B2ECC:  LDRD.W          R5, R4, [R11,#0xC]
B2ED0:  LDR.W           R1, [R11,#0x14]
B2ED4:  LDR.W           R6, [R7,#var_B4]
B2ED8:  UXTH            R3, R1
B2EDA:  MULS            R3, R6
B2EDC:  SMLABT.W        R1, R6, R1, R2
B2EE0:  UXTH            R2, R4
B2EE2:  LDR.W           R6, [R7,#var_AC]
B2EE6:  ADD.W           R1, R1, R3,ASR#16
B2EEA:  LDR.W           R3, [R7,#var_B0]
B2EEE:  MULS            R2, R3
B2EF0:  SMLATB.W        R1, R4, R3, R1
B2EF4:  UXTH            R3, R5
B2EF6:  MULS            R3, R6
B2EF8:  LDR.W           R4, [R7,#var_A8]
B2EFC:  ADD.W           R1, R1, R2,ASR#16
B2F00:  UXTH.W          R2, R9
B2F04:  SMLATB.W        R1, R5, R6, R1
B2F08:  LDR.W           R5, [R7,#var_A4]
B2F0C:  MULS            R2, R4
B2F0E:  LDR.W           R6, [R7,#var_A0]
B2F12:  ADD.W           R1, R1, R3,ASR#16
B2F16:  UXTH.W          R3, R12
B2F1A:  SMLATB.W        R1, R9, R4, R1
B2F1E:  ADD.W           R4, R0, R8
B2F22:  MULS            R3, R5
B2F24:  LDR.W           R4, [R4,#-0x40]
B2F28:  ADD.W           R1, R1, R2,ASR#16
B2F2C:  SMLATB.W        R1, R12, R5, R1
B2F30:  UXTH            R2, R4
B2F32:  MULS            R2, R6
B2F34:  ADD.W           R1, R1, R3,ASR#16
B2F38:  SMLATB.W        R1, R4, R6, R1
B2F3C:  ADD.W           R2, R1, R2,ASR#16
B2F40:  CMP.W           R2, #0xF8000000
B2F44:  LDR.W           R5, [R0,R8]
B2F48:  IT LE
B2F4A:  MOVLE.W         R2, #0xF8000000
B2F4E:  MOV             R1, #0x7FFFFFF
B2F52:  CMP             R2, R1
B2F54:  MOV             R12, R0
B2F56:  IT GE
B2F58:  MOVGE           R2, R1
B2F5A:  ADD.W           R4, R5, R2,LSL#4
B2F5E:  LSLS            R2, R2, #4
B2F60:  CMP             R4, #0
B2F62:  BLT             loc_B2F72
B2F64:  AND.W           R1, R2, R5
B2F68:  CMP             R1, #0
B2F6A:  IT LT
B2F6C:  MOVLT.W         R4, #0x80000000
B2F70:  B               loc_B2F80
B2F72:  ORR.W           R1, R2, R5
B2F76:  CMP.W           R1, #0xFFFFFFFF
B2F7A:  IT GT
B2F7C:  MOVGT           R4, #0x7FFFFFFF
B2F80:  LDR.W           R9, [R7,#var_4C]
B2F84:  UXTH            R2, R4
B2F86:  LDRD.W          R11, R10, [R7,#var_5C]
B2F8A:  MOVW            R5, #0x8000
B2F8E:  LDR.W           R1, [R7,#var_64]
B2F92:  MOVT            R5, #0xFFFF
B2F96:  LDR.W           R3, [R7,#var_68]
B2F9A:  MOVW            R0, #0x7FFF
B2F9E:  LDR.W           R6, [R7,#var_60]
B2FA2:  MULS            R1, R4
B2FA4:  STR.W           R4, [R12,R8]
B2FA8:  MULS            R2, R3
B2FAA:  ADD.W           R8, R8, #4
B2FAE:  SMLABT.W        R1, R3, R4, R1
B2FB2:  LDRSH.W         R3, [R6,LR,LSL#1]
B2FB6:  ADD.W           R1, R1, R2,ASR#16
B2FBA:  MOVS            R2, #1
B2FBC:  ADD.W           R1, R2, R1,ASR#7
B2FC0:  ASRS            R2, R1, #1
B2FC2:  CMP             R2, R5
B2FC4:  MOV             R2, R5
B2FC6:  IT GT
B2FC8:  ASRGT           R2, R1, #1
B2FCA:  CMP             R2, R0
B2FCC:  IT GE
B2FCE:  MOVGE           R2, R0
B2FD0:  ADDS            R1, R2, R3
B2FD2:  CMP             R1, R5
B2FD4:  IT LE
B2FD6:  MOVLE           R1, R5
B2FD8:  CMP             R1, R0
B2FDA:  IT GE
B2FDC:  MOVGE           R1, R0
B2FDE:  STRH.W          R1, [R6,LR,LSL#1]
B2FE2:  ADD.W           LR, LR, #1
B2FE6:  CMP             R11, LR
B2FE8:  LDR.W           R2, [R7,#var_50]
B2FEC:  LDR.W           R5, [R7,#var_48]
B2FF0:  BNE.W           loc_B2DE0
B2FF4:  ADD.W           R0, R12, R11,LSL#2
B2FF8:  LDR.W           R12, [R7,#var_B8]
B2FFC:  LDM             R0!, {R1-R3,R5,R6}
B2FFE:  STM.W           R12!, {R1-R3,R5,R6}
B3002:  LDM             R0!, {R1-R3,R5,R6}
B3004:  STM.W           R12!, {R1-R3,R5,R6}
B3008:  LDM.W           R0, {R1-R6}
B300C:  STM.W           R12, {R1-R6}
B3010:  LDR             R0, =(__stack_chk_guard_ptr - 0xB301A)
B3012:  LDR.W           R1, [R7,#var_24]
B3016:  ADD             R0, PC; __stack_chk_guard_ptr
B3018:  LDR             R0, [R0]; __stack_chk_guard
B301A:  LDR             R0, [R0]
B301C:  SUBS            R0, R0, R1
B301E:  ITTTT EQ
B3020:  SUBEQ.W         R4, R7, #-var_1C
B3024:  MOVEQ           SP, R4
B3026:  POPEQ.W         {R8-R11}
B302A:  POPEQ           {R4-R7,PC}
B302C:  BLX             __stack_chk_fail
