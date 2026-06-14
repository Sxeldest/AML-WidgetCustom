; =========================================================
; Game Engine Function: sub_4801D0
; Address            : 0x4801D0 - 0x4803B0
; =========================================================

4801D0:  PUSH            {R4-R7,LR}
4801D2:  ADD             R7, SP, #0xC
4801D4:  PUSH.W          {R8-R11}
4801D8:  SUB             SP, SP, #0x1C
4801DA:  STRD.W          R1, R2, [SP,#0x38+var_28]
4801DE:  STR             R0, [SP,#0x38+var_38]
4801E0:  LDR.W           R0, [R0,#0x114]
4801E4:  CMP             R0, #1
4801E6:  BLT.W           loc_4803A8
4801EA:  LDR             R0, [R3]
4801EC:  MOV.W           R11, #0
4801F0:  MOVS            R1, #0
4801F2:  STR             R0, [SP,#0x38+var_2C]
4801F4:  LDR             R0, [SP,#0x38+var_24]
4801F6:  ORR.W           R12, R11, #1
4801FA:  LDR             R4, [SP,#0x38+var_2C]
4801FC:  LDR.W           R9, [R0,R1,LSL#2]
480200:  ADD.W           R0, R0, R1,LSL#2
480204:  LDR.W           R8, [R4,R11,LSL#2]
480208:  LDR.W           R5, [R0,#-4]
48020C:  LDRB.W          R0, [R9]
480210:  LDRB.W          R2, [R9,#1]
480214:  LDRB            R3, [R5]
480216:  ADD.W           R0, R0, R0,LSL#1
48021A:  LDRB            R6, [R5,#1]
48021C:  ADD             R3, R0
48021E:  MOVS            R0, #8
480220:  ADD.W           R0, R0, R3,LSL#2
480224:  LSRS            R0, R0, #4
480226:  STRB.W          R0, [R8]
48022A:  ADD.W           R0, R2, R2,LSL#1
48022E:  ADD.W           LR, R0, R6
480232:  ADD.W           R0, R3, R3,LSL#1
480236:  ADD             R0, LR
480238:  ADD.W           R6, R8, #2
48023C:  ADDS            R0, #7
48023E:  LSRS            R0, R0, #4
480240:  STRB.W          R0, [R8,#1]
480244:  LDR             R0, [SP,#0x38+var_28]
480246:  LDR             R2, [R0,#0x28]
480248:  CMP             R2, #2
48024A:  BEQ             loc_4802B8
48024C:  STR             R1, [SP,#0x38+var_20]
48024E:  SUB.W           R1, R8, #2
480252:  STR             R1, [SP,#0x38+var_34]
480254:  ADD.W           R1, R9, #2
480258:  RSB.W           R0, R2, #2
48025C:  ADD.W           R9, R5, #2
480260:  STR.W           R12, [SP,#0x38+var_30]
480264:  MOV.W           R12, R2,LSL#1
480268:  MOV             R5, LR
48026A:  LDRB.W          R4, [R1],#1
48026E:  ADD.W           R10, R5, R5,LSL#1
480272:  LDRB.W          R2, [R9],#1
480276:  ADD             R3, R10
480278:  ADDS            R0, #1
48027A:  ADD.W           R3, R3, #8
48027E:  MOV.W           R3, R3,LSR#4
480282:  STRB            R3, [R6]
480284:  ADD.W           R3, R4, R4,LSL#1
480288:  ADD.W           LR, R3, R2
48028C:  MOV             R3, R5
48028E:  ADD.W           R2, R10, LR
480292:  ADD.W           R2, R2, #7
480296:  MOV.W           R2, R2,LSR#4
48029A:  STRB            R2, [R6,#1]
48029C:  ADD.W           R6, R6, #2
4802A0:  BNE             loc_480268
4802A2:  LDR             R0, [SP,#0x38+var_34]
4802A4:  LDR             R1, [SP,#0x38+var_20]
4802A6:  ADD.W           R6, R0, R12
4802AA:  ADD.W           R0, R8, R12
4802AE:  LDR.W           R12, [SP,#0x38+var_30]
4802B2:  SUB.W           R8, R0, #4
4802B6:  B               loc_4802BA
4802B8:  MOV             R5, R3
4802BA:  ADD.W           R0, LR, LR,LSL#1
4802BE:  ADD             R0, R5
4802C0:  ADDS            R0, #8
4802C2:  LSRS            R0, R0, #4
4802C4:  STRB            R0, [R6]
4802C6:  MOVS            R0, #7
4802C8:  ADD.W           R0, R0, LR,LSL#2
4802CC:  LSRS            R0, R0, #4
4802CE:  STRB.W          R0, [R8,#3]
4802D2:  LDR             R0, [SP,#0x38+var_24]
4802D4:  LDR.W           R4, [R0,R1,LSL#2]
4802D8:  ADDS            R1, #1
4802DA:  LDR.W           R5, [R0,R1,LSL#2]
4802DE:  LDRB            R0, [R4]
4802E0:  LDRB            R2, [R4,#1]
4802E2:  LDRB            R3, [R5]
4802E4:  ADD.W           R0, R0, R0,LSL#1
4802E8:  LDRB            R6, [R5,#1]
4802EA:  ADD.W           R8, R0, R3
4802EE:  LDR             R3, [SP,#0x38+var_2C]
4802F0:  MOVS            R0, #8
4802F2:  ADD.W           R0, R0, R8,LSL#2
4802F6:  LDR.W           R9, [R3,R12,LSL#2]
4802FA:  LSRS            R0, R0, #4
4802FC:  STRB.W          R0, [R9]
480300:  ADD.W           R0, R2, R2,LSL#1
480304:  ADDS            R3, R0, R6
480306:  ADD.W           R0, R8, R8,LSL#1
48030A:  ADD             R0, R3
48030C:  ADD.W           R6, R9, #2
480310:  ADDS            R0, #7
480312:  LSRS            R0, R0, #4
480314:  STRB.W          R0, [R9,#1]
480318:  LDR             R0, [SP,#0x38+var_28]
48031A:  LDR             R2, [R0,#0x28]
48031C:  CMP             R2, #2
48031E:  BEQ             loc_48037E
480320:  STR             R1, [SP,#0x38+var_20]
480322:  SUB.W           R1, R9, #2
480326:  STR             R1, [SP,#0x38+var_30]
480328:  RSB.W           R0, R2, #2
48032C:  MOV.W           LR, R2,LSL#1
480330:  ADDS            R1, R4, #2
480332:  ADDS            R2, R5, #2
480334:  MOV             R5, R3
480336:  LDRB.W          R12, [R1],#1
48033A:  ADD.W           R4, R5, R5,LSL#1
48033E:  LDRB.W          R10, [R2],#1
480342:  ADD.W           R3, R8, R4
480346:  ADDS            R0, #1
480348:  ADD.W           R3, R3, #8
48034C:  MOV             R8, R5
48034E:  MOV.W           R3, R3,LSR#4
480352:  STRB            R3, [R6]
480354:  ADD.W           R3, R12, R12,LSL#1
480358:  ADD             R3, R10
48035A:  ADD             R4, R3
48035C:  ADD.W           R4, R4, #7
480360:  MOV.W           R4, R4,LSR#4
480364:  STRB            R4, [R6,#1]
480366:  ADD.W           R6, R6, #2
48036A:  BNE             loc_480334
48036C:  LDR             R0, [SP,#0x38+var_30]
48036E:  LDR             R1, [SP,#0x38+var_20]
480370:  ADD.W           R6, R0, LR
480374:  ADD.W           R0, R9, LR
480378:  SUB.W           R9, R0, #4
48037C:  B               loc_480380
48037E:  MOV             R5, R8
480380:  ADD.W           R0, R3, R3,LSL#1
480384:  ADD.W           R11, R11, #2
480388:  ADD             R0, R5
48038A:  ADDS            R0, #8
48038C:  LSRS            R0, R0, #4
48038E:  STRB            R0, [R6]
480390:  MOVS            R0, #7
480392:  ADD.W           R0, R0, R3,LSL#2
480396:  LSRS            R0, R0, #4
480398:  STRB.W          R0, [R9,#3]
48039C:  LDR             R0, [SP,#0x38+var_38]
48039E:  LDR.W           R0, [R0,#0x114]
4803A2:  CMP             R11, R0
4803A4:  BLT.W           loc_4801F4
4803A8:  ADD             SP, SP, #0x1C
4803AA:  POP.W           {R8-R11}
4803AE:  POP             {R4-R7,PC}
