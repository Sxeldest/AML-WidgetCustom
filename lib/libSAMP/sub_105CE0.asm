; =========================================================
; Game Engine Function: sub_105CE0
; Address            : 0x105CE0 - 0x105EE4
; =========================================================

105CE0:  PUSH            {R4-R7,LR}
105CE2:  ADD             R7, SP, #0xC
105CE4:  PUSH.W          {R8-R11}
105CE8:  SUB             SP, SP, #0x14C
105CEA:  MOV             R4, R1
105CEC:  ADD.W           R1, R0, #0x10
105CF0:  CMP             R4, #0
105CF2:  BEQ             loc_105D76
105CF4:  MOV             R5, R4
105CF6:  MOVS            R3, #1
105CF8:  VLD1.32         {D16-D17}, [R5]!
105CFC:  LDR             R2, =(off_23496C - 0x105D04)
105CFE:  LDR             R6, [R4,#0x24]
105D00:  ADD             R2, PC; off_23496C
105D02:  STRB            R3, [R0,#0xC]
105D04:  STR             R6, [R0,#0x34]
105D06:  MOV             R3, R5
105D08:  VST1.32         {D16-D17}, [R1]!
105D0C:  VLD1.32         {D16-D17}, [R3]!
105D10:  LDR             R6, [R2]; dword_23DEF4
105D12:  VST1.32         {D16-D17}, [R1]
105D16:  LDRB.W          R2, [R0,#0x60]
105D1A:  LDR             R1, [R6]
105D1C:  LDR             R3, [R3]
105D1E:  CMP             R2, #0
105D20:  STR             R3, [R0,#0x30]
105D22:  BNE.W           loc_105ED8
105D26:  CMP             R1, #0
105D28:  BEQ.W           loc_105ED8
105D2C:  LDR.W           R0, [R1,#0x3B0]
105D30:  LDR             R0, [R0]
105D32:  CMP             R0, #0
105D34:  BEQ.W           loc_105ED8
105D38:  MOVW            R1, #0x13BC
105D3C:  LDR             R0, [R0,R1]
105D3E:  LDR.W           R9, [R0,#0x1C]
105D42:  CMP.W           R9, #0
105D46:  BEQ.W           loc_105ED8
105D4A:  ADD.W           R8, SP, #0x168+var_48
105D4E:  VMOV.I32        Q8, #0
105D52:  MOVS            R1, #0
105D54:  MOV             R0, R8
105D56:  STR             R1, [SP,#0x168+var_24]
105D58:  VST1.64         {D16-D17}, [R0]!
105D5C:  VST1.64         {D16-D17}, [R0]!
105D60:  STR             R1, [R0]
105D62:  MOV             R0, R9
105D64:  BL              sub_104648
105D68:  LDR             R1, [R4,#0x24]
105D6A:  MOVW            R11, #0xFFFF
105D6E:  CMP             R0, #0x22 ; '"'
105D70:  BNE             loc_105D8C
105D72:  CBNZ            R1, loc_105D90
105D74:  B               loc_105ED8
105D76:  VMOV.I32        Q8, #0
105D7A:  MOVS            R2, #0
105D7C:  STRB            R2, [R0,#0xC]
105D7E:  STR             R2, [R0,#0x34]
105D80:  VST1.32         {D16-D17}, [R1]!
105D84:  VST1.32         {D16-D17}, [R1]!
105D88:  STR             R2, [R1]
105D8A:  B               loc_105ED8
105D8C:  CMP             R1, #0
105D8E:  BEQ             loc_105E6C
105D90:  LDR             R0, [R6]
105D92:  MOVS            R2, #0
105D94:  LDR.W           R3, [R0,#0x3B0]
105D98:  LDR             R0, [R3]
105D9A:  CMP             R0, #0
105D9C:  BEQ             loc_105E6E
105D9E:  LDR.W           R10, [R3,#4]
105DA2:  CMP.W           R10, #0
105DA6:  BEQ             loc_105E6E
105DA8:  LDR.W           R8, [R3,#0x10]
105DAC:  CMP.W           R8, #0
105DB0:  BEQ             loc_105E30
105DB2:  MOVS            R2, #0
105DB4:  BL              sub_148F74
105DB8:  CMP             R0, R11
105DBA:  BNE             loc_105DEA
105DBC:  LDR             R1, [R4,#0x24]
105DBE:  CBZ             R1, loc_105DF8
105DC0:  MOVW            R0, #0xEA60
105DC4:  ADD.W           R2, R10, R0
105DC8:  LDRD.W          R0, R2, [R2]
105DCC:  CMP             R0, R2
105DCE:  BEQ             loc_105DEE
105DD0:  MOV.W           R12, #0x1F40
105DD4:  LDR             R3, [R0]
105DD6:  ADD.W           R3, R10, R3,LSL#2
105DDA:  LDR.W           R3, [R3,R12]
105DDE:  CMP             R3, R1
105DE0:  BEQ             loc_105DEE
105DE2:  ADDS            R0, #4
105DE4:  CMP             R0, R2
105DE6:  BNE             loc_105DD4
105DE8:  B               loc_105DF8
105DEA:  MOVS            R2, #1
105DEC:  B               loc_105E2E
105DEE:  CMP             R0, R2
105DF0:  ITT NE
105DF2:  LDRHNE          R0, [R0]
105DF4:  CMPNE           R0, R11
105DF6:  BNE             loc_105EE0
105DF8:  MOV             R0, R8
105DFA:  BL              sub_148684
105DFE:  CMP             R0, R11
105E00:  BNE             loc_105E2C
105E02:  LDR             R0, [R4,#0x24]
105E04:  ADD.W           R8, SP, #0x168+var_48
105E08:  MOVS            R2, #0
105E0A:  STRD.W          R2, R2, [SP,#0x168+var_160]
105E0E:  LDR             R1, [R0,#0x14]
105E10:  STR             R2, [SP,#0x168+var_158]
105E12:  CBZ             R1, loc_105E36
105E14:  ADD.W           R2, R4, #0x18
105E18:  ADD             R0, SP, #0x168+var_160
105E1A:  BL              sub_108F30
105E1E:  LDR             R0, [SP,#0x168+var_15C]
105E20:  LDR             R1, [SP,#0x168+var_160]
105E22:  VLDR            S0, [SP,#0x168+var_158]
105E26:  STRD.W          R1, R0, [R4,#0x18]
105E2A:  B               loc_105E68
105E2C:  MOVS            R2, #3
105E2E:  MOV             R11, R0
105E30:  ADD.W           R8, SP, #0x168+var_48
105E34:  B               loc_105E6E
105E36:  LDR             R1, [R0,#4]
105E38:  LDR             R2, [R0,#8]
105E3A:  LDR             R0, [R0,#0xC]
105E3C:  VLDR            S0, [R4,#0x18]
105E40:  VMOV            S6, R1
105E44:  VLDR            S2, [R4,#0x1C]
105E48:  VMOV            S8, R2
105E4C:  VADD.F32        S6, S6, S0
105E50:  VLDR            S4, [R4,#0x20]
105E54:  VMOV            S0, R0
105E58:  VADD.F32        S2, S8, S2
105E5C:  VADD.F32        S0, S0, S4
105E60:  VSTR            S6, [R4,#0x18]
105E64:  VSTR            S2, [R4,#0x1C]
105E68:  VSTR            S0, [R4,#0x20]
105E6C:  MOVS            R2, #0
105E6E:  MOVS            R1, #0x20 ; ' '
105E70:  ADD.W           R0, R8, #3
105E74:  VLD1.32         {D16-D17}, [R4],R1
105E78:  VLD1.32         {D18-D19}, [R5]
105E7C:  VST1.8          {D16-D17}, [R0]!
105E80:  VST1.8          {D18-D19}, [R0]!
105E84:  LDR             R1, [R4]
105E86:  STR             R1, [R0]
105E88:  MOV             R0, R9
105E8A:  STRH.W          R11, [SP,#0x168+var_47]
105E8E:  STRB.W          R2, [SP,#0x168+var_48]
105E92:  BL              sub_104648
105E96:  STRB.W          R0, [SP,#0x168+var_24+3]
105E9A:  ADD             R0, SP, #0x168+var_160
105E9C:  BL              sub_17D4A8
105EA0:  MOVS            R1, #0xCE
105EA2:  STRB.W          R1, [R7,#var_1D]
105EA6:  SUB.W           R1, R7, #-var_1D
105EAA:  MOVS            R2, #8
105EAC:  MOVS            R3, #1
105EAE:  BL              sub_17D628
105EB2:  ADD             R0, SP, #0x168+var_160
105EB4:  ADD             R1, SP, #0x168+var_48
105EB6:  MOVS            R2, #0x28 ; '('
105EB8:  BL              sub_17D566
105EBC:  LDR             R0, [R6]
105EBE:  LDR.W           R0, [R0,#0x210]
105EC2:  LDR             R1, [R0]
105EC4:  LDR             R6, [R1,#0x20]
105EC6:  MOVS            R1, #0
105EC8:  MOVS            R2, #1
105ECA:  STR             R1, [SP,#0x168+var_168]
105ECC:  ADD             R1, SP, #0x168+var_160
105ECE:  MOVS            R3, #7
105ED0:  BLX             R6
105ED2:  ADD             R0, SP, #0x168+var_160
105ED4:  BL              sub_17D542
105ED8:  ADD             SP, SP, #0x14C
105EDA:  POP.W           {R8-R11}
105EDE:  POP             {R4-R7,PC}
105EE0:  MOVS            R2, #2
105EE2:  B               loc_105E2E
