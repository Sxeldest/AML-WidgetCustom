; =========================================================
; Game Engine Function: sub_165E10
; Address            : 0x165E10 - 0x165EC2
; =========================================================

165E10:  PUSH            {R4-R7,LR}
165E12:  ADD             R7, SP, #0xC
165E14:  PUSH.W          {R8-R11}
165E18:  SUB             SP, SP, #4
165E1A:  VPUSH           {D8}
165E1E:  SUB             SP, SP, #0x30
165E20:  LDR             R6, =(dword_381B58 - 0x165E2E)
165E22:  MOV             R5, R3
165E24:  STR             R0, [SP,#0x58+var_40]
165E26:  MOVW            R0, #0x19AC
165E2A:  ADD             R6, PC; dword_381B58
165E2C:  STR             R1, [SP,#0x58+var_3C]
165E2E:  MOV             R10, R2
165E30:  LDR             R4, [R6]
165E32:  LDR.W           R11, [R4,R0]
165E36:  CBNZ            R3, loc_165E42
165E38:  MOV             R0, R10; s
165E3A:  BLX             strlen
165E3E:  ADD.W           R5, R10, R0
165E42:  CMP             R5, R10
165E44:  BEQ             loc_165EB4
165E46:  MOVW            R0, #0x18C4
165E4A:  LDR             R2, [R6]
165E4C:  ADD             R0, R4
165E4E:  MOVW            R1, #0x2D20
165E52:  ADD             R4, R1
165E54:  MOVW            R1, #0x1518
165E58:  LDRD.W          R9, R8, [R0]
165E5C:  ADDS            R0, R2, R1
165E5E:  ADD.W           R1, R0, #0xAC
165E62:  VLDR            S16, [R7,#arg_0]
165E66:  VLDR            S0, [R0]
165E6A:  ADD             R0, SP, #0x58+var_38
165E6C:  VLD1.32         {D16-D17}, [R1]
165E70:  MOVS            R1, #0xC
165E72:  MOV             R2, R0
165E74:  VST1.64         {D16-D17}, [R2],R1
165E78:  VLDR            S2, [R2]
165E7C:  LDR.W           R6, [R11,#0x27C]
165E80:  VMUL.F32        S0, S0, S2
165E84:  VSTR            S0, [R2]
165E88:  BL              sub_165778
165E8C:  MOVS            R1, #0
165E8E:  ADD             R3, SP, #0x58+var_40; int
165E90:  STR             R1, [SP,#0x58+var_48]; int
165E92:  MOV             R1, R9; int
165E94:  STRD.W          R0, R10, [SP,#0x58+var_58]; int
165E98:  MOV             R0, R6; int
165E9A:  MOV             R2, R8; int
165E9C:  VSTR            S16, [SP,#0x58+var_4C]
165EA0:  STR             R5, [SP,#0x58+var_50]; int
165EA2:  BL              sub_1745E0
165EA6:  LDRB            R0, [R4]
165EA8:  CBZ             R0, loc_165EB4
165EAA:  ADD             R0, SP, #0x58+var_40; int
165EAC:  MOV             R1, R10; s
165EAE:  MOV             R2, R5
165EB0:  BL              sub_165CCC
165EB4:  ADD             SP, SP, #0x30 ; '0'
165EB6:  VPOP            {D8}
165EBA:  ADD             SP, SP, #4
165EBC:  POP.W           {R8-R11}
165EC0:  POP             {R4-R7,PC}
