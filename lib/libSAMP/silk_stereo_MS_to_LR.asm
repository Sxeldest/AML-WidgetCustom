; =========================================================
; Game Engine Function: silk_stereo_MS_to_LR
; Address            : 0x1971DC - 0x1973C6
; =========================================================

1971DC:  PUSH            {R4-R7,LR}
1971DE:  ADD             R7, SP, #0xC
1971E0:  PUSH.W          {R8-R11}
1971E4:  SUB             SP, SP, #0x1C
1971E6:  MOV             R6, R0
1971E8:  LDRD.W          R4, R8, [R7,#arg_0]
1971EC:  MOV             R11, R1
1971EE:  LDR             R0, [R6,#4]
1971F0:  STR.W           R0, [R11]
1971F4:  MOV             R10, R3
1971F6:  LDR             R0, [R6,#8]
1971F8:  LSLS            R1, R4, #3
1971FA:  STR             R0, [R2]
1971FC:  LDR.W           R0, [R11,R8,LSL#1]
197200:  STR             R0, [R6,#4]
197202:  MOV.W           R0, #0x10000
197206:  STR             R2, [SP,#0x38+var_34]
197208:  LDR.W           R5, [R2,R8,LSL#1]
19720C:  STR             R1, [SP,#0x38+var_20]
19720E:  BLX             sub_220A40
197212:  LDRSH.W         R3, [R6]
197216:  MOVW            R9, #0x8000
19721A:  LDRSH.W         R2, [R6,#2]
19721E:  MOVT            R9, #0xFFFF
197222:  STR             R6, [SP,#0x38+var_38]
197224:  CMP             R4, #1
197226:  STR             R5, [R6,#8]
197228:  LDR.W           R1, [R10]
19722C:  STR             R1, [SP,#0x38+var_2C]
19722E:  LDR.W           R1, [R10,#4]
197232:  STR             R1, [SP,#0x38+var_30]
197234:  BLT             loc_1972E6
197236:  LDR             R1, [SP,#0x38+var_30]
197238:  MOVS            R6, #1
19723A:  MOV.W           LR, #0
19723E:  SUBS            R5, R1, R2
197240:  LDR             R1, [SP,#0x38+var_2C]
197242:  SUBS            R4, R1, R3
197244:  SMULBB.W        R5, R5, R0
197248:  LDR             R1, [SP,#0x38+var_34]
19724A:  SMULBB.W        R0, R4, R0
19724E:  ADD.W           R12, R1, #2
197252:  ADD.W           R5, R6, R5,ASR#15
197256:  ADD.W           R0, R6, R0,ASR#15
19725A:  ASRS            R5, R5, #1
19725C:  ADD             R2, R5
19725E:  ASRS            R4, R0, #1
197260:  ADDS            R0, R4, R3
197262:  LSLS            R1, R4, #0x10
197264:  LSLS            R3, R2, #0x10
197266:  LSLS            R0, R0, #0x10
197268:  STR             R1, [SP,#0x38+var_24]
19726A:  LSLS            R1, R5, #0x10
19726C:  STR             R1, [SP,#0x38+var_28]
19726E:  ADD.W           R10, R11, LR,LSL#1
197272:  LDRSH.W         R5, [R11,LR,LSL#1]
197276:  MOV             R6, R11
197278:  LDRSH.W         R4, [R10,#4]
19727C:  ASRS            R1, R0, #0x10
19727E:  LDRSH.W         R11, [R10,#2]
197282:  ADD             R4, R5
197284:  ADD.W           R4, R4, R11,LSL#1
197288:  MOV.W           R2, R11,ASR#5
19728C:  LSLS            R5, R4, #9
19728E:  ASRS            R4, R4, #7
197290:  UXTH            R5, R5
197292:  MULS            R1, R5
197294:  LDRSH.W         R5, [R12,LR,LSL#1]
197298:  LSLS            R5, R5, #8
19729A:  SMLABT.W        R2, R2, R3, R5
19729E:  MOV.W           R5, R11,LSL#11
1972A2:  MOV             R11, R6
1972A4:  UXTH            R5, R5
1972A6:  ASRS            R6, R3, #0x10
1972A8:  MULS            R5, R6
1972AA:  ADD.W           R2, R2, R5,ASR#16
1972AE:  SMLABT.W        R2, R4, R0, R2
1972B2:  ADD.W           R1, R2, R1,ASR#16
1972B6:  MOVS            R2, #1
1972B8:  ADD.W           R1, R2, R1,ASR#7
1972BC:  ASRS            R2, R1, #1
1972BE:  CMP             R2, R9
1972C0:  MOV             R2, R9
1972C2:  IT GT
1972C4:  ASRGT           R2, R1, #1
1972C6:  MOVW            R1, #0x7FFF
1972CA:  CMP             R2, R1
1972CC:  IT GE
1972CE:  MOVGE           R2, R1
1972D0:  STRH.W          R2, [R12,LR,LSL#1]
1972D4:  ADD.W           LR, LR, #1
1972D8:  LDR             R1, [SP,#0x38+var_24]
1972DA:  ADD             R0, R1
1972DC:  LDR             R1, [SP,#0x38+var_28]
1972DE:  ADD             R3, R1
1972E0:  LDR             R1, [SP,#0x38+var_20]
1972E2:  CMP             LR, R1
1972E4:  BLT             loc_19726E
1972E6:  LDR             R0, [SP,#0x38+var_20]
1972E8:  STR.W           R11, [SP,#0x38+var_24]
1972EC:  CMP             R0, R8
1972EE:  MOV             R2, R0
1972F0:  BGE             loc_197370
1972F2:  MOVS            R1, #2
1972F4:  SUB.W           R0, R8, R2
1972F8:  ADD.W           R1, R1, R2,LSL#1
1972FC:  LDR             R2, [SP,#0x38+var_34]
1972FE:  LDR             R3, [SP,#0x38+var_24]
197300:  MOVW            LR, #0x7FFF
197304:  ADD             R2, R1
197306:  ADD             R3, R1
197308:  LDR             R1, [SP,#0x38+var_30]
19730A:  SXTH.W          R10, R1
19730E:  LDR             R1, [SP,#0x38+var_2C]
197310:  SXTH.W          R11, R1
197314:  LDRSH.W         R1, [R3]
197318:  LDRSH.W         R6, [R3,#-2]
19731C:  LDRSH.W         R4, [R3,#2]!
197320:  LDRSH.W         R12, [R2]
197324:  ADD             R4, R6
197326:  ASRS            R6, R1, #5
197328:  ADD.W           R4, R4, R1,LSL#1
19732C:  LSLS            R1, R1, #0xB
19732E:  UXTH            R1, R1
197330:  SMULBB.W        R6, R6, R10
197334:  MUL.W           R1, R1, R10
197338:  LSLS            R5, R4, #9
19733A:  UXTH            R5, R5
19733C:  MUL.W           R5, R5, R11
197340:  ADD.W           R6, R6, R12,LSL#8
197344:  ADD.W           R1, R6, R1,ASR#16
197348:  ASRS            R6, R4, #7
19734A:  SMLABB.W        R1, R6, R11, R1
19734E:  MOVS            R6, #1
197350:  ADD.W           R1, R1, R5,ASR#16
197354:  ADD.W           R1, R6, R1,ASR#7
197358:  ASRS            R6, R1, #1
19735A:  CMP             R6, R9
19735C:  MOV             R6, R9
19735E:  IT GT
197360:  ASRGT           R6, R1, #1
197362:  CMP             R6, LR
197364:  IT GE
197366:  MOVGE           R6, LR
197368:  SUBS            R0, #1
19736A:  STRH.W          R6, [R2],#2
19736E:  BNE             loc_197314
197370:  LDR             R0, [SP,#0x38+var_38]
197372:  CMP.W           R8, #1
197376:  LDR             R1, [SP,#0x38+var_30]
197378:  STRH            R1, [R0,#2]
19737A:  LDR             R1, [SP,#0x38+var_2C]
19737C:  STRH            R1, [R0]
19737E:  BLT             loc_1973BE
197380:  LDR             R0, [SP,#0x38+var_24]
197382:  MOVW            R3, #0x7FFF
197386:  LDR             R1, [SP,#0x38+var_34]
197388:  ADDS            R0, #2
19738A:  ADDS            R2, R1, #2
19738C:  LDRSH.W         R1, [R0]
197390:  LDRSH.W         R6, [R2]
197394:  ADDS            R5, R6, R1
197396:  SUBS            R1, R1, R6
197398:  CMP             R5, R9
19739A:  IT LE
19739C:  MOVLE           R5, R9
19739E:  CMP             R5, R3
1973A0:  IT GE
1973A2:  MOVGE           R5, R3
1973A4:  CMP             R1, R9
1973A6:  STRH.W          R5, [R0],#2
1973AA:  IT LE
1973AC:  MOVLE           R1, R9
1973AE:  CMP             R1, R3
1973B0:  IT GE
1973B2:  MOVGE           R1, R3
1973B4:  SUBS.W          R8, R8, #1
1973B8:  STRH.W          R1, [R2],#2
1973BC:  BNE             loc_19738C
1973BE:  ADD             SP, SP, #0x1C
1973C0:  POP.W           {R8-R11}
1973C4:  POP             {R4-R7,PC}
