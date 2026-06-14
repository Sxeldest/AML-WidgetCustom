; =========================================================
; Game Engine Function: silk_stereo_MS_to_LR
; Address            : 0xB8FB8 - 0xB91A2
; =========================================================

B8FB8:  PUSH            {R4-R7,LR}
B8FBA:  ADD             R7, SP, #0xC
B8FBC:  PUSH.W          {R8-R11}
B8FC0:  SUB             SP, SP, #0x1C
B8FC2:  MOV             R6, R0
B8FC4:  LDRD.W          R4, R8, [R7,#arg_0]
B8FC8:  MOV             R11, R1
B8FCA:  LDR             R0, [R6,#4]
B8FCC:  STR.W           R0, [R11]
B8FD0:  MOV             R10, R3
B8FD2:  LDR             R0, [R6,#8]
B8FD4:  LSLS            R1, R4, #3
B8FD6:  STR             R0, [R2]
B8FD8:  LDR.W           R0, [R11,R8,LSL#1]
B8FDC:  STR             R0, [R6,#4]
B8FDE:  MOV.W           R0, #0x10000
B8FE2:  STR             R2, [SP,#0x38+var_34]
B8FE4:  LDR.W           R5, [R2,R8,LSL#1]
B8FE8:  STR             R1, [SP,#0x38+var_20]
B8FEA:  BLX             sub_108848
B8FEE:  LDRSH.W         R3, [R6]
B8FF2:  MOVW            R9, #0x8000
B8FF6:  LDRSH.W         R2, [R6,#2]
B8FFA:  MOVT            R9, #0xFFFF
B8FFE:  STR             R6, [SP,#0x38+var_38]
B9000:  CMP             R4, #1
B9002:  STR             R5, [R6,#8]
B9004:  LDR.W           R1, [R10]
B9008:  STR             R1, [SP,#0x38+var_2C]
B900A:  LDR.W           R1, [R10,#4]
B900E:  STR             R1, [SP,#0x38+var_30]
B9010:  BLT             loc_B90C2
B9012:  LDR             R1, [SP,#0x38+var_30]
B9014:  MOVS            R6, #1
B9016:  MOV.W           LR, #0
B901A:  SUBS            R5, R1, R2
B901C:  LDR             R1, [SP,#0x38+var_2C]
B901E:  SUBS            R4, R1, R3
B9020:  SMULBB.W        R5, R5, R0
B9024:  LDR             R1, [SP,#0x38+var_34]
B9026:  SMULBB.W        R0, R4, R0
B902A:  ADD.W           R12, R1, #2
B902E:  ADD.W           R5, R6, R5,ASR#15
B9032:  ADD.W           R0, R6, R0,ASR#15
B9036:  ASRS            R5, R5, #1
B9038:  ADD             R2, R5
B903A:  ASRS            R4, R0, #1
B903C:  ADDS            R0, R4, R3
B903E:  LSLS            R1, R4, #0x10
B9040:  LSLS            R3, R2, #0x10
B9042:  LSLS            R0, R0, #0x10
B9044:  STR             R1, [SP,#0x38+var_24]
B9046:  LSLS            R1, R5, #0x10
B9048:  STR             R1, [SP,#0x38+var_28]
B904A:  ADD.W           R10, R11, LR,LSL#1
B904E:  LDRSH.W         R5, [R11,LR,LSL#1]
B9052:  MOV             R6, R11
B9054:  LDRSH.W         R4, [R10,#4]
B9058:  ASRS            R1, R0, #0x10
B905A:  LDRSH.W         R11, [R10,#2]
B905E:  ADD             R4, R5
B9060:  ADD.W           R4, R4, R11,LSL#1
B9064:  MOV.W           R2, R11,ASR#5
B9068:  LSLS            R5, R4, #9
B906A:  ASRS            R4, R4, #7
B906C:  UXTH            R5, R5
B906E:  MULS            R1, R5
B9070:  LDRSH.W         R5, [R12,LR,LSL#1]
B9074:  LSLS            R5, R5, #8
B9076:  SMLABT.W        R2, R2, R3, R5
B907A:  MOV.W           R5, R11,LSL#11
B907E:  MOV             R11, R6
B9080:  UXTH            R5, R5
B9082:  ASRS            R6, R3, #0x10
B9084:  MULS            R5, R6
B9086:  ADD.W           R2, R2, R5,ASR#16
B908A:  SMLABT.W        R2, R4, R0, R2
B908E:  ADD.W           R1, R2, R1,ASR#16
B9092:  MOVS            R2, #1
B9094:  ADD.W           R1, R2, R1,ASR#7
B9098:  ASRS            R2, R1, #1
B909A:  CMP             R2, R9
B909C:  MOV             R2, R9
B909E:  IT GT
B90A0:  ASRGT           R2, R1, #1
B90A2:  MOVW            R1, #0x7FFF
B90A6:  CMP             R2, R1
B90A8:  IT GE
B90AA:  MOVGE           R2, R1
B90AC:  STRH.W          R2, [R12,LR,LSL#1]
B90B0:  ADD.W           LR, LR, #1
B90B4:  LDR             R1, [SP,#0x38+var_24]
B90B6:  ADD             R0, R1
B90B8:  LDR             R1, [SP,#0x38+var_28]
B90BA:  ADD             R3, R1
B90BC:  LDR             R1, [SP,#0x38+var_20]
B90BE:  CMP             LR, R1
B90C0:  BLT             loc_B904A
B90C2:  LDR             R0, [SP,#0x38+var_20]
B90C4:  STR.W           R11, [SP,#0x38+var_24]
B90C8:  CMP             R0, R8
B90CA:  MOV             R2, R0
B90CC:  BGE             loc_B914C
B90CE:  MOVS            R1, #2
B90D0:  SUB.W           R0, R8, R2
B90D4:  ADD.W           R1, R1, R2,LSL#1
B90D8:  LDR             R2, [SP,#0x38+var_34]
B90DA:  LDR             R3, [SP,#0x38+var_24]
B90DC:  MOVW            LR, #0x7FFF
B90E0:  ADD             R2, R1
B90E2:  ADD             R3, R1
B90E4:  LDR             R1, [SP,#0x38+var_30]
B90E6:  SXTH.W          R10, R1
B90EA:  LDR             R1, [SP,#0x38+var_2C]
B90EC:  SXTH.W          R11, R1
B90F0:  LDRSH.W         R1, [R3]
B90F4:  LDRSH.W         R6, [R3,#-2]
B90F8:  LDRSH.W         R4, [R3,#2]!
B90FC:  LDRSH.W         R12, [R2]
B9100:  ADD             R4, R6
B9102:  ASRS            R6, R1, #5
B9104:  ADD.W           R4, R4, R1,LSL#1
B9108:  LSLS            R1, R1, #0xB
B910A:  UXTH            R1, R1
B910C:  SMULBB.W        R6, R6, R10
B9110:  MUL.W           R1, R1, R10
B9114:  LSLS            R5, R4, #9
B9116:  UXTH            R5, R5
B9118:  MUL.W           R5, R5, R11
B911C:  ADD.W           R6, R6, R12,LSL#8
B9120:  ADD.W           R1, R6, R1,ASR#16
B9124:  ASRS            R6, R4, #7
B9126:  SMLABB.W        R1, R6, R11, R1
B912A:  MOVS            R6, #1
B912C:  ADD.W           R1, R1, R5,ASR#16
B9130:  ADD.W           R1, R6, R1,ASR#7
B9134:  ASRS            R6, R1, #1
B9136:  CMP             R6, R9
B9138:  MOV             R6, R9
B913A:  IT GT
B913C:  ASRGT           R6, R1, #1
B913E:  CMP             R6, LR
B9140:  IT GE
B9142:  MOVGE           R6, LR
B9144:  SUBS            R0, #1
B9146:  STRH.W          R6, [R2],#2
B914A:  BNE             loc_B90F0
B914C:  LDR             R0, [SP,#0x38+var_38]
B914E:  CMP.W           R8, #1
B9152:  LDR             R1, [SP,#0x38+var_30]
B9154:  STRH            R1, [R0,#2]
B9156:  LDR             R1, [SP,#0x38+var_2C]
B9158:  STRH            R1, [R0]
B915A:  BLT             loc_B919A
B915C:  LDR             R0, [SP,#0x38+var_24]
B915E:  MOVW            R3, #0x7FFF
B9162:  LDR             R1, [SP,#0x38+var_34]
B9164:  ADDS            R0, #2
B9166:  ADDS            R2, R1, #2
B9168:  LDRSH.W         R1, [R0]
B916C:  LDRSH.W         R6, [R2]
B9170:  ADDS            R5, R6, R1
B9172:  SUBS            R1, R1, R6
B9174:  CMP             R5, R9
B9176:  IT LE
B9178:  MOVLE           R5, R9
B917A:  CMP             R5, R3
B917C:  IT GE
B917E:  MOVGE           R5, R3
B9180:  CMP             R1, R9
B9182:  STRH.W          R5, [R0],#2
B9186:  IT LE
B9188:  MOVLE           R1, R9
B918A:  CMP             R1, R3
B918C:  IT GE
B918E:  MOVGE           R1, R3
B9190:  SUBS.W          R8, R8, #1
B9194:  STRH.W          R1, [R2],#2
B9198:  BNE             loc_B9168
B919A:  ADD             SP, SP, #0x1C
B919C:  POP.W           {R8-R11}
B91A0:  POP             {R4-R7,PC}
