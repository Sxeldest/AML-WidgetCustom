; =========================================================
; Game Engine Function: sub_F6D68
; Address            : 0xF6D68 - 0xF6EEC
; =========================================================

F6D68:  PUSH            {R4-R7,LR}
F6D6A:  ADD             R7, SP, #0xC
F6D6C:  PUSH.W          {R8-R11}
F6D70:  SUB             SP, SP, #0x1C
F6D72:  LDR             R4, =(dword_2402C0 - 0xF6D80)
F6D74:  ADD.W           R8, SP, #0x38+var_30
F6D78:  LDR             R5, =(unk_92D14 - 0xF6D84)
F6D7A:  ADD             R6, SP, #0x38+var_2C
F6D7C:  ADD             R4, PC; dword_2402C0
F6D7E:  STR             R0, [SP,#0x38+var_30]
F6D80:  ADD             R5, PC; unk_92D14
F6D82:  ADD             R0, SP, #0x38+var_24
F6D84:  MOV             R9, R1
F6D86:  MOV             R1, R4
F6D88:  MOV             R2, R8
F6D8A:  MOV             R3, R5
F6D8C:  ADD.W           R11, SP, #0x38+var_28
F6D90:  STR.W           R8, [SP,#0x38+var_28]
F6D94:  STRD.W          R11, R6, [SP,#0x38+var_38]
F6D98:  BL              sub_F7976
F6D9C:  LDR             R0, [SP,#0x38+var_24]
F6D9E:  MOV             R1, R4
F6DA0:  MOV             R2, R8
F6DA2:  MOV             R3, R5
F6DA4:  STR.W           R8, [SP,#0x38+var_28]
F6DA8:  LDR.W           R10, [R0,#0x14]
F6DAC:  ADD             R0, SP, #0x38+var_24
F6DAE:  STRD.W          R11, R6, [SP,#0x38+var_38]
F6DB2:  BL              sub_F7976
F6DB6:  LDR             R0, [SP,#0x38+var_24]
F6DB8:  LDR             R6, [R0,#0x18]
F6DBA:  CMP             R10, R6
F6DBC:  BEQ             loc_F6E24
F6DBE:  LDRB.W          R0, [R9]
F6DC2:  LDRD.W          R5, R4, [R9,#4]
F6DC6:  ANDS.W          R1, R0, #1
F6DCA:  ITT EQ
F6DCC:  ADDEQ.W         R4, R9, #1
F6DD0:  LSREQ           R5, R0, #1
F6DD2:  LDRB.W          R1, [R10]
F6DD6:  LDR.W           R0, [R10,#4]
F6DDA:  ANDS.W          R2, R1, #1
F6DDE:  IT EQ
F6DE0:  LSREQ           R0, R1, #1
F6DE2:  CMP             R0, R5
F6DE4:  BNE             loc_F6E1A
F6DE6:  LDR.W           R0, [R10,#8]
F6DEA:  CMP             R2, #0
F6DEC:  IT EQ
F6DEE:  ADDEQ.W         R0, R10, #1; s1
F6DF2:  BNE             loc_F6E0E
F6DF4:  CBZ             R5, loc_F6E24
F6DF6:  LSRS            R0, R1, #1
F6DF8:  MOVS            R1, #0
F6DFA:  ADD.W           R3, R10, R1
F6DFE:  LDRB            R2, [R4,R1]
F6E00:  LDRB            R3, [R3,#1]
F6E02:  CMP             R3, R2
F6E04:  BNE             loc_F6E1A
F6E06:  ADDS            R1, #1
F6E08:  CMP             R0, R1
F6E0A:  BNE             loc_F6DFA
F6E0C:  B               loc_F6E24
F6E0E:  CBZ             R5, loc_F6E24
F6E10:  MOV             R1, R4; s2
F6E12:  MOV             R2, R5; n
F6E14:  BLX             memcmp
F6E18:  CBZ             R0, loc_F6E24
F6E1A:  ADD.W           R10, R10, #0x1C
F6E1E:  CMP             R10, R6
F6E20:  BNE             loc_F6DD2
F6E22:  MOV             R10, R6
F6E24:  LDR             R1, =(dword_2402C0 - 0xF6E30)
F6E26:  ADD             R4, SP, #0x38+var_2C
F6E28:  LDR             R3, =(unk_92D14 - 0xF6E34)
F6E2A:  ADD             R0, SP, #0x38+var_24
F6E2C:  ADD             R1, PC; dword_2402C0
F6E2E:  MOV             R2, R8
F6E30:  ADD             R3, PC; unk_92D14
F6E32:  STR.W           R8, [SP,#0x38+var_28]
F6E36:  STRD.W          R11, R4, [SP,#0x38+var_38]
F6E3A:  BL              sub_F7976
F6E3E:  LDR             R0, [SP,#0x38+var_24]
F6E40:  LDR.W           R9, [R0,#0x18]
F6E44:  CMP             R10, R9
F6E46:  BEQ             loc_F6EDC
F6E48:  LDR             R1, =(dword_2402C0 - 0xF6E54)
F6E4A:  ADD             R0, SP, #0x38+var_24
F6E4C:  LDR             R3, =(unk_92D14 - 0xF6E5A)
F6E4E:  MOV             R2, R8
F6E50:  ADD             R1, PC; dword_2402C0
F6E52:  STR.W           R8, [SP,#0x38+var_28]
F6E56:  ADD             R3, PC; unk_92D14
F6E58:  STRD.W          R11, R4, [SP,#0x38+var_38]
F6E5C:  BL              sub_F7976
F6E60:  LDR.W           R8, [SP,#0x38+var_24]
F6E64:  ADD.W           R4, R10, #0x1C
F6E68:  LDR.W           R11, [R8,#0x18]
F6E6C:  CMP             R4, R11
F6E6E:  BEQ             loc_F6EC4
F6E70:  MOVS            R4, #0
F6E72:  MOV             R6, R10
F6E74:  LDRB            R0, [R6]
F6E76:  LSLS            R0, R0, #0x1F
F6E78:  ITT NE
F6E7A:  LDRNE           R0, [R6,#8]; void *
F6E7C:  BLXNE           j__ZdlPv; operator delete(void *)
F6E80:  LDRB            R0, [R6,#0xC]
F6E82:  VLDR            D16, [R6,#0x1C]
F6E86:  LDR             R1, [R6,#0x24]
F6E88:  LSLS            R0, R0, #0x1F
F6E8A:  STR             R1, [R6,#8]
F6E8C:  STRH            R4, [R6,#0x1C]
F6E8E:  VSTR            D16, [R6]
F6E92:  ITT NE
F6E94:  LDRNE           R0, [R6,#0x14]; void *
F6E96:  BLXNE           j__ZdlPv; operator delete(void *)
F6E9A:  LDRD.W          R0, R1, [R6,#0x30]
F6E9E:  ADD.W           R5, R6, #0x1C
F6EA2:  VLDR            D16, [R6,#0x28]
F6EA6:  STRD.W          R0, R1, [R6,#0x14]
F6EAA:  ADD.W           R0, R6, #0x38 ; '8'
F6EAE:  STRH            R4, [R6,#0x28]
F6EB0:  CMP             R0, R11
F6EB2:  VSTR            D16, [R6,#0xC]
F6EB6:  MOV             R6, R5
F6EB8:  BNE             loc_F6E74
F6EBA:  LDR.W           R4, [R8,#0x18]
F6EBE:  CMP             R5, R4
F6EC0:  BNE             loc_F6EC6
F6EC2:  B               loc_F6ED8
F6EC4:  MOV             R5, R10
F6EC6:  ADD.W           R6, R8, #0x1C
F6ECA:  SUBS            R4, #0x1C
F6ECC:  MOV             R0, R6
F6ECE:  MOV             R1, R4
F6ED0:  BL              sub_F7A9E
F6ED4:  CMP             R4, R5
F6ED6:  BNE             loc_F6ECA
F6ED8:  STR.W           R5, [R8,#0x18]
F6EDC:  SUBS.W          R0, R10, R9
F6EE0:  IT NE
F6EE2:  MOVNE           R0, #1
F6EE4:  ADD             SP, SP, #0x1C
F6EE6:  POP.W           {R8-R11}
F6EEA:  POP             {R4-R7,PC}
