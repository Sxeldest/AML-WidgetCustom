; =========================================================
; Game Engine Function: silk_PLC
; Address            : 0x191BD2 - 0x191E14
; =========================================================

191BD2:  PUSH            {R4-R7,LR}
191BD4:  ADD             R7, SP, #0xC
191BD6:  PUSH.W          {R8-R11}
191BDA:  SUB             SP, SP, #0x1C
191BDC:  MOV             R4, R0
191BDE:  MOV             R8, R1
191BE0:  MOVW            R1, #0x109C
191BE4:  LDR.W           R0, [R4,#0x90C]
191BE8:  LDR             R6, [R4,R1]
191BEA:  CMP             R0, R6
191BEC:  BEQ             loc_191C20
191BEE:  MOVW            R6, #0x1098
191BF2:  MOV.W           R5, #0x10000
191BF6:  STR             R5, [R4,R6]
191BF8:  MOVW            R6, #0x1094
191BFC:  ADD             R1, R4
191BFE:  STR             R5, [R4,R6]
191C00:  MOV.W           R6, #0x10A0
191C04:  MOVS            R5, #2
191C06:  STR             R5, [R4,R6]
191C08:  MOVW            R12, #0x10A4
191C0C:  MOVS            R6, #0x14
191C0E:  LDR.W           R5, [R4,#0x918]
191C12:  STR.W           R6, [R4,R12]
191C16:  LSLS            R6, R5, #7
191C18:  MOVW            R5, #0x104C
191C1C:  STR             R6, [R4,R5]
191C1E:  STR             R0, [R1]
191C20:  CBZ             R3, loc_191C38
191C22:  LDR             R3, [R7,#arg_0]
191C24:  MOV             R0, R4
191C26:  MOV             R1, R8
191C28:  BL              sub_191E14
191C2C:  MOV.W           R0, #0x1040
191C30:  LDR             R1, [R4,R0]
191C32:  ADDS            R1, #1
191C34:  STR             R1, [R4,R0]
191C36:  B               loc_191E0C
191C38:  LDRSB.W         R1, [R4,#0xACD]
191C3C:  MOVW            R2, #0x1044
191C40:  STR             R1, [R4,R2]
191C42:  MOVW            R2, #0x104C
191C46:  ADD             R2, R4
191C48:  CMP             R1, #2
191C4A:  BNE             loc_191D1C
191C4C:  LDR.W           R0, [R4,#0x914]
191C50:  ADDW            R6, R4, #0x91C
191C54:  STR.W           R8, [SP,#0x38+var_24]
191C58:  CMP             R0, #0
191C5A:  STRD.W          R0, R4, [SP,#0x38+var_38]
191C5E:  BEQ             loc_191D44
191C60:  SUBS            R0, #1
191C62:  STR             R2, [SP,#0x38+var_2C]
191C64:  STR             R0, [SP,#0x38+var_28]
191C66:  MOVS            R5, #0
191C68:  LDR.W           R4, [R8,R0,LSL#2]
191C6C:  CMP             R4, #1
191C6E:  BLT             loc_191D46
191C70:  LDR             R1, [SP,#0x38+var_38]
191C72:  MOVS            R0, #0xFFFF0000
191C78:  LDR             R2, [SP,#0x38+var_34]
191C7A:  LDR.W           R10, [SP,#0x38+var_28]
191C7E:  MOV.W           R8, #1
191C82:  ADD.W           R3, R0, R1,LSL#16
191C86:  MOVW            R0, #0x1050
191C8A:  ADD             R0, R2
191C8C:  STR             R0, [SP,#0x38+var_30]
191C8E:  ADD.W           R1, R1, R1,LSL#2
191C92:  LDR             R0, [SP,#0x38+var_24]
191C94:  MOVS            R2, #0
191C96:  MOVS            R5, #0
191C98:  ADD.W           R0, R0, R1,LSL#1
191C9C:  STR             R0, [SP,#0x38+var_20]
191C9E:  LDR             R0, [SP,#0x38+var_20]
191CA0:  MOV             R9, R6
191CA2:  ADDS            R6, R0, R2
191CA4:  LDRSH.W         LR, [R6,#0x56]
191CA8:  LDRSH.W         R12, [R6,#0x58]
191CAC:  LDRSH.W         R11, [R6,#0x5A]
191CB0:  ADD.W           R0, R12, LR
191CB4:  LDRSH.W         R1, [R6,#0x5C]
191CB8:  ADD             R0, R11
191CBA:  LDRSH.W         R6, [R6,#0x5E]
191CBE:  ADD             R0, R1
191CC0:  ADD             R6, R0
191CC2:  CMP             R6, R5
191CC4:  BLE             loc_191CF8
191CC6:  ASRS            R0, R3, #0x10
191CC8:  LDR             R4, [SP,#0x38+var_24]
191CCA:  ADD.W           R0, R0, R0,LSL#2
191CCE:  LDR             R1, [SP,#0x38+var_30]
191CD0:  ADD.W           R0, R4, R0,LSL#1
191CD4:  LDR.W           R12, [R0,#0x60]
191CD8:  LDR             R5, [R0,#0x64]
191CDA:  LDRH.W          R0, [R0,#0x68]
191CDE:  STRH            R0, [R1,#8]
191CE0:  STR             R5, [R1,#4]
191CE2:  MOV             R5, R6
191CE4:  STR.W           R12, [R1]
191CE8:  LDR.W           R0, [R4,R10,LSL#2]
191CEC:  LDR             R1, [SP,#0x38+var_2C]
191CEE:  LSLS            R0, R0, #8
191CF0:  STR             R0, [R1]
191CF2:  LDR             R0, [SP,#0x38+var_28]
191CF4:  LDR.W           R4, [R4,R0,LSL#2]
191CF8:  MOV             R6, R9
191CFA:  CMP.W           R10, #0
191CFE:  BEQ             loc_191D46
191D00:  LDR             R0, [R6]
191D02:  ADD.W           R1, R8, #1
191D06:  SUBS            R2, #0xA
191D08:  SUB.W           R10, R10, #1
191D0C:  SUB.W           R3, R3, #0x10000
191D10:  MUL.W           R0, R0, R8
191D14:  MOV             R8, R1
191D16:  CMP             R0, R4
191D18:  BLT             loc_191C9E
191D1A:  B               loc_191D46
191D1C:  SXTH            R0, R0
191D1E:  MOVS            R1, #0
191D20:  ADD.W           R0, R0, R0,LSL#3
191D24:  ADDW            R6, R4, #0x91C
191D28:  LSLS            R0, R0, #9
191D2A:  STR             R0, [R2]
191D2C:  MOVW            R0, #0x1058
191D30:  STRH            R1, [R4,R0]
191D32:  MOVW            R0, #0x1054
191D36:  STR             R1, [R4,R0]
191D38:  MOVW            R0, #0x1050
191D3C:  STR             R1, [R4,R0]
191D3E:  LDR.W           R5, [R4,#0x914]
191D42:  B               loc_191DCC
191D44:  MOVS            R5, #0
191D46:  LDR             R4, [SP,#0x38+var_34]
191D48:  MOVW            R0, #0x1054
191D4C:  MOVS            R2, #0
191D4E:  MOVW            R8, #0x1050
191D52:  MOVW            R1, #0x1058
191D56:  ADD.W           R9, R4, R0
191D5A:  STR             R2, [R4,R0]
191D5C:  STR.W           R2, [R4,R8]
191D60:  STRH            R2, [R4,R1]
191D62:  STRH            R5, [R4,R0]
191D64:  MOVW            R0, #0x2CCC
191D68:  CMP             R5, R0
191D6A:  BGT             loc_191D98
191D6C:  MOVW            R0, #0x3400
191D70:  CMP             R5, #1
191D72:  MOV             R1, R5
191D74:  MOVT            R0, #0xB3
191D78:  IT LE
191D7A:  MOVLE           R1, #1
191D7C:  BLX             sub_220A6C
191D80:  SMULBB.W        R0, R0, R5
191D84:  MOVS            R1, #0
191D86:  STR.W           R1, [R4,R8]
191D8A:  LSRS            R0, R0, #0xA
191D8C:  STRH.W          R0, [R9]
191D90:  MOVW            R0, #0x1056
191D94:  STR             R1, [R4,R0]
191D96:  B               loc_191DC6
191D98:  MOVW            R0, #0x3CCE
191D9C:  CMP             R5, R0
191D9E:  BLT             loc_191DC6
191DA0:  MOVW            R0, #0x4000
191DA4:  MOV             R1, R5
191DA6:  MOVT            R0, #0xF33
191DAA:  BLX             sub_220A6C
191DAE:  SMULBB.W        R0, R0, R5
191DB2:  MOVW            R1, #0x1050
191DB6:  MOVS            R2, #0
191DB8:  STR             R2, [R4,R1]
191DBA:  LSRS            R0, R0, #0xE
191DBC:  STRH.W          R0, [R9]
191DC0:  MOVW            R0, #0x1056
191DC4:  STR             R2, [R4,R0]
191DC6:  LDR.W           R8, [SP,#0x38+var_24]
191DCA:  LDR             R5, [SP,#0x38+var_38]
191DCC:  LDR.W           R2, [R4,#0x924]
191DD0:  MOVW            R0, #0x105A
191DD4:  ADD             R0, R4; dest
191DD6:  ADD.W           R1, R8, #0x40 ; '@'; src
191DDA:  LSLS            R2, R2, #1; n
191DDC:  BLX             j_memcpy
191DE0:  LDR.W           R0, [R8,#0x88]
191DE4:  MOVW            R1, #0x1090
191DE8:  STRH            R0, [R4,R1]
191DEA:  ADD.W           R0, R8, R5,LSL#2
191DEE:  MOVW            R2, #0x1098
191DF2:  LDRD.W          R1, R0, [R0,#8]
191DF6:  STR             R0, [R4,R2]
191DF8:  MOVW            R0, #0x1094
191DFC:  STR             R1, [R4,R0]
191DFE:  MOV.W           R1, #0x10A0
191E02:  LDR             R0, [R6]
191E04:  STR             R5, [R4,R1]
191E06:  MOVW            R1, #0x10A4
191E0A:  STR             R0, [R4,R1]
191E0C:  ADD             SP, SP, #0x1C
191E0E:  POP.W           {R8-R11}
191E12:  POP             {R4-R7,PC}
