; =========================================================
; Game Engine Function: silk_burg_modified_c
; Address            : 0xD239C - 0xD2F4E
; =========================================================

D239C:  PUSH            {R4-R7,LR}
D239E:  ADD             R7, SP, #0xC
D23A0:  PUSH.W          {R8-R11}
D23A4:  SUB.W           SP, SP, #0x2F4
D23A8:  STR             R2, [SP,#0x310+var_304]
D23AA:  MOV             R8, R1
D23AC:  LDRD.W          R2, R1, [R7,#arg_4]
D23B0:  MOV             R5, R0
D23B2:  LDR.W           R0, =(__stack_chk_guard_ptr - 0xD23BC)
D23B6:  MOV             R4, R3
D23B8:  ADD             R0, PC; __stack_chk_guard_ptr
D23BA:  MULS            R2, R1
D23BC:  MOV             R1, R4
D23BE:  LDR             R0, [R0]; __stack_chk_guard
D23C0:  LDR             R0, [R0]
D23C2:  STR             R0, [SP,#0x310+var_20]
D23C4:  MOV             R0, R4
D23C6:  BLX             j_silk_inner_prod16_aligned_64_c
D23CA:  CMP             R1, #0
D23CC:  ITEE NE
D23CE:  CLZNE.W         R2, R1
D23D2:  CLZEQ.W         R2, R0
D23D6:  ADDEQ           R2, #0x20 ; ' '
D23D8:  RSB.W           R6, R2, #0x24 ; '$'
D23DC:  CMP             R6, #7
D23DE:  IT GE
D23E0:  MOVGE           R6, #7
D23E2:  CMN.W           R6, #0x10
D23E6:  IT LE
D23E8:  MOVLE           R6, #0xFFFFFFF0
D23EC:  CMP             R6, #1
D23EE:  BLT             loc_D240A
D23F0:  RSB.W           R2, R6, #0x20 ; ' '
D23F4:  LSRS            R0, R6
D23F6:  LSL.W           R2, R1, R2
D23FA:  ORRS            R2, R0
D23FC:  SUB.W           R0, R6, #0x20 ; ' '
D2400:  CMP             R0, #0
D2402:  IT GE
D2404:  ASRGE.W         R2, R1, R0
D2408:  B               loc_D2410
D240A:  NEGS            R1, R6
D240C:  LSL.W           R2, R0, R1
D2410:  MOVW            R0, #0xA7C6
D2414:  STR             R4, [SP,#0x310+var_28C]
D2416:  SMMLA.W         R0, R0, R2, R2
D241A:  STRD.W          R5, R8, [SP,#0x310+var_2FC]
D241E:  MOVS            R1, #0x60 ; '`'; n
D2420:  STR             R2, [SP,#0x310+var_300]
D2422:  ADDS            R0, #1
D2424:  STR             R0, [SP,#0x310+var_1A4]
D2426:  STR             R0, [SP,#0x310+var_27C]
D2428:  STR             R0, [SP,#0x310+var_208]
D242A:  ADD             R0, SP, #0x310+src; int
D242C:  BLX             sub_10967C
D2430:  LDR             R0, [R7,#arg_8]
D2432:  CMP             R6, #0
D2434:  STR             R6, [SP,#0x310+var_2C4]
D2436:  BLE             loc_D24BE
D2438:  CMP             R0, #1
D243A:  BLT.W           loc_D25C6
D243E:  LDR             R0, [R7,#arg_C]
D2440:  CMP             R0, #1
D2442:  BLT.W           loc_D258A
D2446:  LDR             R0, [R7,#arg_4]
D2448:  MOV.W           R11, #0
D244C:  LDR.W           R10, [SP,#0x310+var_2C4]
D2450:  SUBS            R1, R0, #1
D2452:  STR             R1, [SP,#0x310+var_270]
D2454:  LSLS            R0, R0, #1
D2456:  STR             R0, [SP,#0x310+var_274]
D2458:  LDR             R0, [SP,#0x310+var_28C]
D245A:  ADDS            R6, R0, #2
D245C:  LDR             R0, [R7,#arg_4]
D245E:  ADD.W           R8, SP, #0x310+src
D2462:  LDR             R1, [SP,#0x310+var_28C]
D2464:  LDR             R5, [SP,#0x310+var_270]
D2466:  MUL.W           R0, R11, R0
D246A:  LDR.W           R9, [R7,#arg_C]
D246E:  STR             R6, [SP,#0x310+var_26C]
D2470:  ADD.W           R4, R1, R0,LSL#1
D2474:  MOV             R0, R4
D2476:  MOV             R1, R6
D2478:  MOV             R2, R5
D247A:  BLX             j_silk_inner_prod16_aligned_64_c
D247E:  RSB.W           R2, R10, #0x20 ; ' '
D2482:  LSR.W           R0, R0, R10
D2486:  LDR.W           R3, [R8]
D248A:  SUBS            R5, #1
D248C:  LSL.W           R2, R1, R2
D2490:  ORRS            R0, R2
D2492:  SUB.W           R2, R10, #0x20 ; ' '
D2496:  ADDS            R6, #2
D2498:  CMP             R2, #0
D249A:  IT GE
D249C:  ASRGE.W         R0, R1, R2
D24A0:  SUBS.W          R9, R9, #1
D24A4:  ADD             R0, R3
D24A6:  STR.W           R0, [R8],#4
D24AA:  BNE             loc_D2474
D24AC:  LDR             R0, [SP,#0x310+var_274]
D24AE:  ADD.W           R11, R11, #1
D24B2:  LDR             R6, [SP,#0x310+var_26C]
D24B4:  ADD             R6, R0
D24B6:  LDR             R0, [R7,#arg_8]
D24B8:  CMP             R11, R0
D24BA:  BNE             loc_D245C
D24BC:  B               loc_D25C6
D24BE:  CMP             R0, #1
D24C0:  BLT.W           loc_D25C6
D24C4:  LDR             R2, [R7,#arg_C]
D24C6:  LDR             R0, [R7,#arg_4]
D24C8:  CMP             R2, #0
D24CA:  SUB.W           R9, R0, R2
D24CE:  BLE             loc_D25A2
D24D0:  MOV             R3, R0
D24D2:  LDR             R0, [SP,#0x310+var_2C4]
D24D4:  LDR             R1, [SP,#0x310+var_28C]
D24D6:  ADD.W           R11, R2, #1
D24DA:  RSB.W           R8, R0, #0
D24DE:  ADDS            R0, R3, #1
D24E0:  SUBS            R0, R0, R2
D24E2:  ADD.W           R10, R1, R9,LSL#1
D24E6:  ADD.W           R4, R1, R0,LSL#1
D24EA:  SUBS            R0, R2, #1
D24EC:  STR             R0, [SP,#0x310+var_274]
D24EE:  LSLS            R0, R3, #1
D24F0:  MOVS            R1, #0
D24F2:  STR             R0, [SP,#0x310+var_278]
D24F4:  LDR             R0, [R7,#arg_4]
D24F6:  ADD             R2, SP, #0x310+var_268
D24F8:  STR             R1, [SP,#0x310+var_270]
D24FA:  MOV             R3, R9
D24FC:  MULS            R0, R1
D24FE:  LDR             R1, [R7,#arg_C]
D2500:  STR             R1, [SP,#0x310+var_310]
D2502:  LDR             R1, [R7,#arg_10]
D2504:  STR             R1, [SP,#0x310+var_30C]
D2506:  LDR             R1, [SP,#0x310+var_28C]
D2508:  ADD.W           R0, R1, R0,LSL#1
D250C:  ADDS            R1, R0, #2
D250E:  BLX             j_celt_pitch_xcorr_c
D2512:  LDR.W           R12, [SP,#0x310+var_274]
D2516:  MOVS            R0, #1
D2518:  MOV             LR, R4
D251A:  STR             R4, [SP,#0x310+var_26C]
D251C:  LDR             R2, [R7,#arg_4]
D251E:  ADD.W           R1, R9, R0
D2522:  MOVS            R3, #0
D2524:  CMP             R1, R2
D2526:  BGE             loc_D253E
D2528:  MOV             R1, R12
D252A:  MOV             R5, R10
D252C:  MOV             R2, LR
D252E:  LDRSH.W         R4, [R2],#2
D2532:  SUBS            R1, #1
D2534:  LDRSH.W         R6, [R5],#2
D2538:  SMLABB.W        R3, R6, R4, R3
D253C:  BNE             loc_D252E
D253E:  ADD             R1, SP, #0x310+var_268
D2540:  SUB.W           R12, R12, #1
D2544:  ADD.W           R1, R1, R0,LSL#2
D2548:  ADDS            R0, #1
D254A:  ADD.W           LR, LR, #2
D254E:  CMP             R0, R11
D2550:  LDR.W           R2, [R1,#-4]
D2554:  ADD             R2, R3
D2556:  STR.W           R2, [R1,#-4]
D255A:  BNE             loc_D251C
D255C:  LDR             R2, [R7,#arg_C]
D255E:  ADD             R0, SP, #0x310+var_268
D2560:  ADD             R1, SP, #0x310+src
D2562:  LDR.W           R3, [R0],#4
D2566:  SUBS            R2, #1
D2568:  LDR             R6, [R1]
D256A:  LSL.W           R3, R3, R8
D256E:  ADD             R3, R6
D2570:  STR.W           R3, [R1],#4
D2574:  BNE             loc_D2562
D2576:  LDR             R0, [SP,#0x310+var_278]
D2578:  LDR             R4, [SP,#0x310+var_26C]
D257A:  LDR             R1, [SP,#0x310+var_270]
D257C:  ADD             R10, R0
D257E:  ADD             R4, R0
D2580:  LDR             R0, [R7,#arg_8]
D2582:  ADDS            R1, #1
D2584:  CMP             R1, R0
D2586:  BNE             loc_D24F4
D2588:  B               loc_D25C6
D258A:  ADD             R0, SP, #0x310+dest; dest
D258C:  ADD             R1, SP, #0x310+src; src
D258E:  MOVS            R2, #0x60 ; '`'; n
D2590:  BLX             j_memcpy
D2594:  LDR             R2, [SP,#0x310+var_27C]
D2596:  MOV.W           R8, #0x10000
D259A:  STR             R2, [SP,#0x310+var_1A4]
D259C:  STR             R2, [SP,#0x310+var_208]
D259E:  B.W             loc_D2E44
D25A2:  LDR             R6, [SP,#0x310+var_28C]
D25A4:  ADD.W           R8, SP, #0x310+var_268
D25A8:  LDR             R4, [R7,#arg_8]
D25AA:  LSLS            R5, R0, #1
D25AC:  LDR             R0, [R7,#arg_C]
D25AE:  ADDS            R1, R6, #2
D25B0:  STR             R0, [SP,#0x310+var_310]
D25B2:  MOV             R2, R8
D25B4:  LDR             R0, [R7,#arg_10]
D25B6:  MOV             R3, R9
D25B8:  STR             R0, [SP,#0x310+var_30C]
D25BA:  MOV             R0, R6
D25BC:  BLX             j_celt_pitch_xcorr_c
D25C0:  ADD             R6, R5
D25C2:  SUBS            R4, #1
D25C4:  BNE             loc_D25AC
D25C6:  ADD.W           R8, SP, #0x310+dest
D25CA:  ADD             R5, SP, #0x310+src
D25CC:  MOVS            R2, #0x60 ; '`'; n
D25CE:  MOV             R0, R8; dest
D25D0:  MOV             R1, R5; src
D25D2:  BLX             j_memcpy
D25D6:  LDR             R0, [SP,#0x310+var_27C]
D25D8:  STR             R0, [SP,#0x310+var_1A4]
D25DA:  STR             R0, [SP,#0x310+var_208]
D25DC:  LDR             R0, [R7,#arg_C]
D25DE:  CMP             R0, #0
D25E0:  BLE.W           loc_D2E3E
D25E4:  LDR             R2, [R7,#arg_0]
D25E6:  MOV.W           R11, #0
D25EA:  CMP             R2, #0
D25EC:  MOV             R0, R2
D25EE:  IT MI
D25F0:  NEGMI           R0, R2
D25F2:  LDR.W           R9, [SP,#0x310+var_28C]
D25F6:  CLZ.W           R0, R0
D25FA:  LDR             R3, [SP,#0x310+var_2C4]
D25FC:  SUBS            R1, R0, #1
D25FE:  SUBS            R0, #2
D2600:  STR             R0, [SP,#0x310+var_2EC]
D2602:  MOV.W           R0, #0x40000000
D2606:  LSL.W           R6, R2, R1
D260A:  SUBS            R2, R5, #4
D260C:  STR             R2, [SP,#0x310+var_298]
D260E:  SUB.W           R2, R8, #4
D2612:  STR             R2, [SP,#0x310+var_29C]
D2614:  ADD             R1, SP, #0x310+var_208
D2616:  LDR             R2, [R7,#arg_4]
D2618:  ADD.W           R12, R1, #4
D261C:  STR             R0, [SP,#0x310+var_2D8]
D261E:  ADD             R1, SP, #0x310+var_140
D2620:  SUB.W           R5, R9, #2
D2624:  SUB.W           LR, R1, #4
D2628:  ADD.W           R4, R9, R2,LSL#1
D262C:  LSLS            R2, R2, #1
D262E:  STR             R2, [SP,#0x310+var_294]
D2630:  NEGS            R2, R3
D2632:  SUBS            R0, R4, #2
D2634:  STR             R2, [SP,#0x310+var_2BC]
D2636:  RSB.W           R2, R3, #7
D263A:  STR             R0, [SP,#0x310+var_2D4]
D263C:  UXTH            R0, R6
D263E:  ADD             R1, SP, #0x310+var_1A4
D2640:  STR             R5, [SP,#0x310+var_2D0]
D2642:  MVNS            R5, R3
D2644:  STR             R2, [SP,#0x310+var_2B4]
D2646:  RSB.W           R2, R3, #0x10
D264A:  STR             R0, [SP,#0x310+var_2F0]
D264C:  ASRS            R0, R6, #0x10
D264E:  ADDS            R1, #4
D2650:  STR             R2, [SP,#0x310+var_2C0]
D2652:  STR             R0, [SP,#0x310+var_2F4]
D2654:  MOV.W           R8, #2
D2658:  STR             R4, [SP,#0x310+var_2CC]
D265A:  MOVS            R2, #1
D265C:  STR             R6, [SP,#0x310+var_2E8]
D265E:  STR.W           R9, [SP,#0x310+var_2C8]
D2662:  LDR             R0, [R7,#arg_8]
D2664:  STR             R1, [SP,#0x310+var_290]
D2666:  STR             R5, [SP,#0x310+var_2B0]
D2668:  ADD             R1, SP, #0x310+var_2E4
D266A:  STR             R2, [SP,#0x310+var_2B8]
D266C:  STM.W           R1, {R8,R12,LR}
D2670:  MOV             R6, R11
D2672:  LDR             R1, [SP,#0x310+var_2C4]
D2674:  STR             R6, [SP,#0x310+var_270]
D2676:  CMP.W           R1, #0xFFFFFFFF
D267A:  BLT.W           loc_D27CE
D267E:  CMP             R0, #1
D2680:  BLT.W           loc_D2A6E
D2684:  LDR             R0, [R7,#arg_4]
D2686:  CMP             R6, #0
D2688:  SUB.W           R0, R0, R6
D268C:  SUB.W           R0, R0, #1
D2690:  STR             R0, [SP,#0x310+var_2A4]
D2692:  BLE.W           loc_D2926
D2696:  LDR             R0, [SP,#0x310+var_2C8]
D2698:  MOVS            R1, #0
D269A:  STR             R0, [SP,#0x310+var_284]
D269C:  LDRD.W          R5, R0, [SP,#0x310+var_2D0]
D26A0:  STR             R0, [SP,#0x310+var_26C]
D26A2:  ADD.W           R9, SP, #0x310+dest
D26A6:  LDR             R0, [R7,#arg_4]
D26A8:  ADD.W           R11, SP, #0x310+src
D26AC:  STR             R1, [SP,#0x310+var_288]
D26AE:  ADD.W           R12, SP, #0x310+var_140
D26B2:  LDR             R2, [SP,#0x310+var_2C0]
D26B4:  MOV.W           LR, #0
D26B8:  MULS            R0, R1
D26BA:  LDR             R1, [SP,#0x310+var_28C]
D26BC:  ADD.W           R0, R1, R0,LSL#1
D26C0:  LDR             R1, [SP,#0x310+var_2A4]
D26C2:  LDRSH.W         R3, [R0,R6,LSL#1]
D26C6:  LDRSH.W         R1, [R0,R1,LSL#1]
D26CA:  STR             R5, [SP,#0x310+var_2A0]
D26CC:  MOV.W           R10, R3,LSL#9
D26D0:  LSL.W           R0, R1, R2
D26D4:  LSLS            R4, R1, #9
D26D6:  NEGS            R0, R0
D26D8:  UXTH            R1, R0
D26DA:  ASRS            R0, R0, #0x10
D26DC:  STR             R1, [SP,#0x310+var_274]
D26DE:  LSL.W           R1, R3, R2
D26E2:  NEGS            R1, R1
D26E4:  STR             R0, [SP,#0x310+var_278]
D26E6:  UXTH            R0, R1
D26E8:  STR             R0, [SP,#0x310+var_27C]
D26EA:  ASRS            R0, R1, #0x10
D26EC:  STR             R0, [SP,#0x310+var_280]
D26EE:  LDRSH.W         R3, [R5],#-2
D26F2:  LDR             R0, [SP,#0x310+var_27C]
D26F4:  LDR             R1, [SP,#0x310+var_280]
D26F6:  LDR.W           R2, [R11,LR,LSL#2]
D26FA:  MULS            R0, R3
D26FC:  LDR             R6, [SP,#0x310+var_278]
D26FE:  SMLABB.W        R2, R1, R3, R2
D2702:  LDR             R1, [SP,#0x310+var_274]
D2704:  ADD.W           R0, R2, R0,ASR#16
D2708:  STR.W           R0, [R11,LR,LSL#2]
D270C:  LDR             R0, [SP,#0x310+var_26C]
D270E:  LDR.W           R2, [R9,LR,LSL#2]
D2712:  LDRSH.W         R0, [R0,LR,LSL#1]
D2716:  MULS            R1, R0
D2718:  SMLABB.W        R2, R6, R0, R2
D271C:  ADD.W           R1, R2, R1,ASR#16
D2720:  STR.W           R1, [R9,LR,LSL#2]
D2724:  LDR.W           R1, [R12,LR,LSL#2]
D2728:  ADD.W           LR, LR, #1
D272C:  UXTH            R2, R1
D272E:  MUL.W           R8, R2, R0
D2732:  MULS            R2, R3
D2734:  SMLABT.W        R0, R0, R1, R4
D2738:  SMLABT.W        R1, R3, R1, R10
D273C:  ADD.W           R4, R0, R8,ASR#16
D2740:  LDR             R0, [SP,#0x310+var_270]
D2742:  ADD.W           R10, R1, R2,ASR#16
D2746:  CMP             R0, LR
D2748:  BNE             loc_D26EE
D274A:  LDR             R1, [SP,#0x310+var_2B4]
D274C:  NEGS            R0, R4
D274E:  LDR             R6, [SP,#0x310+var_270]
D2750:  ADD             R5, SP, #0x310+var_208
D2752:  ADD             R3, SP, #0x310+var_1A4
D2754:  MOV.W           R4, #0xFFFFFFFF
D2758:  LSLS            R0, R1
D275A:  UXTH.W          R12, R0
D275E:  MOV.W           LR, R0,ASR#16
D2762:  RSB.W           R0, R10, #0
D2766:  LSLS            R0, R1
D2768:  UXTH.W          R11, R0
D276C:  MOV.W           R8, R0,ASR#16
D2770:  LDR             R0, [SP,#0x310+var_284]
D2772:  LDRSH.W         R1, [R0],#-2
D2776:  LDR.W           R9, [R3]
D277A:  MUL.W           R2, R11, R1
D277E:  SMLABB.W        R1, R8, R1, R9
D2782:  ADD.W           R1, R1, R2,ASR#16
D2786:  STR.W           R1, [R3],#4
D278A:  LDR             R1, [SP,#0x310+var_26C]
D278C:  MOV             R2, R6
D278E:  LDR             R6, [R5]
D2790:  LDRSH.W         R1, [R1,R4,LSL#1]
D2794:  ADDS            R4, #1
D2796:  MUL.W           R9, R12, R1
D279A:  SMLABB.W        R1, LR, R1, R6
D279E:  MOV             R6, R2
D27A0:  CMP             R6, R4
D27A2:  ADD.W           R1, R1, R9,ASR#16
D27A6:  STR.W           R1, [R5],#4
D27AA:  BNE             loc_D2772
D27AC:  LDR             R0, [SP,#0x310+var_294]
D27AE:  LDR             R1, [SP,#0x310+var_284]
D27B0:  LDR.W           R10, [SP,#0x310+var_26C]
D27B4:  LDR             R5, [SP,#0x310+var_2A0]
D27B6:  ADD             R1, R0
D27B8:  STR             R1, [SP,#0x310+var_284]
D27BA:  ADD             R10, R0
D27BC:  LDR             R1, [SP,#0x310+var_288]
D27BE:  ADD             R5, R0
D27C0:  LDR             R0, [R7,#arg_8]
D27C2:  ADDS            R1, #1
D27C4:  CMP             R1, R0
D27C6:  MOV             R0, R10
D27C8:  BNE.W           loc_D26A0
D27CC:  B               loc_D2A6E
D27CE:  CMP             R0, #1
D27D0:  BLT.W           loc_D2A6E
D27D4:  LDR             R0, [R7,#arg_4]
D27D6:  CMP             R6, #0
D27D8:  SUB.W           R0, R0, R6
D27DC:  SUB.W           R0, R0, #1
D27E0:  STR             R0, [SP,#0x310+var_2AC]
D27E2:  BLE.W           loc_D29BE
D27E6:  LDR             R0, [SP,#0x310+var_2C8]
D27E8:  MOVS            R1, #0
D27EA:  STR             R0, [SP,#0x310+var_2A0]
D27EC:  LDRD.W          R3, R0, [SP,#0x310+var_2D0]
D27F0:  STR             R0, [SP,#0x310+var_26C]
D27F2:  ADD.W           R9, SP, #0x310+dest
D27F6:  LDR             R0, [R7,#arg_4]
D27F8:  ADD.W           R10, SP, #0x310+src
D27FC:  STR             R1, [SP,#0x310+var_2A4]
D27FE:  ADD.W           R11, SP, #0x310+var_140
D2802:  MOV             R4, R3
D2804:  MOV             R12, R6
D2806:  MULS            R0, R1
D2808:  LDR             R1, [SP,#0x310+var_28C]
D280A:  ADD.W           R0, R1, R0,LSL#1
D280E:  LDR             R1, [SP,#0x310+var_2AC]
D2810:  LDRSH.W         R2, [R0,R1,LSL#1]
D2814:  LDRSH.W         R0, [R0,R6,LSL#1]
D2818:  LDR             R1, [SP,#0x310+var_2BC]
D281A:  STR             R3, [SP,#0x310+var_2A8]
D281C:  LSL.W           R5, R2, R1
D2820:  LSL.W           R1, R0, R1
D2824:  STR             R5, [SP,#0x310+var_274]
D2826:  LSLS            R2, R2, #0x11
D2828:  LSLS            R0, R0, #0x11
D282A:  MOVS            R5, #0
D282C:  STR             R1, [SP,#0x310+var_278]
D282E:  LDRSH.W         LR, [R4],#-2
D2832:  MOV.W           R8, #1
D2836:  LDR             R3, [SP,#0x310+var_278]
D2838:  LDR.W           R1, [R10,R5,LSL#2]
D283C:  LDR.W           R6, [R9,R5,LSL#2]
D2840:  MLS.W           R1, R3, LR, R1
D2844:  LDR             R3, [SP,#0x310+var_274]
D2846:  STR.W           R1, [R10,R5,LSL#2]
D284A:  LDR             R1, [SP,#0x310+var_26C]
D284C:  LDRSH.W         R1, [R1,R5,LSL#1]
D2850:  MLS.W           R6, R3, R1, R6
D2854:  STR.W           R6, [R9,R5,LSL#2]
D2858:  LDR.W           R6, [R11,R5,LSL#2]
D285C:  ADDS            R5, #1
D285E:  CMP             R12, R5
D2860:  ADD.W           R6, R8, R6,ASR#7
D2864:  MOV.W           R6, R6,ASR#1
D2868:  MLA.W           R2, R6, R1, R2
D286C:  MLA.W           R0, R6, LR, R0
D2870:  BNE             loc_D282E
D2872:  NEGS            R2, R2
D2874:  NEGS            R0, R0
D2876:  STR             R2, [SP,#0x310+var_27C]
D2878:  ADD.W           R8, SP, #0x310+var_1A4
D287C:  UXTH            R1, R2
D287E:  MOV.W           R9, #0xFFFFFFFF
D2882:  STR             R1, [SP,#0x310+var_274]
D2884:  ASRS            R1, R2, #0x10
D2886:  STR             R1, [SP,#0x310+var_278]
D2888:  UXTH            R1, R0
D288A:  STRD.W          R1, R0, [SP,#0x310+var_284]
D288E:  ADD             R1, SP, #0x310+var_208
D2890:  LDR.W           R11, [SP,#0x310+var_2A0]
D2894:  ASRS            R0, R0, #0x10
D2896:  LDR             R3, [SP,#0x310+var_2B0]
D2898:  STR             R0, [SP,#0x310+var_288]
D289A:  LDRSH.W         R5, [R11],#-2
D289E:  MOVS            R6, #1
D28A0:  LDR             R0, [SP,#0x310+var_284]
D28A2:  LDR.W           R2, [R8]
D28A6:  LSLS            R5, R3
D28A8:  SXTH.W          R10, R5
D28AC:  MUL.W           R4, R10, R0
D28B0:  LDR             R0, [SP,#0x310+var_288]
D28B2:  SMLABB.W        R2, R10, R0, R2
D28B6:  LDR             R0, [SP,#0x310+var_280]
D28B8:  ADD.W           R2, R2, R4,ASR#16
D28BC:  ADD.W           R4, R6, R5,ASR#15
D28C0:  ASRS            R4, R4, #1
D28C2:  MLA.W           R2, R4, R0, R2
D28C6:  LDR             R0, [SP,#0x310+var_26C]
D28C8:  LDR             R4, [R1]
D28CA:  STR.W           R2, [R8],#4
D28CE:  LDRSH.W         R2, [R0,R9,LSL#1]
D28D2:  ADD.W           R9, R9, #1
D28D6:  LDR             R0, [SP,#0x310+var_278]
D28D8:  CMP             R12, R9
D28DA:  LSL.W           R2, R2, R3
D28DE:  SXTH            R5, R2
D28E0:  ADD.W           R2, R6, R2,ASR#15
D28E4:  SMLABB.W        R4, R5, R0, R4
D28E8:  LDR             R0, [SP,#0x310+var_274]
D28EA:  MOV.W           R2, R2,ASR#1
D28EE:  MUL.W           R5, R0, R5
D28F2:  LDR             R0, [SP,#0x310+var_27C]
D28F4:  ADD.W           R4, R4, R5,ASR#16
D28F8:  MLA.W           R2, R2, R0, R4
D28FC:  STR.W           R2, [R1],#4
D2900:  BNE             loc_D289A
D2902:  LDR             R0, [SP,#0x310+var_294]
D2904:  MOV             R6, R12
D2906:  LDR             R1, [SP,#0x310+var_2A0]
D2908:  LDR.W           LR, [SP,#0x310+var_26C]
D290C:  LDR             R3, [SP,#0x310+var_2A8]
D290E:  ADD             R1, R0
D2910:  STR             R1, [SP,#0x310+var_2A0]
D2912:  ADD             LR, R0
D2914:  LDR             R1, [SP,#0x310+var_2A4]
D2916:  ADD             R3, R0
D2918:  LDR             R0, [R7,#arg_8]
D291A:  ADDS            R1, #1
D291C:  CMP             R1, R0
D291E:  MOV             R0, LR
D2920:  BNE.W           loc_D27F0
D2924:  B               loc_D2A6E
D2926:  LDR.W           R9, [SP,#0x310+var_2D4]
D292A:  MOVS            R1, #0
D292C:  LDR             R5, [SP,#0x310+var_2C8]
D292E:  LDR             R0, [R7,#arg_4]
D2930:  MOVS            R3, #0
D2932:  STR             R1, [SP,#0x310+var_274]
D2934:  ADD.W           R12, SP, #0x310+var_208
D2938:  LDR.W           R8, [SP,#0x310+var_2B8]
D293C:  ADD.W           LR, SP, #0x310+var_1A4
D2940:  MULS            R0, R1
D2942:  LDR             R1, [SP,#0x310+var_28C]
D2944:  ADD.W           R0, R1, R0,LSL#1
D2948:  LDR             R1, [SP,#0x310+var_2A4]
D294A:  LDRSH.W         R2, [R0,R1,LSL#1]
D294E:  LDRSH.W         R0, [R0,R6,LSL#1]
D2952:  LDR             R1, [SP,#0x310+var_2B4]
D2954:  STR             R5, [SP,#0x310+var_26C]
D2956:  SUB.W           R2, R3, R2,LSL#9
D295A:  SUB.W           R0, R3, R0,LSL#9
D295E:  MOVS            R3, #0
D2960:  LSLS            R2, R1
D2962:  LSLS            R0, R1
D2964:  UXTH.W          R10, R2
D2968:  MOV.W           R11, R2,ASR#16
D296C:  UXTH            R4, R0
D296E:  ASRS            R0, R0, #0x10
D2970:  MOV             R2, R5
D2972:  LDRSH.W         R1, [R2],#-2
D2976:  LDR.W           R6, [LR,R3,LSL#2]
D297A:  MUL.W           R5, R4, R1
D297E:  SMLABB.W        R1, R0, R1, R6
D2982:  ADD.W           R1, R1, R5,ASR#16
D2986:  STR.W           R1, [LR,R3,LSL#2]
D298A:  LDRSH.W         R1, [R9,R3,LSL#1]
D298E:  LDR.W           R5, [R12,R3,LSL#2]
D2992:  MUL.W           R6, R10, R1
D2996:  SMLABB.W        R1, R11, R1, R5
D299A:  ADD.W           R1, R1, R6,ASR#16
D299E:  STR.W           R1, [R12,R3,LSL#2]
D29A2:  ADDS            R3, #1
D29A4:  CMP             R8, R3
D29A6:  BNE             loc_D2972
D29A8:  LDR             R0, [SP,#0x310+var_294]
D29AA:  LDR             R5, [SP,#0x310+var_26C]
D29AC:  LDR             R1, [SP,#0x310+var_274]
D29AE:  ADD             R9, R0
D29B0:  ADD             R5, R0
D29B2:  LDR             R0, [R7,#arg_8]
D29B4:  LDR             R6, [SP,#0x310+var_270]
D29B6:  ADDS            R1, #1
D29B8:  CMP             R1, R0
D29BA:  BNE             loc_D292E
D29BC:  B               loc_D2A6E
D29BE:  LDR             R0, [SP,#0x310+var_2D4]
D29C0:  MOVS            R2, #0
D29C2:  LDR             R3, [SP,#0x310+var_2C8]
D29C4:  STR             R0, [SP,#0x310+var_26C]
D29C6:  ADD.W           R12, SP, #0x310+var_208
D29CA:  LDR             R0, [R7,#arg_4]
D29CC:  ADD.W           LR, SP, #0x310+var_1A4
D29D0:  LDR             R1, [SP,#0x310+var_28C]
D29D2:  MOV.W           R9, #1
D29D6:  STR             R2, [SP,#0x310+var_280]
D29D8:  MULS            R0, R2
D29DA:  LDR.W           R8, [SP,#0x310+var_2B0]
D29DE:  LDR.W           R10, [SP,#0x310+var_2B8]
D29E2:  ADD.W           R0, R1, R0,LSL#1
D29E6:  LDR             R1, [SP,#0x310+var_2AC]
D29E8:  LDRH.W          R2, [R0,R1,LSL#1]
D29EC:  MOVS            R1, #0
D29EE:  LDRH.W          R0, [R0,R6,LSL#1]
D29F2:  STR             R3, [SP,#0x310+var_27C]
D29F4:  SUB.W           R2, R1, R2,LSL#17
D29F8:  STR             R2, [SP,#0x310+var_278]
D29FA:  SUB.W           R4, R1, R0,LSL#17
D29FE:  ASRS            R2, R2, #0x10
D2A00:  STR             R2, [SP,#0x310+var_274]
D2A02:  MOV             R2, R3
D2A04:  ASRS            R0, R4, #0x10
D2A06:  MOVS            R3, #0
D2A08:  LDRSH.W         R1, [R2],#-2
D2A0C:  LDR.W           R5, [LR,R3,LSL#2]
D2A10:  LDR.W           R11, [SP,#0x310+var_274]
D2A14:  LSL.W           R1, R1, R8
D2A18:  SXTH            R6, R1
D2A1A:  ADD.W           R1, R9, R1,ASR#15
D2A1E:  SMLABB.W        R5, R6, R0, R5
D2A22:  ASRS            R1, R1, #1
D2A24:  MLA.W           R1, R1, R4, R5
D2A28:  LDR.W           R5, [R12,R3,LSL#2]
D2A2C:  STR.W           R1, [LR,R3,LSL#2]
D2A30:  LDR             R1, [SP,#0x310+var_26C]
D2A32:  LDRSH.W         R1, [R1,R3,LSL#1]
D2A36:  LSL.W           R1, R1, R8
D2A3A:  SXTH            R6, R1
D2A3C:  ADD.W           R1, R9, R1,ASR#15
D2A40:  SMLABB.W        R5, R6, R11, R5
D2A44:  LDR             R6, [SP,#0x310+var_278]
D2A46:  ASRS            R1, R1, #1
D2A48:  MLA.W           R1, R1, R6, R5
D2A4C:  STR.W           R1, [R12,R3,LSL#2]
D2A50:  ADDS            R3, #1
D2A52:  CMP             R10, R3
D2A54:  BNE             loc_D2A08
D2A56:  LDR             R0, [SP,#0x310+var_294]
D2A58:  LDR             R1, [SP,#0x310+var_26C]
D2A5A:  LDR             R3, [SP,#0x310+var_27C]
D2A5C:  LDR             R2, [SP,#0x310+var_280]
D2A5E:  ADD             R1, R0
D2A60:  ADD             R3, R0
D2A62:  LDR             R0, [R7,#arg_8]
D2A64:  LDR             R6, [SP,#0x310+var_270]
D2A66:  ADDS            R2, #1
D2A68:  CMP             R2, R0
D2A6A:  MOV             R0, R1
D2A6C:  BNE             loc_D29C4
D2A6E:  ADD             R1, SP, #0x310+dest
D2A70:  MOV             R2, R6
D2A72:  LDR             R0, [SP,#0x310+var_208]
D2A74:  CMP             R2, #1
D2A76:  LDR.W           R10, [R1,R6,LSL#2]
D2A7A:  ADD             R1, SP, #0x310+src
D2A7C:  LDR             R3, [SP,#0x310+var_1A4]
D2A7E:  LDR.W           R11, [R1,R2,LSL#2]
D2A82:  ADD             R3, R0
D2A84:  BLT             loc_D2B06
D2A86:  MOV             R6, R2
D2A88:  ADD             R2, SP, #0x310+var_208
D2A8A:  MOVS            R4, #0
D2A8C:  MOV.W           R12, #0
D2A90:  ADD             R1, SP, #0x310+var_140
D2A92:  LDR             R0, [SP,#0x310+var_290]
D2A94:  STR             R3, [SP,#0x310+var_26C]
D2A96:  LDR             R5, [R1,R4]
D2A98:  ADDS            R1, R2, R4
D2A9A:  LDR             R0, [R0,R4]
D2A9C:  LDR             R1, [R1,#4]
D2A9E:  LDR             R3, [SP,#0x310+var_298]
D2AA0:  CMP             R5, #0
D2AA2:  ADD.W           R9, R0, R1
D2AA6:  MOV             R0, R5
D2AA8:  LDR.W           LR, [R2,R6,LSL#2]
D2AAC:  ADD.W           R4, R4, #4
D2AB0:  LDR.W           R8, [R3,R6,LSL#2]
D2AB4:  IT MI
D2AB6:  NEGMI           R0, R5
D2AB8:  CLZ.W           R0, R0
D2ABC:  SUBS            R0, #1
D2ABE:  CMP             R0, #7
D2AC0:  IT GE
D2AC2:  MOVGE           R0, #7
D2AC4:  LDR             R3, [SP,#0x310+var_29C]
D2AC6:  LSL.W           R1, R5, R0
D2ACA:  RSB.W           R0, R0, #7
D2ACE:  SMMUL.W         R5, R1, R9
D2AD2:  LDR.W           R3, [R3,R6,LSL#2]
D2AD6:  SMMUL.W         R2, R1, LR
D2ADA:  SUBS            R6, #1
D2ADC:  SMMUL.W         R8, R1, R8
D2AE0:  SMMUL.W         R1, R1, R3
D2AE4:  LSL.W           R3, R5, R0
D2AE8:  LDR             R5, [SP,#0x310+var_26C]
D2AEA:  LSL.W           R2, R2, R0
D2AEE:  ADD             R12, R2
D2AF0:  ADD             R5, R3
D2AF2:  LSL.W           R2, R8, R0
D2AF6:  ADD             R10, R2
D2AF8:  ADD             R2, SP, #0x310+var_208
D2AFA:  MOV             R3, R5
D2AFC:  LSL.W           R0, R1, R0
D2B00:  ADD             R11, R0
D2B02:  BNE             loc_D2A90
D2B04:  B               loc_D2B0C
D2B06:  MOV.W           R12, #0
D2B0A:  ADD             R2, SP, #0x310+var_208
D2B0C:  LDR             R0, [SP,#0x310+var_270]
D2B0E:  ADDS            R1, R0, #1
D2B10:  ADD             R0, SP, #0x310+var_1A4
D2B12:  STR             R1, [SP,#0x310+var_26C]
D2B14:  STR.W           R11, [R0,R1,LSL#2]
D2B18:  ADD.W           R0, R12, R10
D2B1C:  STR.W           R10, [R2,R1,LSL#2]
D2B20:  NEGS            R1, R0
D2B22:  SBFX.W          R2, R1, #0x1E, #1
D2B26:  LSLS            R6, R1, #1
D2B28:  SUB.W           R0, R2, R0,LSL#1
D2B2C:  STR             R6, [SP,#0x310+var_274]
D2B2E:  EOR.W           R0, R0, R6,ASR#31
D2B32:  CMP             R0, R3
D2B34:  BGE             loc_D2BA0
D2B36:  CLZ.W           R8, R0
D2B3A:  CMP             R3, #0
D2B3C:  SUB.W           R0, R8, #1
D2B40:  LDRD.W          R10, R11, [R7,#arg_C]
D2B44:  LSL.W           R5, R6, R0
D2B48:  MOV             R0, R3
D2B4A:  IT MI
D2B4C:  NEGMI           R0, R3
D2B4E:  CLZ.W           R9, R0
D2B52:  SUB.W           R0, R9, #1
D2B56:  LSL.W           R4, R3, R0
D2B5A:  MOV             R0, #0x1FFFFFFF
D2B5E:  ASRS            R1, R4, #0x10
D2B60:  BLX             sub_108848
D2B64:  UXTH            R1, R5
D2B66:  SXTH            R2, R0
D2B68:  MULS            R1, R2
D2B6A:  ASRS            R1, R1, #0x10
D2B6C:  SMLABT.W        R1, R0, R5, R1
D2B70:  SMMUL.W         R3, R1, R4
D2B74:  SUB.W           R3, R5, R3,LSL#3
D2B78:  UXTH            R5, R3
D2B7A:  SMLABT.W        R0, R0, R3, R1
D2B7E:  MULS            R2, R5
D2B80:  RSB.W           R1, R9, #1
D2B84:  ADD             R1, R8
D2B86:  SUBS            R1, #3
D2B88:  CMP.W           R1, #0xFFFFFFFF
D2B8C:  ADD.W           R0, R0, R2,ASR#16
D2B90:  BLE             loc_D2C2C
D2B92:  CMP             R1, #0x20 ; ' '
D2B94:  MOV.W           R9, #0
D2B98:  IT LT
D2B9A:  ASRLT.W         R9, R0, R1
D2B9E:  B               loc_D2BB0
D2BA0:  CMP             R6, #0
D2BA2:  MOV.W           R9, #0x80000000
D2BA6:  IT GT
D2BA8:  MOVGT           R9, #0x7FFFFFFF
D2BAC:  LDRD.W          R10, R11, [R7,#arg_C]
D2BB0:  LDR.W           R8, [R7,#arg_0]
D2BB4:  LDR             R5, [SP,#0x310+var_2D8]
D2BB6:  SMMUL.W         R0, R9, R9
D2BBA:  RSB.W           R0, R0, #0x40000000
D2BBE:  SMMUL.W         R0, R0, R5
D2BC2:  LSLS            R1, R0, #2
D2BC4:  CMP             R1, R8
D2BC6:  BLE             loc_D2BD0
D2BC8:  MOV.W           R12, #0
D2BCC:  STR             R1, [SP,#0x310+var_2D8]
D2BCE:  B               loc_D2D26
D2BD0:  CMP             R5, #0
D2BD2:  MOV             R0, R5
D2BD4:  IT MI
D2BD6:  NEGMI           R0, R5
D2BD8:  CLZ.W           R4, R0
D2BDC:  SUBS            R0, R4, #1
D2BDE:  LSLS            R5, R0
D2BE0:  MOV             R0, #0x1FFFFFFF
D2BE4:  ASRS            R1, R5, #0x10
D2BE6:  BLX             sub_108848
D2BEA:  LDR             R2, [SP,#0x310+var_2F0]
D2BEC:  SXTH            R1, R0
D2BEE:  LDR             R3, [SP,#0x310+var_2F4]
D2BF0:  LDR             R6, [SP,#0x310+var_2E8]
D2BF2:  MULS            R2, R1
D2BF4:  SMULBB.W        R3, R1, R3
D2BF8:  ADD.W           R2, R3, R2,ASR#16
D2BFC:  SMMUL.W         R3, R2, R5
D2C00:  SUB.W           R3, R6, R3,LSL#3
D2C04:  UXTH            R6, R3
D2C06:  SMLABT.W        R0, R0, R3, R2
D2C0A:  MULS            R1, R6
D2C0C:  LDR             R2, [SP,#0x310+var_2EC]
D2C0E:  ADD.W           R0, R0, R1,ASR#16
D2C12:  RSB.W           R1, R4, #1
D2C16:  ADD             R2, R1
D2C18:  CMP.W           R2, #0xFFFFFFFF
D2C1C:  BLE             loc_D2C52
D2C1E:  CMP             R2, #0x20 ; ' '
D2C20:  MOV.W           R1, #0
D2C24:  IT LT
D2C26:  ASRLT.W         R1, R0, R2
D2C2A:  B               loc_D2C98
D2C2C:  NEGS            R1, R1
D2C2E:  LDR.W           R8, [R7,#arg_0]
D2C32:  LDR             R5, [SP,#0x310+var_2D8]
D2C34:  MOV             R2, #0x7FFFFFFF
D2C38:  MOV.W           R3, #0x80000000
D2C3C:  LSRS            R2, R1
D2C3E:  ASRS            R3, R1
D2C40:  CMP             R3, R2
D2C42:  BLE             loc_D2C72
D2C44:  CMP             R0, R3
D2C46:  MOV             R6, R3
D2C48:  BGT             loc_D2C80
D2C4A:  CMP             R0, R2
D2C4C:  IT LT
D2C4E:  MOVLT           R0, R2
D2C50:  B               loc_D2C7E
D2C52:  NEGS            R1, R2
D2C54:  MOV             R2, #0x7FFFFFFF
D2C58:  MOV.W           R3, #0x80000000
D2C5C:  LSRS            R2, R1
D2C5E:  ASRS            R3, R1
D2C60:  CMP             R3, R2
D2C62:  BLE             loc_D2C86
D2C64:  CMP             R0, R3
D2C66:  MOV             R6, R3
D2C68:  BGT             loc_D2C94
D2C6A:  CMP             R0, R2
D2C6C:  IT LT
D2C6E:  MOVLT           R0, R2
D2C70:  B               loc_D2C92
D2C72:  CMP             R0, R2
D2C74:  MOV             R6, R2
D2C76:  BGT             loc_D2C80
D2C78:  CMP             R0, R3
D2C7A:  IT LT
D2C7C:  MOVLT           R0, R3
D2C7E:  MOV             R6, R0
D2C80:  LSL.W           R9, R6, R1
D2C84:  B               loc_D2BB6
D2C86:  CMP             R0, R2
D2C88:  MOV             R6, R2
D2C8A:  BGT             loc_D2C94
D2C8C:  CMP             R0, R3
D2C8E:  IT LT
D2C90:  MOVLT           R0, R3
D2C92:  MOV             R6, R0
D2C94:  LSL.W           R1, R6, R1
D2C98:  RSB.W           R0, R1, #0x40000000
D2C9C:  CMP             R0, #1
D2C9E:  BLT             loc_D2CB8
D2CA0:  CLZ.W           R1, R0
D2CA4:  MOV             R3, R0
D2CA6:  RSBS.W          R2, R1, #0x18
D2CAA:  BEQ             loc_D2CCC
D2CAC:  CMP.W           R2, #0xFFFFFFFF
D2CB0:  BLE             loc_D2CBE
D2CB2:  ROR.W           R3, R0, R2
D2CB6:  B               loc_D2CCC
D2CB8:  MOV.W           R9, #0
D2CBC:  B               loc_D2D1E
D2CBE:  NEGS            R3, R2
D2CC0:  ADDS            R2, #0x20 ; ' '
D2CC2:  LSL.W           R3, R0, R3
D2CC6:  LSR.W           R2, R0, R2
D2CCA:  ORRS            R3, R2
D2CCC:  AND.W           R2, R3, #0x7F
D2CD0:  MOV.W           R3, #0xD50000
D2CD4:  TST.W           R1, #1
D2CD8:  MOV.W           R1, R1,LSR#1
D2CDC:  MUL.W           R2, R3, R2
D2CE0:  MOV.W           R3, #0x8000
D2CE4:  IT EQ
D2CE6:  MOVWEQ          R3, #0xB486
D2CEA:  LSR.W           R1, R3, R1
D2CEE:  UXTH            R3, R1
D2CF0:  LSRS            R2, R2, #0x10
D2CF2:  MULS            R3, R2
D2CF4:  SMLABT.W        R1, R2, R1, R1
D2CF8:  ADD.W           R9, R1, R3,LSR#16
D2CFC:  CMP.W           R9, #1
D2D00:  BLT             loc_D2D1E
D2D02:  MOV             R1, R9
D2D04:  BLX             sub_108874
D2D08:  ADD             R0, R9
D2D0A:  MOVW            R1, #0xFFFF
D2D0E:  LSLS            R0, R0, #0xF
D2D10:  BIC.W           R9, R0, R1
D2D14:  LDR             R0, [SP,#0x310+var_274]
D2D16:  CMP             R0, #0
D2D18:  IT LT
D2D1A:  RSBLT.W         R9, R9, #0
D2D1E:  MOV.W           R12, #1
D2D22:  STR.W           R8, [SP,#0x310+var_2D8]
D2D26:  LDR.W           R8, [SP,#0x310+var_26C]
D2D2A:  LDR.W           LR, [SP,#0x310+var_2DC]
D2D2E:  MOV.W           R1, R8,ASR#1
D2D32:  CMP             R1, #1
D2D34:  BLT             loc_D2D5A
D2D36:  ADD             R2, SP, #0x310+var_140
D2D38:  MOV             R3, LR
D2D3A:  LDR             R6, [R3]
D2D3C:  SUBS            R1, #1
D2D3E:  LDR             R5, [R2]
D2D40:  SMMUL.W         R4, R6, R9
D2D44:  SMMUL.W         R0, R5, R9
D2D48:  ADD.W           R5, R5, R4,LSL#1
D2D4C:  STR.W           R5, [R2],#4
D2D50:  ADD.W           R0, R6, R0,LSL#1
D2D54:  STR.W           R0, [R3],#-4
D2D58:  BNE             loc_D2D3A
D2D5A:  LDR             R2, [SP,#0x310+var_270]
D2D5C:  ADD             R1, SP, #0x310+var_140
D2D5E:  MOV.W           R0, R9,ASR#6
D2D62:  CMP.W           R12, #0
D2D66:  STR.W           R0, [R1,R2,LSL#2]
D2D6A:  BNE.W           loc_D2E6E
D2D6E:  LDR.W           R12, [SP,#0x310+var_2E0]
D2D72:  MOV             R11, R8
D2D74:  LDR.W           R8, [SP,#0x310+var_2E4]
D2D78:  ADD             R4, SP, #0x310+var_1A4
D2D7A:  MOVS            R0, #0
D2D7C:  MOV             R1, R12
D2D7E:  LDR             R2, [R1]
D2D80:  LDR.W           R3, [R4,R0,LSL#2]
D2D84:  SMMUL.W         R6, R2, R9
D2D88:  SMMUL.W         R5, R3, R9
D2D8C:  ADD.W           R3, R3, R6,LSL#1
D2D90:  STR.W           R3, [R4,R0,LSL#2]
D2D94:  ADDS            R0, #1
D2D96:  ADD.W           R2, R2, R5,LSL#1
D2D9A:  STR.W           R2, [R1],#-4
D2D9E:  CMP             R8, R0
D2DA0:  BNE             loc_D2D7E
D2DA2:  LDR             R0, [SP,#0x310+var_2CC]
D2DA4:  ADD.W           R12, R12, #4
D2DA8:  LDR             R2, [SP,#0x310+var_2B8]
D2DAA:  ADD.W           LR, LR, #4
D2DAE:  SUBS            R0, #2
D2DB0:  STR             R0, [SP,#0x310+var_2CC]
D2DB2:  LDR             R0, [SP,#0x310+var_2D0]
D2DB4:  ADD.W           R8, R8, #1
D2DB8:  LDR             R1, [SP,#0x310+var_290]
D2DBA:  ADDS            R2, #1
D2DBC:  ADDS            R0, #2
D2DBE:  STR             R0, [SP,#0x310+var_2D0]
D2DC0:  LDR             R0, [SP,#0x310+var_2D4]
D2DC2:  SUBS            R0, #2
D2DC4:  STR             R0, [SP,#0x310+var_2D4]
D2DC6:  LDR             R0, [SP,#0x310+var_2C8]
D2DC8:  ADDS            R0, #2
D2DCA:  STR             R0, [SP,#0x310+var_2C8]
D2DCC:  LDR             R0, [SP,#0x310+var_26C]
D2DCE:  CMP             R0, R10
D2DD0:  LDR             R0, [R7,#arg_8]
D2DD2:  BLT.W           loc_D2668
D2DD6:  LDR             R2, [SP,#0x310+var_1A4]
D2DD8:  MOV.W           R8, #0x10000
D2DDC:  CMP.W           R10, #1
D2DE0:  BLT             loc_D2E44
D2DE2:  LDR.W           R11, [SP,#0x310+var_304]
D2DE6:  ADD.W           LR, SP, #0x310+var_140
D2DEA:  LDR.W           R6, [LR],#4
D2DEE:  MOVS            R0, #1
D2DF0:  LDR.W           R5, [R1],#4
D2DF4:  MOV             R12, R10
D2DF6:  ADD.W           R6, R0, R6,ASR#8
D2DFA:  ASRS            R4, R6, #1
D2DFC:  SMLABT.W        R3, R4, R5, R2
D2E00:  ADD.W           R2, R0, R6,ASR#16
D2E04:  SBFX.W          R0, R6, #1, #0x10
D2E08:  ASRS            R2, R2, #1
D2E0A:  MLA.W           R9, R2, R5, R3
D2E0E:  UXTH            R3, R4
D2E10:  UXTH            R5, R5
D2E12:  MUL.W           R10, R0, R3
D2E16:  ASRS            R3, R6, #0x11
D2E18:  SMLABB.W        R3, R0, R3, R8
D2E1C:  MULS            R0, R5
D2E1E:  MLA.W           R2, R2, R4, R3
D2E22:  ADD.W           R8, R2, R10,ASR#16
D2E26:  MOV             R10, R12
D2E28:  ADD.W           R2, R9, R0,ASR#16
D2E2C:  MOVS            R0, #0
D2E2E:  SUB.W           R0, R0, R6,ASR#1
D2E32:  STR.W           R0, [R11],#4
D2E36:  SUBS.W          R10, R10, #1
D2E3A:  BNE             loc_D2DEA
D2E3C:  B               loc_D2E44
D2E3E:  LDR             R2, [SP,#0x310+var_1A4]
D2E40:  MOV.W           R8, #0x10000
D2E44:  LDR             R0, [SP,#0x310+var_300]
D2E46:  MOVW            R1, #0xA7C6
D2E4A:  RSB.W           R6, R8, #0
D2E4E:  SMMUL.W         R0, R0, R1
D2E52:  SXTH            R3, R6
D2E54:  UXTH            R1, R0
D2E56:  MULS            R1, R3
D2E58:  SMLABT.W        R3, R6, R0, R2
D2E5C:  ADD.W           R1, R3, R1,ASR#16
D2E60:  MOVS            R3, #1
D2E62:  ADD.W           R2, R3, R6,ASR#15
D2E66:  ASRS            R2, R2, #1
D2E68:  MLA.W           R0, R2, R0, R1
D2E6C:  B               loc_D2F26
D2E6E:  CMP             R8, R10
D2E70:  BGE             loc_D2E90
D2E72:  ADD             R0, SP, #0x310+var_140
D2E74:  SUB.W           R1, R10, R8
D2E78:  ADD.W           R0, R0, R8,LSL#2; int
D2E7C:  LSLS            R1, R1, #2; n
D2E7E:  BLX             sub_10967C
D2E82:  LDR             R5, [SP,#0x310+var_28C]
D2E84:  CMP.W           R10, #0
D2E88:  LDRD.W          R1, R4, [SP,#0x310+var_304]
D2E8C:  BGT             loc_D2E9C
D2E8E:  B               loc_D2EBA
D2E90:  LDR             R5, [SP,#0x310+var_28C]
D2E92:  CMP.W           R10, #1
D2E96:  LDRD.W          R1, R4, [SP,#0x310+var_304]
D2E9A:  BLT             loc_D2EBA
D2E9C:  ADD             R0, SP, #0x310+var_140
D2E9E:  MOV.W           R12, #1
D2EA2:  MOVS            R2, #0
D2EA4:  MOV             R3, R10
D2EA6:  LDR.W           R6, [R0],#4
D2EAA:  SUBS            R3, #1
D2EAC:  ADD.W           R6, R12, R6,ASR#8
D2EB0:  SUB.W           R6, R2, R6,ASR#1
D2EB4:  STR.W           R6, [R1],#4
D2EB8:  BNE             loc_D2EA6
D2EBA:  LDR             R0, [SP,#0x310+var_2C4]
D2EBC:  LDR             R6, [R7,#arg_8]
D2EBE:  CMP             R0, #0
D2EC0:  BLE             loc_D2EFA
D2EC2:  CMP             R6, #1
D2EC4:  BLT             loc_D2F1E
D2EC6:  LDR.W           R11, [SP,#0x310+var_294]
D2ECA:  MOV             R0, R5
D2ECC:  MOV             R1, R5
D2ECE:  MOV             R2, R10
D2ED0:  BLX             j_silk_inner_prod16_aligned_64_c
D2ED4:  LDR             R3, [SP,#0x310+var_2C4]
D2ED6:  ADD             R5, R11
D2ED8:  RSB.W           R2, R3, #0x20 ; ' '
D2EDC:  LSRS            R0, R3
D2EDE:  LSL.W           R2, R1, R2
D2EE2:  ORRS            R0, R2
D2EE4:  SUB.W           R2, R3, #0x20 ; ' '
D2EE8:  CMP             R2, #0
D2EEA:  IT GE
D2EEC:  ASRGE.W         R0, R1, R2
D2EF0:  SUBS            R6, #1
D2EF2:  SUB.W           R4, R4, R0
D2EF6:  BNE             loc_D2ECA
D2EF8:  B               loc_D2F1E
D2EFA:  CMP             R6, #1
D2EFC:  BLT             loc_D2F1E
D2EFE:  LDR.W           R8, [SP,#0x310+var_294]
D2F02:  LDR.W           R9, [SP,#0x310+var_2BC]
D2F06:  MOV             R0, R5
D2F08:  MOV             R1, R5
D2F0A:  MOV             R2, R10
D2F0C:  MOV             R3, R11
D2F0E:  BLX             j_silk_inner_prod_aligned
D2F12:  LSL.W           R0, R0, R9
D2F16:  SUBS            R4, R4, R0
D2F18:  ADD             R5, R8
D2F1A:  SUBS            R6, #1
D2F1C:  BNE             loc_D2F06
D2F1E:  LDR             R0, [SP,#0x310+var_2D8]
D2F20:  SMMUL.W         R0, R4, R0
D2F24:  LSLS            R0, R0, #2
D2F26:  LDRD.W          R2, R1, [SP,#0x310+var_2FC]
D2F2A:  STR             R0, [R2]
D2F2C:  LDR             R0, [SP,#0x310+var_2C4]
D2F2E:  NEGS            R0, R0
D2F30:  STR             R0, [R1]
D2F32:  LDR             R0, =(__stack_chk_guard_ptr - 0xD2F3A)
D2F34:  LDR             R1, [SP,#0x310+var_20]
D2F36:  ADD             R0, PC; __stack_chk_guard_ptr
D2F38:  LDR             R0, [R0]; __stack_chk_guard
D2F3A:  LDR             R0, [R0]
D2F3C:  SUBS            R0, R0, R1
D2F3E:  ITTT EQ
D2F40:  ADDEQ.W         SP, SP, #0x2F4
D2F44:  POPEQ.W         {R8-R11}
D2F48:  POPEQ           {R4-R7,PC}
D2F4A:  BLX             __stack_chk_fail
