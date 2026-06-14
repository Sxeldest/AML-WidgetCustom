; =========================================================
; Game Engine Function: CalcSourceParams
; Address            : 0x1C237C - 0x1C3398
; =========================================================

1C237C:  PUSH            {R4-R11,LR}
1C2380:  ADD             R11, SP, #0x1C
1C2384:  SUB             SP, SP, #4
1C2388:  VPUSH           {D8-D15}
1C238C:  SUB             SP, SP, #0xF8; float
1C2390:  MOV             R3, R1
1C2394:  LDR             R1, =(__stack_chk_guard_ptr - 0x1C23A0)
1C2398:  LDR             R1, [PC,R1]; __stack_chk_guard
1C239C:  LDR             R1, [R1]
1C23A0:  STR             R1, [R11,#var_68]
1C23A4:  MOV             R1, #0x3F800000
1C23A8:  LDR             R2, [R3,#0xFC]
1C23AC:  STR             R1, [SP,#0x158+var_D0]
1C23B0:  STR             R1, [SP,#0x158+var_D4]
1C23B4:  STR             R1, [SP,#0x158+var_CC]
1C23B8:  STR             R1, [SP,#0x158+var_C8]
1C23BC:  VLDR            S0, [R3,#0xD4]
1C23C0:  VSTR            S0, [SP,#0x158+var_108]
1C23C4:  VLDR            S0, [R0,#0xC0]
1C23C8:  VSTR            S0, [SP,#0x158+var_10C]
1C23CC:  VLDR            S0, [R3,#0xD8]
1C23D0:  VSTR            S0, [SP,#0x158+var_128]
1C23D4:  VLDR            S0, [R3,#0xDC]
1C23D8:  VSTR            S0, [SP,#0x158+var_12C]
1C23DC:  LDR             R1, [R2,#0xC]
1C23E0:  STR             R1, [SP,#0x158+var_F0]
1C23E4:  STR             R2, [SP,#0x158+var_D8]
1C23E8:  LDR             R10, [R2,#0x38]
1C23EC:  VLDR            S24, [R3,#0x74]
1C23F0:  VLDR            S7, [R3,#0x78]
1C23F4:  CMP             R10, #1
1C23F8:  VLDR            S3, [R3,#0x10]
1C23FC:  VLDR            S5, [R3,#0x14]
1C2400:  STR             R3, [SP,#0x158+var_E4]
1C2404:  VLDR            S1, [R3,#0x18]
1C2408:  VLDR            S28, [R0,#4]
1C240C:  VLDR            S19, [R0,#0xC]
1C2410:  VLDR            S21, [R0,#0x10]
1C2414:  VLDR            S0, [R0]
1C2418:  VSTR            S0, [SP,#0x158+var_104]
1C241C:  VLDR            S16, [R0,#0x28]
1C2420:  LDR             R1, [R0,#0x58]
1C2424:  STR             R1, [SP,#0x158+var_F4]
1C2428:  VSTR            S16, [R11,#var_74]
1C242C:  VLDR            S31, [R0,#0x2C]
1C2430:  LDR             R1, =(ConeScale_ptr - 0x1C2444)
1C2434:  VSTR            S31, [R11,#var_70]
1C2438:  VLDR            S18, [R0,#0x30]
1C243C:  LDR             R1, [PC,R1]; ConeScale
1C2440:  VSTR            S18, [R11,#var_6C]
1C2444:  VLDR            S30, [R0,#0x40]
1C2448:  VLDR            S25, [R0,#0x44]
1C244C:  VLDR            S17, [R0,#0x48]
1C2450:  VLDR            S29, [R0,#0x34]
1C2454:  VLDR            S20, [R0,#0x38]
1C2458:  VLDR            S0, [R0,#0x3C]
1C245C:  VSTR            S0, [SP,#0x158+var_EC]
1C2460:  VLDR            S22, [R0,#0x1C]
1C2464:  VLDR            S11, [R0,#0x20]
1C2468:  VLDR            S0, [R0,#0x24]
1C246C:  VLDR            S23, [R0,#0x14]
1C2470:  VLDR            S4, [R1]
1C2474:  VSTR            S4, [SP,#0x158+var_E0]
1C2478:  VLDR            S2, [R0,#0x18]
1C247C:  VSTR            S2, [SP,#0x158+var_E8]
1C2480:  VLDR            S9, [R0,#0xB8]
1C2484:  LDRB            R1, [R0,#0xB0]
1C2488:  STR             R1, [SP,#0x158+var_114]
1C248C:  LDRB            R1, [R0,#0xB1]
1C2490:  STR             R1, [SP,#0x158+var_118]
1C2494:  LDRB            R1, [R0,#0xB2]
1C2498:  STR             R1, [SP,#0x158+var_110]
1C249C:  STR             R0, [SP,#0x158+var_DC]
1C24A0:  VLDR            S4, [R0,#0xBC]
1C24A4:  BLT             loc_1C25B0
1C24A8:  VMOV.F32        S6, #1.0
1C24AC:  LDR             R1, [SP,#0x158+var_D8]
1C24B0:  LDR             R3, [SP,#0x158+var_DC]
1C24B4:  MOVW            R0, #0x1EDC
1C24B8:  ADD             R2, R1, #0x14C
1C24BC:  SUB             LR, R11, #-var_A4
1C24C0:  ADD             R0, R3, R0
1C24C4:  ADD             R1, R2, #0x28800
1C24C8:  ADD             R3, R3, #0x80
1C24CC:  ADD             R6, SP, #0x158+var_B4
1C24D0:  SUB             R4, R11, #-var_84
1C24D4:  VLDR            S8, =0.99426
1C24D8:  VLDR            S10, =343.3
1C24DC:  MOV             R7, R10
1C24E0:  MOV             R2, #0
1C24E4:  B               loc_1C2560
1C24E8:  LDRB            R5, [R9,#0xBC]
1C24EC:  ADD             R12, LR, R2
1C24F0:  CMP             R5, #0
1C24F4:  BEQ             loc_1C2528
1C24F8:  CMP             R8, #0x8000
1C24FC:  MOV             R5, #0
1C2500:  MOVWNE          R5, #1
1C2504:  CMP             R8, #1
1C2508:  MOVWNE          R8, #0
1C250C:  TEQ             R8, R5
1C2510:  VSTR            S4, [R12]
1C2514:  BEQ             loc_1C253C
1C2518:  MOV             R5, #0
1C251C:  VMOV.F32        S12, S6
1C2520:  STR             R5, [R6,R2]
1C2524:  B               loc_1C2598
1C2528:  VMOV.F32        S12, S8
1C252C:  MOV             R5, #0
1C2530:  VSTR            S0, [R12]
1C2534:  STR             R5, [R6,R2]
1C2538:  B               loc_1C2598
1C253C:  VLDR            S14, [R9,#0x30]
1C2540:  ADD             R5, R6, R2
1C2544:  VLDR            S12, [R9,#0x2C]
1C2548:  VADD.F32        S14, S14, S4
1C254C:  VSTR            S14, [R12]
1C2550:  VLDR            S14, [R9,#0x14]
1C2554:  VMUL.F32        S14, S14, S10
1C2558:  VSTR            S14, [R5]
1C255C:  B               loc_1C2598
1C2560:  ADD             R5, R2, R2,LSL#1
1C2564:  CMP             R2, #0
1C2568:  LDR             R9, [R3,R5]
1C256C:  BNE             loc_1C2578
1C2570:  CMP             R9, #0
1C2574:  LDREQ           R9, [R1]
1C2578:  CMP             R9, #0
1C257C:  LDRNE           R8, [R9]
1C2580:  CMPNE           R8, #0
1C2584:  BNE             loc_1C24E8
1C2588:  MOV             R9, #0
1C258C:  VMOV.F32        S12, S6
1C2590:  STR             R9, [LR,R2]
1C2594:  STR             R9, [R6,R2]
1C2598:  ADD             R5, R4, R2
1C259C:  SUBS            R7, R7, #1
1C25A0:  ADD             R2, R2, #4
1C25A4:  VSTR            S12, [R5]
1C25A8:  STR             R9, [R0],#0x30
1C25AC:  BNE             loc_1C2560
1C25B0:  LDR             R7, [SP,#0x158+var_DC]
1C25B4:  LDRB            R0, [R7,#0x4C]
1C25B8:  CMP             R0, #0
1C25BC:  BEQ             loc_1C25DC
1C25C0:  VLDR            S4, =0.0
1C25C4:  VSTR            S29, [SP,#0x158+var_130]
1C25C8:  VSTR            S4, [SP,#0x158+var_124]
1C25CC:  VSTR            S4, [SP,#0x158+var_11C]
1C25D0:  VSTR            S4, [SP,#0x158+var_120]
1C25D4:  LDR             R1, [SP,#0x158+var_E4]
1C25D8:  B               loc_1C2754
1C25DC:  LDR             R1, [SP,#0x158+var_E4]
1C25E0:  VMOV.F32        S26, S23
1C25E4:  VSTR            S5, [SP,#0x158+var_124]
1C25E8:  VSTR            S3, [SP,#0x158+var_120]
1C25EC:  VSTR            S1, [SP,#0x158+var_11C]
1C25F0:  VLDR            S4, [R1,#0x34]
1C25F4:  VLDR            S6, [R1,#0x38]
1C25F8:  VLDR            S8, [R1,#0x3C]
1C25FC:  VLDR            S10, [R1,#0x40]
1C2600:  VLDR            S10, [R1,#0x44]
1C2604:  VLDR            S12, [R1,#0x48]
1C2608:  VLDR            S14, [R1,#0x4C]
1C260C:  VLDR            S1, [R1,#0x50]
1C2610:  VLDR            S1, [R1,#0x54]
1C2614:  VLDR            S3, [R1,#0x58]
1C2618:  VLDR            S5, [R1,#0x5C]
1C261C:  VSTR            S7, [SP,#0x158+var_138]
1C2620:  VLDR            S7, [R1,#0x60]
1C2624:  VLDR            S2, [R1,#0x64]
1C2628:  VMOV.F32        S7, S0
1C262C:  VMOV.F32        S0, S9
1C2630:  VSTR            S2, [SP,#0x158+var_FC]
1C2634:  VMOV.F32        S2, S25
1C2638:  VLDR            S9, [R1,#0x68]
1C263C:  VSTR            S11, [SP,#0x158+var_F8]
1C2640:  VLDR            S11, [R1,#0x6C]
1C2644:  VLDR            S13, [R1,#0x70]
1C2648:  VLDR            S13, [R1,#4]
1C264C:  VLDR            S15, [R1,#8]
1C2650:  VSUB.F32        S13, S16, S13
1C2654:  VLDR            S16, [R1,#0xC]
1C2658:  VSUB.F32        S15, S31, S15
1C265C:  VSUB.F32        S16, S18, S16
1C2660:  VMOV.F32        S31, S20
1C2664:  VMUL.F32        S18, S4, S13
1C2668:  VMUL.F32        S20, S10, S15
1C266C:  VMUL.F32        S23, S8, S13
1C2670:  VMUL.F32        S25, S14, S15
1C2674:  VMUL.F32        S13, S6, S13
1C2678:  VMUL.F32        S15, S12, S15
1C267C:  VMUL.F32        S27, S1, S16
1C2680:  VADD.F32        S18, S20, S18
1C2684:  VMUL.F32        S20, S5, S16
1C2688:  VADD.F32        S23, S25, S23
1C268C:  VMUL.F32        S25, S4, S29
1C2690:  VADD.F32        S13, S15, S13
1C2694:  VMUL.F32        S4, S4, S30
1C2698:  VMUL.F32        S16, S3, S16
1C269C:  VADD.F32        S15, S18, S27
1C26A0:  VMUL.F32        S18, S10, S31
1C26A4:  VMUL.F32        S10, S10, S2
1C26A8:  VADD.F32        S20, S23, S20
1C26AC:  VADD.F32        S13, S13, S16
1C26B0:  VLDR            S16, [SP,#0x158+var_EC]
1C26B4:  VADD.F32        S23, S18, S25
1C26B8:  VMUL.F32        S18, S6, S30
1C26BC:  VADD.F32        S4, S10, S4
1C26C0:  VMUL.F32        S10, S12, S2
1C26C4:  VMUL.F32        S6, S6, S29
1C26C8:  VMUL.F32        S12, S12, S31
1C26CC:  VMUL.F32        S25, S1, S17
1C26D0:  VMUL.F32        S1, S1, S16
1C26D4:  VMUL.F32        S27, S5, S16
1C26D8:  VADD.F32        S10, S10, S18
1C26DC:  VMUL.F32        S18, S14, S2
1C26E0:  VLDR            S2, [SP,#0x158+var_FC]
1C26E4:  VADD.F32        S6, S12, S6
1C26E8:  VMUL.F32        S12, S3, S17
1C26EC:  VMUL.F32        S3, S3, S16
1C26F0:  VMUL.F32        S16, S8, S30
1C26F4:  VMUL.F32        S14, S14, S31
1C26F8:  VMUL.F32        S8, S8, S29
1C26FC:  VADD.F32        S31, S13, S9
1C2700:  VADD.F32        S1, S23, S1
1C2704:  VMOV.F32        S9, S0
1C2708:  VMOV.F32        S0, S7
1C270C:  VLDR            S7, [SP,#0x158+var_138]
1C2710:  VADD.F32        S30, S4, S25
1C2714:  VMOV.F32        S23, S26
1C2718:  VADD.F32        S8, S14, S8
1C271C:  VMUL.F32        S14, S5, S17
1C2720:  VSTR            S31, [R11,#var_70]
1C2724:  VADD.F32        S5, S18, S16
1C2728:  VSTR            S1, [SP,#0x158+var_130]
1C272C:  VADD.F32        S18, S20, S11
1C2730:  VLDR            S11, [SP,#0x158+var_F8]
1C2734:  VADD.F32        S16, S15, S2
1C2738:  VADD.F32        S20, S6, S3
1C273C:  VADD.F32        S25, S10, S12
1C2740:  VADD.F32        S4, S8, S27
1C2744:  VADD.F32        S17, S5, S14
1C2748:  VSTR            S16, [R11,#var_74]
1C274C:  VSTR            S18, [R11,#var_6C]
1C2750:  VSTR            S4, [SP,#0x158+var_EC]
1C2754:  VMUL.F32        S4, S16, S16
1C2758:  VMUL.F32        S6, S31, S31
1C275C:  VMUL.F32        S8, S18, S18
1C2760:  VNEG.F32        S26, S18
1C2764:  VNEG.F32        S27, S31
1C2768:  VNEG.F32        S2, S16
1C276C:  VADD.F32        S4, S6, S4
1C2770:  VADD.F32        S4, S4, S8
1C2774:  VSQRT.F32       S29, S4
1C2778:  VCMPE.F32       S29, #0.0
1C277C:  VMRS            APSR_nzcv, FPSCR
1C2780:  BLE             loc_1C2798
1C2784:  VMOV.F32        S4, #1.0
1C2788:  VDIV.F32        S4, S4, S29
1C278C:  VMUL.F32        S26, S4, S26
1C2790:  VMUL.F32        S27, S4, S27
1C2794:  VMUL.F32        S2, S4, S2
1C2798:  VMUL.F32        S4, S17, S17
1C279C:  VSTR            S2, [SP,#0x158+var_E4]
1C27A0:  VMUL.F32        S6, S25, S25
1C27A4:  VMUL.F32        S8, S30, S30
1C27A8:  VADD.F32        S4, S6, S4
1C27AC:  VADD.F32        S4, S4, S8
1C27B0:  VSQRT.F32       S4, S4
1C27B4:  VCMPE.F32       S4, #0.0
1C27B8:  VMRS            APSR_nzcv, FPSCR
1C27BC:  BLE             loc_1C27D4
1C27C0:  VMOV.F32        S6, #1.0
1C27C4:  VDIV.F32        S4, S6, S4
1C27C8:  VMUL.F32        S17, S4, S17
1C27CC:  VMUL.F32        S25, S4, S25
1C27D0:  VMUL.F32        S30, S4, S30
1C27D4:  CMP             R10, #1
1C27D8:  VSTR            S31, [SP,#0x158+var_100]
1C27DC:  BLT             loc_1C27F8
1C27E0:  SUB             R0, R11, #-var_94
1C27E4:  MOV             R2, #0x3F800000
1C27E8:  MOV             R3, R10
1C27EC:  STR             R2, [R0],#4
1C27F0:  SUBS            R3, R3, #1
1C27F4:  BNE             loc_1C27EC
1C27F8:  LDRB            R0, [R1,#0xD0]
1C27FC:  VMOV.F32        S31, #1.0
1C2800:  ADD             R1, R1, #0xCC
1C2804:  CMP             R0, #0
1C2808:  ADDNE           R1, R7, #0x50 ; 'P'
1C280C:  LDR             R0, [R1]
1C2810:  MOVW            R1, #0xD001
1C2814:  VSTR            S20, [SP,#0x158+var_134]
1C2818:  SUB             R0, R0, R1
1C281C:  VSTR            S16, [SP,#0x158+var_F8]
1C2820:  CMP             R0, #5; switch 6 cases
1C2824:  VSTR            S18, [SP,#0x158+var_FC]
1C2828:  BHI             def_1C2840; jumptable 001C2840 default case
1C282C:  ADR             R1, jpt_1C2840
1C2830:  MOV             R0, R0,LSL#2
1C2834:  VMOV.F32        S4, S29
1C2838:  LDR             R0, [R0,R1]
1C283C:  VMOV.F32        S6, S29
1C2840:  ADD             PC, R0, R1; switch jump
1C2844:  DCD loc_1C285C - 0x1C2844; jump table for switch statement
1C2848:  DCD loc_1C2878 - 0x1C2844; jumptable 001C2840 case 1
1C284C:  DCD loc_1C2948 - 0x1C2844; jumptable 001C2840 case 2
1C2850:  DCD loc_1C291C - 0x1C2844; jumptable 001C2840 case 3
1C2854:  DCD loc_1C29FC - 0x1C2844; jumptable 001C2840 case 4
1C2858:  DCD loc_1C29D0 - 0x1C2844; jumptable 001C2840 case 5
1C285C:  VMOV.F32        S4, S29; jumptable 001C2840 case 0
1C2860:  VCMPE.F32       S22, #0.0
1C2864:  VMRS            APSR_nzcv, FPSCR
1C2868:  BGT             loc_1C28B0
1C286C:  B               def_1C2840; jumptable 001C2840 default case
1C2870:  DCFS 0.99426
1C2874:  DCFS 343.3
1C2878:  VCMPE.F32       S22, S29; jumptable 001C2840 case 1
1C287C:  VMRS            APSR_nzcv, FPSCR
1C2880:  VMOV.F32        S6, S29
1C2884:  VMOV.F32        S4, S11
1C2888:  VMOVGT.F32      S6, S22
1C288C:  VCMPE.F32       S6, S11
1C2890:  VMRS            APSR_nzcv, FPSCR
1C2894:  VCMPE.F32       S22, #0.0
1C2898:  VMOVLT.F32      S4, S6
1C289C:  VMRS            APSR_nzcv, FPSCR
1C28A0:  BLE             def_1C2840; jumptable 001C2840 default case
1C28A4:  VCMPE.F32       S11, S22
1C28A8:  VMRS            APSR_nzcv, FPSCR
1C28AC:  BLT             def_1C2840; jumptable 001C2840 default case
1C28B0:  VSUB.F32        S2, S4, S22
1C28B4:  VMOV.F32        S31, #1.0
1C28B8:  VMUL.F32        S0, S2, S0
1C28BC:  VADD.F32        S0, S0, S22
1C28C0:  VCMPE.F32       S0, #0.0
1C28C4:  VDIV.F32        S4, S22, S0
1C28C8:  VMRS            APSR_nzcv, FPSCR
1C28CC:  VMOVGT.F32      S31, S4
1C28D0:  CMP             R10, #1
1C28D4:  BLT             loc_1C3384
1C28D8:  SUB             R0, R11, #-var_A4
1C28DC:  SUB             R1, R11, #-var_94
1C28E0:  MOV             R2, R10
1C28E4:  VLDR            S0, [R0]
1C28E8:  VMUL.F32        S0, S0, S2
1C28EC:  VADD.F32        S0, S0, S22
1C28F0:  VCMPE.F32       S0, #0.0
1C28F4:  VMRS            APSR_nzcv, FPSCR
1C28F8:  BLE             loc_1C2904
1C28FC:  VDIV.F32        S0, S22, S0
1C2900:  VSTR            S0, [R1]
1C2904:  SUBS            R2, R2, #1
1C2908:  ADD             R1, R1, #4
1C290C:  ADD             R0, R0, #4
1C2910:  BNE             loc_1C28E4
1C2914:  B               def_1C2840; jumptable 001C2840 default case
1C2918:  DCFS 0.0
1C291C:  VCMPE.F32       S22, S29; jumptable 001C2840 case 3
1C2920:  VMRS            APSR_nzcv, FPSCR
1C2924:  VMOV.F32        S6, S29
1C2928:  VMOV.F32        S4, S11
1C292C:  VMOVGT.F32      S6, S22
1C2930:  VCMPE.F32       S6, S11
1C2934:  VMRS            APSR_nzcv, FPSCR
1C2938:  VCMPE.F32       S11, S22
1C293C:  VMOVLT.F32      S4, S6
1C2940:  VMRS            APSR_nzcv, FPSCR
1C2944:  BLT             def_1C2840; jumptable 001C2840 default case
1C2948:  VCMP.F32        S11, S22; jumptable 001C2840 case 2
1C294C:  VMRS            APSR_nzcv, FPSCR
1C2950:  BEQ             def_1C2840; jumptable 001C2840 default case
1C2954:  VSUB.F32        S4, S4, S22
1C2958:  VSUB.F32        S6, S11, S22
1C295C:  VMUL.F32        S0, S4, S0
1C2960:  VDIV.F32        S2, S0, S6
1C2964:  VMOV.F32        S0, #1.0
1C2968:  VSUB.F32        S8, S0, S2
1C296C:  VLDR            S2, =0.0
1C2970:  VMOV.F32        S31, S2
1C2974:  VCMPE.F32       S8, #0.0
1C2978:  VMRS            APSR_nzcv, FPSCR
1C297C:  VMOVGT.F32      S31, S8
1C2980:  CMP             R10, #1
1C2984:  BLT             loc_1C3384
1C2988:  VDIV.F32        S6, S0, S6
1C298C:  SUB             R0, R11, #-var_A4
1C2990:  SUB             R1, R11, #-var_94
1C2994:  MOV             R2, R10
1C2998:  VLDR            S8, [R0]
1C299C:  VMOV.F32        S10, S2
1C29A0:  ADD             R0, R0, #4
1C29A4:  VMUL.F32        S8, S8, S4
1C29A8:  VMUL.F32        S8, S8, S6
1C29AC:  VSUB.F32        S8, S0, S8
1C29B0:  VCMPE.F32       S8, #0.0
1C29B4:  VMRS            APSR_nzcv, FPSCR
1C29B8:  VMOVGT.F32      S10, S8
1C29BC:  SUBS            R2, R2, #1
1C29C0:  VSTR            S10, [R1]
1C29C4:  ADD             R1, R1, #4
1C29C8:  BNE             loc_1C2998
1C29CC:  B               def_1C2840; jumptable 001C2840 default case
1C29D0:  VCMPE.F32       S22, S29; jumptable 001C2840 case 5
1C29D4:  VMRS            APSR_nzcv, FPSCR
1C29D8:  VMOV.F32        S4, S29
1C29DC:  VMOVGT.F32      S4, S22
1C29E0:  VCMPE.F32       S4, S11
1C29E4:  VMRS            APSR_nzcv, FPSCR
1C29E8:  VCMPE.F32       S11, S22
1C29EC:  VMOVLT.F32      S11, S4
1C29F0:  VMRS            APSR_nzcv, FPSCR
1C29F4:  VMOV.F32        S6, S11
1C29F8:  BLT             def_1C2840; jumptable 001C2840 default case
1C29FC:  VCMPE.F32       S22, #0.0; jumptable 001C2840 case 4
1C2A00:  VMRS            APSR_nzcv, FPSCR
1C2A04:  VCMPEGT.F32     S6, #0.0
1C2A08:  VMRSGT          APSR_nzcv, FPSCR
1C2A0C:  BLE             def_1C2840; jumptable 001C2840 default case
1C2A10:  VDIV.F32        S2, S6, S22
1C2A14:  VMOV            R0, S0
1C2A18:  VSTR            S9, [SP,#0x158+var_13C]
1C2A1C:  VMOV            R6, S2
1C2A20:  VSTR            S7, [SP,#0x158+var_138]
1C2A24:  EOR             R1, R0, #0x80000000; y
1C2A28:  MOV             R0, R6; x
1C2A2C:  BL              powf
1C2A30:  VMOV            S31, R0
1C2A34:  CMP             R10, #1
1C2A38:  BLT             loc_1C337C
1C2A3C:  SUB             R4, R11, #-var_A4
1C2A40:  SUB             R5, R11, #-var_94
1C2A44:  MOV             R7, R10
1C2A48:  LDR             R0, [R4],#4
1C2A4C:  EOR             R1, R0, #0x80000000; y
1C2A50:  MOV             R0, R6; x
1C2A54:  BL              powf
1C2A58:  STR             R0, [R5],#4
1C2A5C:  SUBS            R7, R7, #1
1C2A60:  BNE             loc_1C2A48
1C2A64:  VLDR            S7, [SP,#0x158+var_138]
1C2A68:  VLDR            S9, [SP,#0x158+var_13C]
1C2A6C:  VMUL.F32        S20, S31, S28; jumptable 001C2840 default case
1C2A70:  CMP             R10, #1
1C2A74:  BLT             loc_1C2AA0
1C2A78:  SUB             R0, R11, #-var_94
1C2A7C:  ADD             R1, SP, #0x158+var_C4
1C2A80:  MOV             R2, R10
1C2A84:  VLDR            S0, [R0]
1C2A88:  SUBS            R2, R2, #1
1C2A8C:  ADD             R0, R0, #4
1C2A90:  VMUL.F32        S0, S0, S28
1C2A94:  VSTR            S0, [R1]
1C2A98:  ADD             R1, R1, #4
1C2A9C:  BNE             loc_1C2A84
1C2AA0:  VMOV.F32        S16, S26
1C2AA4:  VMOV.F32        S18, S27
1C2AA8:  VMOV.F32        S26, S25
1C2AAC:  VLDR            S0, [SP,#0x158+var_E0]
1C2AB0:  VMOV.F32        S27, S23
1C2AB4:  VMOV.F32        S28, #1.0
1C2AB8:  VLDR            S25, =0.0
1C2ABC:  VMUL.F32        S23, S0, S23
1C2AC0:  VCMPE.F32       S22, #0.0
1C2AC4:  VMRS            APSR_nzcv, FPSCR
1C2AC8:  BLE             loc_1C2B60
1C2ACC:  VMOV.F32        S0, #1.0
1C2AD0:  VCMPE.F32       S31, S0
1C2AD4:  VMRS            APSR_nzcv, FPSCR
1C2AD8:  BGE             loc_1C2B60
1C2ADC:  VDIV.F32        S2, S22, S31
1C2AE0:  VSUB.F32        S2, S2, S22
1C2AE4:  VCMPE.F32       S9, #0.0
1C2AE8:  VMRS            APSR_nzcv, FPSCR
1C2AEC:  VMUL.F32        S25, S2, S7
1C2AF0:  BLE             loc_1C2B5C
1C2AF4:  VCMPE.F32       S25, #0.0
1C2AF8:  VMRS            APSR_nzcv, FPSCR
1C2AFC:  BLE             loc_1C2B5C
1C2B00:  VMUL.F32        S0, S25, S9
1C2B04:  MOV             R0, #0x3F7E87D3; x
1C2B0C:  VMOV            R6, S0
1C2B10:  MOV             R1, R6; y
1C2B14:  BL              powf
1C2B18:  VMOV            S28, R0
1C2B1C:  CMP             R10, #1
1C2B20:  BLT             loc_1C3354
1C2B24:  SUB             R4, R11, #-var_84
1C2B28:  ADD             R5, SP, #0x158+var_D4
1C2B2C:  MOV             R7, R10
1C2B30:  LDR             R0, [R4],#4; x
1C2B34:  MOV             R1, R6; y
1C2B38:  BL              powf
1C2B3C:  VLDR            S0, [R5]
1C2B40:  VMOV            S2, R0
1C2B44:  SUBS            R7, R7, #1
1C2B48:  VMUL.F32        S0, S0, S2
1C2B4C:  VSTR            S0, [R5]
1C2B50:  ADD             R5, R5, #4
1C2B54:  BNE             loc_1C2B30
1C2B58:  B               loc_1C2B60
1C2B5C:  VMOV.F32        S28, S0
1C2B60:  LDR             R1, [SP,#0x158+var_118]
1C2B64:  CMP             R10, #0
1C2B68:  MOV             R0, #0
1C2B6C:  MOVWGT          R0, #1
1C2B70:  CMP             R1, #0
1C2B74:  MOVWNE          R1, #1
1C2B78:  ANDS            R9, R1, R0
1C2B7C:  BEQ             loc_1C2BDC
1C2B80:  MOVW            R6, #0x126F
1C2B84:  ADD             R4, SP, #0x158+var_B4
1C2B88:  ADD             R7, SP, #0x158+var_C4
1C2B8C:  VLDR            S31, [SP,#0x158+var_100]
1C2B90:  MOVT            R6, #0x3A83
1C2B94:  MOV             R5, R10
1C2B98:  VLDR            S0, [R4]
1C2B9C:  VCMPE.F32       S0, #0.0
1C2BA0:  VMRS            APSR_nzcv, FPSCR
1C2BA4:  BLE             loc_1C2BC8
1C2BA8:  VDIV.F32        S0, S25, S0
1C2BAC:  MOV             R0, R6; x
1C2BB0:  VMOV            R1, S0; y
1C2BB4:  BL              powf
1C2BB8:  VLDR            S0, [R7]
1C2BBC:  VMOV            S2, R0
1C2BC0:  VMUL.F32        S0, S0, S2
1C2BC4:  VSTR            S0, [R7]
1C2BC8:  SUBS            R5, R5, #1
1C2BCC:  ADD             R7, R7, #4
1C2BD0:  ADD             R4, R4, #4
1C2BD4:  BNE             loc_1C2B98
1C2BD8:  B               loc_1C2BE4
1C2BDC:  MOV             R9, #0
1C2BE0:  VLDR            S31, [SP,#0x158+var_100]
1C2BE4:  VLDR            S0, [SP,#0x158+var_E0]
1C2BE8:  VLDR            S2, [SP,#0x158+var_E8]
1C2BEC:  VLDR            S4, [SP,#0x158+var_E4]
1C2BF0:  VMUL.F32        S25, S2, S0
1C2BF4:  VMUL.F32        S0, S17, S16
1C2BF8:  VMUL.F32        S2, S26, S18
1C2BFC:  VMUL.F32        S4, S30, S4
1C2C00:  VADD.F32        S0, S2, S0
1C2C04:  VADD.F32        S0, S0, S4
1C2C08:  VMOV            R0, S0; x
1C2C0C:  BL              acosf
1C2C10:  VLDR            S0, =57.296
1C2C14:  VMOV            S2, R0
1C2C18:  VMUL.F32        S0, S2, S0
1C2C1C:  VCMPE.F32       S0, S23
1C2C20:  VMRS            APSR_nzcv, FPSCR
1C2C24:  BLT             loc_1C2C94
1C2C28:  VCMPE.F32       S0, S25
1C2C2C:  VMRS            APSR_nzcv, FPSCR
1C2C30:  BGT             loc_1C2C94
1C2C34:  VLDR            S2, [SP,#0x158+var_E8]
1C2C38:  VSUB.F32        S0, S0, S23
1C2C3C:  VLDR            S4, [SP,#0x158+var_E0]
1C2C40:  VSUB.F32        S2, S2, S27
1C2C44:  LDR             R0, [SP,#0x158+var_DC]
1C2C48:  VMUL.F32        S2, S2, S4
1C2C4C:  VLDR            S4, [R0,#8]
1C2C50:  VLDR            S6, [R0,#0xB4]
1C2C54:  LDR             R7, [SP,#0x158+var_D8]
1C2C58:  VLDR            S17, [SP,#0x158+var_104]
1C2C5C:  VLDR            S8, [SP,#0x158+var_10C]
1C2C60:  LDR             R2, [SP,#0x158+var_110]
1C2C64:  LDR             R3, [SP,#0x158+var_114]
1C2C68:  VDIV.F32        S0, S0, S2
1C2C6C:  VMOV.F32        S2, #-1.0
1C2C70:  VADD.F32        S6, S6, S2
1C2C74:  VADD.F32        S2, S4, S2
1C2C78:  VMOV.F32        S4, #1.0
1C2C7C:  VMUL.F32        S6, S6, S0
1C2C80:  VMUL.F32        S2, S2, S0
1C2C84:  VADD.F32        S0, S6, S4
1C2C88:  VLDR            S6, [SP,#0x158+var_108]
1C2C8C:  VADD.F32        S2, S2, S4
1C2C90:  B               loc_1C2CD0
1C2C94:  LDR             R7, [SP,#0x158+var_D8]
1C2C98:  VCMPE.F32       S0, S25
1C2C9C:  LDR             R2, [SP,#0x158+var_110]
1C2CA0:  VMRS            APSR_nzcv, FPSCR
1C2CA4:  LDR             R3, [SP,#0x158+var_114]
1C2CA8:  VLDR            S17, [SP,#0x158+var_104]
1C2CAC:  VLDR            S8, [SP,#0x158+var_10C]
1C2CB0:  BLE             loc_1C2CC4
1C2CB4:  LDR             R0, [SP,#0x158+var_DC]
1C2CB8:  VLDR            S2, [R0,#8]
1C2CBC:  VLDR            S0, [R0,#0xB4]
1C2CC0:  B               loc_1C2CCC
1C2CC4:  VMOV.F32        S0, #1.0
1C2CC8:  VMOV.F32        S2, S0
1C2CCC:  VLDR            S6, [SP,#0x158+var_108]
1C2CD0:  VLDR            S14, [SP,#0x158+var_E4]
1C2CD4:  CMP             R9, #1
1C2CD8:  BNE             loc_1C2CFC
1C2CDC:  ADD             R0, SP, #0x158+var_C4
1C2CE0:  MOV             R1, R10
1C2CE4:  VLDR            S4, [R0]
1C2CE8:  SUBS            R1, R1, #1
1C2CEC:  VMUL.F32        S4, S4, S2
1C2CF0:  VSTR            S4, [R0]
1C2CF4:  ADD             R0, R0, #4
1C2CF8:  BNE             loc_1C2CE4
1C2CFC:  VMUL.F32        S26, S0, S28
1C2D00:  CMP             R3, #0
1C2D04:  VMOVEQ.F32      S26, S28
1C2D08:  LDR             R9, [SP,#0x158+var_DC]
1C2D0C:  VMUL.F32        S2, S20, S2
1C2D10:  CMP             R2, #0
1C2D14:  BEQ             loc_1C2D40
1C2D18:  CMP             R10, #1
1C2D1C:  BLT             loc_1C2D40
1C2D20:  ADD             R0, SP, #0x158+var_D4
1C2D24:  MOV             R1, R10
1C2D28:  VLDR            S4, [R0]
1C2D2C:  SUBS            R1, R1, #1
1C2D30:  VMUL.F32        S4, S4, S0
1C2D34:  VSTR            S4, [R0]
1C2D38:  ADD             R0, R0, #4
1C2D3C:  BNE             loc_1C2D28
1C2D40:  VCMPE.F32       S19, S2
1C2D44:  VMRS            APSR_nzcv, FPSCR
1C2D48:  VMOV.F32        S20, S21
1C2D4C:  VMOVGT.F32      S2, S19
1C2D50:  VCMPE.F32       S2, S21
1C2D54:  VMRS            APSR_nzcv, FPSCR
1C2D58:  VMOVLT.F32      S20, S2
1C2D5C:  CMP             R10, #1
1C2D60:  BLT             loc_1C2D9C
1C2D64:  ADD             R0, SP, #0x158+var_C4
1C2D68:  MOV             R1, R10
1C2D6C:  VLDR            S0, [R0]
1C2D70:  VMOV.F32        S2, S21
1C2D74:  VCMPE.F32       S19, S0
1C2D78:  VMRS            APSR_nzcv, FPSCR
1C2D7C:  VMOVGT.F32      S0, S19
1C2D80:  VCMPE.F32       S0, S21
1C2D84:  VMRS            APSR_nzcv, FPSCR
1C2D88:  VMOVLT.F32      S2, S0
1C2D8C:  SUBS            R1, R1, #1
1C2D90:  VSTR            S2, [R0]
1C2D94:  ADD             R0, R0, #4
1C2D98:  BNE             loc_1C2D6C
1C2D9C:  VMUL.F32        S0, S8, S6
1C2DA0:  VLDR            S30, [R9,#0x78]
1C2DA4:  VLDR            S28, [R9,#0x7C]
1C2DA8:  CMP             R10, #1
1C2DAC:  BLT             loc_1C2DF8
1C2DB0:  ADD             R0, R9, #0x84
1C2DB4:  ADD             R1, SP, #0x158+var_C4
1C2DB8:  ADD             R2, SP, #0x158+var_D4
1C2DBC:  MOV             R3, R10
1C2DC0:  VLDR            S2, [R0]
1C2DC4:  SUBS            R3, R3, #1
1C2DC8:  VLDR            S6, [R1]
1C2DCC:  VMUL.F32        S2, S2, S24
1C2DD0:  VLDR            S4, [R0,#4]
1C2DD4:  ADD             R0, R0, #0xC
1C2DD8:  VMUL.F32        S2, S2, S6
1C2DDC:  VSTR            S2, [R1]
1C2DE0:  ADD             R1, R1, #4
1C2DE4:  VLDR            S2, [R2]
1C2DE8:  VMUL.F32        S2, S2, S4
1C2DEC:  VSTR            S2, [R2]
1C2DF0:  ADD             R2, R2, #4
1C2DF4:  BNE             loc_1C2DC0
1C2DF8:  VCMP.F32        S0, #0.0
1C2DFC:  VMRS            APSR_nzcv, FPSCR
1C2E00:  BEQ             loc_1C2E58
1C2E04:  VLDR            S2, [SP,#0x158+var_128]
1C2E08:  VLDR            S4, [SP,#0x158+var_12C]
1C2E0C:  VLDR            S10, [SP,#0x158+var_130]
1C2E10:  VMUL.F32        S2, S4, S2
1C2E14:  VLDR            S4, [SP,#0x158+var_EC]
1C2E18:  VMUL.F32        S10, S14, S10
1C2E1C:  VMUL.F32        S6, S16, S4
1C2E20:  VLDR            S4, [SP,#0x158+var_134]
1C2E24:  VMUL.F32        S8, S18, S4
1C2E28:  VDIV.F32        S4, S2, S0
1C2E2C:  VADD.F32        S6, S8, S6
1C2E30:  VADD.F32        S6, S6, S10
1C2E34:  VCMPE.F32       S6, S4
1C2E38:  VMRS            APSR_nzcv, FPSCR
1C2E3C:  BGE             loc_1C2E64
1C2E40:  VNEG.F32        S8, S4
1C2E44:  VCMPE.F32       S6, S8
1C2E48:  VMRS            APSR_nzcv, FPSCR
1C2E4C:  VMOVLE.F32      S6, #1.0
1C2E50:  VSUBLE.F32      S6, S6, S4
1C2E54:  B               loc_1C2E6C
1C2E58:  VLDR            S16, [SP,#0x158+var_F8]
1C2E5C:  VLDR            S18, [SP,#0x158+var_FC]
1C2E60:  B               loc_1C2EE0
1C2E64:  VMOV.F32        S6, #-1.0
1C2E68:  VADD.F32        S6, S4, S6
1C2E6C:  VLDR            S8, [SP,#0x158+var_11C]
1C2E70:  VLDR            S10, [SP,#0x158+var_124]
1C2E74:  VMUL.F32        S8, S16, S8
1C2E78:  VLDR            S12, [SP,#0x158+var_120]
1C2E7C:  VMUL.F32        S10, S18, S10
1C2E80:  VMUL.F32        S12, S14, S12
1C2E84:  VADD.F32        S8, S10, S8
1C2E88:  VADD.F32        S8, S8, S12
1C2E8C:  VCMPE.F32       S8, S4
1C2E90:  VMRS            APSR_nzcv, FPSCR
1C2E94:  BGE             loc_1C2EB8
1C2E98:  VNEG.F32        S10, S4
1C2E9C:  VLDR            S16, [SP,#0x158+var_F8]
1C2EA0:  VLDR            S18, [SP,#0x158+var_FC]
1C2EA4:  VCMPE.F32       S8, S10
1C2EA8:  VMRS            APSR_nzcv, FPSCR
1C2EAC:  VMOVLE.F32      S8, #1.0
1C2EB0:  VSUBLE.F32      S8, S8, S4
1C2EB4:  B               loc_1C2EC8
1C2EB8:  VMOV.F32        S8, #-1.0
1C2EBC:  VLDR            S16, [SP,#0x158+var_F8]
1C2EC0:  VLDR            S18, [SP,#0x158+var_FC]
1C2EC4:  VADD.F32        S8, S4, S8
1C2EC8:  VMUL.F32        S4, S6, S0
1C2ECC:  VMUL.F32        S0, S8, S0
1C2ED0:  VSUB.F32        S4, S2, S4
1C2ED4:  VSUB.F32        S0, S2, S0
1C2ED8:  VDIV.F32        S0, S0, S4
1C2EDC:  VMUL.F32        S17, S0, S17
1C2EE0:  LDR             R0, [R9,#0x6C]
1C2EE4:  CMP             R0, #0
1C2EE8:  BEQ             loc_1C2FC0
1C2EEC:  LDR             R4, [R0]
1C2EF0:  CMP             R4, #0
1C2EF4:  BNE             loc_1C2F08
1C2EF8:  LDR             R0, [R0,#4]
1C2EFC:  CMP             R0, #0
1C2F00:  BNE             loc_1C2EEC
1C2F04:  B               loc_1C2FC0
1C2F08:  LDR             R1, [R9,#0xD0]
1C2F0C:  MOV             R0, #0x1000
1C2F10:  BL              sub_220A6C
1C2F14:  VLDR            S0, [R4,#4]
1C2F18:  SUB             R0, R0, #1
1C2F1C:  LDR             R2, =(ResamplerPrePadding_ptr - 0x1C2F30)
1C2F20:  VCVT.F32.S32    S0, S0
1C2F24:  LDR             R1, [SP,#0x158+var_F0]
1C2F28:  LDR             R2, [PC,R2]; ResamplerPrePadding
1C2F2C:  VMOV            S2, R1
1C2F30:  LDR             R1, =(ResamplerPadding_ptr - 0x1C2F44)
1C2F34:  VCVT.F32.U32    S2, S2
1C2F38:  LDR             R3, [SP,#0x158+var_F4]
1C2F3C:  LDR             R1, [PC,R1]; ResamplerPadding
1C2F40:  VMUL.F32        S0, S17, S0
1C2F44:  LDR             R2, [R2,R3,LSL#2]
1C2F48:  LDR             R1, [R1,R3,LSL#2]
1C2F4C:  SUB             R0, R0, R1
1C2F50:  MOVW            R1, #:lower16:(aSilkLsfcostabF+6); "SFCosTab_FIX_Q12"
1C2F54:  SUB             R0, R0, R2
1C2F58:  MOVT            R1, #:upper16:(aSilkLsfcostabF+6); "SFCosTab_FIX_Q12"
1C2F5C:  CMP             R0, R1
1C2F60:  VDIV.F32        S0, S0, S2
1C2F64:  MOVLT           R1, R0
1C2F68:  VMOV            S2, R1
1C2F6C:  VCVT.F32.S32    S2, S2
1C2F70:  VCMPE.F32       S0, S2
1C2F74:  VMRS            APSR_nzcv, FPSCR
1C2F78:  BLE             loc_1C2F90
1C2F7C:  MOVW            R0, #0x12E8
1C2F80:  MOV             R1, R1,LSL#14
1C2F84:  ADD             R0, R9, R0
1C2F88:  LDR             R7, [SP,#0x158+var_D8]
1C2F8C:  B               loc_1C2FBC
1C2F90:  VLDR            S2, =16384.0
1C2F94:  MOVW            R2, #0x12E8
1C2F98:  MOV             R0, R9
1C2F9C:  VMUL.F32        S0, S0, S2
1C2FA0:  VCVT.S32.F32    S0, S0
1C2FA4:  VMOV            R1, S0
1C2FA8:  STR             R1, [R0,R2]!
1C2FAC:  LDR             R7, [SP,#0x158+var_D8]
1C2FB0:  CMP             R1, #0
1C2FB4:  BNE             loc_1C2FC0
1C2FB8:  MOV             R1, #1
1C2FBC:  STR             R1, [R0]
1C2FC0:  VMUL.F32        S20, S20, S24
1C2FC4:  MOVW            R0, #0x12E8
1C2FC8:  LDR             R0, [R9,R0]
1C2FCC:  LDR             R1, [R7,#0xA8]
1C2FD0:  CMP             R0, #0x4000
1C2FD4:  LDR             R0, [SP,#0x158+var_F4]
1C2FD8:  MOVWEQ          R0, #0
1C2FDC:  CMP             R1, #0
1C2FE0:  BEQ             loc_1C2FF0
1C2FE4:  BL              j_SelectHrtfMixer
1C2FE8:  B               loc_1C2FF4
1C2FEC:  DCFS 57.296
1C2FF0:  BL              j_SelectMixer
1C2FF4:  MOVW            R1, #0x12E4
1C2FF8:  VMUL.F32        S20, S20, S30
1C2FFC:  STR             R0, [R9,R1]
1C3000:  LDR             R0, [SP,#0x158+var_D8]
1C3004:  LDR             R5, [R0,#0xA8]
1C3008:  CMP             R5, #0
1C300C:  BEQ             loc_1C3074
1C3010:  VCMPE.F32       S29, #0.0
1C3014:  VMRS            APSR_nzcv, FPSCR
1C3018:  BLE             loc_1C317C
1C301C:  VMOV.F32        S0, #1.0
1C3020:  VDIV.F32        S0, S0, S29
1C3024:  VMUL.F32        S31, S31, S0
1C3028:  VMUL.F32        S16, S16, S0
1C302C:  VMUL.F32        S18, S18, S0
1C3030:  VMOV            R0, S31; x
1C3034:  VSTR            S31, [R11,#var_70]
1C3038:  VSTR            S16, [R11,#var_74]
1C303C:  VSTR            S18, [R11,#var_6C]
1C3040:  BL              asinf
1C3044:  MOV             R6, R0
1C3048:  LDR             R0, =(ZScale_ptr - 0x1C3054)
1C304C:  LDR             R0, [PC,R0]; ZScale
1C3050:  VLDR            S0, [R0]
1C3054:  VMOV            R0, S16; y
1C3058:  VMUL.F32        S0, S18, S0
1C305C:  VMOV            R1, S0
1C3060:  EOR             R1, R1, #0x80000000; x
1C3064:  BL              atan2f
1C3068:  VMOV            S22, R6
1C306C:  VMOV            S24, R0
1C3070:  B               loc_1C3184
1C3074:  VCMPE.F32       S29, S22
1C3078:  VMRS            APSR_nzcv, FPSCR
1C307C:  VMOVGT.F32      S22, S29
1C3080:  VCMPE.F32       S22, #0.0
1C3084:  VMRS            APSR_nzcv, FPSCR
1C3088:  BLE             loc_1C30AC
1C308C:  VMOV.F32        S0, #1.0
1C3090:  VDIV.F32        S0, S0, S22
1C3094:  VMUL.F32        S2, S31, S0
1C3098:  VMUL.F32        S16, S16, S0
1C309C:  VMUL.F32        S18, S18, S0
1C30A0:  VSTR            S2, [R11,#var_70]
1C30A4:  VSTR            S16, [R11,#var_74]
1C30A8:  VSTR            S18, [R11,#var_6C]
1C30AC:  LDR             R0, =(ZScale_ptr - 0x1C30BC)
1C30B0:  VMOV            R1, S16
1C30B4:  LDR             R0, [PC,R0]; ZScale
1C30B8:  VLDR            S0, [R0]
1C30BC:  VMUL.F32        S0, S18, S0
1C30C0:  VMOV            R0, S0
1C30C4:  EOR             R0, R0, #0x80000000
1C30C8:  BL              j_aluCart2LUTpos
1C30CC:  LDR             R4, [SP,#0x158+var_D8]
1C30D0:  MOV             R5, R0
1C30D4:  MOVW            R0, #:lower16:(aZnst6Ndk14Fs10_79+4); "t6__ndk14__fs10filesystem10hash_valueER"...
1C30D8:  MOVW            R8, #0x1D4C
1C30DC:  MOVT            R0, #:upper16:(aZnst6Ndk14Fs10_79+4); "t6__ndk14__fs10filesystem10hash_valueER"...
1C30E0:  MOV             R1, #0x144; n
1C30E4:  MOV             R6, R4
1C30E8:  LDR             R7, [R6,R0]!
1C30EC:  ADD             R0, R9, R8; int
1C30F0:  BL              sub_22178C
1C30F4:  VMOV            S0, R7
1C30F8:  VCVT.F32.U32    S0, S0
1C30FC:  LDR             R0, [R6]
1C3100:  CMP             R0, #1
1C3104:  BLT             loc_1C3294
1C3108:  VMUL.F32        S2, S16, S16
1C310C:  ADD             R1, R4, #0xDC
1C3110:  VMUL.F32        S4, S18, S18
1C3114:  MOVW            R3, #:lower16:(aZn3fmt2v86deta_55+0x25); "NS1_13specs_checkerINS1_21dynamic_specs"...
1C3118:  VMOV.F32        S6, #1.0
1C311C:  ADD             R1, R1, #0x24000
1C3120:  MOV             R2, #0
1C3124:  MOVT            R3, #:upper16:(aZn3fmt2v86deta_55+0x25); "NS1_13specs_checkerINS1_21dynamic_specs"...
1C3128:  VADD.F32        S2, S4, S2
1C312C:  VDIV.F32        S4, S6, S0
1C3130:  VSQRT.F32       S0, S2
1C3134:  VSQRT.F32       S2, S4
1C3138:  ADD             R6, R5, R5,LSL#3
1C313C:  LDR             R7, [R1,R2,LSL#2]
1C3140:  ADD             R2, R2, #1
1C3144:  ADD             R6, R4, R6,LSL#2
1C3148:  CMP             R2, R0
1C314C:  ADD             R6, R6, R7,LSL#2
1C3150:  ADD             R7, R9, R7,LSL#2
1C3154:  ADD             R6, R6, R3
1C3158:  ADD             R7, R7, R8
1C315C:  VLDR            S4, [R6]
1C3160:  VSUB.F32        S4, S4, S2
1C3164:  VMUL.F32        S4, S4, S0
1C3168:  VADD.F32        S4, S4, S2
1C316C:  VMUL.F32        S4, S4, S20
1C3170:  VSTR            S4, [R7]
1C3174:  BLT             loc_1C3138
1C3178:  B               loc_1C3294
1C317C:  VLDR            S22, =0.0
1C3180:  VMOV.F32        S24, S22
1C3184:  LDRB            R0, [R9,#0xD8]
1C3188:  CMP             R0, #0
1C318C:  BEQ             loc_1C322C
1C3190:  VMOV            R6, S20
1C3194:  MOVW            R0, #0x12EC
1C3198:  MOV             R4, R9
1C319C:  SUB             R3, R11, #-var_74
1C31A0:  LDR             R0, [R4,R0]!
1C31A4:  ADD             R5, R4, #4
1C31A8:  MOV             R2, R5
1C31AC:  MOV             R1, R6
1C31B0:  BL              j_CalcHrtfDelta
1C31B4:  VLDR            S2, =0.001
1C31B8:  VMOV            S0, R0
1C31BC:  LDR             R1, [SP,#0x158+var_D8]
1C31C0:  VCMPE.F32       S0, S2
1C31C4:  VMRS            APSR_nzcv, FPSCR
1C31C8:  BLE             loc_1C3294
1C31CC:  MOVW            R0, #0x1D44
1C31D0:  ADD             R12, R9, R0
1C31D4:  LDR             R0, [R1,#0xA8]; int
1C31D8:  VMOV            R1, S22; int
1C31DC:  VMOV            R2, S24; int
1C31E0:  MOVW            R3, #0x1C44
1C31E4:  LDR             LR, [R9,#0xDC]
1C31E8:  MOVW            R7, #0x1BFC
1C31EC:  ADD             R8, R9, R3
1C31F0:  MOVW            R3, #0x12FC
1C31F4:  STR             LR, [SP,#0x158+var_154]; int
1C31F8:  ADD             R7, R9, R7
1C31FC:  ADD             R3, R9, R3
1C3200:  ADD             LR, SP, #0x158+var_150
1C3204:  STM             LR, {R3,R7,R8,R12}
1C3208:  MOV             R3, R6; int
1C320C:  VSTR            S0, [SP,#0x158+var_158]
1C3210:  BL              j_GetMovingHrtfCoeffs
1C3214:  STR             R0, [R9,#0xDC]
1C3218:  VSTR            S20, [R4]
1C321C:  LDR             R2, [R11,#var_74]
1C3220:  LDR             R0, [R11,#var_70]
1C3224:  LDR             R1, [R11,#var_6C]
1C3228:  B               loc_1C3280
1C322C:  VMOV            R1, S22
1C3230:  MOVW            R0, #0x1BFC
1C3234:  VMOV            R2, S24
1C3238:  MOVW            R7, #0x12FC
1C323C:  VMOV            R3, S20
1C3240:  ADD             R0, R9, R0
1C3244:  ADD             R7, R9, R7
1C3248:  STR             R7, [SP,#0x158+var_158]
1C324C:  STR             R0, [SP,#0x158+var_154]
1C3250:  MOV             R0, R5
1C3254:  BL              j_GetLerpedHrtfCoeffs
1C3258:  VMOV            R1, S18
1C325C:  MOVW            R3, #0x12EC
1C3260:  VMOV            R0, S31
1C3264:  ADD             R3, R9, R3
1C3268:  VMOV            R2, S16
1C326C:  VSTR            S20, [R3]
1C3270:  MOV             R3, #0
1C3274:  STR             R3, [R9,#0xDC]
1C3278:  MOVW            R3, #0x12F0
1C327C:  ADD             R5, R9, R3
1C3280:  STR             R2, [R5]
1C3284:  MOVW            R2, #0x12F8
1C3288:  STR             R1, [R9,R2]
1C328C:  MOVW            R1, #0x12F4
1C3290:  STR             R0, [R9,R1]
1C3294:  VMUL.F32        S16, S28, S26
1C3298:  CMP             R10, #1
1C329C:  BLT             loc_1C32C0
1C32A0:  MOVW            R0, #0x1EE0
1C32A4:  ADD             R1, SP, #0x158+var_C4
1C32A8:  ADD             R0, R9, R0
1C32AC:  MOV             R2, R10
1C32B0:  LDR             R3, [R1],#4
1C32B4:  SUBS            R2, R2, #1
1C32B8:  STR             R3, [R0],#0x30
1C32BC:  BNE             loc_1C32B0
1C32C0:  LDR             R0, [SP,#0x158+var_F0]
1C32C4:  VLDR            S2, =31416.0
1C32C8:  VMOV            S0, R0
1C32CC:  VCVT.F32.U32    S0, S0
1C32D0:  VDIV.F32        S0, S2, S0
1C32D4:  VMOV            R0, S0; x
1C32D8:  BL              cosf
1C32DC:  MOV             R5, R0
1C32E0:  VMOV            R0, S16
1C32E4:  MOV             R1, R5
1C32E8:  BL              j_lpCoeffCalc
1C32EC:  MOVW            R1, #0x1E90
1C32F0:  CMP             R10, #1
1C32F4:  STR             R0, [R9,R1]
1C32F8:  BLT             loc_1C332C
1C32FC:  MOVW            R0, #0x1EE4
1C3300:  ADD             R4, R9, R0
1C3304:  ADD             R6, SP, #0x158+var_D4
1C3308:  VLDR            S0, [R6]
1C330C:  MOV             R1, R5
1C3310:  VMUL.F32        S0, S0, S0
1C3314:  VMOV            R0, S0
1C3318:  BL              j_lpCoeffCalc
1C331C:  STR             R0, [R4],#0x30
1C3320:  SUBS            R10, R10, #1
1C3324:  ADD             R6, R6, #4
1C3328:  BNE             loc_1C3308
1C332C:  LDR             R0, =(__stack_chk_guard_ptr - 0x1C333C)
1C3330:  LDR             R1, [R11,#var_68]
1C3334:  LDR             R0, [PC,R0]; __stack_chk_guard
1C3338:  LDR             R0, [R0]
1C333C:  SUBS            R0, R0, R1
1C3340:  SUBEQ           SP, R11, #0x60 ; '`'
1C3344:  VPOPEQ          {D8-D15}
1C3348:  ADDEQ           SP, SP, #4
1C334C:  POPEQ           {R4-R11,PC}
1C3350:  BL              __stack_chk_fail
1C3354:  LDR             R1, [SP,#0x158+var_118]
1C3358:  MOV             R0, #0
1C335C:  CMP             R10, #0
1C3360:  VLDR            S31, [SP,#0x158+var_100]
1C3364:  MOVWGT          R0, #1
1C3368:  CMP             R1, #0
1C336C:  MOVWNE          R1, #1
1C3370:  AND             R9, R1, R0
1C3374:  B               loc_1C2BE4
1C3378:  DCFS 16384.0
1C337C:  VLDR            S7, [SP,#0x158+var_138]
1C3380:  VLDR            S9, [SP,#0x158+var_13C]
1C3384:  VMOV.F32        S16, S26
1C3388:  VMOV.F32        S18, S27
1C338C:  VMOV.F32        S26, S25
1C3390:  VMUL.F32        S20, S31, S28
1C3394:  B               loc_1C2AAC
