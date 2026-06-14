; =========================================================
; Game Engine Function: sub_104F28
; Address            : 0x104F28 - 0x10501C
; =========================================================

104F28:  PUSH            {R4-R7,LR}
104F2A:  ADD             R7, SP, #0xC
104F2C:  PUSH.W          {R8-R11}
104F30:  SUB             SP, SP, #0x74
104F32:  MOV             R5, R0
104F34:  LDR             R0, [R0,#0x5C]
104F36:  CMP             R0, #0
104F38:  BEQ             loc_105000
104F3A:  LDRD.W          R0, R6, [R7,#arg_4]
104F3E:  MOV             R9, R3
104F40:  LDRD.W          R4, R11, [R7,#arg_C]
104F44:  MOV             R10, R2
104F46:  STR             R0, [SP,#0x90+var_60]
104F48:  MOV             R8, R1
104F4A:  LDR             R0, [R7,#arg_0]
104F4C:  STR             R0, [SP,#0x90+var_64]
104F4E:  LDR             R0, [R5,#8]
104F50:  BL              sub_1082F4
104F54:  CMP             R0, #0
104F56:  BEQ             loc_105000
104F58:  LDR             R1, =(aSex - 0x104F60); "SEX" ...
104F5A:  MOV             R0, R10; s1
104F5C:  ADD             R1, PC; "SEX"
104F5E:  BLX             strcasecmp
104F62:  CMP             R0, #0
104F64:  BEQ             loc_105000
104F66:  STRD.W          R6, R4, [SP,#0x90+var_70]
104F6A:  MOV             R0, R10; s1
104F6C:  STR.W           R11, [SP,#0x90+var_68]
104F70:  LDR             R1, =(aCarry - 0x104F76); "CARRY" ...
104F72:  ADD             R1, PC; "CARRY"
104F74:  BLX             strcasecmp
104F78:  CBNZ            R0, loc_104F8C
104F7A:  LDR             R1, =(aCrryPrtial - 0x104F82); "crry_prtial" ...
104F7C:  MOV             R0, R8; s1
104F7E:  ADD             R1, PC; "crry_prtial"
104F80:  BLX             strcasecmp
104F84:  CBNZ            R0, loc_104F8C
104F86:  LDR             R0, [R5,#0x58]
104F88:  MOVS            R1, #0
104F8A:  STRB            R1, [R0]
104F8C:  LDR             R0, =(off_234970 - 0x104F94)
104F8E:  MOV             R1, R10
104F90:  ADD             R0, PC; off_234970
104F92:  LDR.W           R11, [R0]; dword_23DEF0
104F96:  LDR.W           R0, [R11]
104F9A:  BL              sub_F9748
104F9E:  CBZ             R0, loc_105008
104FA0:  ADD             R1, SP, #0x90+var_5C
104FA2:  MOV             R0, R5
104FA4:  BL              sub_F8910
104FA8:  VLDR            S0, [SP,#0x90+var_2C]
104FAC:  VLDR            S2, [SP,#0x90+var_28]
104FB0:  VCVT.F64.F32    D16, S0
104FB4:  LDR             R0, =(unk_B37C6 - 0x104FBA)
104FB6:  ADD             R0, PC; unk_B37C6
104FB8:  VMOV            R2, R3, D16
104FBC:  VCVT.F64.F32    D16, S2
104FC0:  VSTR            D16, [SP,#0x90+var_90]
104FC4:  BL              sub_107188
104FC8:  LDR             R0, [SP,#0x90+var_64]
104FCA:  ADD.W           LR, SP, #0x90+var_88
104FCE:  LDR             R1, [R5,#8]
104FD0:  VLDR            D16, [R9]
104FD4:  LDRB            R2, [R0]
104FD6:  LDR             R0, [SP,#0x90+var_60]
104FD8:  LDRB            R3, [R0]
104FDA:  LDR             R0, [SP,#0x90+var_70]
104FDC:  LDRB            R6, [R0]
104FDE:  LDR             R0, [SP,#0x90+var_6C]
104FE0:  LDRB            R5, [R0]
104FE2:  LDR             R0, [SP,#0x90+var_68]
104FE4:  LDR.W           R12, [R0]
104FE8:  LDR             R0, =(unk_B37DA - 0x104FF4)
104FEA:  STM.W           LR, {R2,R3,R6}
104FEE:  MOV             R2, R8
104FF0:  ADD             R0, PC; unk_B37DA
104FF2:  MOV             R3, R10
104FF4:  STRD.W          R5, R12, [SP,#0x90+var_7C]
104FF8:  VSTR            D16, [SP,#0x90+var_90]
104FFC:  BL              sub_107188
105000:  ADD             SP, SP, #0x74 ; 't'
105002:  POP.W           {R8-R11}
105006:  POP             {R4-R7,PC}
105008:  LDR.W           R0, [R11]
10500C:  MOV             R1, R10
10500E:  ADD             SP, SP, #0x74 ; 't'
105010:  POP.W           {R8-R11}
105014:  POP.W           {R4-R7,LR}
105018:  B.W             sub_F9EC8
