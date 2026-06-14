; =========================================================
; Game Engine Function: sub_F8F58
; Address            : 0xF8F58 - 0xF9000
; =========================================================

F8F58:  PUSH            {R4-R7,LR}
F8F5A:  ADD             R7, SP, #0xC
F8F5C:  PUSH.W          {R8-R11}
F8F60:  SUB             SP, SP, #0x5C
F8F62:  MOV             R4, R0
F8F64:  LDR             R0, [R0,#4]
F8F66:  CMP             R0, #0
F8F68:  BEQ             loc_F8FF8
F8F6A:  MOV             R5, R1
F8F6C:  LDR             R1, [R0,#0x14]
F8F6E:  CMP             R1, #0
F8F70:  BEQ             loc_F8FF8
F8F72:  LDR             R1, [R7,#arg_30]
F8F74:  MOV             R6, R2
F8F76:  STR             R1, [SP,#0x78+var_20]
F8F78:  LDR             R1, [R7,#arg_2C]
F8F7A:  STR             R1, [SP,#0x78+var_24]
F8F7C:  LDR             R1, [R7,#arg_28]
F8F7E:  STR             R1, [SP,#0x78+var_28]
F8F80:  LDR             R1, [R7,#arg_24]
F8F82:  STR             R1, [SP,#0x78+var_2C]
F8F84:  LDR             R1, [R7,#arg_20]
F8F86:  STR             R1, [SP,#0x78+var_30]
F8F88:  LDR             R1, [R7,#arg_1C]
F8F8A:  STR             R1, [SP,#0x78+var_34]
F8F8C:  LDR             R1, [R7,#arg_18]
F8F8E:  STR             R1, [SP,#0x78+var_38]
F8F90:  LDR             R1, [R7,#arg_14]
F8F92:  STR             R1, [SP,#0x78+var_3C]
F8F94:  LDR             R1, [R7,#arg_10]
F8F96:  STR             R1, [SP,#0x78+var_44]
F8F98:  LDR             R1, [R0]
F8F9A:  LDRD.W          R10, R9, [R7,#arg_8]
F8F9E:  LDRD.W          R8, R11, [R7,#arg_0]
F8FA2:  LDR             R1, [R1,#0x10]
F8FA4:  STR             R3, [SP,#0x78+var_40]
F8FA6:  BLX             R1
F8FA8:  STRD.W          R8, R11, [SP,#0x78+var_78]
F8FAC:  MOV             R1, R5
F8FAE:  STRD.W          R10, R9, [SP,#0x78+var_70]
F8FB2:  MOV             R2, R6
F8FB4:  LDR             R0, [SP,#0x78+var_44]
F8FB6:  STR             R0, [SP,#0x78+var_68]
F8FB8:  LDR             R0, [SP,#0x78+var_3C]
F8FBA:  STR             R0, [SP,#0x78+var_64]
F8FBC:  LDR             R0, [SP,#0x78+var_38]
F8FBE:  STR             R0, [SP,#0x78+var_60]
F8FC0:  LDR             R0, [SP,#0x78+var_34]
F8FC2:  STR             R0, [SP,#0x78+var_5C]
F8FC4:  LDR             R0, [SP,#0x78+var_30]
F8FC6:  STR             R0, [SP,#0x78+var_58]
F8FC8:  LDR             R0, [SP,#0x78+var_2C]
F8FCA:  STR             R0, [SP,#0x78+var_54]
F8FCC:  LDR             R0, [SP,#0x78+var_28]
F8FCE:  STR             R0, [SP,#0x78+var_50]
F8FD0:  LDR             R0, [SP,#0x78+var_24]
F8FD2:  STR             R0, [SP,#0x78+var_4C]
F8FD4:  LDR             R0, [SP,#0x78+var_20]
F8FD6:  STR             R0, [SP,#0x78+var_48]
F8FD8:  MOV             R0, R4
F8FDA:  LDR             R3, [SP,#0x78+var_40]
F8FDC:  BL              sub_F894A
F8FE0:  MOV             R0, R4
F8FE2:  BL              sub_F8C14
F8FE6:  LDR             R0, [R4,#4]
F8FE8:  LDR             R1, [R0]
F8FEA:  LDR             R1, [R1,#8]
F8FEC:  ADD             SP, SP, #0x5C ; '\'
F8FEE:  POP.W           {R8-R11}
F8FF2:  POP.W           {R4-R7,LR}
F8FF6:  BX              R1
F8FF8:  ADD             SP, SP, #0x5C ; '\'
F8FFA:  POP.W           {R8-R11}
F8FFE:  POP             {R4-R7,PC}
