; =========================================================
; Game Engine Function: silk_VQ_WMat_EC_c
; Address            : 0xD1E24 - 0xD1FCE
; =========================================================

D1E24:  PUSH            {R4-R7,LR}
D1E26:  ADD             R7, SP, #0xC
D1E28:  PUSH.W          {R8-R11}
D1E2C:  SUB             SP, SP, #0x2C
D1E2E:  STR             R3, [SP,#0x48+var_3C]
D1E30:  MOV             R5, #0x7FFFFFFF
D1E34:  LDR             R3, [R7,#arg_4]
D1E36:  LDRD.W          LR, R12, [R3]
D1E3A:  LDRD.W          R4, R6, [R3,#8]
D1E3E:  LDR             R3, [R3,#0x10]
D1E40:  STR             R2, [SP,#0x48+var_34]
D1E42:  STR             R5, [R2]
D1E44:  STR             R1, [SP,#0x48+var_40]
D1E46:  STR             R5, [R1]
D1E48:  MOVS            R1, #0
D1E4A:  STR             R0, [SP,#0x48+var_44]
D1E4C:  STRB            R1, [R0]
D1E4E:  LDR             R0, [R7,#arg_1C]
D1E50:  CMP             R0, #1
D1E52:  BLT.W           loc_D1FC6
D1E56:  LSLS            R0, R6, #7
D1E58:  LDR             R5, [R7,#arg_14]
D1E5A:  STR             R0, [SP,#0x48+var_20]
D1E5C:  MOVS            R0, #0
D1E5E:  SUB.W           R3, R0, R3,LSL#7
D1E62:  LDR.W           R9, [R7,#arg_0]
D1E66:  MOV.W           R11, #4
D1E6A:  MOV.W           R8, #0
D1E6E:  LSLS            R0, R3, #1
D1E70:  STR             R0, [SP,#0x48+var_24]
D1E72:  SXTH            R0, R5
D1E74:  STR             R0, [SP,#0x48+var_38]
D1E76:  MOV.W           R0, LR,LSL#7
D1E7A:  STR             R0, [SP,#0x48+var_28]
D1E7C:  MOV.W           R0, R12,LSL#7
D1E80:  STR             R0, [SP,#0x48+var_2C]
D1E82:  LSLS            R0, R4, #7
D1E84:  STR             R0, [SP,#0x48+var_30]
D1E86:  LDR             R1, [R7,#arg_8]
D1E88:  ADD.W           R0, R8, R8,LSL#2
D1E8C:  MOV             R4, R1
D1E8E:  ADD             R0, R4
D1E90:  LDRD.W          R12, R1, [R9]
D1E94:  LDRD.W          R5, R6, [R9,#8]
D1E98:  LDRSB.W         R3, [R0,#1]
D1E9C:  LDR             R2, [SP,#0x48+var_28]
D1E9E:  MULS            R1, R3
D1EA0:  SUBS            R1, R1, R2
D1EA2:  LDRSB.W         R2, [R0,#2]
D1EA6:  LDRSB.W         R0, [R0,#3]
D1EAA:  MLA.W           R1, R5, R2, R1
D1EAE:  LDR.W           R5, [R9,#0x10]
D1EB2:  MLA.W           R6, R6, R0, R1
D1EB6:  LDRSB.W         R1, [R4,R11]
D1EBA:  MLA.W           LR, R5, R1, R6
D1EBE:  ADD.W           R5, R4, R11
D1EC2:  LDRSB.W         R5, [R5,#-4]
D1EC6:  MUL.W           R6, R12, R5
D1ECA:  ADD.W           R6, R6, LR,LSL#1
D1ECE:  UXTH            R4, R6
D1ED0:  MULS            R4, R5
D1ED2:  ASRS            R4, R4, #0x10
D1ED4:  SMLABT.W        R12, R5, R6, R4
D1ED8:  LDRD.W          LR, R4, [R9,#0x18]
D1EDC:  MULS            R4, R2
D1EDE:  LDRD.W          R6, R5, [R9,#0x20]
D1EE2:  LDR.W           R10, [SP,#0x48+var_2C]
D1EE6:  SUB.W           R4, R4, R10
D1EEA:  MLA.W           R4, R6, R0, R4
D1EEE:  MUL.W           R6, LR, R3
D1EF2:  MLA.W           R4, R5, R1, R4
D1EF6:  ADD.W           R6, R6, R4,LSL#1
D1EFA:  SMLATB.W        LR, R6, R3, R12
D1EFE:  LDRD.W          R12, R4, [R9,#0x30]
D1F02:  MULS            R4, R0
D1F04:  LDR             R5, [SP,#0x48+var_30]
D1F06:  LDR.W           R10, [R9,#0x38]
D1F0A:  SUBS            R4, R4, R5
D1F0C:  UXTH            R5, R6
D1F0E:  MLA.W           R4, R10, R1, R4
D1F12:  MULS            R3, R5
D1F14:  MUL.W           R6, R12, R2
D1F18:  ADD.W           R3, LR, R3,ASR#16
D1F1C:  ADD.W           R6, R6, R4,LSL#1
D1F20:  LDRD.W          R5, R4, [R9,#0x48]
D1F24:  MULS            R4, R1
D1F26:  SMLATB.W        R12, R6, R2, R3
D1F2A:  UXTH            R6, R6
D1F2C:  MULS            R2, R6
D1F2E:  LDR.W           R6, [R9,#0x60]
D1F32:  LDR             R3, [SP,#0x48+var_20]
D1F34:  MULS            R5, R0
D1F36:  SUBS            R4, R4, R3
D1F38:  LDR             R3, [SP,#0x48+var_24]
D1F3A:  MLA.W           R6, R6, R1, R3
D1F3E:  ADD.W           R2, R12, R2,ASR#16
D1F42:  ADD.W           R5, R5, R4,LSL#1
D1F46:  UXTH            R4, R5
D1F48:  UXTH            R3, R6
D1F4A:  MULS            R4, R0
D1F4C:  MULS            R3, R1
D1F4E:  SMLATB.W        R1, R6, R1, R2
D1F52:  SMLATB.W        R0, R5, R0, R1
D1F56:  MOVW            R1, #0x8021
D1F5A:  ADD.W           R0, R0, R3,ASR#16
D1F5E:  ADD.W           R0, R0, R4,ASR#16
D1F62:  ADD             R0, R1
D1F64:  CMP             R0, #0
D1F66:  BLT             loc_D1FB6
D1F68:  LDR             R1, [R7,#arg_C]
D1F6A:  MOVS            R2, #0
D1F6C:  LDRB.W          R5, [R1,R8]
D1F70:  LDR             R1, [R7,#arg_18]
D1F72:  SUBS            R1, R5, R1
D1F74:  CMP             R1, #0
D1F76:  IT LE
D1F78:  MOVLE           R1, R2
D1F7A:  ADD.W           R6, R0, R1,LSL#11
D1F7E:  MOV             R0, R6
D1F80:  BLX             j_silk_lin2log
D1F84:  LDR             R1, [R7,#arg_10]
D1F86:  MOVS            R2, #0xF8800000
D1F8C:  ADD.W           R0, R2, R0,LSL#16
D1F90:  LDR             R2, [SP,#0x48+var_38]
D1F92:  LDRB.W          R1, [R1,R8]
D1F96:  LSLS            R1, R1, #2
D1F98:  SMLABT.W        R0, R2, R0, R1
D1F9C:  LDR             R1, [SP,#0x48+var_34]
D1F9E:  LDR             R1, [R1]
D1FA0:  CMP             R0, R1
D1FA2:  BGT             loc_D1FB6
D1FA4:  LDR             R1, [SP,#0x48+var_34]
D1FA6:  STR             R0, [R1]
D1FA8:  LDR             R0, [SP,#0x48+var_40]
D1FAA:  STR             R6, [R0]
D1FAC:  LDR             R0, [SP,#0x48+var_44]
D1FAE:  STRB.W          R8, [R0]
D1FB2:  LDR             R0, [SP,#0x48+var_3C]
D1FB4:  STR             R5, [R0]
D1FB6:  LDR             R0, [R7,#arg_1C]
D1FB8:  ADD.W           R8, R8, #1
D1FBC:  ADD.W           R11, R11, #5
D1FC0:  CMP             R0, R8
D1FC2:  BNE.W           loc_D1E86
D1FC6:  ADD             SP, SP, #0x2C ; ','
D1FC8:  POP.W           {R8-R11}
D1FCC:  POP             {R4-R7,PC}
