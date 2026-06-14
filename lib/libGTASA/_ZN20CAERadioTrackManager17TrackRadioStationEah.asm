; =========================================================
; Game Engine Function: _ZN20CAERadioTrackManager17TrackRadioStationEah
; Address            : 0x3A23FC - 0x3A2978
; =========================================================

3A23FC:  PUSH            {R4-R7,LR}
3A23FE:  ADD             R7, SP, #0xC
3A2400:  PUSH.W          {R8-R11}
3A2404:  SUB             SP, SP, #0xC
3A2406:  MOV             R11, R1
3A2408:  MOV             R4, R0
3A240A:  MOVS            R0, #0x2C ; ','
3A240C:  MOVS            R1, #0
3A240E:  SMLABB.W        R0, R11, R0, R4
3A2412:  STRB.W          R1, [R7,#var_1D]
3A2416:  LDRSB.W         R1, [R0,#0x128]
3A241A:  CMP             R1, #0
3A241C:  ITT GE
3A241E:  LDRSBGE.W       R3, [R0,#0x127]
3A2422:  CMPGE           R3, #0
3A2424:  BLT             loc_3A2486
3A2426:  LDR.W           R6, =(_ZN6CClock17ms_nGameClockDaysE_ptr - 0x3A242E)
3A242A:  ADD             R6, PC; _ZN6CClock17ms_nGameClockDaysE_ptr
3A242C:  LDR             R6, [R6]; CClock::ms_nGameClockDays ...
3A242E:  LDRB            R6, [R6]; CClock::ms_nGameClockDays
3A2430:  SUBS            R3, R6, R3
3A2432:  CMP.W           R3, #0xFFFFFFFF
3A2436:  BGT             loc_3A246A
3A2438:  LDR.W           R6, =(_ZN6CClock19ms_nGameClockMonthsE_ptr - 0x3A2444)
3A243C:  LDR.W           R12, =(_ZN6CClock11daysInMonthE_ptr - 0x3A2446)
3A2440:  ADD             R6, PC; _ZN6CClock19ms_nGameClockMonthsE_ptr
3A2442:  ADD             R12, PC; _ZN6CClock11daysInMonthE_ptr
3A2444:  LDR             R6, [R6]; CClock::ms_nGameClockMonths ...
3A2446:  LDR.W           R12, [R12]; CClock::daysInMonth ...
3A244A:  LDRB.W          R8, [R6]; CClock::ms_nGameClockMonths
3A244E:  SUB.W           LR, R8, #1
3A2452:  ADD.W           R5, R8, #0xFF
3A2456:  SXTB.W          R6, LR
3A245A:  CMP             R6, #0
3A245C:  IT LT
3A245E:  ADDLT.W         R5, R8, #0xB
3A2462:  SXTB            R6, R5
3A2464:  LDRB.W          R6, [R12,R6]
3A2468:  ADD             R3, R6
3A246A:  LDR.W           R6, =(_ZN6CClock18ms_nGameClockHoursE_ptr - 0x3A2476)
3A246E:  ADD.W           R3, R3, R3,LSL#1
3A2472:  ADD             R6, PC; _ZN6CClock18ms_nGameClockHoursE_ptr
3A2474:  LDR             R6, [R6]; CClock::ms_nGameClockHours ...
3A2476:  LDRB            R6, [R6]; CClock::ms_nGameClockHours
3A2478:  ADD.W           R3, R6, R3,LSL#3
3A247C:  SUBS            R1, R3, R1
3A247E:  CMP             R1, #5
3A2480:  BLE             loc_3A2486
3A2482:  MOVS            R6, #0
3A2484:  B               def_3A25F6; jumptable 003A25F6 default case, case 6
3A2486:  LDR.W           R1, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x3A2494)
3A248A:  CMP             R2, #0
3A248C:  LDR.W           R0, [R0,#0x110]
3A2490:  ADD             R1, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
3A2492:  VLDR            S0, =7000.0
3A2496:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds ...
3A2498:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds
3A249A:  SUB.W           R0, R1, R0
3A249E:  VMOV            S2, R0
3A24A2:  MOV.W           R0, #0x2C ; ','
3A24A6:  SMLABB.W        R0, R11, R0, R4
3A24AA:  VCVT.F32.S32    S2, S2
3A24AE:  VMAX.F32        D0, D1, D0
3A24B2:  VCVT.S32.F32    S0, S0
3A24B6:  VMOV            R6, S0
3A24BA:  BEQ             loc_3A24E0
3A24BC:  LDR.W           R1, [R0,#0x100]
3A24C0:  VCVT.F32.S32    S0, S0
3A24C4:  ADD.W           R0, R0, #0x100
3A24C8:  ADDS            R1, #1
3A24CA:  VMOV            S2, R1
3A24CE:  VCVT.F32.S32    S2, S2
3A24D2:  VMAX.F32        D0, D0, D1
3A24D6:  VCVT.S32.F32    S0, S0
3A24DA:  VMOV            R6, S0
3A24DE:  B               loc_3A24E4
3A24E0:  ADD.W           R0, R0, #0x100
3A24E4:  VMOV.I8         Q8, #0xFF
3A24E8:  MOVS            R1, #6
3A24EA:  MOVS            R2, #0xFF
3A24EC:  MOVW            R3, #0x606
3A24F0:  ADD.W           R9, R4, #0x88
3A24F4:  STRB.W          R1, [R4,#0xB8]
3A24F8:  STRB.W          R2, [R4,#0xBB]
3A24FC:  STRH.W          R3, [R4,#0xB4]
3A2500:  STRB.W          R2, [R4,#0xBC]
3A2504:  STRB.W          R1, [R4,#0xB6]
3A2508:  STRB.W          R2, [R4,#0xBD]
3A250C:  STRB.W          R1, [R4,#0xB7]
3A2510:  MOV.W           R1, #0xFFFFFFFF
3A2514:  STRB.W          R2, [R4,#0xBE]
3A2518:  STR.W           R1, [R4,#0x98]
3A251C:  VST1.32         {D16-D17}, [R9]
3A2520:  STRB.W          R2, [R4,#0xBF]
3A2524:  LDR             R1, [R0]
3A2526:  MOVS            R0, #0x2C ; ','
3A2528:  SMLABB.W        R0, R11, R0, R4
3A252C:  CMP             R6, R1
3A252E:  BLE             loc_3A25C6
3A2530:  LDR.W           R2, [R0,#0x104]
3A2534:  ADD             R2, R1
3A2536:  CMP             R6, R2
3A2538:  BLE             loc_3A25D0
3A253A:  LDR.W           R0, [R0,#0x108]
3A253E:  ADD.W           R10, R0, R2
3A2542:  CMP             R6, R10
3A2544:  BLE             loc_3A25D4
3A2546:  MOVW            R0, #0x1B58
3A254A:  ADD             R0, R10
3A254C:  CMP             R6, R0
3A254E:  BLE.W           loc_3A2748
3A2552:  ADD.W           R0, R10, #0x25800
3A2556:  ADD.W           R0, R0, #0x578
3A255A:  CMP             R6, R0
3A255C:  BLE.W           loc_3A278C
3A2560:  ADD.W           R0, R10, #0x20000
3A2564:  ADD.W           R0, R0, #0x7100
3A2568:  CMP             R6, R0
3A256A:  BGT             loc_3A2482
3A256C:  CMP.W           R11, #0xC
3A2570:  BNE.W           loc_3A2852
3A2574:  SUB.W           R2, R7, #-var_1D; int
3A2578:  MOV             R0, R4; int
3A257A:  MOVS            R1, #0xC; signed __int8
3A257C:  MOVS            R3, #4; int
3A257E:  STR.W           R9, [SP,#0x28+var_28]; int
3A2582:  BLX             j__ZN20CAERadioTrackManager23QueueUpTracksForStationEaPaaP14tRadioSettings; CAERadioTrackManager::QueueUpTracksForStation(signed char,signed char *,signed char,tRadioSettings *)
3A2586:  LDR.W           R0, =(FrontEndMenuManager_ptr - 0x3A258E)
3A258A:  ADD             R0, PC; FrontEndMenuManager_ptr
3A258C:  LDR             R0, [R0]; FrontEndMenuManager
3A258E:  LDRB.W          R0, [R0,#(byte_98F16C - 0x98F0F8)]
3A2592:  CMP             R0, #0
3A2594:  BNE.W           loc_3A295C
3A2598:  MOV             R0, #0x3E2E147B; this
3A25A0:  BLX             j__ZN15CAEAudioUtility18ResolveProbabilityEf; CAEAudioUtility::ResolveProbability(float)
3A25A4:  CMP             R0, #0
3A25A6:  BEQ.W           loc_3A295C
3A25AA:  MOVS            R1, #0xC; signed __int8
3A25AC:  BLX             j__ZN20CAERadioTrackManager17ChooseAdvertIndexEa; CAERadioTrackManager::ChooseAdvertIndex(signed char)
3A25B0:  LDRSB.W         R1, [R7,#var_1D]
3A25B4:  MOVS            R2, #1
3A25B6:  STR.W           R0, [R9,R1,LSL#2]
3A25BA:  ADD.W           R0, R9, R1
3A25BE:  STRB.W          R2, [R0,#0x2C]
3A25C2:  ADDS            R0, R1, #1
3A25C4:  B               loc_3A2958
3A25C6:  LDR.W           R0, [R0,#0x114]
3A25CA:  ADDS            R1, R0, R6
3A25CC:  MOVS            R0, #0
3A25CE:  B               loc_3A25DA
3A25D0:  MOVS            R0, #1
3A25D2:  B               loc_3A25D8
3A25D4:  MOVS            R0, #2
3A25D6:  MOV             R1, R2
3A25D8:  SUBS            R1, R6, R1
3A25DA:  MOVS            R2, #0x2C ; ','
3A25DC:  STR.W           R1, [R4,#0xA4]
3A25E0:  SMLABB.W        R2, R11, R2, R4
3A25E4:  MOVS            R6, #0
3A25E6:  ADDS            R1, R2, R0
3A25E8:  LDRSB.W         R2, [R1,#0x124]
3A25EC:  CMP             R2, #7; switch 8 cases
3A25EE:  BHI.W           def_3A25F6; jumptable 003A25F6 default case, case 6
3A25F2:  ADD.W           R1, R1, #0x124; float
3A25F6:  TBH.W           [PC,R2,LSL#1]; switch jump
3A25FA:  DCW 8; jump table for switch statement
3A25FC:  DCW 8
3A25FE:  DCW 8
3A2600:  DCW 0x2B
3A2602:  DCW 0x4A
3A2604:  DCW 0x61
3A2606:  DCW 0x1BA
3A2608:  DCW 0x81
3A260A:  MOVS            R2, #0x2C ; ','; jumptable 003A25F6 cases 0-2
3A260C:  CMP.W           R11, #0xC
3A2610:  SMLABB.W        R2, R11, R2, R4
3A2614:  ADD.W           R0, R2, R0,LSL#2
3A2618:  LDR.W           R0, [R0,#0x118]
3A261C:  STR.W           R0, [R4,#0x88]
3A2620:  LDRB            R0, [R1]
3A2622:  STRB.W          R0, [R4,#0xB4]
3A2626:  MOV.W           R0, #1
3A262A:  STRB.W          R0, [R7,#var_1D]
3A262E:  BNE             loc_3A263C
3A2630:  SUB.W           R2, R7, #-var_1D
3A2634:  MOV             R0, R4
3A2636:  MOVS            R1, #0xC
3A2638:  MOVS            R3, #4
3A263A:  B               loc_3A2646
3A263C:  SUB.W           R2, R7, #-var_1D; int
3A2640:  MOV             R0, R4; int
3A2642:  MOV             R1, R11; signed __int8
3A2644:  MOVS            R3, #3; int
3A2646:  STR.W           R9, [SP,#0x28+var_28]; int
3A264A:  BLX             j__ZN20CAERadioTrackManager23QueueUpTracksForStationEaPaaP14tRadioSettings; CAERadioTrackManager::QueueUpTracksForStation(signed char,signed char *,signed char,tRadioSettings *)
3A264E:  B               loc_3A296C
3A2650:  MOVS            R2, #0x2C ; ','; jumptable 003A25F6 case 3
3A2652:  SMLABB.W        R2, R11, R2, R4
3A2656:  ADD.W           R3, R2, #0x118
3A265A:  ADD.W           R2, R2, #0x124
3A265E:  LDR.W           R6, [R3,R0,LSL#2]
3A2662:  STR.W           R6, [R4,#0x88]
3A2666:  LDRB            R1, [R1]
3A2668:  STRB.W          R1, [R4,#0xB4]
3A266C:  ADDS            R1, R0, #1
3A266E:  ADDS            R0, #2
3A2670:  LDR.W           R6, [R3,R1,LSL#2]
3A2674:  STR.W           R6, [R4,#0x8C]
3A2678:  LDRB            R1, [R2,R1]
3A267A:  STRB.W          R1, [R4,#0xB5]
3A267E:  LDR.W           R1, [R3,R0,LSL#2]
3A2682:  STR.W           R1, [R4,#0x90]
3A2686:  LDRB            R0, [R2,R0]
3A2688:  STRB.W          R0, [R4,#0xB6]
3A268C:  B               loc_3A296C
3A268E:  MOVS            R2, #0x2C ; ','; jumptable 003A25F6 case 4
3A2690:  SMLABB.W        R2, R11, R2, R4
3A2694:  ADD.W           R3, R2, #0x118
3A2698:  LDR.W           R6, [R3,R0,LSL#2]
3A269C:  ADDS            R0, #1
3A269E:  STR.W           R6, [R4,#0x88]
3A26A2:  LDRB            R1, [R1]
3A26A4:  STRB.W          R1, [R4,#0xB4]
3A26A8:  LDR.W           R1, [R3,R0,LSL#2]
3A26AC:  ADD             R0, R2
3A26AE:  STR.W           R1, [R4,#0x8C]
3A26B2:  LDRB.W          R0, [R0,#0x124]
3A26B6:  STRB.W          R0, [R4,#0xB5]
3A26BA:  B               loc_3A296C
3A26BC:  MOVS            R2, #0x2C ; ','; jumptable 003A25F6 case 5
3A26BE:  CMP.W           R11, #0
3A26C2:  SMLABB.W        R2, R11, R2, R4
3A26C6:  ADD.W           R0, R2, R0,LSL#2
3A26CA:  LDR.W           R0, [R0,#0x118]
3A26CE:  STR.W           R0, [R4,#0x88]
3A26D2:  LDRB            R0, [R1]
3A26D4:  STRB.W          R0, [R4,#0xB4]
3A26D8:  MOV.W           R0, #1
3A26DC:  STRB.W          R0, [R7,#var_1D]
3A26E0:  BEQ             loc_3A2770
3A26E2:  MOV.W           R0, #0x3F000000; this
3A26E6:  BLX             j__ZN15CAEAudioUtility18ResolveProbabilityEf; CAEAudioUtility::ResolveProbability(float)
3A26EA:  CMP             R0, #0
3A26EC:  BEQ.W           loc_3A27FA
3A26F0:  CMP.W           R11, #0xC
3A26F4:  BNE             loc_3A27D6
3A26F6:  MOV.W           R8, #1
3A26FA:  B               loc_3A2834
3A26FC:  MOVS            R2, #0x2C ; ','; jumptable 003A25F6 case 7
3A26FE:  SMLABB.W        R2, R11, R2, R4
3A2702:  ADD.W           R3, R2, #0x118
3A2706:  LDR.W           R6, [R3,R0,LSL#2]
3A270A:  ADDS            R0, #1
3A270C:  STR.W           R6, [R4,#0x88]
3A2710:  LDRB            R1, [R1]
3A2712:  MOVS            R6, #1
3A2714:  STRB.W          R1, [R4,#0xB4]
3A2718:  LDR.W           R1, [R3,R0,LSL#2]
3A271C:  ADD             R0, R2
3A271E:  STR.W           R1, [R4,#0x8C]
3A2722:  LDRB.W          R0, [R0,#0x124]
3A2726:  STRB.W          R0, [R4,#0xB5]
3A272A:  ADDS            R0, R1, #1
3A272C:  BNE.W           def_3A25F6; jumptable 003A25F6 default case, case 6
3A2730:  SUB.W           R2, R7, #-var_1D; int
3A2734:  MOV             R0, R4; int
3A2736:  MOVS            R1, #0xC; signed __int8
3A2738:  MOVS            R3, #4; int
3A273A:  STRB.W          R6, [R7,#var_1D]
3A273E:  STR.W           R9, [SP,#0x28+var_28]; int
3A2742:  BLX             j__ZN20CAERadioTrackManager23QueueUpTracksForStationEaPaaP14tRadioSettings; CAERadioTrackManager::QueueUpTracksForStation(signed char,signed char *,signed char,tRadioSettings *)
3A2746:  B               def_3A25F6; jumptable 003A25F6 default case, case 6
3A2748:  CMP.W           R11, #0xC
3A274C:  BNE             loc_3A27A6
3A274E:  SUB.W           R5, R7, #-var_1D
3A2752:  MOV             R0, R4; int
3A2754:  MOVS            R1, #0xC; signed __int8
3A2756:  MOVS            R3, #4; int
3A2758:  MOV             R2, R5; int
3A275A:  STR.W           R9, [SP,#0x28+var_28]; int
3A275E:  BLX             j__ZN20CAERadioTrackManager23QueueUpTracksForStationEaPaaP14tRadioSettings; CAERadioTrackManager::QueueUpTracksForStation(signed char,signed char *,signed char,tRadioSettings *)
3A2762:  STR.W           R9, [SP,#0x28+var_28]
3A2766:  MOV             R0, R4
3A2768:  MOVS            R1, #0xC
3A276A:  MOV             R2, R5
3A276C:  MOVS            R3, #4
3A276E:  B               loc_3A27B4
3A2770:  MOV             R0, R4; this
3A2772:  MOVS            R1, #0; signed __int8
3A2774:  BLX             j__ZN20CAERadioTrackManager19ChooseDJBanterIndexEa; CAERadioTrackManager::ChooseDJBanterIndex(signed char)
3A2778:  STR.W           R0, [R4,#0x8C]
3A277C:  ADDS            R0, #1
3A277E:  ITTT NE
3A2780:  MOVNE           R0, #2
3A2782:  STRBNE.W        R0, [R4,#0xB5]
3A2786:  STRBNE.W        R0, [R7,#var_1D]
3A278A:  B               loc_3A296C
3A278C:  SUB.W           R2, R7, #-var_1D; int
3A2790:  MOV             R0, R4; int
3A2792:  MOV             R1, R11; signed __int8
3A2794:  MOVS            R3, #4; int
3A2796:  STR.W           R9, [SP,#0x28+var_28]; int
3A279A:  BLX             j__ZN20CAERadioTrackManager23QueueUpTracksForStationEaPaaP14tRadioSettings; CAERadioTrackManager::QueueUpTracksForStation(signed char,signed char *,signed char,tRadioSettings *)
3A279E:  MOVW            R0, #0x1388
3A27A2:  SUBS            R0, R6, R0
3A27A4:  B               loc_3A2964
3A27A6:  SUB.W           R2, R7, #-var_1D; int
3A27AA:  MOV             R0, R4; int
3A27AC:  MOV             R1, R11; signed __int8
3A27AE:  MOVS            R3, #3; int
3A27B0:  STR.W           R9, [SP,#0x28+var_28]; int
3A27B4:  BLX             j__ZN20CAERadioTrackManager23QueueUpTracksForStationEaPaaP14tRadioSettings; CAERadioTrackManager::QueueUpTracksForStation(signed char,signed char *,signed char,tRadioSettings *)
3A27B8:  SUB.W           R0, R6, R10
3A27BC:  VLDR            S0, =5000.0
3A27C0:  VMOV            S2, R0
3A27C4:  VCVT.F32.S32    S2, S2
3A27C8:  VMIN.F32        D0, D1, D0
3A27CC:  VCVT.S32.F32    S0, S0
3A27D0:  VMOV            R0, S0
3A27D4:  B               loc_3A2968
3A27D6:  MOV             R1, R11; signed __int8
3A27D8:  BLX             j__ZN20CAERadioTrackManager16ChooseIdentIndexEa; CAERadioTrackManager::ChooseIdentIndex(signed char)
3A27DC:  STR.W           R0, [R4,#0x8C]
3A27E0:  ADDS            R0, #1
3A27E2:  BEQ             loc_3A27FA
3A27E4:  MOVS            R0, #0
3A27E6:  MOV.W           R8, #2
3A27EA:  STRB.W          R0, [R4,#0xB5]
3A27EE:  STRB.W          R8, [R7,#var_1D]
3A27F2:  CMP.W           R11, #0xC
3A27F6:  BEQ             loc_3A2834
3A27F8:  B               loc_3A2804
3A27FA:  MOV.W           R8, #1
3A27FE:  CMP.W           R11, #0xC
3A2802:  BEQ             loc_3A2834
3A2804:  MOV             R0, R4; this
3A2806:  MOV             R1, R11; signed __int8
3A2808:  BLX             j__ZN20CAERadioTrackManager19ChooseDJBanterIndexEa; CAERadioTrackManager::ChooseDJBanterIndex(signed char)
3A280C:  UXTB.W          R1, R8
3A2810:  ADD.W           R2, R4, R1,LSL#2
3A2814:  STR.W           R0, [R2,#0x88]
3A2818:  ADDS            R0, #1
3A281A:  BEQ             loc_3A2834
3A281C:  ADDS            R0, R4, R1
3A281E:  MOVS            R1, #2
3A2820:  STRB.W          R1, [R0,#0xB4]
3A2824:  ADD.W           R0, R8, #1
3A2828:  STRB.W          R0, [R7,#var_1D]
3A282C:  B               loc_3A296C
3A282E:  ALIGN 0x10
3A2830:  DCFS 7000.0
3A2834:  MOV             R1, R11; signed __int8
3A2836:  BLX             j__ZN20CAERadioTrackManager17ChooseAdvertIndexEa; CAERadioTrackManager::ChooseAdvertIndex(signed char)
3A283A:  STR.W           R0, [R9,R8,LSL#2]
3A283E:  ADD.W           R0, R9, R8
3A2842:  MOVS            R6, #1
3A2844:  STRB.W          R6, [R0,#0x2C]
3A2848:  ADD.W           R0, R8, #1
3A284C:  STRB.W          R0, [R7,#var_1D]
3A2850:  B               def_3A25F6; jumptable 003A25F6 default case, case 6
3A2852:  MOV             R0, R4; this
3A2854:  MOV             R1, R11; signed __int8
3A2856:  BLX             j__ZN20CAERadioTrackManager21ChooseMusicTrackIndexEa; CAERadioTrackManager::ChooseMusicTrackIndex(signed char)
3A285A:  LDR             R1, =(gRadioMusicOutros_ptr - 0x3A2868)
3A285C:  RSB.W           R2, R11, R11,LSL#5
3A2860:  STRB.W          R0, [R4,#0xBB]
3A2864:  ADD             R1, PC; gRadioMusicOutros_ptr
3A2866:  LDR             R1, [R1]; gRadioMusicOutros
3A2868:  ADD.W           R1, R1, R2,LSL#3
3A286C:  LDR.W           R2, [R1,R0,LSL#3]; int
3A2870:  ADD.W           R0, R1, R0,LSL#3
3A2874:  LDR             R1, [R0,#4]; int
3A2876:  MOV             R0, R2; this
3A2878:  BLX             j__ZN15CAEAudioUtility22GetRandomNumberInRangeEii; CAEAudioUtility::GetRandomNumberInRange(int,int)
3A287C:  MOVS            R1, #5
3A287E:  STRB.W          R1, [R4,#0xB4]
3A2882:  MOV             R1, R11; signed __int8
3A2884:  STR.W           R0, [R4,#0x88]
3A2888:  MOVS            R0, #1
3A288A:  STRB.W          R0, [R7,#var_1D]
3A288E:  MOV             R0, R4; this
3A2890:  LDRSB.W         R2, [R4,#0xBB]; signed __int8
3A2894:  BLX             j__ZN20CAERadioTrackManager27AddMusicTrackIndexToHistoryEaa; CAERadioTrackManager::AddMusicTrackIndexToHistory(signed char,signed char)
3A2898:  CMP.W           R11, #0
3A289C:  BEQ             loc_3A28E6
3A289E:  MOV.W           R0, #0x3F000000; this
3A28A2:  BLX             j__ZN15CAEAudioUtility18ResolveProbabilityEf; CAEAudioUtility::ResolveProbability(float)
3A28A6:  MOV             R8, R0
3A28A8:  MOV.W           R0, #0x3F000000; this
3A28AC:  BLX             j__ZN15CAEAudioUtility18ResolveProbabilityEf; CAEAudioUtility::ResolveProbability(float)
3A28B0:  CMP.W           R8, #0
3A28B4:  BEQ             loc_3A28FE
3A28B6:  CBZ             R0, loc_3A28D2
3A28B8:  MOV             R1, R11; signed __int8
3A28BA:  BLX             j__ZN20CAERadioTrackManager16ChooseIdentIndexEa; CAERadioTrackManager::ChooseIdentIndex(signed char)
3A28BE:  STR.W           R0, [R4,#0x8C]
3A28C2:  ADDS            R0, #1
3A28C4:  ITTTT NE
3A28C6:  MOVNE           R0, #0
3A28C8:  STRBNE.W        R0, [R4,#0xB5]
3A28CC:  MOVNE           R0, #2
3A28CE:  STRBNE.W        R0, [R7,#var_1D]
3A28D2:  SUB.W           R2, R7, #-var_1D; int
3A28D6:  MOV             R0, R4; int
3A28D8:  MOV             R1, R11; signed __int8
3A28DA:  MOVS            R3, #3; int
3A28DC:  STR.W           R9, [SP,#0x28+var_28]; int
3A28E0:  BLX             j__ZN20CAERadioTrackManager23QueueUpTracksForStationEaPaaP14tRadioSettings; CAERadioTrackManager::QueueUpTracksForStation(signed char,signed char *,signed char,tRadioSettings *)
3A28E4:  B               loc_3A295C
3A28E6:  MOV             R0, R4; this
3A28E8:  MOVS            R1, #0; signed __int8
3A28EA:  BLX             j__ZN20CAERadioTrackManager19ChooseDJBanterIndexEa; CAERadioTrackManager::ChooseDJBanterIndex(signed char)
3A28EE:  STR.W           R0, [R4,#0x8C]
3A28F2:  ADDS            R0, #1
3A28F4:  BEQ             loc_3A295C
3A28F6:  MOVS            R0, #2
3A28F8:  STRB.W          R0, [R4,#0xB5]
3A28FC:  B               loc_3A2958
3A28FE:  CBZ             R0, loc_3A291E
3A2900:  MOV             R1, R11; signed __int8
3A2902:  BLX             j__ZN20CAERadioTrackManager16ChooseIdentIndexEa; CAERadioTrackManager::ChooseIdentIndex(signed char)
3A2906:  STR.W           R0, [R4,#0x8C]
3A290A:  ADDS            R0, #1
3A290C:  BEQ             loc_3A291E
3A290E:  MOVS            R0, #0
3A2910:  MOV.W           R8, #2
3A2914:  STRB.W          R0, [R4,#0xB5]
3A2918:  STRB.W          R8, [R7,#var_1D]
3A291C:  B               loc_3A2922
3A291E:  MOV.W           R8, #1
3A2922:  MOV             R0, R4; this
3A2924:  MOV             R1, R11; signed __int8
3A2926:  BLX             j__ZN20CAERadioTrackManager19ChooseDJBanterIndexEa; CAERadioTrackManager::ChooseDJBanterIndex(signed char)
3A292A:  UXTB.W          R9, R8
3A292E:  ADD.W           R5, R4, R9,LSL#2
3A2932:  STR.W           R0, [R5,#0x88]!
3A2936:  ADDS            R0, #1; this
3A2938:  BEQ             loc_3A2942
3A293A:  ADD.W           R0, R4, R9
3A293E:  MOVS            R1, #2
3A2940:  B               loc_3A2950
3A2942:  MOV             R1, R11; signed __int8
3A2944:  BLX             j__ZN20CAERadioTrackManager17ChooseAdvertIndexEa; CAERadioTrackManager::ChooseAdvertIndex(signed char)
3A2948:  STR             R0, [R5]
3A294A:  ADD.W           R0, R4, R9
3A294E:  MOVS            R1, #1
3A2950:  STRB.W          R1, [R0,#0xB4]
3A2954:  ADD.W           R0, R8, #1
3A2958:  STRB.W          R0, [R7,#var_1D]
3A295C:  SUB.W           R0, R6, #0x25800
3A2960:  SUB.W           R0, R0, #0x578
3A2964:  SUB.W           R0, R0, R10
3A2968:  STR.W           R0, [R4,#0xA4]
3A296C:  MOVS            R6, #1
3A296E:  MOV             R0, R6; jumptable 003A25F6 default case, case 6
3A2970:  ADD             SP, SP, #0xC
3A2972:  POP.W           {R8-R11}
3A2976:  POP             {R4-R7,PC}
