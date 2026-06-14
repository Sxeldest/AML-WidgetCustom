; =========================================================
; Game Engine Function: silk_PLC
; Address            : 0xB39AE - 0xB3BF0
; =========================================================

B39AE:  PUSH            {R4-R7,LR}
B39B0:  ADD             R7, SP, #0xC
B39B2:  PUSH.W          {R8-R11}
B39B6:  SUB             SP, SP, #0x1C
B39B8:  MOV             R4, R0
B39BA:  MOV             R8, R1
B39BC:  MOVW            R1, #0x109C
B39C0:  LDR.W           R0, [R4,#0x90C]
B39C4:  LDR             R6, [R4,R1]
B39C6:  CMP             R0, R6
B39C8:  BEQ             loc_B39FC
B39CA:  MOVW            R6, #0x1098
B39CE:  MOV.W           R5, #0x10000
B39D2:  STR             R5, [R4,R6]
B39D4:  MOVW            R6, #0x1094
B39D8:  ADD             R1, R4
B39DA:  STR             R5, [R4,R6]
B39DC:  MOV.W           R6, #0x10A0
B39E0:  MOVS            R5, #2
B39E2:  STR             R5, [R4,R6]
B39E4:  MOVW            R12, #0x10A4
B39E8:  MOVS            R6, #0x14
B39EA:  LDR.W           R5, [R4,#0x918]
B39EE:  STR.W           R6, [R4,R12]
B39F2:  LSLS            R6, R5, #7
B39F4:  MOVW            R5, #0x104C
B39F8:  STR             R6, [R4,R5]
B39FA:  STR             R0, [R1]
B39FC:  CBZ             R3, loc_B3A14
B39FE:  LDR             R3, [R7,#arg_0]
B3A00:  MOV             R0, R4
B3A02:  MOV             R1, R8
B3A04:  BL              sub_B3BF0
B3A08:  MOV.W           R0, #0x1040
B3A0C:  LDR             R1, [R4,R0]
B3A0E:  ADDS            R1, #1
B3A10:  STR             R1, [R4,R0]
B3A12:  B               loc_B3BE8
B3A14:  LDRSB.W         R1, [R4,#0xACD]
B3A18:  MOVW            R2, #0x1044
B3A1C:  STR             R1, [R4,R2]
B3A1E:  MOVW            R2, #0x104C
B3A22:  ADD             R2, R4
B3A24:  CMP             R1, #2
B3A26:  BNE             loc_B3AF8
B3A28:  LDR.W           R0, [R4,#0x914]
B3A2C:  ADDW            R6, R4, #0x91C
B3A30:  STR.W           R8, [SP,#0x38+var_24]
B3A34:  CMP             R0, #0
B3A36:  STRD.W          R0, R4, [SP,#0x38+var_38]
B3A3A:  BEQ             loc_B3B20
B3A3C:  SUBS            R0, #1
B3A3E:  STR             R2, [SP,#0x38+var_2C]
B3A40:  STR             R0, [SP,#0x38+var_28]
B3A42:  MOVS            R5, #0
B3A44:  LDR.W           R4, [R8,R0,LSL#2]
B3A48:  CMP             R4, #1
B3A4A:  BLT             loc_B3B22
B3A4C:  LDR             R1, [SP,#0x38+var_38]
B3A4E:  MOVS            R0, #0xFFFF0000
B3A54:  LDR             R2, [SP,#0x38+var_34]
B3A56:  LDR.W           R10, [SP,#0x38+var_28]
B3A5A:  MOV.W           R8, #1
B3A5E:  ADD.W           R3, R0, R1,LSL#16
B3A62:  MOVW            R0, #0x1050
B3A66:  ADD             R0, R2
B3A68:  STR             R0, [SP,#0x38+var_30]
B3A6A:  ADD.W           R1, R1, R1,LSL#2
B3A6E:  LDR             R0, [SP,#0x38+var_24]
B3A70:  MOVS            R2, #0
B3A72:  MOVS            R5, #0
B3A74:  ADD.W           R0, R0, R1,LSL#1
B3A78:  STR             R0, [SP,#0x38+var_20]
B3A7A:  LDR             R0, [SP,#0x38+var_20]
B3A7C:  MOV             R9, R6
B3A7E:  ADDS            R6, R0, R2
B3A80:  LDRSH.W         LR, [R6,#0x56]
B3A84:  LDRSH.W         R12, [R6,#0x58]
B3A88:  LDRSH.W         R11, [R6,#0x5A]
B3A8C:  ADD.W           R0, R12, LR
B3A90:  LDRSH.W         R1, [R6,#0x5C]
B3A94:  ADD             R0, R11
B3A96:  LDRSH.W         R6, [R6,#0x5E]
B3A9A:  ADD             R0, R1
B3A9C:  ADD             R6, R0
B3A9E:  CMP             R6, R5
B3AA0:  BLE             loc_B3AD4
B3AA2:  ASRS            R0, R3, #0x10
B3AA4:  LDR             R4, [SP,#0x38+var_24]
B3AA6:  ADD.W           R0, R0, R0,LSL#2
B3AAA:  LDR             R1, [SP,#0x38+var_30]
B3AAC:  ADD.W           R0, R4, R0,LSL#1
B3AB0:  LDR.W           R12, [R0,#0x60]
B3AB4:  LDR             R5, [R0,#0x64]
B3AB6:  LDRH.W          R0, [R0,#0x68]
B3ABA:  STRH            R0, [R1,#8]
B3ABC:  STR             R5, [R1,#4]
B3ABE:  MOV             R5, R6
B3AC0:  STR.W           R12, [R1]
B3AC4:  LDR.W           R0, [R4,R10,LSL#2]
B3AC8:  LDR             R1, [SP,#0x38+var_2C]
B3ACA:  LSLS            R0, R0, #8
B3ACC:  STR             R0, [R1]
B3ACE:  LDR             R0, [SP,#0x38+var_28]
B3AD0:  LDR.W           R4, [R4,R0,LSL#2]
B3AD4:  MOV             R6, R9
B3AD6:  CMP.W           R10, #0
B3ADA:  BEQ             loc_B3B22
B3ADC:  LDR             R0, [R6]
B3ADE:  ADD.W           R1, R8, #1
B3AE2:  SUBS            R2, #0xA
B3AE4:  SUB.W           R10, R10, #1
B3AE8:  SUB.W           R3, R3, #0x10000
B3AEC:  MUL.W           R0, R0, R8
B3AF0:  MOV             R8, R1
B3AF2:  CMP             R0, R4
B3AF4:  BLT             loc_B3A7A
B3AF6:  B               loc_B3B22
B3AF8:  SXTH            R0, R0
B3AFA:  MOVS            R1, #0
B3AFC:  ADD.W           R0, R0, R0,LSL#3
B3B00:  ADDW            R6, R4, #0x91C
B3B04:  LSLS            R0, R0, #9
B3B06:  STR             R0, [R2]
B3B08:  MOVW            R0, #0x1058
B3B0C:  STRH            R1, [R4,R0]
B3B0E:  MOVW            R0, #0x1054
B3B12:  STR             R1, [R4,R0]
B3B14:  MOVW            R0, #0x1050
B3B18:  STR             R1, [R4,R0]
B3B1A:  LDR.W           R5, [R4,#0x914]
B3B1E:  B               loc_B3BA8
B3B20:  MOVS            R5, #0
B3B22:  LDR             R4, [SP,#0x38+var_34]
B3B24:  MOVW            R0, #0x1054
B3B28:  MOVS            R2, #0
B3B2A:  MOVW            R8, #0x1050
B3B2E:  MOVW            R1, #0x1058
B3B32:  ADD.W           R9, R4, R0
B3B36:  STR             R2, [R4,R0]
B3B38:  STR.W           R2, [R4,R8]
B3B3C:  STRH            R2, [R4,R1]
B3B3E:  STRH            R5, [R4,R0]
B3B40:  MOVW            R0, #0x2CCC
B3B44:  CMP             R5, R0
B3B46:  BGT             loc_B3B74
B3B48:  MOVW            R0, #0x3400
B3B4C:  CMP             R5, #1
B3B4E:  MOV             R1, R5
B3B50:  MOVT            R0, #0xB3
B3B54:  IT LE
B3B56:  MOVLE           R1, #1
B3B58:  BLX             sub_108874
B3B5C:  SMULBB.W        R0, R0, R5
B3B60:  MOVS            R1, #0
B3B62:  STR.W           R1, [R4,R8]
B3B66:  LSRS            R0, R0, #0xA
B3B68:  STRH.W          R0, [R9]
B3B6C:  MOVW            R0, #0x1056
B3B70:  STR             R1, [R4,R0]
B3B72:  B               loc_B3BA2
B3B74:  MOVW            R0, #0x3CCE
B3B78:  CMP             R5, R0
B3B7A:  BLT             loc_B3BA2
B3B7C:  MOVW            R0, #0x4000
B3B80:  MOV             R1, R5
B3B82:  MOVT            R0, #0xF33
B3B86:  BLX             sub_108874
B3B8A:  SMULBB.W        R0, R0, R5
B3B8E:  MOVW            R1, #0x1050
B3B92:  MOVS            R2, #0
B3B94:  STR             R2, [R4,R1]
B3B96:  LSRS            R0, R0, #0xE
B3B98:  STRH.W          R0, [R9]
B3B9C:  MOVW            R0, #0x1056
B3BA0:  STR             R2, [R4,R0]
B3BA2:  LDR.W           R8, [SP,#0x38+var_24]
B3BA6:  LDR             R5, [SP,#0x38+var_38]
B3BA8:  LDR.W           R2, [R4,#0x924]
B3BAC:  MOVW            R0, #0x105A
B3BB0:  ADD             R0, R4; dest
B3BB2:  ADD.W           R1, R8, #0x40 ; '@'; src
B3BB6:  LSLS            R2, R2, #1; n
B3BB8:  BLX             j_memcpy
B3BBC:  LDR.W           R0, [R8,#0x88]
B3BC0:  MOVW            R1, #0x1090
B3BC4:  STRH            R0, [R4,R1]
B3BC6:  ADD.W           R0, R8, R5,LSL#2
B3BCA:  MOVW            R2, #0x1098
B3BCE:  LDRD.W          R1, R0, [R0,#8]
B3BD2:  STR             R0, [R4,R2]
B3BD4:  MOVW            R0, #0x1094
B3BD8:  STR             R1, [R4,R0]
B3BDA:  MOV.W           R1, #0x10A0
B3BDE:  LDR             R0, [R6]
B3BE0:  STR             R5, [R4,R1]
B3BE2:  MOVW            R1, #0x10A4
B3BE6:  STR             R0, [R4,R1]
B3BE8:  ADD             SP, SP, #0x1C
B3BEA:  POP.W           {R8-R11}
B3BEE:  POP             {R4-R7,PC}
