; =========================================================
; Game Engine Function: silk_gains_quant
; Address            : 0xB7CE8 - 0xB7E3A
; =========================================================

B7CE8:  PUSH            {R4-R7,LR}
B7CEA:  ADD             R7, SP, #0xC
B7CEC:  PUSH.W          {R8-R11}
B7CF0:  SUB             SP, SP, #4
B7CF2:  LDR.W           R9, [R7,#arg_0]
B7CF6:  MOV             R8, R3
B7CF8:  MOV             R5, R2
B7CFA:  MOV             R6, R1
B7CFC:  MOV             R4, R0
B7CFE:  CMP.W           R9, #1
B7D02:  BLT.W           loc_B7E32
B7D06:  MOVW            R11, #0xF7F
B7D0A:  MOV.W           R10, #0
B7D0E:  LDR.W           R0, [R6,R10,LSL#2]
B7D12:  BLX             j_silk_lin2log
B7D16:  LDR.W           R0, [R6,R10,LSL#2]
B7D1A:  BLX             j_silk_lin2log
B7D1E:  MOVS            R1, #0xF7D60000
B7D24:  ADD.W           R0, R1, R0,LSL#16
B7D28:  MOVW            R1, #0x8CB
B7D2C:  SMULTB.W        R1, R0, R1
B7D30:  LSRS            R0, R1, #0x10
B7D32:  STRB.W          R0, [R4,R10]
B7D36:  LDRSB.W         R2, [R5]
B7D3A:  SBFX.W          R1, R1, #0x10, #8
B7D3E:  CMP             R1, R2
B7D40:  MOV.W           R1, #0
B7D44:  ITT LT
B7D46:  ADDLT           R0, #1
B7D48:  STRBLT.W        R0, [R4,R10]
B7D4C:  SXTB            R2, R0
B7D4E:  CMP             R2, #0
B7D50:  IT LE
B7D52:  MOVLE           R0, R1
B7D54:  CMP             R2, #0x3F ; '?'
B7D56:  UXTB            R1, R0
B7D58:  IT GT
B7D5A:  MOVGT           R1, #0x3F ; '?'
B7D5C:  ORRS.W          R2, R10, R8
B7D60:  STRB.W          R1, [R4,R10]
B7D64:  LDRB            R0, [R5]
B7D66:  BEQ             loc_B7DC0
B7D68:  SUBS            R1, R1, R0
B7D6A:  STRB.W          R1, [R4,R10]
B7D6E:  LDRSB.W         R2, [R5]
B7D72:  SXTB            R3, R1
B7D74:  ADD.W           R0, R2, #8
B7D78:  CMP             R3, R0
B7D7A:  BLE             loc_B7D8C
B7D7C:  RSB.W           R1, R2, #0x1F8
B7D80:  ADD             R1, R3
B7D82:  ADDS            R1, #1
B7D84:  ADD.W           R1, R0, R1,LSR#1
B7D88:  STRB.W          R1, [R4,R10]
B7D8C:  SXTB            R2, R1
B7D8E:  CMN.W           R2, #4
B7D92:  IT LE
B7D94:  MOVLE           R1, #0xFFFFFFFC
B7D98:  SXTB            R2, R1
B7D9A:  CMP             R2, #0x24 ; '$'
B7D9C:  IT GE
B7D9E:  MOVGE           R1, #0x24 ; '$'
B7DA0:  STRB.W          R1, [R4,R10]
B7DA4:  SXTB            R1, R1
B7DA6:  CMP             R0, R1
B7DA8:  BGE             loc_B7DDA
B7DAA:  LDRB            R2, [R5]
B7DAC:  RSB.W           R0, R0, R1,LSL#1
B7DB0:  MOVS            R1, #0x3F ; '?'
B7DB2:  ADD             R0, R2
B7DB4:  STRB            R0, [R5]
B7DB6:  SXTB            R0, R0
B7DB8:  CMP             R0, #0x3F ; '?'
B7DBA:  IT GE
B7DBC:  MOVGE           R0, R1
B7DBE:  B               loc_B7DDE
B7DC0:  SXTB            R2, R0
B7DC2:  SUBS            R0, R2, #4
B7DC4:  CMP             R2, #0x44 ; 'D'
B7DC6:  BLT             loc_B7DEE
B7DC8:  CMP             R1, R0
B7DCA:  BGT             loc_B7DFC
B7DCC:  CMP             R1, #0x3F ; '?'
B7DCE:  MOV.W           R0, #0x3F ; '?'
B7DD2:  IT LS
B7DD4:  MOVLS           R1, R0
B7DD6:  MOV             R0, R1
B7DD8:  B               loc_B7DFC
B7DDA:  LDRB            R0, [R5]
B7DDC:  ADD             R0, R1
B7DDE:  STRB            R0, [R5]
B7DE0:  LDRB.W          R0, [R4,R10]
B7DE4:  ADDS            R0, #4
B7DE6:  STRB.W          R0, [R4,R10]
B7DEA:  LDRB            R0, [R5]
B7DEC:  B               loc_B7E02
B7DEE:  CMP             R1, #0x3F ; '?'
B7DF0:  BLS             loc_B7DF6
B7DF2:  MOVS            R0, #0x3F ; '?'
B7DF4:  B               loc_B7DFC
B7DF6:  CMP             R1, R0
B7DF8:  IT GE
B7DFA:  MOVGE           R0, R1
B7DFC:  STRB.W          R0, [R4,R10]
B7E00:  STRB            R0, [R5]
B7E02:  SXTB            R0, R0
B7E04:  MOVW            R1, #0x1C71
B7E08:  SMULBB.W        R1, R0, R1
B7E0C:  MOVS            R2, #0x1D
B7E0E:  SMULBB.W        R0, R0, R2
B7E12:  ADD.W           R0, R0, R1,ASR#16
B7E16:  ADDW            R0, R0, #0x82A
B7E1A:  CMP             R0, R11
B7E1C:  IT GE
B7E1E:  MOVGE           R0, R11
B7E20:  BLX             j_silk_log2lin
B7E24:  STR.W           R0, [R6,R10,LSL#2]
B7E28:  ADD.W           R10, R10, #1
B7E2C:  CMP             R9, R10
B7E2E:  BNE.W           loc_B7D0E
B7E32:  ADD             SP, SP, #4
B7E34:  POP.W           {R8-R11}
B7E38:  POP             {R4-R7,PC}
