; =========================================================
; Game Engine Function: sub_65EFC
; Address            : 0x65EFC - 0x66056
; =========================================================

65EFC:  PUSH            {R4-R7,LR}
65EFE:  ADD             R7, SP, #0xC
65F00:  PUSH.W          {R8-R11}
65F04:  SUB             SP, SP, #4
65F06:  VPUSH           {D8-D9}
65F0A:  SUB             SP, SP, #8
65F0C:  MOV             R9, R1
65F0E:  CMP             R1, #0
65F10:  STR             R0, [SP,#0x38+var_34]
65F12:  BEQ.W           loc_6603A
65F16:  LDR             R0, =(off_114AD8 - 0x65F22)
65F18:  MOVS            R3, #0
65F1A:  LDR.W           R1, [R9,#0x5C]
65F1E:  ADD             R0, PC; off_114AD8
65F20:  LDR             R0, [R0]; dword_1A4434
65F22:  LDR             R0, [R0]
65F24:  LDR.W           R0, [R0,#0x3B0]
65F28:  LDR             R0, [R0]
65F2A:  ADDS            R2, R0, #4
65F2C:  MOVW            R0, #0xFFFF
65F30:  B               loc_65F3A
65F32:  ADDS            R3, #1
65F34:  CMP.W           R3, #0x3EC
65F38:  BEQ             loc_65F5A
65F3A:  LDR.W           R6, [R2,R3,LSL#2]
65F3E:  CMP             R6, #0
65F40:  BEQ             loc_65F32
65F42:  LDR             R6, [R6]
65F44:  CMP             R6, #0
65F46:  ITT NE
65F48:  LDRNE.W         R6, [R6,#0x128]
65F4C:  CMPNE           R6, #0
65F4E:  BEQ             loc_65F32
65F50:  LDR             R6, [R6,#0x5C]
65F52:  CMP             R6, R1
65F54:  IT EQ
65F56:  MOVEQ           R0, R3
65F58:  B               loc_65F32
65F5A:  LDR             R1, =(unk_1176A0 - 0x65F66)
65F5C:  UXTH            R2, R0
65F5E:  MOV.W           R0, #0x23C
65F62:  ADD             R1, PC; unk_1176A0
65F64:  MLA.W           R11, R2, R0, R1
65F68:  LDRB.W          R0, [R11,#0x208]
65F6C:  CMP             R0, #0
65F6E:  ITT EQ
65F70:  LDRBEQ.W        R3, [R11,#0x209]
65F74:  CMPEQ           R3, #0
65F76:  BEQ             loc_65FDA
65F78:  VMOV.I32        Q4, #0
65F7C:  MOV.W           R10, #0
65F80:  MOVS            R4, #8
65F82:  MOVS            R5, #0
65F84:  ADD.W           R6, R11, R5
65F88:  CBZ             R0, loc_65FCC
65F8A:  ADD.W           R8, R11, R5,LSL#2
65F8E:  LDR.W           R0, [R8,#0x214]
65F92:  CBZ             R0, loc_65FAE
65F94:  ADD.W           R1, R11, R4
65F98:  VST1.32         {D8-D9}, [R1]!
65F9C:  VST1.32         {D8-D9}, [R1]!
65FA0:  STR.W           R10, [R1]
65FA4:  LDR             R1, [R0]
65FA6:  LDR             R1, [R1,#4]
65FA8:  BLX             R1
65FAA:  STR.W           R10, [R8,#0x214]
65FAE:  ADD.W           R0, R11, R4
65FB2:  SUB.W           R1, R0, #8
65FB6:  ADDS            R0, #8
65FB8:  VST1.32         {D8-D9}, [R0]!
65FBC:  VST1.32         {D8-D9}, [R0]!
65FC0:  VST1.32         {D8-D9}, [R1]
65FC4:  STR.W           R10, [R0]
65FC8:  STRB.W          R10, [R6,#0x208]
65FCC:  CMP             R5, #9
65FCE:  BEQ             loc_6603A
65FD0:  ADDS            R5, #1
65FD2:  LDRB.W          R0, [R6,#0x209]
65FD6:  ADDS            R4, #0x34 ; '4'
65FD8:  B               loc_65F84
65FDA:  MOV.W           R3, #0x23C
65FDE:  MLA.W           R3, R2, R3, R1
65FE2:  LDRB.W          R6, [R3,#0x20A]
65FE6:  CMP             R6, #0
65FE8:  ITT EQ
65FEA:  LDRBEQ.W        R3, [R3,#0x20B]
65FEE:  CMPEQ           R3, #0
65FF0:  BNE             loc_65F78
65FF2:  MOV.W           R3, #0x23C
65FF6:  MLA.W           R3, R2, R3, R1
65FFA:  LDRB.W          R6, [R3,#0x20C]
65FFE:  CMP             R6, #0
66000:  ITT EQ
66002:  LDRBEQ.W        R3, [R3,#0x20D]
66006:  CMPEQ           R3, #0
66008:  BNE             loc_65F78
6600A:  MOV.W           R3, #0x23C
6600E:  MLA.W           R3, R2, R3, R1
66012:  LDRB.W          R6, [R3,#0x20E]
66016:  CMP             R6, #0
66018:  ITT EQ
6601A:  LDRBEQ.W        R3, [R3,#0x20F]
6601E:  CMPEQ           R3, #0
66020:  BNE             loc_65F78
66022:  MOV.W           R3, #0x23C
66026:  MLA.W           R1, R2, R3, R1
6602A:  LDRB.W          R2, [R1,#0x210]
6602E:  CMP             R2, #0
66030:  ITT EQ
66032:  LDRBEQ.W        R1, [R1,#0x211]
66036:  CMPEQ           R1, #0
66038:  BNE             loc_65F78
6603A:  LDR             R0, =(off_1A3AA4 - 0x66042)
6603C:  MOV             R1, R9
6603E:  ADD             R0, PC; off_1A3AA4
66040:  LDR             R2, [R0]
66042:  LDR             R0, [SP,#0x38+var_34]
66044:  ADD             SP, SP, #8
66046:  VPOP            {D8-D9}
6604A:  ADD             SP, SP, #4
6604C:  POP.W           {R8-R11}
66050:  POP.W           {R4-R7,LR}
66054:  BX              R2
