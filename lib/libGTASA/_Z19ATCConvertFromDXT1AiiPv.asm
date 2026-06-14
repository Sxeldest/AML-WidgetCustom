; =========================================================
; Game Engine Function: _Z19ATCConvertFromDXT1AiiPv
; Address            : 0x1CB268 - 0x1CB4D6
; =========================================================

1CB268:  PUSH            {R4-R7,LR}
1CB26A:  ADD             R7, SP, #0xC
1CB26C:  PUSH.W          {R8-R11}
1CB270:  SUB             SP, SP, #0x14
1CB272:  STR             R2, [SP,#0x30+var_28]
1CB274:  ASRS            R2, R0, #0x1F
1CB276:  ADD.W           R2, R0, R2,LSR#30
1CB27A:  ADDS            R0, #3
1CB27C:  CMP             R0, #7
1CB27E:  MOV.W           R0, R1,ASR#31
1CB282:  ADD.W           R0, R1, R0,LSR#30
1CB286:  MOV.W           R2, R2,ASR#2
1CB28A:  ADD.W           R1, R1, #3
1CB28E:  IT CC
1CB290:  MOVCC           R2, #1
1CB292:  ASRS            R0, R0, #2
1CB294:  CMP             R1, #7
1CB296:  IT CC
1CB298:  MOVCC           R0, #1
1CB29A:  MUL.W           R4, R0, R2
1CB29E:  LSLS            R0, R4, #4; byte_count
1CB2A0:  BLX             malloc
1CB2A4:  MOV             R10, R0
1CB2A6:  CMP             R4, #1
1CB2A8:  BLT.W           loc_1CB4CC
1CB2AC:  MOV.W           R12, #0xF
1CB2B0:  MOV.W           R11, #0
1CB2B4:  STR.W           R10, [SP,#0x30+var_2C]
1CB2B8:  LDR             R1, [SP,#0x30+var_28]
1CB2BA:  ADD.W           R6, R10, R11,LSL#1
1CB2BE:  ADD.W           R5, R1, R11
1CB2C2:  LDR.W           R2, [R1,R11]
1CB2C6:  LDR             R1, [R5,#4]
1CB2C8:  STR             R2, [R6,#8]
1CB2CA:  STR             R1, [R6,#0xC]
1CB2CC:  UXTH            R0, R2
1CB2CE:  LDRH            R3, [R6,#0xA]
1CB2D0:  STRD.W          R2, R4, [SP,#0x30+var_24]
1CB2D4:  CMP             R3, R0
1CB2D6:  BCS             loc_1CB2F0
1CB2D8:  MOVS            R0, #0xFF
1CB2DA:  MOV.W           LR, #0xFF
1CB2DE:  MOV.W           R9, #0xFF
1CB2E2:  MOV.W           R8, #0xFF
1CB2E6:  MOVS            R2, #0xFF
1CB2E8:  MOVS            R5, #0xFF
1CB2EA:  MOVS            R4, #0xFF
1CB2EC:  MOVS            R1, #0xFF
1CB2EE:  B               loc_1CB3CE
1CB2F0:  LDRB.W          R10, [R5,#4]
1CB2F4:  MOVS            R1, #0
1CB2F6:  LDRB.W          LR, [R5,#5]
1CB2FA:  MOVS            R2, #0
1CB2FC:  LDRB            R3, [R5,#6]
1CB2FE:  MOV.W           R8, #0
1CB302:  LDRB            R5, [R5,#7]
1CB304:  MOV.W           R9, #0
1CB308:  AND.W           R0, R5, #0xC0
1CB30C:  AND.W           R4, R5, #0x30 ; '0'
1CB310:  CMP             R0, #0xC0
1CB312:  AND.W           R0, R5, #0xC
1CB316:  IT NE
1CB318:  MOVNE           R1, #0xF0
1CB31A:  CMP             R4, #0x30 ; '0'
1CB31C:  IT NE
1CB31E:  ORRNE.W         R1, R1, #0xF
1CB322:  CMP             R0, #0xC
1CB324:  MOV.W           R4, #0
1CB328:  AND.W           R0, R5, #3
1CB32C:  IT NE
1CB32E:  MOVNE           R4, #0xF0
1CB330:  CMP             R0, #3
1CB332:  AND.W           R0, R3, #0xC0
1CB336:  IT NE
1CB338:  ORRNE.W         R4, R4, #0xF
1CB33C:  CMP             R0, #0xC0
1CB33E:  MOV.W           R5, #0
1CB342:  AND.W           R0, R3, #0x30 ; '0'
1CB346:  IT NE
1CB348:  MOVNE           R5, #0xF0
1CB34A:  CMP             R0, #0x30 ; '0'
1CB34C:  AND.W           R0, R3, #0xC
1CB350:  IT NE
1CB352:  ORRNE.W         R5, R5, #0xF
1CB356:  CMP             R0, #0xC
1CB358:  AND.W           R0, R3, #3
1CB35C:  IT NE
1CB35E:  MOVNE           R2, #0xF0
1CB360:  CMP             R0, #3
1CB362:  AND.W           R0, LR, #0xC0
1CB366:  IT NE
1CB368:  ORRNE.W         R2, R2, #0xF
1CB36C:  CMP             R0, #0xC0
1CB36E:  AND.W           R0, LR, #0x30 ; '0'
1CB372:  IT NE
1CB374:  MOVNE.W         R8, #0xF0
1CB378:  CMP             R0, #0x30 ; '0'
1CB37A:  AND.W           R0, LR, #0xC
1CB37E:  IT NE
1CB380:  ORRNE.W         R8, R8, #0xF
1CB384:  CMP             R0, #0xC
1CB386:  AND.W           R0, LR, #3
1CB38A:  IT NE
1CB38C:  MOVNE.W         R9, #0xF0
1CB390:  CMP             R0, #3
1CB392:  AND.W           R3, R10, #0xC0
1CB396:  IT NE
1CB398:  ORRNE.W         R9, R9, #0xF
1CB39C:  CMP             R3, #0xC0
1CB39E:  MOV.W           LR, #0
1CB3A2:  AND.W           R0, R10, #0x30 ; '0'
1CB3A6:  IT NE
1CB3A8:  MOVNE.W         LR, #0xF0
1CB3AC:  CMP             R0, #0x30 ; '0'
1CB3AE:  AND.W           R0, R10, #0xC
1CB3B2:  IT NE
1CB3B4:  ORRNE.W         LR, LR, #0xF
1CB3B8:  CMP             R0, #0xC
1CB3BA:  MOV.W           R0, #0
1CB3BE:  AND.W           R3, R10, #3
1CB3C2:  IT NE
1CB3C4:  MOVNE           R0, #0xF0
1CB3C6:  CMP             R3, #3
1CB3C8:  IT NE
1CB3CA:  ORRNE.W         R0, R0, #0xF
1CB3CE:  LDR.W           R10, [SP,#0x30+var_2C]
1CB3D2:  ADD.W           R11, R11, #8
1CB3D6:  ADD.W           R3, R10, R12
1CB3DA:  STRB.W          R0, [R3,#-0xF]
1CB3DE:  MOVW            R0, #0x7FE0
1CB3E2:  STRB.W          R9, [R6,#2]
1CB3E6:  STRB.W          LR, [R6,#1]
1CB3EA:  MOV.W           LR, #0xC
1CB3EE:  STRB.W          R8, [R6,#3]
1CB3F2:  STRB            R2, [R6,#4]
1CB3F4:  STRB            R5, [R6,#5]
1CB3F6:  STRB            R4, [R6,#6]
1CB3F8:  STRB            R1, [R6,#7]
1CB3FA:  LDR             R1, [SP,#0x30+var_24]
1CB3FC:  LDR             R2, =(unk_5E87E8 - 0x1CB40A)
1CB3FE:  AND.W           R3, R1, #0x1F
1CB402:  AND.W           R0, R0, R1,LSR#1
1CB406:  ADD             R2, PC; unk_5E87E8
1CB408:  ORRS            R0, R3
1CB40A:  STRH            R0, [R6,#8]
1CB40C:  LDRB            R3, [R6,#0xC]
1CB40E:  LDRB            R5, [R6,#0xD]
1CB410:  AND.W           R4, R3, #0xC
1CB414:  AND.W           R1, R3, #3
1CB418:  LDRB            R0, [R6,#0xE]
1CB41A:  LDR             R4, [R2,R4]
1CB41C:  LDR.W           R1, [R2,R1,LSL#2]
1CB420:  ORR.W           R1, R1, R4,LSL#2
1CB424:  AND.W           R4, LR, R3,LSR#2
1CB428:  UBFX.W          R3, R3, #6, #2
1CB42C:  LDR             R4, [R2,R4]
1CB42E:  LDR.W           R3, [R2,R3,LSL#2]
1CB432:  ORR.W           R1, R1, R4,LSL#4
1CB436:  ORR.W           R1, R1, R3,LSL#6
1CB43A:  STRB            R1, [R6,#0xC]
1CB43C:  AND.W           R1, R5, #0xC
1CB440:  AND.W           R3, R5, #3
1CB444:  LDR             R1, [R2,R1]
1CB446:  LDR.W           R3, [R2,R3,LSL#2]
1CB44A:  ORR.W           R1, R3, R1,LSL#2
1CB44E:  AND.W           R3, LR, R5,LSR#2
1CB452:  LDR             R3, [R2,R3]
1CB454:  ORR.W           R1, R1, R3,LSL#4
1CB458:  UBFX.W          R3, R5, #6, #2
1CB45C:  LDR.W           R3, [R2,R3,LSL#2]
1CB460:  ORR.W           R1, R1, R3,LSL#6
1CB464:  STRB            R1, [R6,#0xD]
1CB466:  AND.W           R1, R0, #0xC
1CB46A:  AND.W           R3, R0, #3
1CB46E:  LDR             R1, [R2,R1]
1CB470:  LDR.W           R3, [R2,R3,LSL#2]
1CB474:  ORR.W           R1, R3, R1,LSL#2
1CB478:  AND.W           R3, LR, R0,LSR#2
1CB47C:  UBFX.W          R0, R0, #6, #2
1CB480:  LDR             R3, [R2,R3]
1CB482:  LDR.W           R0, [R2,R0,LSL#2]
1CB486:  ORR.W           R1, R1, R3,LSL#4
1CB48A:  ORR.W           R0, R1, R0,LSL#6
1CB48E:  STRB            R0, [R6,#0xE]
1CB490:  LDRB.W          R0, [R10,R12]
1CB494:  AND.W           R1, R0, #0xC
1CB498:  AND.W           R6, R0, #3
1CB49C:  AND.W           R3, LR, R0,LSR#2
1CB4A0:  UBFX.W          R0, R0, #6, #2
1CB4A4:  LDR             R1, [R2,R1]
1CB4A6:  LDR.W           R6, [R2,R6,LSL#2]
1CB4AA:  LDR             R3, [R2,R3]
1CB4AC:  LDR.W           R0, [R2,R0,LSL#2]
1CB4B0:  ORR.W           R1, R6, R1,LSL#2
1CB4B4:  LDR             R4, [SP,#0x30+var_20]
1CB4B6:  ORR.W           R1, R1, R3,LSL#4
1CB4BA:  ORR.W           R1, R1, R0,LSL#6
1CB4BE:  STRB.W          R1, [R10,R12]
1CB4C2:  SUBS            R4, #1
1CB4C4:  ADD.W           R12, R12, #0x10
1CB4C8:  BNE.W           loc_1CB2B8
1CB4CC:  MOV             R0, R10
1CB4CE:  ADD             SP, SP, #0x14
1CB4D0:  POP.W           {R8-R11}
1CB4D4:  POP             {R4-R7,PC}
