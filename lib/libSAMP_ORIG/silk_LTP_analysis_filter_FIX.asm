; =========================================================
; Game Engine Function: silk_LTP_analysis_filter_FIX
; Address            : 0xD2030 - 0xD213E
; =========================================================

D2030:  PUSH            {R4-R7,LR}
D2032:  ADD             R7, SP, #0xC
D2034:  PUSH.W          {R8-R11}
D2038:  SUB             SP, SP, #0x28
D203A:  STRD.W          R2, R3, [SP,#0x44+var_3C]
D203E:  LDR             R2, [R7,#arg_8]
D2040:  CMP             R2, #1
D2042:  BLT             loc_D2136
D2044:  LDR             R3, [R7,#arg_C]
D2046:  LDR             R2, [R7,#arg_4]
D2048:  ADD             R3, R2
D204A:  CMP             R3, #1
D204C:  BLT             loc_D2136
D204E:  MOVW            R5, #0x8000
D2052:  LSLS            R2, R2, #1
D2054:  STR             R2, [SP,#0x44+var_40]
D2056:  LSLS            R2, R3, #1
D2058:  MOVT            R5, #0xFFFF
D205C:  MOVS            R4, #0
D205E:  STR             R2, [SP,#0x44+var_44]
D2060:  LDR             R6, [R7,#arg_0]
D2062:  ADD.W           LR, R4, R4,LSL#2
D2066:  LDR             R2, [SP,#0x44+var_38]
D2068:  LDR.W           R8, [R6,R4,LSL#2]
D206C:  LDR             R6, [SP,#0x44+var_3C]
D206E:  LDR.W           R12, [R2,R4,LSL#2]
D2072:  STR             R4, [SP,#0x44+var_34]
D2074:  LDRSH.W         R2, [R6,LR,LSL#1]
D2078:  ADD.W           R6, R6, LR,LSL#1
D207C:  MOV.W           LR, #0
D2080:  STR             R2, [SP,#0x44+var_20]
D2082:  MOVS            R2, #0
D2084:  SUB.W           R9, R2, R12,LSL#1
D2088:  UXTH.W          R2, R8
D208C:  STR             R2, [SP,#0x44+var_24]
D208E:  MOV.W           R2, R8,ASR#16
D2092:  STR             R2, [SP,#0x44+var_28]
D2094:  LDRSH.W         R2, [R6,#2]
D2098:  STR             R2, [SP,#0x44+var_2C]
D209A:  LDRSH.W         R2, [R6,#4]
D209E:  STR             R2, [SP,#0x44+var_30]
D20A0:  LDRSH.W         R8, [R6,#6]
D20A4:  LDRSH.W         R11, [R6,#8]
D20A8:  LDRH.W          R4, [R1,LR,LSL#1]
D20AC:  STRH.W          R4, [R0,LR,LSL#1]
D20B0:  ADD.W           R4, R1, R9
D20B4:  LDRSH.W         R6, [R4,#2]
D20B8:  LDR             R2, [SP,#0x44+var_2C]
D20BA:  LDRSH.W         R12, [R4,#-4]
D20BE:  LDRSH.W         R10, [R4,#-2]
D20C2:  SMULBB.W        R6, R6, R2
D20C6:  LDRSH.W         R4, [R4,#4]
D20CA:  LDR             R2, [SP,#0x44+var_20]
D20CC:  SMLABB.W        R4, R4, R2, R6
D20D0:  LDRSH.W         R6, [R1,R9]
D20D4:  LDR             R2, [SP,#0x44+var_30]
D20D6:  ADD.W           R9, R9, #2
D20DA:  SMLABB.W        R4, R6, R2, R4
D20DE:  MOVW            R2, #0x7FFF
D20E2:  SMLABB.W        R4, R10, R8, R4
D20E6:  MOV.W           R10, #1
D20EA:  SMLABB.W        R6, R12, R11, R4
D20EE:  LDRSH.W         R4, [R1,LR,LSL#1]
D20F2:  ADD.W           R6, R10, R6,ASR#13
D20F6:  SUB.W           R6, R4, R6,ASR#1
D20FA:  CMP             R6, R5
D20FC:  IT LE
D20FE:  MOVLE           R6, R5
D2100:  CMP             R6, R2
D2102:  IT GE
D2104:  MOVGE           R6, R2
D2106:  LDR             R2, [SP,#0x44+var_24]
D2108:  SXTH            R6, R6
D210A:  MUL.W           R4, R6, R2
D210E:  LDR             R2, [SP,#0x44+var_28]
D2110:  SMULBB.W        R6, R6, R2
D2114:  ADD.W           R6, R6, R4,LSR#16
D2118:  STRH.W          R6, [R0,LR,LSL#1]
D211C:  ADD.W           LR, LR, #1
D2120:  CMP             R3, LR
D2122:  BNE             loc_D20A8
D2124:  LDR             R2, [SP,#0x44+var_40]
D2126:  LDR             R4, [SP,#0x44+var_34]
D2128:  ADD             R1, R2
D212A:  LDR             R2, [SP,#0x44+var_44]
D212C:  ADDS            R4, #1
D212E:  ADD             R0, R2
D2130:  LDR             R2, [R7,#arg_8]
D2132:  CMP             R4, R2
D2134:  BNE             loc_D2060
D2136:  ADD             SP, SP, #0x28 ; '('
D2138:  POP.W           {R8-R11}
D213C:  POP             {R4-R7,PC}
