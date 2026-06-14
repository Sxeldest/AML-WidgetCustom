; =========================================================
; Game Engine Function: silk_VQ_WMat_EC_c
; Address            : 0x1AFBE4 - 0x1AFD8E
; =========================================================

1AFBE4:  PUSH            {R4-R7,LR}
1AFBE6:  ADD             R7, SP, #0xC
1AFBE8:  PUSH.W          {R8-R11}
1AFBEC:  SUB             SP, SP, #0x2C
1AFBEE:  STR             R3, [SP,#0x48+var_3C]
1AFBF0:  MOV             R5, #0x7FFFFFFF
1AFBF4:  LDR             R3, [R7,#arg_4]
1AFBF6:  LDRD.W          LR, R12, [R3]
1AFBFA:  LDRD.W          R4, R6, [R3,#8]
1AFBFE:  LDR             R3, [R3,#0x10]
1AFC00:  STR             R2, [SP,#0x48+var_34]
1AFC02:  STR             R5, [R2]
1AFC04:  STR             R1, [SP,#0x48+var_40]
1AFC06:  STR             R5, [R1]
1AFC08:  MOVS            R1, #0
1AFC0A:  STR             R0, [SP,#0x48+var_44]
1AFC0C:  STRB            R1, [R0]
1AFC0E:  LDR             R0, [R7,#arg_1C]
1AFC10:  CMP             R0, #1
1AFC12:  BLT.W           loc_1AFD86
1AFC16:  LSLS            R0, R6, #7
1AFC18:  LDR             R5, [R7,#arg_14]
1AFC1A:  STR             R0, [SP,#0x48+var_20]
1AFC1C:  MOVS            R0, #0
1AFC1E:  SUB.W           R3, R0, R3,LSL#7
1AFC22:  LDR.W           R9, [R7,#arg_0]
1AFC26:  MOV.W           R11, #4
1AFC2A:  MOV.W           R8, #0
1AFC2E:  LSLS            R0, R3, #1
1AFC30:  STR             R0, [SP,#0x48+var_24]
1AFC32:  SXTH            R0, R5
1AFC34:  STR             R0, [SP,#0x48+var_38]
1AFC36:  MOV.W           R0, LR,LSL#7
1AFC3A:  STR             R0, [SP,#0x48+var_28]
1AFC3C:  MOV.W           R0, R12,LSL#7
1AFC40:  STR             R0, [SP,#0x48+var_2C]
1AFC42:  LSLS            R0, R4, #7
1AFC44:  STR             R0, [SP,#0x48+var_30]
1AFC46:  LDR             R1, [R7,#arg_8]
1AFC48:  ADD.W           R0, R8, R8,LSL#2
1AFC4C:  MOV             R4, R1
1AFC4E:  ADD             R0, R4
1AFC50:  LDRD.W          R12, R1, [R9]
1AFC54:  LDRD.W          R5, R6, [R9,#8]
1AFC58:  LDRSB.W         R3, [R0,#1]
1AFC5C:  LDR             R2, [SP,#0x48+var_28]
1AFC5E:  MULS            R1, R3
1AFC60:  SUBS            R1, R1, R2
1AFC62:  LDRSB.W         R2, [R0,#2]
1AFC66:  LDRSB.W         R0, [R0,#3]
1AFC6A:  MLA.W           R1, R5, R2, R1
1AFC6E:  LDR.W           R5, [R9,#0x10]
1AFC72:  MLA.W           R6, R6, R0, R1
1AFC76:  LDRSB.W         R1, [R4,R11]
1AFC7A:  MLA.W           LR, R5, R1, R6
1AFC7E:  ADD.W           R5, R4, R11
1AFC82:  LDRSB.W         R5, [R5,#-4]
1AFC86:  MUL.W           R6, R12, R5
1AFC8A:  ADD.W           R6, R6, LR,LSL#1
1AFC8E:  UXTH            R4, R6
1AFC90:  MULS            R4, R5
1AFC92:  ASRS            R4, R4, #0x10
1AFC94:  SMLABT.W        R12, R5, R6, R4
1AFC98:  LDRD.W          LR, R4, [R9,#0x18]
1AFC9C:  MULS            R4, R2
1AFC9E:  LDRD.W          R6, R5, [R9,#0x20]
1AFCA2:  LDR.W           R10, [SP,#0x48+var_2C]
1AFCA6:  SUB.W           R4, R4, R10
1AFCAA:  MLA.W           R4, R6, R0, R4
1AFCAE:  MUL.W           R6, LR, R3
1AFCB2:  MLA.W           R4, R5, R1, R4
1AFCB6:  ADD.W           R6, R6, R4,LSL#1
1AFCBA:  SMLATB.W        LR, R6, R3, R12
1AFCBE:  LDRD.W          R12, R4, [R9,#0x30]
1AFCC2:  MULS            R4, R0
1AFCC4:  LDR             R5, [SP,#0x48+var_30]
1AFCC6:  LDR.W           R10, [R9,#0x38]
1AFCCA:  SUBS            R4, R4, R5
1AFCCC:  UXTH            R5, R6
1AFCCE:  MLA.W           R4, R10, R1, R4
1AFCD2:  MULS            R3, R5
1AFCD4:  MUL.W           R6, R12, R2
1AFCD8:  ADD.W           R3, LR, R3,ASR#16
1AFCDC:  ADD.W           R6, R6, R4,LSL#1
1AFCE0:  LDRD.W          R5, R4, [R9,#0x48]
1AFCE4:  MULS            R4, R1
1AFCE6:  SMLATB.W        R12, R6, R2, R3
1AFCEA:  UXTH            R6, R6
1AFCEC:  MULS            R2, R6
1AFCEE:  LDR.W           R6, [R9,#0x60]
1AFCF2:  LDR             R3, [SP,#0x48+var_20]
1AFCF4:  MULS            R5, R0
1AFCF6:  SUBS            R4, R4, R3
1AFCF8:  LDR             R3, [SP,#0x48+var_24]
1AFCFA:  MLA.W           R6, R6, R1, R3
1AFCFE:  ADD.W           R2, R12, R2,ASR#16
1AFD02:  ADD.W           R5, R5, R4,LSL#1
1AFD06:  UXTH            R4, R5
1AFD08:  UXTH            R3, R6
1AFD0A:  MULS            R4, R0
1AFD0C:  MULS            R3, R1
1AFD0E:  SMLATB.W        R1, R6, R1, R2
1AFD12:  SMLATB.W        R0, R5, R0, R1
1AFD16:  MOVW            R1, #0x8021
1AFD1A:  ADD.W           R0, R0, R3,ASR#16
1AFD1E:  ADD.W           R0, R0, R4,ASR#16
1AFD22:  ADD             R0, R1
1AFD24:  CMP             R0, #0
1AFD26:  BLT             loc_1AFD76
1AFD28:  LDR             R1, [R7,#arg_C]
1AFD2A:  MOVS            R2, #0
1AFD2C:  LDRB.W          R5, [R1,R8]
1AFD30:  LDR             R1, [R7,#arg_18]
1AFD32:  SUBS            R1, R5, R1
1AFD34:  CMP             R1, #0
1AFD36:  IT LE
1AFD38:  MOVLE           R1, R2
1AFD3A:  ADD.W           R6, R0, R1,LSL#11
1AFD3E:  MOV             R0, R6
1AFD40:  BLX             j_silk_lin2log
1AFD44:  LDR             R1, [R7,#arg_10]
1AFD46:  MOVS            R2, #0xF8800000
1AFD4C:  ADD.W           R0, R2, R0,LSL#16
1AFD50:  LDR             R2, [SP,#0x48+var_38]
1AFD52:  LDRB.W          R1, [R1,R8]
1AFD56:  LSLS            R1, R1, #2
1AFD58:  SMLABT.W        R0, R2, R0, R1
1AFD5C:  LDR             R1, [SP,#0x48+var_34]
1AFD5E:  LDR             R1, [R1]
1AFD60:  CMP             R0, R1
1AFD62:  BGT             loc_1AFD76
1AFD64:  LDR             R1, [SP,#0x48+var_34]
1AFD66:  STR             R0, [R1]
1AFD68:  LDR             R0, [SP,#0x48+var_40]
1AFD6A:  STR             R6, [R0]
1AFD6C:  LDR             R0, [SP,#0x48+var_44]
1AFD6E:  STRB.W          R8, [R0]
1AFD72:  LDR             R0, [SP,#0x48+var_3C]
1AFD74:  STR             R5, [R0]
1AFD76:  LDR             R0, [R7,#arg_1C]
1AFD78:  ADD.W           R8, R8, #1
1AFD7C:  ADD.W           R11, R11, #5
1AFD80:  CMP             R0, R8
1AFD82:  BNE.W           loc_1AFC46
1AFD86:  ADD             SP, SP, #0x2C ; ','
1AFD88:  POP.W           {R8-R11}
1AFD8C:  POP             {R4-R7,PC}
