; =========================================================
; Game Engine Function: pitch_search
; Address            : 0xC237C - 0xC26D8
; =========================================================

C237C:  PUSH            {R4-R7,LR}
C237E:  ADD             R7, SP, #0xC
C2380:  PUSH.W          {R8-R11}
C2384:  SUB             SP, SP, #0x34
C2386:  STR.W           R0, [R7,#var_38]
C238A:  MOV.W           R8, R2,ASR#2
C238E:  LDR             R0, =(__stack_chk_guard_ptr - 0xC2396)
C2390:  MOVS            R6, #7
C2392:  ADD             R0, PC; __stack_chk_guard_ptr
C2394:  LDR             R0, [R0]; __stack_chk_guard
C2396:  LDR             R0, [R0]
C2398:  STR.W           R0, [R7,#var_24]
C239C:  MOVS            R0, #0
C239E:  STRD.W          R0, R0, [R7,#var_30]
C23A2:  ADD.W           R0, R6, R8,LSL#1
C23A6:  STR.W           R2, [R7,#var_40]
C23AA:  ADD             R2, R3
C23AC:  BIC.W           R0, R0, #7
C23B0:  MOV.W           R12, R2,ASR#2
C23B4:  SUB.W           R0, SP, R0
C23B8:  ADD.W           R2, R6, R12,LSL#1
C23BC:  BIC.W           R2, R2, #7
C23C0:  MOV             SP, R0
C23C2:  SUB.W           R9, SP, R2
C23C6:  MOV.W           R11, R3,ASR#1
C23CA:  ADD.W           R2, R6, R11,LSL#2
C23CE:  STR.W           R3, [R7,#var_4C]
C23D2:  BIC.W           R2, R2, #7
C23D6:  MOV             SP, R9
C23D8:  SUB.W           R2, SP, R2
C23DC:  STR.W           R2, [R7,#var_34]
C23E0:  MOV             SP, R2
C23E2:  CMP.W           R8, #1
C23E6:  BLT             loc_C23FC
C23E8:  LDR.W           R4, [R7,#var_38]
C23EC:  MOV             R2, R8
C23EE:  MOV             R6, R0
C23F0:  LDRH.W          R5, [R4],#4
C23F4:  SUBS            R2, #1
C23F6:  STRH.W          R5, [R6],#2
C23FA:  BNE             loc_C23F0
C23FC:  CMP.W           R12, #1
C2400:  BLT             loc_C2414
C2402:  MOV             R4, R1
C2404:  MOV             R2, R12
C2406:  MOV             R6, R9
C2408:  LDRH.W          R5, [R4],#4
C240C:  SUBS            R2, #1
C240E:  STRH.W          R5, [R6],#2
C2412:  BNE             loc_C2408
C2414:  CMP.W           R8, #1
C2418:  MOV.W           LR, #0
C241C:  STR.W           R1, [R7,#var_44]
C2420:  STR.W           R8, [R7,#var_48]
C2424:  BLT             loc_C244A
C2426:  MOV             R6, R0
C2428:  MOV             R4, R8
C242A:  MOVS            R1, #0
C242C:  LDRSH.W         R5, [R6],#2
C2430:  SXTH.W          R2, LR
C2434:  CMP             R2, R5
C2436:  SXTH            R2, R1
C2438:  IT GE
C243A:  MOVGE           LR, R5
C243C:  CMP             R2, R5
C243E:  IT LE
C2440:  MOVLE           R1, R5
C2442:  SUBS            R4, #1
C2444:  BNE             loc_C242C
C2446:  SXTH            R1, R1
C2448:  B               loc_C244C
C244A:  MOVS            R1, #0
C244C:  SXTH.W          R2, LR
C2450:  RSB.W           LR, R2, #0
C2454:  CMP             R1, LR
C2456:  MOV             R3, R9
C2458:  IT GT
C245A:  MOVGT           LR, R1
C245C:  CMP.W           R12, #1
C2460:  MOV.W           R8, #0
C2464:  BLT             loc_C248A
C2466:  MOV             R5, R9
C2468:  MOV             R1, R12
C246A:  MOVS            R4, #0
C246C:  LDRSH.W         R2, [R5],#2
C2470:  SXTH.W          R6, R8
C2474:  CMP             R6, R2
C2476:  SXTH            R6, R4
C2478:  IT GE
C247A:  MOVGE           R8, R2
C247C:  CMP             R6, R2
C247E:  IT LE
C2480:  MOVLE           R4, R2
C2482:  SUBS            R1, #1
C2484:  BNE             loc_C246C
C2486:  SXTH            R1, R4
C2488:  B               loc_C248C
C248A:  MOVS            R1, #0
C248C:  SXTH.W          R2, R8
C2490:  MOV.W           R9, #0
C2494:  NEGS            R2, R2
C2496:  CMP             R1, R2
C2498:  IT GT
C249A:  MOVGT           R2, R1
C249C:  CMP             LR, R2
C249E:  IT GT
C24A0:  MOVGT           R2, LR
C24A2:  CMP             R2, #1
C24A4:  IT LE
C24A6:  MOVLE           R2, #1
C24A8:  LDR.W           R10, [R7,#var_48]
C24AC:  CLZ.W           R1, R2
C24B0:  RSB.W           R2, R1, #0x1F
C24B4:  CMP             R2, #0xC
C24B6:  BLT             loc_C24F4
C24B8:  RSB.W           R2, R1, #0x14
C24BC:  CMP.W           R10, #1
C24C0:  BLT             loc_C24D6
C24C2:  MOV             R1, R10
C24C4:  MOV             R6, R0
C24C6:  LDRSH.W         R5, [R6]
C24CA:  SUBS            R1, #1
C24CC:  ASR.W           R5, R5, R2
C24D0:  STRH.W          R5, [R6],#2
C24D4:  BNE             loc_C24C6
C24D6:  CMP.W           R12, #1
C24DA:  MOV             R1, R3
C24DC:  BLT             loc_C24F0
C24DE:  LDRSH.W         R6, [R1]
C24E2:  SUBS.W          R12, R12, #1
C24E6:  ASR.W           R6, R6, R2
C24EA:  STRH.W          R6, [R1],#2
C24EE:  BNE             loc_C24DE
C24F0:  MOV.W           R9, R2,LSL#1
C24F4:  SUB             SP, SP, #8
C24F6:  LDR.W           R1, [R7,#var_4C]
C24FA:  MOV             R5, R3
C24FC:  LDR.W           R6, [R7,#var_34]
C2500:  MOV             R3, R10
C2502:  MOV.W           R8, R1,ASR#2
C2506:  MOV             R1, R5
C2508:  MOV             R2, R6
C250A:  STR.W           R8, [SP,#0x58+var_58]
C250E:  BLX             j_celt_pitch_xcorr_c
C2512:  ADD             SP, SP, #8
C2514:  SUB             SP, SP, #0x10
C2516:  MOVS            R1, #0
C2518:  SUB.W           R4, R7, #-var_30
C251C:  STR             R4, [SP,#0x60+var_60]
C251E:  MOV             R2, R10
C2520:  STRD.W          R1, R0, [SP,#0x60+var_5C]
C2524:  MOV             R0, R6
C2526:  MOV             R1, R5
C2528:  MOV             R3, R8
C252A:  BL              sub_C26E0
C252E:  ADD             SP, SP, #0x10
C2530:  CMP.W           R11, #0
C2534:  BLE             loc_C25CC
C2536:  LDRD.W          R0, R3, [R7,#var_30]
C253A:  LDR.W           R1, [R7,#var_40]
C253E:  MOV.W           R10, R0,LSL#1
C2542:  ASRS            R2, R1, #1
C2544:  LSLS            R1, R3, #1
C2546:  CMP             R2, #0
C2548:  STR.W           R1, [R7,#var_40]
C254C:  BLE             loc_C25DA
C254E:  LDR.W           R0, [R7,#var_44]
C2552:  MOVS            R3, #1
C2554:  MOVS            R4, #0
C2556:  STR.W           R11, [R7,#var_3C]
C255A:  MOVS            R1, #0
C255C:  STR.W           R1, [R6,R4,LSL#2]
C2560:  SUBS.W          R1, R4, R10
C2564:  IT MI
C2566:  NEGMI           R1, R1
C2568:  CMP             R1, #3
C256A:  BLT             loc_C257A
C256C:  LDR.W           R1, [R7,#var_40]
C2570:  SUBS            R1, R4, R1
C2572:  IT MI
C2574:  NEGMI           R1, R1
C2576:  CMP             R1, #2
C2578:  BGT             loc_C25BE
C257A:  MOV             R8, R3
C257C:  LDR.W           R3, [R7,#var_38]
C2580:  MOVS            R5, #0
C2582:  MOV             R6, R0
C2584:  MOV             LR, R2
C2586:  LDRSH.W         R12, [R3],#2
C258A:  SUBS            R2, #1
C258C:  LDRSH.W         R11, [R6],#2
C2590:  SMULBB.W        R1, R11, R12
C2594:  ASR.W           R1, R1, R9
C2598:  ADD             R5, R1
C259A:  BNE             loc_C2586
C259C:  CMP.W           R5, #0xFFFFFFFF
C25A0:  MOV             R1, R5
C25A2:  IT LE
C25A4:  MOVLE.W         R1, #0xFFFFFFFF
C25A8:  LDR.W           R6, [R7,#var_34]
C25AC:  MOV             R3, R8
C25AE:  CMP             R3, R5
C25B0:  MOV             R2, LR
C25B2:  STR.W           R1, [R6,R4,LSL#2]
C25B6:  IT LE
C25B8:  MOVLE           R3, R5
C25BA:  LDR.W           R11, [R7,#var_3C]
C25BE:  ADDS            R4, #1
C25C0:  ADDS            R0, #2
C25C2:  CMP             R4, R11
C25C4:  BNE             loc_C255A
C25C6:  LDR.W           R1, [R7,#var_44]
C25CA:  B               loc_C2634
C25CC:  LDR.W           R0, [R7,#var_40]
C25D0:  MOVS            R3, #1
C25D2:  LDR.W           R1, [R7,#var_44]
C25D6:  ASRS            R2, R0, #1
C25D8:  B               loc_C2638
C25DA:  MOV             R1, R6
C25DC:  MOV.W           R12, #0
C25E0:  MOV             R5, R1
C25E2:  LDR.W           R1, [R7,#var_40]
C25E6:  SUB.W           R6, R12, R3,LSL#1
C25EA:  SUB.W           R4, R12, R0,LSL#1
C25EE:  MOV             R3, R11
C25F0:  CMP.W           R4, #0xFFFFFFFF
C25F4:  MOV             R0, R10
C25F6:  STR.W           R12, [R5]
C25FA:  IT GT
C25FC:  MOVGT           R0, R4
C25FE:  CMP             R0, #3
C2600:  BLT             loc_C2616
C2602:  CMP.W           R6, #0xFFFFFFFF
C2606:  MOV             R0, R1
C2608:  IT GT
C260A:  MOVGT           R0, R6
C260C:  CMP             R0, #2
C260E:  IT LE
C2610:  STRLE.W         R12, [R5]
C2614:  B               loc_C261A
C2616:  STR.W           R12, [R5]
C261A:  SUBS            R1, #1
C261C:  ADDS            R6, #1
C261E:  SUB.W           R10, R10, #1
C2622:  ADDS            R4, #1
C2624:  ADDS            R5, #4
C2626:  SUBS            R3, #1
C2628:  BNE             loc_C25F0
C262A:  MOVS            R3, #1
C262C:  LDR.W           R1, [R7,#var_44]
C2630:  LDR.W           R6, [R7,#var_34]
C2634:  SUB.W           R4, R7, #-var_30
C2638:  LDR.W           R8, [R7,#arg_0]
C263C:  SUB             SP, SP, #0x10
C263E:  ORR.W           R0, R9, #1
C2642:  STRD.W          R4, R0, [SP,#0x60+var_60]
C2646:  MOV             R0, R6
C2648:  STR             R3, [SP,#0x60+var_58]
C264A:  MOV             R3, R11
C264C:  BL              sub_C26E0
C2650:  ADD             SP, SP, #0x10
C2652:  LDR.W           R0, [R7,#var_30]
C2656:  MOVS            R1, #0
C2658:  CMP             R0, #1
C265A:  BLT             loc_C26B0
C265C:  SUB.W           R2, R11, #1
C2660:  CMP             R0, R2
C2662:  BGE             loc_C26B0
C2664:  LDR.W           R2, [R6,R0,LSL#2]
C2668:  ADD.W           R6, R6, R0,LSL#2
C266C:  MOVW            R12, #0x599A
C2670:  LDR.W           R1, [R6,#-4]
C2674:  LDR             R6, [R6,#4]
C2676:  SUBS            R5, R2, R1
C2678:  UXTH            R4, R5
C267A:  ASRS            R3, R5, #0x10
C267C:  MOVW            R5, #0xB334
C2680:  MUL.W           R4, R4, R12
C2684:  MULS            R3, R5
C2686:  ADD.W           R3, R3, R4,LSR#15
C268A:  SUBS            R4, R6, R1
C268C:  CMP             R4, R3
C268E:  BLE             loc_C2694
C2690:  MOVS            R1, #1
C2692:  B               loc_C26B0
C2694:  SUBS            R2, R2, R6
C2696:  UXTH            R3, R2
C2698:  ASRS            R2, R2, #0x10
C269A:  MUL.W           R3, R3, R12
C269E:  MULS            R2, R5
C26A0:  ADD.W           R2, R2, R3,LSR#15
C26A4:  SUBS            R3, R1, R6
C26A6:  MOVS            R1, #0
C26A8:  CMP             R3, R2
C26AA:  IT GT
C26AC:  MOVGT.W         R1, #0xFFFFFFFF
C26B0:  RSB.W           R0, R1, R0,LSL#1
C26B4:  STR.W           R0, [R8]
C26B8:  LDR             R0, =(__stack_chk_guard_ptr - 0xC26C2)
C26BA:  LDR.W           R1, [R7,#var_24]
C26BE:  ADD             R0, PC; __stack_chk_guard_ptr
C26C0:  LDR             R0, [R0]; __stack_chk_guard
C26C2:  LDR             R0, [R0]
C26C4:  SUBS            R0, R0, R1
C26C6:  ITTTT EQ
C26C8:  SUBEQ.W         R4, R7, #-var_1C
C26CC:  MOVEQ           SP, R4
C26CE:  POPEQ.W         {R8-R11}
C26D2:  POPEQ           {R4-R7,PC}
C26D4:  BLX             __stack_chk_fail
