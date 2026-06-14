; =========================================================
; Game Engine Function: silk_k2a
; Address            : 0xCE1FC - 0xCE28E
; =========================================================

CE1FC:  PUSH            {R4-R7,LR}
CE1FE:  ADD             R7, SP, #0xC
CE200:  PUSH.W          {R8-R11}
CE204:  SUB             SP, SP, #0x10
CE206:  STR             R0, [SP,#0x2C+var_24]
CE208:  MOV             R0, R2
CE20A:  CMP             R2, #1
CE20C:  STR             R1, [SP,#0x2C+var_2C]
CE20E:  STR             R0, [SP,#0x2C+var_28]
CE210:  BLT             loc_CE286
CE212:  LDR             R0, [SP,#0x2C+var_24]
CE214:  MOV.W           R9, #0
CE218:  SUB.W           LR, R0, #4
CE21C:  LDR             R0, [SP,#0x2C+var_2C]
CE21E:  LDRSH.W         R10, [R0,R9,LSL#1]
CE222:  ADD.W           R0, R9, #1
CE226:  STR             R0, [SP,#0x2C+var_20]
CE228:  ASRS            R6, R0, #1
CE22A:  CMP             R6, #1
CE22C:  BLT             loc_CE26C
CE22E:  LDR             R4, [SP,#0x2C+var_24]
CE230:  MOV             R3, LR
CE232:  LDR.W           R11, [R3]
CE236:  SUBS            R6, #1
CE238:  LDR             R5, [R4]
CE23A:  MOV.W           R12, R11,LSL#1
CE23E:  MOV.W           R8, R5,LSL#1
CE242:  UXTH.W          R2, R12
CE246:  UXTH.W          R1, R8
CE24A:  MUL.W           R2, R2, R10
CE24E:  MUL.W           R1, R1, R10
CE252:  SMLABT.W        R0, R10, R8, R11
CE256:  SMLABT.W        R5, R10, R12, R5
CE25A:  ADD.W           R0, R0, R1,ASR#16
CE25E:  ADD.W           R2, R5, R2,ASR#16
CE262:  STR.W           R2, [R4],#4
CE266:  STR.W           R0, [R3],#-4
CE26A:  BNE             loc_CE232
CE26C:  LDR             R1, [SP,#0x2C+var_24]
CE26E:  MOVS            R0, #0
CE270:  SUB.W           R0, R0, R10,LSL#9
CE274:  ADD.W           LR, LR, #4
CE278:  STR.W           R0, [R1,R9,LSL#2]
CE27C:  LDR             R1, [SP,#0x2C+var_20]
CE27E:  LDR             R0, [SP,#0x2C+var_28]
CE280:  CMP             R1, R0
CE282:  MOV             R9, R1
CE284:  BNE             loc_CE21C
CE286:  ADD             SP, SP, #0x10
CE288:  POP.W           {R8-R11}
CE28C:  POP             {R4-R7,PC}
