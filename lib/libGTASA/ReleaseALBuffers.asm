; =========================================================
; Game Engine Function: ReleaseALBuffers
; Address            : 0x247E00 - 0x247FAA
; =========================================================

247E00:  PUSH            {R4-R7,LR}
247E02:  ADD             R7, SP, #0xC
247E04:  PUSH.W          {R8-R11}
247E08:  SUB             SP, SP, #0x14
247E0A:  LDR             R1, [R0,#0x44]
247E0C:  CMP             R1, #1
247E0E:  BLT.W           loc_247FA2
247E12:  LDR             R4, =(dword_6D681C - 0x247E24)
247E14:  MOVS            R6, #0
247E16:  LDR.W           R8, =(dword_6D681C - 0x247E2A)
247E1A:  MOVS            R5, #1
247E1C:  LDR.W           R10, =(dword_6D681C - 0x247E30)
247E20:  ADD             R4, PC; dword_6D681C
247E22:  LDR.W           R9, =(dword_6D681C - 0x247E32)
247E26:  ADD             R8, PC; dword_6D681C
247E28:  LDR.W           R11, =(dword_6D681C - 0x247E36)
247E2C:  ADD             R10, PC; dword_6D681C
247E2E:  ADD             R9, PC; dword_6D681C
247E30:  MOVS            R2, #0
247E32:  ADD             R11, PC; dword_6D681C
247E34:  STR             R0, [SP,#0x30+var_2C]
247E36:  LDR             R0, [R0,#0x40]
247E38:  STR             R2, [SP,#0x30+var_24]
247E3A:  ADD.W           R0, R0, R2,LSL#3
247E3E:  LDR             R1, [R0,#4]
247E40:  STR             R1, [SP,#0x30+p]
247E42:  STR             R6, [R0,#4]
247E44:  LDR             R0, [R1]; p
247E46:  BLX             free
247E4A:  LDR             R0, [SP,#0x30+p]
247E4C:  LDR             R2, =(dword_6D681C - 0x247E54)
247E4E:  LDR             R0, [R0,#0x44]
247E50:  ADD             R2, PC; dword_6D681C
247E52:  STR             R0, [SP,#0x30+var_28]
247E54:  DMB.W           ISH
247E58:  LDREX.W         R0, [R2,#0xC]
247E5C:  STREX.W         R1, R5, [R2,#0xC]
247E60:  CMP             R1, #0
247E62:  BNE             loc_247E58
247E64:  B               loc_247E7A
247E66:  BLX             sched_yield
247E6A:  DMB.W           ISH
247E6E:  LDREX.W         R0, [R4,#0xC]
247E72:  STREX.W         R1, R5, [R4,#0xC]
247E76:  CMP             R1, #0
247E78:  BNE             loc_247E6E
247E7A:  CMP             R0, #1
247E7C:  DMB.W           ISH
247E80:  BEQ             loc_247E66
247E82:  LDR             R2, =(dword_6D681C - 0x247E8C)
247E84:  DMB.W           ISH
247E88:  ADD             R2, PC; dword_6D681C
247E8A:  LDREX.W         R0, [R2,#8]
247E8E:  STREX.W         R1, R5, [R2,#8]
247E92:  CMP             R1, #0
247E94:  BNE             loc_247E8A
247E96:  B               loc_247EAC
247E98:  BLX             sched_yield
247E9C:  DMB.W           ISH
247EA0:  LDREX.W         R0, [R8,#8]
247EA4:  STREX.W         R1, R5, [R8,#8]
247EA8:  CMP             R1, #0
247EAA:  BNE             loc_247EA0
247EAC:  CMP             R0, #1
247EAE:  DMB.W           ISH
247EB2:  BEQ             loc_247E98
247EB4:  LDR             R3, =(dword_6D681C - 0x247EBE)
247EB6:  DMB.W           ISH
247EBA:  ADD             R3, PC; dword_6D681C
247EBC:  LDREX.W         R0, [R3]
247EC0:  ADDS            R1, R0, #1
247EC2:  STREX.W         R2, R1, [R3]
247EC6:  CMP             R2, #0
247EC8:  BNE             loc_247EBC
247ECA:  CMP             R0, #0
247ECC:  DMB.W           ISH
247ED0:  BNE             loc_247F04
247ED2:  LDR             R2, =(dword_6D681C - 0x247EDC)
247ED4:  DMB.W           ISH
247ED8:  ADD             R2, PC; dword_6D681C
247EDA:  LDREX.W         R0, [R2,#0x10]
247EDE:  STREX.W         R1, R5, [R2,#0x10]
247EE2:  CMP             R1, #0
247EE4:  BNE             loc_247EDA
247EE6:  B               loc_247EFC
247EE8:  BLX             sched_yield
247EEC:  DMB.W           ISH
247EF0:  LDREX.W         R0, [R10,#0x10]
247EF4:  STREX.W         R1, R5, [R10,#0x10]
247EF8:  CMP             R1, #0
247EFA:  BNE             loc_247EF0
247EFC:  CMP             R0, #1
247EFE:  DMB.W           ISH
247F02:  BEQ             loc_247EE8
247F04:  LDR             R1, =(dword_6D681C - 0x247F0E)
247F06:  DMB.W           ISH
247F0A:  ADD             R1, PC; dword_6D681C
247F0C:  LDREX.W         R0, [R1,#8]
247F10:  STREX.W         R0, R6, [R1,#8]
247F14:  CMP             R0, #0
247F16:  BNE             loc_247F0C
247F18:  DMB.W           ISH
247F1C:  DMB.W           ISH
247F20:  LDREX.W         R0, [R9,#0xC]
247F24:  STREX.W         R0, R6, [R9,#0xC]
247F28:  CMP             R0, #0
247F2A:  BNE             loc_247F20
247F2C:  LDR             R0, =(dword_6D6830 - 0x247F36)
247F2E:  DMB.W           ISH
247F32:  ADD             R0, PC; dword_6D6830
247F34:  LDR             R1, [R0]
247F36:  LDR             R0, [SP,#0x30+var_28]
247F38:  SUBS            R0, #1
247F3A:  CMP             R0, R1
247F3C:  BCS             loc_247F5C
247F3E:  LDR             R1, =(dword_6D6834 - 0x247F44)
247F40:  ADD             R1, PC; dword_6D6834
247F42:  LDR             R1, [R1]
247F44:  DMB.W           ISH
247F48:  ADD.W           R0, R1, R0,LSL#2
247F4C:  LDREX.W         R1, [R0]
247F50:  STREX.W         R1, R6, [R0]
247F54:  CMP             R1, #0
247F56:  BNE             loc_247F4C
247F58:  DMB.W           ISH
247F5C:  DMB.W           ISH
247F60:  LDREX.W         R0, [R11]
247F64:  SUBS            R1, R0, #1
247F66:  STREX.W         R2, R1, [R11]
247F6A:  CMP             R2, #0
247F6C:  BNE             loc_247F60
247F6E:  CMP             R0, #1
247F70:  DMB.W           ISH
247F74:  BNE             loc_247F8E
247F76:  LDR             R1, =(dword_6D681C - 0x247F80)
247F78:  DMB.W           ISH
247F7C:  ADD             R1, PC; dword_6D681C
247F7E:  LDREX.W         R0, [R1,#0x10]
247F82:  STREX.W         R0, R6, [R1,#0x10]
247F86:  CMP             R0, #0
247F88:  BNE             loc_247F7E
247F8A:  DMB.W           ISH
247F8E:  LDR             R0, [SP,#0x30+p]; p
247F90:  BLX             free
247F94:  LDR             R0, [SP,#0x30+var_2C]
247F96:  LDR             R2, [SP,#0x30+var_24]
247F98:  LDR             R1, [R0,#0x44]
247F9A:  ADDS            R2, #1
247F9C:  CMP             R2, R1
247F9E:  BLT.W           loc_247E36
247FA2:  ADD             SP, SP, #0x14
247FA4:  POP.W           {R8-R11}
247FA8:  POP             {R4-R7,PC}
