; =========================================================
; Game Engine Function: silk_LTP_analysis_filter_FIX
; Address            : 0x1AFDF0 - 0x1AFEFE
; =========================================================

1AFDF0:  PUSH            {R4-R7,LR}
1AFDF2:  ADD             R7, SP, #0xC
1AFDF4:  PUSH.W          {R8-R11}
1AFDF8:  SUB             SP, SP, #0x28
1AFDFA:  STRD.W          R2, R3, [SP,#0x44+var_3C]
1AFDFE:  LDR             R2, [R7,#arg_8]
1AFE00:  CMP             R2, #1
1AFE02:  BLT             loc_1AFEF6
1AFE04:  LDR             R3, [R7,#arg_C]
1AFE06:  LDR             R2, [R7,#arg_4]
1AFE08:  ADD             R3, R2
1AFE0A:  CMP             R3, #1
1AFE0C:  BLT             loc_1AFEF6
1AFE0E:  MOVW            R5, #0x8000
1AFE12:  LSLS            R2, R2, #1
1AFE14:  STR             R2, [SP,#0x44+var_40]
1AFE16:  LSLS            R2, R3, #1
1AFE18:  MOVT            R5, #0xFFFF
1AFE1C:  MOVS            R4, #0
1AFE1E:  STR             R2, [SP,#0x44+var_44]
1AFE20:  LDR             R6, [R7,#arg_0]
1AFE22:  ADD.W           LR, R4, R4,LSL#2
1AFE26:  LDR             R2, [SP,#0x44+var_38]
1AFE28:  LDR.W           R8, [R6,R4,LSL#2]
1AFE2C:  LDR             R6, [SP,#0x44+var_3C]
1AFE2E:  LDR.W           R12, [R2,R4,LSL#2]
1AFE32:  STR             R4, [SP,#0x44+var_34]
1AFE34:  LDRSH.W         R2, [R6,LR,LSL#1]
1AFE38:  ADD.W           R6, R6, LR,LSL#1
1AFE3C:  MOV.W           LR, #0
1AFE40:  STR             R2, [SP,#0x44+var_20]
1AFE42:  MOVS            R2, #0
1AFE44:  SUB.W           R9, R2, R12,LSL#1
1AFE48:  UXTH.W          R2, R8
1AFE4C:  STR             R2, [SP,#0x44+var_24]
1AFE4E:  MOV.W           R2, R8,ASR#16
1AFE52:  STR             R2, [SP,#0x44+var_28]
1AFE54:  LDRSH.W         R2, [R6,#2]
1AFE58:  STR             R2, [SP,#0x44+var_2C]
1AFE5A:  LDRSH.W         R2, [R6,#4]
1AFE5E:  STR             R2, [SP,#0x44+var_30]
1AFE60:  LDRSH.W         R8, [R6,#6]
1AFE64:  LDRSH.W         R11, [R6,#8]
1AFE68:  LDRH.W          R4, [R1,LR,LSL#1]
1AFE6C:  STRH.W          R4, [R0,LR,LSL#1]
1AFE70:  ADD.W           R4, R1, R9
1AFE74:  LDRSH.W         R6, [R4,#2]
1AFE78:  LDR             R2, [SP,#0x44+var_2C]
1AFE7A:  LDRSH.W         R12, [R4,#-4]
1AFE7E:  LDRSH.W         R10, [R4,#-2]
1AFE82:  SMULBB.W        R6, R6, R2
1AFE86:  LDRSH.W         R4, [R4,#4]
1AFE8A:  LDR             R2, [SP,#0x44+var_20]
1AFE8C:  SMLABB.W        R4, R4, R2, R6
1AFE90:  LDRSH.W         R6, [R1,R9]
1AFE94:  LDR             R2, [SP,#0x44+var_30]
1AFE96:  ADD.W           R9, R9, #2
1AFE9A:  SMLABB.W        R4, R6, R2, R4
1AFE9E:  MOVW            R2, #0x7FFF
1AFEA2:  SMLABB.W        R4, R10, R8, R4
1AFEA6:  MOV.W           R10, #1
1AFEAA:  SMLABB.W        R6, R12, R11, R4
1AFEAE:  LDRSH.W         R4, [R1,LR,LSL#1]
1AFEB2:  ADD.W           R6, R10, R6,ASR#13
1AFEB6:  SUB.W           R6, R4, R6,ASR#1
1AFEBA:  CMP             R6, R5
1AFEBC:  IT LE
1AFEBE:  MOVLE           R6, R5
1AFEC0:  CMP             R6, R2
1AFEC2:  IT GE
1AFEC4:  MOVGE           R6, R2
1AFEC6:  LDR             R2, [SP,#0x44+var_24]
1AFEC8:  SXTH            R6, R6
1AFECA:  MUL.W           R4, R6, R2
1AFECE:  LDR             R2, [SP,#0x44+var_28]
1AFED0:  SMULBB.W        R6, R6, R2
1AFED4:  ADD.W           R6, R6, R4,LSR#16
1AFED8:  STRH.W          R6, [R0,LR,LSL#1]
1AFEDC:  ADD.W           LR, LR, #1
1AFEE0:  CMP             R3, LR
1AFEE2:  BNE             loc_1AFE68
1AFEE4:  LDR             R2, [SP,#0x44+var_40]
1AFEE6:  LDR             R4, [SP,#0x44+var_34]
1AFEE8:  ADD             R1, R2
1AFEEA:  LDR             R2, [SP,#0x44+var_44]
1AFEEC:  ADDS            R4, #1
1AFEEE:  ADD             R0, R2
1AFEF0:  LDR             R2, [R7,#arg_8]
1AFEF2:  CMP             R4, R2
1AFEF4:  BNE             loc_1AFE20
1AFEF6:  ADD             SP, SP, #0x28 ; '('
1AFEF8:  POP.W           {R8-R11}
1AFEFC:  POP             {R4-R7,PC}
