; =========================================================
; Game Engine Function: _ZN7CWanted11AddCrimeToQE10eCrimeTypejRK7CVectorbb
; Address            : 0x421CD0 - 0x421FB4
; =========================================================

421CD0:  PUSH            {R4-R7,LR}
421CD2:  ADD             R7, SP, #0xC
421CD4:  PUSH.W          {R8-R11}
421CD8:  SUB             SP, SP, #0x40
421CDA:  MOV             R4, R0
421CDC:  LDR             R6, [R7,#arg_0]
421CDE:  LDR.W           R12, [R4,#0x34]!
421CE2:  CMP             R12, R1
421CE4:  ITT EQ
421CE6:  LDREQ           R5, [R0,#0x38]
421CE8:  CMPEQ           R5, R2
421CEA:  BEQ.W           loc_421E96
421CEE:  MOV             LR, R0
421CF0:  LDR.W           R8, [LR,#0x50]!
421CF4:  CMP             R8, R1
421CF6:  ITT EQ
421CF8:  LDREQ           R5, [R0,#0x54]
421CFA:  CMPEQ           R5, R2
421CFC:  BEQ.W           loc_421E9A
421D00:  MOV             R11, R0
421D02:  LDR.W           R9, [R11,#0x6C]!
421D06:  CMP             R9, R1
421D08:  ITT EQ
421D0A:  LDREQ           R5, [R0,#0x70]
421D0C:  CMPEQ           R5, R2
421D0E:  BEQ.W           loc_421E9E
421D12:  MOV             R10, R0
421D14:  LDR.W           R5, [R10,#0x88]!
421D18:  STR             R5, [SP,#0x5C+var_20]
421D1A:  CMP             R5, R1
421D1C:  ITT EQ
421D1E:  LDREQ.W         R5, [R0,#0x8C]
421D22:  CMPEQ           R5, R2
421D24:  BEQ.W           loc_421EA2
421D28:  STR             R3, [SP,#0x5C+var_24]
421D2A:  MOV             R5, R0
421D2C:  LDR.W           R3, [R5,#0xA4]!
421D30:  STR             R3, [SP,#0x5C+var_28]
421D32:  CMP             R3, R1
421D34:  ITT EQ
421D36:  LDREQ.W         R3, [R0,#0xA8]
421D3A:  CMPEQ           R3, R2
421D3C:  BEQ.W           loc_421EA6
421D40:  MOV             R3, R0
421D42:  LDR.W           R6, [R3,#0xC0]!
421D46:  CMP             R6, R1
421D48:  STRD.W          R3, R6, [SP,#0x5C+var_30]
421D4C:  ITT EQ
421D4E:  LDREQ.W         R3, [R0,#0xC4]
421D52:  CMPEQ           R3, R2
421D54:  BEQ.W           loc_421EAA
421D58:  MOV             R6, R0
421D5A:  LDR.W           R3, [R6,#0xDC]!
421D5E:  STR             R3, [SP,#0x5C+var_34]
421D60:  CMP             R3, R1
421D62:  ITT EQ
421D64:  LDREQ.W         R3, [R0,#0xE0]
421D68:  CMPEQ           R3, R2
421D6A:  BEQ.W           loc_421EAE
421D6E:  STR             R6, [SP,#0x5C+var_3C]
421D70:  MOV             R3, R0
421D72:  LDR.W           R6, [R3,#0xF8]!
421D76:  STR             R3, [SP,#0x5C+var_40]
421D78:  STR             R6, [SP,#0x5C+var_38]
421D7A:  CMP             R6, R1
421D7C:  ITT EQ
421D7E:  LDREQ.W         R3, [R0,#0xFC]
421D82:  CMPEQ           R3, R2
421D84:  BEQ.W           loc_421EB2
421D88:  LDR.W           R6, [R0,#0x114]
421D8C:  CMP             R6, R1
421D8E:  ITT EQ
421D90:  LDREQ.W         R3, [R0,#0x118]
421D94:  CMPEQ           R3, R2
421D96:  BEQ.W           loc_421EB6
421D9A:  LDR.W           R3, [R0,#0x130]
421D9E:  STR             R3, [SP,#0x5C+var_44]
421DA0:  CMP             R3, R1
421DA2:  ITT EQ
421DA4:  LDREQ.W         R3, [R0,#0x134]
421DA8:  CMPEQ           R3, R2
421DAA:  BEQ.W           loc_421EBA
421DAE:  LDR.W           R3, [R0,#0x14C]
421DB2:  STR             R3, [SP,#0x5C+var_48]
421DB4:  CMP             R3, R1
421DB6:  ITT EQ
421DB8:  LDREQ.W         R3, [R0,#0x150]
421DBC:  CMPEQ           R3, R2
421DBE:  BEQ             loc_421EBE
421DC0:  LDR.W           R3, [R0,#0x168]
421DC4:  STR             R3, [SP,#0x5C+var_4C]
421DC6:  CMP             R3, R1
421DC8:  ITT EQ
421DCA:  LDREQ.W         R3, [R0,#0x16C]
421DCE:  CMPEQ           R3, R2
421DD0:  BEQ             loc_421EC2
421DD2:  LDR.W           R3, [R0,#0x184]
421DD6:  STR             R3, [SP,#0x5C+var_50]
421DD8:  CMP             R3, R1
421DDA:  ITT EQ
421DDC:  LDREQ.W         R3, [R0,#0x188]
421DE0:  CMPEQ           R3, R2
421DE2:  BEQ             loc_421EC6
421DE4:  LDR.W           R3, [R0,#0x1A0]
421DE8:  STR             R3, [SP,#0x5C+var_54]
421DEA:  CMP             R3, R1
421DEC:  ITT EQ
421DEE:  LDREQ.W         R3, [R0,#0x1A4]
421DF2:  CMPEQ           R3, R2
421DF4:  BEQ             loc_421ECA
421DF6:  LDR.W           R3, [R0,#0x1BC]
421DFA:  STR             R3, [SP,#0x5C+var_58]
421DFC:  CMP             R3, R1
421DFE:  ITT EQ
421E00:  LDREQ.W         R3, [R0,#0x1C0]
421E04:  CMPEQ           R3, R2
421E06:  BEQ             loc_421ECE
421E08:  LDR.W           R3, [R0,#0x1D8]
421E0C:  STR             R3, [SP,#0x5C+var_5C]
421E0E:  CMP             R3, R1
421E10:  ITT EQ
421E12:  LDREQ.W         R3, [R0,#0x1DC]
421E16:  CMPEQ           R3, R2
421E18:  BEQ             loc_421ED2
421E1A:  CMP.W           R12, #0
421E1E:  BEQ             loc_421EF8
421E20:  CMP.W           R8, #0
421E24:  BEQ             loc_421F00
421E26:  CMP.W           R9, #0
421E2A:  BEQ             loc_421F06
421E2C:  LDR             R3, [SP,#0x5C+var_20]
421E2E:  CMP             R3, #0
421E30:  BEQ             loc_421F0E
421E32:  LDR             R3, [SP,#0x5C+var_28]
421E34:  CMP             R3, #0
421E36:  BEQ             loc_421F16
421E38:  LDR             R3, [SP,#0x5C+var_2C]
421E3A:  CMP             R3, #0
421E3C:  BEQ             loc_421F1E
421E3E:  LDR             R3, [SP,#0x5C+var_34]
421E40:  LDR             R4, [R7,#arg_0]
421E42:  LDR             R5, [SP,#0x5C+var_24]
421E44:  CMP             R3, #0
421E46:  BEQ.W           loc_421F5A
421E4A:  LDR             R3, [SP,#0x5C+var_38]
421E4C:  CMP             R3, #0
421E4E:  BEQ.W           loc_421F64
421E52:  CMP             R6, #0
421E54:  BEQ.W           loc_421F6E
421E58:  LDR             R3, [SP,#0x5C+var_44]
421E5A:  CMP             R3, #0
421E5C:  BEQ.W           loc_421F78
421E60:  LDR             R3, [SP,#0x5C+var_48]
421E62:  CMP             R3, #0
421E64:  BEQ.W           loc_421F82
421E68:  LDR             R3, [SP,#0x5C+var_4C]
421E6A:  CMP             R3, #0
421E6C:  BEQ.W           loc_421F8C
421E70:  LDR             R3, [SP,#0x5C+var_50]
421E72:  CMP             R3, #0
421E74:  BEQ.W           loc_421F96
421E78:  LDR             R3, [SP,#0x5C+var_54]
421E7A:  CMP             R3, #0
421E7C:  BEQ.W           loc_421FA0
421E80:  LDR             R3, [SP,#0x5C+var_58]
421E82:  CMP             R3, #0
421E84:  BEQ.W           loc_421FAA
421E88:  LDR             R3, [SP,#0x5C+var_5C]
421E8A:  CBNZ            R3, loc_421EEE
421E8C:  ADD.W           LR, R0, #0x1D8
421E90:  MOV.W           R8, #0xF
421E94:  B               loc_421F26
421E96:  MOVS            R1, #0
421E98:  B               loc_421ED6
421E9A:  MOVS            R1, #1
421E9C:  B               loc_421ED6
421E9E:  MOVS            R1, #2
421EA0:  B               loc_421ED6
421EA2:  MOVS            R1, #3
421EA4:  B               loc_421ED6
421EA6:  MOVS            R1, #4
421EA8:  B               loc_421ED4
421EAA:  MOVS            R1, #5
421EAC:  B               loc_421ED4
421EAE:  MOVS            R1, #6
421EB0:  B               loc_421ED4
421EB2:  MOVS            R1, #7
421EB4:  B               loc_421ED4
421EB6:  MOVS            R1, #8
421EB8:  B               loc_421ED4
421EBA:  MOVS            R1, #9
421EBC:  B               loc_421ED4
421EBE:  MOVS            R1, #0xA
421EC0:  B               loc_421ED4
421EC2:  MOVS            R1, #0xB
421EC4:  B               loc_421ED4
421EC6:  MOVS            R1, #0xC
421EC8:  B               loc_421ED4
421ECA:  MOVS            R1, #0xD
421ECC:  B               loc_421ED4
421ECE:  MOVS            R1, #0xE
421ED0:  B               loc_421ED4
421ED2:  MOVS            R1, #0xF
421ED4:  LDR             R6, [R7,#arg_0]
421ED6:  RSB.W           R1, R1, R1,LSL#3
421EDA:  ADD.W           R1, R0, R1,LSL#2
421EDE:  LDRB.W          R0, [R1,#0x4C]!
421EE2:  CMP             R0, #0
421EE4:  IT NE
421EE6:  MOVNE           R0, #1
421EE8:  BNE             loc_421EF0
421EEA:  CBZ             R6, loc_421EF0
421EEC:  STRB            R6, [R1]
421EEE:  MOVS            R0, #0
421EF0:  ADD             SP, SP, #0x40 ; '@'
421EF2:  POP.W           {R8-R11}
421EF6:  POP             {R4-R7,PC}
421EF8:  MOV.W           R8, #0
421EFC:  MOV             LR, R4
421EFE:  B               loc_421F26
421F00:  MOV.W           R8, #1
421F04:  B               loc_421F26
421F06:  MOV.W           R8, #2
421F0A:  MOV             LR, R11
421F0C:  B               loc_421F26
421F0E:  MOV.W           R8, #3
421F12:  MOV             LR, R10
421F14:  B               loc_421F26
421F16:  MOV.W           R8, #4
421F1A:  MOV             LR, R5
421F1C:  B               loc_421F26
421F1E:  MOV.W           R8, #5
421F22:  LDR.W           LR, [SP,#0x5C+var_30]
421F26:  LDR             R4, [R7,#arg_0]
421F28:  LDR             R5, [SP,#0x5C+var_24]
421F2A:  STR.W           R1, [LR]
421F2E:  RSB.W           R1, R8, R8,LSL#3
421F32:  LDR             R6, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x421F3E)
421F34:  ADD.W           R0, R0, R1,LSL#2
421F38:  LDR             R3, [R7,#arg_4]
421F3A:  ADD             R6, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
421F3C:  STR             R2, [R0,#0x38]
421F3E:  LDR             R1, [R6]; CTimer::m_snTimeInMilliseconds ...
421F40:  VLDR            D16, [R5]
421F44:  LDR             R2, [R5,#8]
421F46:  STR             R2, [R0,#0x48]
421F48:  VSTR            D16, [R0,#0x40]
421F4C:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds
421F4E:  STRB.W          R4, [R0,#0x4C]
421F52:  STR             R1, [R0,#0x3C]
421F54:  STRB.W          R3, [R0,#0x4D]
421F58:  B               loc_421EEE
421F5A:  MOV.W           R8, #6
421F5E:  LDR.W           LR, [SP,#0x5C+var_3C]
421F62:  B               loc_421F2A
421F64:  MOV.W           R8, #7
421F68:  LDR.W           LR, [SP,#0x5C+var_40]
421F6C:  B               loc_421F2A
421F6E:  ADD.W           LR, R0, #0x114
421F72:  MOV.W           R8, #8
421F76:  B               loc_421F2A
421F78:  ADD.W           LR, R0, #0x130
421F7C:  MOV.W           R8, #9
421F80:  B               loc_421F2A
421F82:  ADD.W           LR, R0, #0x14C
421F86:  MOV.W           R8, #0xA
421F8A:  B               loc_421F2A
421F8C:  ADD.W           LR, R0, #0x168
421F90:  MOV.W           R8, #0xB
421F94:  B               loc_421F26
421F96:  ADD.W           LR, R0, #0x184
421F9A:  MOV.W           R8, #0xC
421F9E:  B               loc_421F26
421FA0:  ADD.W           LR, R0, #0x1A0
421FA4:  MOV.W           R8, #0xD
421FA8:  B               loc_421F26
421FAA:  ADD.W           LR, R0, #0x1BC
421FAE:  MOV.W           R8, #0xE
421FB2:  B               loc_421F26
