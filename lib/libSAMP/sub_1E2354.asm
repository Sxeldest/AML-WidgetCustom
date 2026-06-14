; =========================================================
; Game Engine Function: sub_1E2354
; Address            : 0x1E2354 - 0x1E248C
; =========================================================

1E2354:  PUSH            {R4-R11,LR}
1E2358:  ADD             R11, SP, #0x1C
1E235C:  SUB             SP, SP, #0xC
1E2360:  MOV             R4, R0
1E2364:  MOV             R1, #0x3E8
1E2368:  LDR             R0, [R4,#0x10]
1E236C:  MOVW            R3, #:lower16:(aZnkst6Ndk14Fs1_14+0x25); "eginEv"
1E2370:  LDR             R2, [R4,#0xC]
1E2374:  MOVT            R3, #:upper16:(aZnkst6Ndk14Fs1_14+0x25); "eginEv"
1E2378:  LDR             R10, [R4,R3]
1E237C:  MOV             R3, #0
1E2380:  UMULL           R0, R1, R0, R1
1E2384:  MOV             R5, #0
1E2388:  BL              sub_2217B4
1E238C:  MOV             R6, R0
1E2390:  MOV             R7, R1
1E2394:  BL              j_timeGetTime
1E2398:  STR             R0, [SP,#0x28+var_20]
1E239C:  MOVS            R1, R7,LSR#1
1E23A0:  LDR             R0, [R10]
1E23A4:  MOV             R1, R6,RRX
1E23A8:  STR             R1, [SP,#0x28+var_24]
1E23AC:  CMP             R0, #0
1E23B0:  BNE             loc_1E2480
1E23B4:  MOV             R8, #0
1E23B8:  LDRB            R0, [R4,#4]
1E23BC:  CMP             R0, #0
1E23C0:  BEQ             loc_1E2480
1E23C4:  BL              j_timeGetTime
1E23C8:  LDR             R1, [SP,#0x28+var_20]
1E23CC:  MOV             R2, #0x3E8
1E23D0:  LDR             R9, [R4,#0xC]
1E23D4:  MOV             R3, #0
1E23D8:  SUB             R0, R0, R1
1E23DC:  UMULL           R0, R1, R0, R9
1E23E0:  BL              sub_2217B4
1E23E4:  MOV             R7, R0
1E23E8:  SUBS            R0, R7, R5
1E23EC:  MOV             R6, R1
1E23F0:  SBCS            R0, R6, R8
1E23F4:  BCS             loc_1E2424
1E23F8:  MOV             R0, #0xFFFFFFFF
1E23FC:  MOV             R2, #0x3E8
1E2400:  UMULL           R0, R1, R9, R0
1E2404:  MOV             R3, #0
1E2408:  BL              sub_2217B4
1E240C:  SUBS            R0, R0, R5
1E2410:  MOV             R5, #0
1E2414:  SBC             R1, R1, R8
1E2418:  ADDS            R7, R0, R7
1E241C:  ADC             R6, R1, R6
1E2420:  MOV             R8, #0
1E2424:  LDR             R2, [R4,#0x10]
1E2428:  SUBS            R0, R7, R5
1E242C:  SBC             R1, R6, R8
1E2430:  SUBS            R0, R0, R2
1E2434:  SBCS            R0, R1, #0
1E2438:  BCS             loc_1E2448
1E243C:  LDR             R0, [SP,#0x28+var_24]
1E2440:  BL              j_Sleep
1E2444:  B               loc_1E2474
1E2448:  MOV             R0, R4
1E244C:  MOV             R1, #0
1E2450:  BL              j_aluMixData
1E2454:  LDR             R2, [R4,#0x10]
1E2458:  ADDS            R5, R5, R2
1E245C:  ADC             R8, R8, #0
1E2460:  SUBS            R0, R7, R5
1E2464:  SBC             R1, R6, R8
1E2468:  SUBS            R0, R0, R2
1E246C:  SBCS            R0, R1, #0
1E2470:  BCS             loc_1E2448
1E2474:  LDR             R0, [R10]
1E2478:  CMP             R0, #0
1E247C:  BEQ             loc_1E23B8
1E2480:  MOV             R0, #0
1E2484:  SUB             SP, R11, #0x1C
1E2488:  POP             {R4-R11,PC}
