; =========================================================
; Game Engine Function: _ZN10CStreaming24RemoveBuildingsNotInAreaEi
; Address            : 0x2D52B8 - 0x2D53F6
; =========================================================

2D52B8:  PUSH            {R4-R7,LR}
2D52BA:  ADD             R7, SP, #0xC
2D52BC:  PUSH.W          {R8-R11}
2D52C0:  SUB             SP, SP, #4
2D52C2:  MOV             R8, R0
2D52C4:  LDR             R0, =(_ZN6CPools16ms_pBuildingPoolE_ptr - 0x2D52CA)
2D52C6:  ADD             R0, PC; _ZN6CPools16ms_pBuildingPoolE_ptr
2D52C8:  LDR             R0, [R0]; CPools::ms_pBuildingPool ...
2D52CA:  LDR             R5, [R0]; CPools::ms_pBuildingPool
2D52CC:  LDR             R0, [R5,#8]
2D52CE:  CBZ             R0, loc_2D531E
2D52D0:  RSB.W           R1, R0, R0,LSL#4
2D52D4:  MOV             R2, #0xFFFFFFF7
2D52D8:  SUBS            R6, R0, #1
2D52DA:  ADD.W           R4, R2, R1,LSL#2
2D52DE:  LDR             R0, [R5,#4]
2D52E0:  LDRSB           R0, [R0,R6]
2D52E2:  CMP             R0, #0
2D52E4:  BLT             loc_2D5316
2D52E6:  LDR             R0, [R5]
2D52E8:  ADDS            R1, R0, R4
2D52EA:  CMP             R1, #0x33 ; '3'
2D52EC:  BEQ             loc_2D5316
2D52EE:  LDR.W           R2, [R1,#-0x1B]
2D52F2:  CMP             R2, #0
2D52F4:  ITT NE
2D52F6:  LDRBNE          R0, [R0,R4]
2D52F8:  CMPNE           R0, #0xD
2D52FA:  BEQ             loc_2D5316
2D52FC:  CMP             R0, R8
2D52FE:  BEQ             loc_2D5316
2D5300:  LDRB.W          R0, [R1,#-0x16]
2D5304:  TST.W           R0, #0x21
2D5308:  BNE             loc_2D5316
2D530A:  SUB.W           R0, R1, #0x33 ; '3'
2D530E:  LDR.W           R1, [R1,#-0x33]
2D5312:  LDR             R1, [R1,#0x24]
2D5314:  BLX             R1
2D5316:  SUBS            R6, #1
2D5318:  SUBS            R4, #0x3C ; '<'
2D531A:  ADDS            R0, R6, #1
2D531C:  BNE             loc_2D52DE
2D531E:  LDR             R0, =(_ZN6CPools14ms_pObjectPoolE_ptr - 0x2D5324)
2D5320:  ADD             R0, PC; _ZN6CPools14ms_pObjectPoolE_ptr
2D5322:  LDR             R0, [R0]; CPools::ms_pObjectPool ...
2D5324:  LDR             R5, [R0]; CPools::ms_pObjectPool
2D5326:  LDR             R0, [R5,#8]
2D5328:  CBZ             R0, loc_2D5396
2D532A:  MOV.W           R1, #0x1A4
2D532E:  MOVW            R9, #0xFED8
2D5332:  MULS            R1, R0
2D5334:  SUBS            R4, R0, #1
2D5336:  MOVT            R9, #0xFFFF
2D533A:  MOV             R10, #0xFFFFFEF3
2D533E:  MOV             R11, #0xFFFFFEDD
2D5342:  SUB.W           R6, R1, #0x64 ; 'd'
2D5346:  LDR             R0, [R5,#4]
2D5348:  LDRSB           R0, [R0,R4]
2D534A:  CMP             R0, #0
2D534C:  BLT             loc_2D538C
2D534E:  LDR             R0, [R5]
2D5350:  ADDS            R1, R0, R6
2D5352:  CMP.W           R1, #0x140
2D5356:  BEQ             loc_2D538C
2D5358:  LDR.W           R2, [R1,R9]
2D535C:  CMP             R2, #0
2D535E:  ITT NE
2D5360:  LDRBNE.W        R2, [R1,R10]
2D5364:  CMPNE           R2, #0xD
2D5366:  BEQ             loc_2D538C
2D5368:  CMP             R2, R8
2D536A:  BEQ             loc_2D538C
2D536C:  LDRB.W          R2, [R1,R11]
2D5370:  LSLS            R2, R2, #0x1A
2D5372:  BMI             loc_2D538C
2D5374:  LDRB            R0, [R0,R6]
2D5376:  CMP             R0, #1
2D5378:  BNE             loc_2D538C
2D537A:  MOVW            R2, #0xFEC0
2D537E:  SUB.W           R0, R1, #0x140
2D5382:  MOVT            R2, #0xFFFF
2D5386:  LDR             R1, [R1,R2]
2D5388:  LDR             R1, [R1,#0x24]
2D538A:  BLX             R1
2D538C:  SUBS            R4, #1
2D538E:  SUB.W           R6, R6, #0x1A4
2D5392:  ADDS            R0, R4, #1
2D5394:  BNE             loc_2D5346
2D5396:  LDR             R0, =(_ZN6CPools13ms_pDummyPoolE_ptr - 0x2D539C)
2D5398:  ADD             R0, PC; _ZN6CPools13ms_pDummyPoolE_ptr
2D539A:  LDR             R0, [R0]; CPools::ms_pDummyPool ...
2D539C:  LDR             R5, [R0]; CPools::ms_pDummyPool
2D539E:  LDR             R0, [R5,#8]
2D53A0:  CBZ             R0, loc_2D53EE
2D53A2:  RSB.W           R1, R0, R0,LSL#4
2D53A6:  MOV             R2, #0xFFFFFFF7
2D53AA:  SUBS            R6, R0, #1
2D53AC:  ADD.W           R4, R2, R1,LSL#2
2D53B0:  LDR             R0, [R5,#4]
2D53B2:  LDRSB           R0, [R0,R6]
2D53B4:  CMP             R0, #0
2D53B6:  BLT             loc_2D53E6
2D53B8:  LDR             R0, [R5]
2D53BA:  ADDS            R1, R0, R4
2D53BC:  CMP             R1, #0x33 ; '3'
2D53BE:  BEQ             loc_2D53E6
2D53C0:  LDR.W           R2, [R1,#-0x1B]
2D53C4:  CMP             R2, #0
2D53C6:  ITT NE
2D53C8:  LDRBNE          R0, [R0,R4]
2D53CA:  CMPNE           R0, #0xD
2D53CC:  BEQ             loc_2D53E6
2D53CE:  CMP             R0, R8
2D53D0:  BEQ             loc_2D53E6
2D53D2:  LDRB.W          R0, [R1,#-0x16]
2D53D6:  LSLS            R0, R0, #0x1A
2D53D8:  BMI             loc_2D53E6
2D53DA:  SUB.W           R0, R1, #0x33 ; '3'
2D53DE:  LDR.W           R1, [R1,#-0x33]
2D53E2:  LDR             R1, [R1,#0x24]
2D53E4:  BLX             R1
2D53E6:  SUBS            R6, #1
2D53E8:  SUBS            R4, #0x3C ; '<'
2D53EA:  ADDS            R0, R6, #1
2D53EC:  BNE             loc_2D53B0
2D53EE:  ADD             SP, SP, #4
2D53F0:  POP.W           {R8-R11}
2D53F4:  POP             {R4-R7,PC}
