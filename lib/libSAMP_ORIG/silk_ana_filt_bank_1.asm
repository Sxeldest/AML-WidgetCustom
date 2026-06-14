; =========================================================
; Game Engine Function: silk_ana_filt_bank_1
; Address            : 0xCA144 - 0xCA212
; =========================================================

CA144:  PUSH            {R4-R7,LR}
CA146:  ADD             R7, SP, #0xC
CA148:  PUSH.W          {R8-R11}
CA14C:  SUB             SP, SP, #0xC
CA14E:  LDR             R6, [R7,#arg_0]
CA150:  ASRS            R6, R6, #1
CA152:  CMP             R6, #1
CA154:  BLT             loc_CA20A
CA156:  LDR             R4, [R1]
CA158:  MOVW            R5, #0x8000
CA15C:  STR             R1, [SP,#0x28+var_28]
CA15E:  ADD.W           R11, R0, #2
CA162:  LDR.W           R9, [R1,#4]
CA166:  MOVT            R5, #0xFFFF
CA16A:  STR             R6, [SP,#0x28+var_20]
CA16C:  LDRSH.W         R0, [R11]
CA170:  LDRSH.W         LR, [R11,#-2]
CA174:  ADD.W           R11, R11, #4
CA178:  RSB.W           R1, R9, R0,LSL#10
CA17C:  STR             R0, [SP,#0x28+var_24]
CA17E:  MOVW            R0, #0x2A24
CA182:  RSB.W           R4, R4, LR,LSL#10
CA186:  UXTH.W          R8, R1
CA18A:  MUL.W           R6, R8, R0
CA18E:  UXTH.W          R8, R4
CA192:  LSRS            R6, R6, #0x10
CA194:  SMLATB.W        R12, R1, R0, R6
CA198:  MOV             R0, #0xFFFFA11E
CA1A0:  MUL.W           R6, R8, R0
CA1A4:  ADD             R9, R12
CA1A6:  ASRS            R6, R6, #0x10
CA1A8:  SMLATB.W        R8, R4, R0, R6
CA1AC:  MOVS            R0, #1
CA1AE:  ADD.W           R6, R8, LR,LSL#10
CA1B2:  ADD.W           R10, R9, R6
CA1B6:  ADD.W           R0, R0, R10,ASR#10
CA1BA:  MOVW            R10, #0x7FFF
CA1BE:  ASRS            R1, R0, #1
CA1C0:  CMP             R1, R5
CA1C2:  MOV             R1, R5
CA1C4:  IT GT
CA1C6:  ASRGT           R1, R0, #1
CA1C8:  SUB.W           R0, R9, R6
CA1CC:  CMP             R1, R10
CA1CE:  IT GE
CA1D0:  MOVGE           R1, R10
CA1D2:  STRH.W          R1, [R2],#2
CA1D6:  MOVS            R1, #1
CA1D8:  ADD.W           R0, R1, R0,ASR#10
CA1DC:  ASRS            R1, R0, #1
CA1DE:  CMP             R1, R5
CA1E0:  MOV             R1, R5
CA1E2:  IT GT
CA1E4:  ASRGT           R1, R0, #1
CA1E6:  CMP             R1, R10
CA1E8:  IT GE
CA1EA:  MOVGE           R1, R10
CA1EC:  STRH.W          R1, [R3],#2
CA1F0:  LDR             R0, [SP,#0x28+var_24]
CA1F2:  LDR             R6, [SP,#0x28+var_20]
CA1F4:  ADD.W           R9, R12, R0,LSL#10
CA1F8:  ADD.W           R0, R4, LR,LSL#10
CA1FC:  ADD.W           R4, R0, R8
CA200:  SUBS            R6, #1
CA202:  BNE             loc_CA16A
CA204:  LDR             R0, [SP,#0x28+var_28]
CA206:  STRD.W          R4, R9, [R0]
CA20A:  ADD             SP, SP, #0xC
CA20C:  POP.W           {R8-R11}
CA210:  POP             {R4-R7,PC}
