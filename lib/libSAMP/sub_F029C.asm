; =========================================================
; Game Engine Function: sub_F029C
; Address            : 0xF029C - 0xF03D8
; =========================================================

F029C:  PUSH            {R4-R7,LR}
F029E:  ADD             R7, SP, #0xC
F02A0:  PUSH.W          {R8-R11}
F02A4:  SUB             SP, SP, #0xC
F02A6:  LDR             R0, [R0,#0xC]
F02A8:  MOVW            R2, #0x76C
F02AC:  LDRD.W          R8, R1, [R0,#0x14]
F02B0:  LDR             R3, [R0,#0x1C]
F02B2:  ADDS.W          R4, R8, R2
F02B6:  MOV.W           R5, R8,ASR#31
F02BA:  ADC.W           R9, R5, #0
F02BE:  CMP             R1, #0
F02C0:  IT EQ
F02C2:  MOVEQ           R1, #7
F02C4:  SUBS            R1, R3, R1
F02C6:  ADDS            R1, #0xB
F02C8:  CMP             R1, #6
F02CA:  BGT             loc_F02DA
F02CC:  MOVW            R0, #0x76B
F02D0:  ADDS.W          R0, R0, R8
F02D4:  ADC.W           R1, R5, #0
F02D8:  B               loc_F03D0
F02DA:  STR             R1, [SP,#0x28+var_20]
F02DC:  MOV             R0, R4
F02DE:  MOV             R1, R9
F02E0:  MOV             R2, #0xFFFFFF9C
F02E4:  MOV.W           R3, #0xFFFFFFFF
F02E8:  BLX             sub_221404
F02EC:  MOV.W           R2, R9,ASR#31
F02F0:  STR             R4, [SP,#0x28+var_24]
F02F2:  ADDS.W          R2, R4, R2,LSR#30
F02F6:  ADC.W           R3, R9, #0
F02FA:  LSRS            R2, R2, #2
F02FC:  ORR.W           R2, R2, R3,LSL#30
F0300:  ASRS            R3, R3, #2
F0302:  ADDS            R2, R2, R4
F0304:  ADC.W           R3, R3, R9
F0308:  ADDS.W          R10, R2, R0
F030C:  ADC.W           R6, R3, R1
F0310:  MOV             R0, R4
F0312:  MOV             R1, R9
F0314:  MOV.W           R2, #0x190
F0318:  MOVS            R3, #0
F031A:  BLX             sub_221404
F031E:  ADDS.W          R0, R0, R10
F0322:  ADCS            R1, R6
F0324:  MOVS            R2, #7
F0326:  MOVS            R3, #0
F0328:  BLX             sub_221404
F032C:  EOR.W           R0, R2, #4
F0330:  MOV             R2, #0xFFFFFF9C
F0334:  ORRS            R0, R3
F0336:  STR             R0, [SP,#0x28+var_28]
F0338:  MOVW            R0, #0x76B
F033C:  ADDS.W          R6, R8, R0
F0340:  ADC.W           R4, R5, #0
F0344:  MOV.W           R3, #0xFFFFFFFF
F0348:  ADDS.W          R0, R6, R4,LSR#30
F034C:  ADC.W           R1, R4, #0
F0350:  LSRS            R0, R0, #2
F0352:  ORR.W           R0, R0, R1,LSL#30
F0356:  ASRS            R1, R1, #2
F0358:  ADDS.W          R11, R0, R6
F035C:  ADC.W           R10, R1, R4
F0360:  MOV             R0, R6
F0362:  MOV             R1, R4
F0364:  BLX             sub_221404
F0368:  ADDS.W          R11, R11, R0
F036C:  ADC.W           R10, R10, R1
F0370:  MOV             R0, R6
F0372:  MOV             R1, R4
F0374:  MOV.W           R2, #0x190
F0378:  MOVS            R3, #0
F037A:  BLX             sub_221404
F037E:  ADDS.W          R0, R0, R11
F0382:  ADC.W           R1, R1, R10
F0386:  MOVS            R2, #7
F0388:  MOVS            R3, #0
F038A:  BLX             sub_221404
F038E:  EOR.W           R0, R2, #3
F0392:  MOVS            R2, #0x34 ; '4'
F0394:  ORRS            R0, R3
F0396:  IT EQ
F0398:  MOVEQ           R2, #0x35 ; '5'
F039A:  LDR             R3, [SP,#0x28+var_20]
F039C:  MOV             R0, #0x24924925
F03A4:  UMULL.W         R0, R1, R3, R0
F03A8:  LDR             R0, [SP,#0x28+var_28]
F03AA:  CMP             R0, #0
F03AC:  IT EQ
F03AE:  MOVEQ           R2, #0x35 ; '5'
F03B0:  SUBS            R0, R3, R1
F03B2:  ADD.W           R3, R1, R0,LSR#1
F03B6:  MOVW            R0, #0x76D
F03BA:  ADDS.W          R0, R0, R8
F03BE:  ADC.W           R1, R5, #0
F03C2:  CMP.W           R2, R3,LSR#2
F03C6:  IT CS
F03C8:  MOVCS           R1, R9
F03CA:  LDR             R2, [SP,#0x28+var_24]
F03CC:  IT CS
F03CE:  MOVCS           R0, R2
F03D0:  ADD             SP, SP, #0xC
F03D2:  POP.W           {R8-R11}
F03D6:  POP             {R4-R7,PC}
