; =========================================================
; Game Engine Function: silk_NLSF_VQ
; Address            : 0xD3B14 - 0xD3BDC
; =========================================================

D3B14:  PUSH            {R4-R7,LR}
D3B16:  ADD             R7, SP, #0xC
D3B18:  PUSH.W          {R8-R11}
D3B1C:  SUB             SP, SP, #0x1C
D3B1E:  STR             R0, [SP,#0x38+var_28]
D3B20:  LDR             R0, [R7,#arg_0]
D3B22:  STR             R2, [SP,#0x38+var_20]
D3B24:  CMP             R0, #1
D3B26:  BLT             loc_D3BD4
D3B28:  LDR             R2, [R7,#arg_4]
D3B2A:  CMP             R2, #2
D3B2C:  BLT             loc_D3BCA
D3B2E:  MOV             R0, #0xFFFFFFFC
D3B32:  MOVS            R6, #0
D3B34:  ADD.W           R0, R0, R2,LSL#1
D3B38:  STR             R0, [SP,#0x38+var_2C]
D3B3A:  ADDS            R0, R2, #2
D3B3C:  STR             R0, [SP,#0x38+var_30]
D3B3E:  LSLS            R0, R2, #1
D3B40:  STR             R0, [SP,#0x38+var_34]
D3B42:  STR             R6, [SP,#0x38+var_24]
D3B44:  MOV.W           R12, #0
D3B48:  LDRD.W          R5, R6, [SP,#0x38+var_30]
D3B4C:  MOVS            R2, #0
D3B4E:  LDR             R0, [SP,#0x38+var_20]
D3B50:  ADD.W           R11, R1, R6
D3B54:  LDRH.W          R10, [R1,R6]
D3B58:  ADD             R0, R5
D3B5A:  LDRH.W          R11, [R11,#2]
D3B5E:  SUBS            R5, #2
D3B60:  LDRB.W          R8, [R0,#-3]
D3B64:  LDRB.W          R4, [R0,#-4]
D3B68:  ADDS            R0, R3, R6
D3B6A:  LDRSH.W         LR, [R3,R6]
D3B6E:  SUBS            R6, #4
D3B70:  LDRSH.W         R9, [R0,#2]
D3B74:  SUB.W           R0, R11, R8,LSL#7
D3B78:  SUB.W           R4, R10, R4,LSL#7
D3B7C:  SXTH            R0, R0
D3B7E:  SXTH            R4, R4
D3B80:  SMULBB.W        R0, R0, R9
D3B84:  SMULBB.W        LR, R4, LR
D3B88:  SUB.W           R8, LR, R0,ASR#1
D3B8C:  SUB.W           R0, R0, R12,ASR#1
D3B90:  CMP.W           R8, #0
D3B94:  MOV             R12, LR
D3B96:  IT MI
D3B98:  RSBMI.W         R8, R8, #0
D3B9C:  CMP             R0, #0
D3B9E:  IT MI
D3BA0:  NEGMI           R0, R0
D3BA2:  CMP             R5, #3
D3BA4:  ADD             R0, R2
D3BA6:  ADD.W           R2, R0, R8
D3BAA:  BGT             loc_D3B4E
D3BAC:  LDRD.W          R0, R6, [SP,#0x38+var_28]
D3BB0:  STR.W           R2, [R0,R6,LSL#2]
D3BB4:  ADDS            R6, #1
D3BB6:  LDR             R0, [SP,#0x38+var_34]
D3BB8:  LDR             R2, [R7,#arg_4]
D3BBA:  ADD             R3, R0
D3BBC:  LDR             R0, [SP,#0x38+var_20]
D3BBE:  ADD             R0, R2
D3BC0:  STR             R0, [SP,#0x38+var_20]
D3BC2:  LDR             R0, [R7,#arg_0]
D3BC4:  CMP             R6, R0
D3BC6:  BNE             loc_D3B42
D3BC8:  B               loc_D3BD4
D3BCA:  LDR             R0, [R7,#arg_0]
D3BCC:  LSLS            R1, R0, #2; n
D3BCE:  LDR             R0, [SP,#0x38+var_28]; int
D3BD0:  BLX             sub_10967C
D3BD4:  ADD             SP, SP, #0x1C
D3BD6:  POP.W           {R8-R11}
D3BDA:  POP             {R4-R7,PC}
