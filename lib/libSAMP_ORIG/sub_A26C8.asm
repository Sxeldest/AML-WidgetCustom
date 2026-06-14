; =========================================================
; Game Engine Function: sub_A26C8
; Address            : 0xA26C8 - 0xA289E
; =========================================================

A26C8:  PUSH            {R4-R7,LR}
A26CA:  ADD             R7, SP, #0xC
A26CC:  PUSH.W          {R8-R11}
A26D0:  SUB             SP, SP, #4
A26D2:  VPUSH           {D8-D9}
A26D6:  SUB             SP, SP, #0x38
A26D8:  MOV             R11, R2
A26DA:  LDR             R2, =(__stack_chk_guard_ptr - 0xA26E8)
A26DC:  VMOV.F32        S16, S1
A26E0:  LDR.W           R9, [R7,#arg_4]
A26E4:  ADD             R2, PC; __stack_chk_guard_ptr
A26E6:  VMOV.F32        S18, S0
A26EA:  LDR             R4, [R7,#arg_0]
A26EC:  MOV             R8, R3
A26EE:  LDR             R2, [R2]; __stack_chk_guard
A26F0:  LDR             R2, [R2]
A26F2:  STR             R2, [SP,#0x68+var_34]
A26F4:  LDR             R2, [R0,#0x3C]
A26F6:  CMP             R2, #0
A26F8:  BEQ             loc_A27E6
A26FA:  MOVS            R2, #1
A26FC:  VMOV.I32        Q8, #0
A2700:  STR             R2, [SP,#0x68+var_64]
A2702:  ADD             R2, SP, #0x68+var_64
A2704:  MOV             R6, R8
A2706:  ADD.W           R8, R2, #4
A270A:  ADD.W           R5, R2, #0x20 ; ' '
A270E:  MOVS            R3, #4
A2710:  VST1.32         {D16-D17}, [R8]!
A2714:  VST1.32         {D16-D17}, [R5],R3
A2718:  VST1.32         {D16-D17}, [R8],R3
A271C:  BL              sub_A41EC
A2720:  LDR.W           R1, [R8]
A2724:  MOV             R8, R6
A2726:  LDRD.W          R4, R10, [SP,#0x68+var_48]
A272A:  CMP             R0, #0
A272C:  LDR             R5, [R5]
A272E:  ITTTT EQ
A2730:  MOVEQ           R5, R0
A2732:  MOVEQ           R1, R0
A2734:  MOVEQ           R4, R0
A2736:  MOVEQ           R10, R0
A2738:  CMP.W           R11, #0
A273C:  BEQ             loc_A2762
A273E:  VMOV            S0, R1
A2742:  VLDR            S2, =0.0
A2746:  VCVT.F32.S32    S0, S0
A274A:  VMLA.F32        S2, S0, S18
A274E:  VMOV            R0, S2; x
A2752:  BLX             floorf
A2756:  VMOV            S0, R0
A275A:  VCVT.S32.F32    S0, S0
A275E:  VSTR            S0, [R11]
A2762:  LDR             R6, [R7,#arg_0]
A2764:  CMP.W           R8, #0
A2768:  BEQ             loc_A2790
A276A:  NEGS            R0, R5
A276C:  VLDR            S2, =0.0
A2770:  VMOV            S0, R0
A2774:  VCVT.F32.S32    S0, S0
A2778:  VMLA.F32        S2, S0, S16
A277C:  VMOV            R0, S2; x
A2780:  BLX             floorf
A2784:  VMOV            S0, R0
A2788:  VCVT.S32.F32    S0, S0
A278C:  VSTR            S0, [R8]
A2790:  CBZ             R6, loc_A27B6
A2792:  VMOV            S0, R4
A2796:  VLDR            S2, =0.0
A279A:  VCVT.F32.S32    S0, S0
A279E:  VMLA.F32        S2, S0, S18
A27A2:  VMOV            R0, S2; x
A27A6:  BLX             ceilf
A27AA:  VMOV            S0, R0
A27AE:  VCVT.S32.F32    S0, S0
A27B2:  VSTR            S0, [R6]
A27B6:  CMP.W           R9, #0
A27BA:  BEQ             loc_A281E
A27BC:  RSB.W           R0, R10, #0
A27C0:  VLDR            S2, =0.0
A27C4:  VMOV            S0, R0
A27C8:  VCVT.F32.S32    S0, S0
A27CC:  VMLA.F32        S2, S0, S16
A27D0:  VMOV            R0, S2; x
A27D4:  BLX             ceilf
A27D8:  VMOV            S0, R0
A27DC:  VCVT.S32.F32    S0, S0
A27E0:  VMOV            R0, S0
A27E4:  B               loc_A281A
A27E6:  LDR             R2, [R0,#0xC]
A27E8:  CMP             R2, R1
A27EA:  BLE             loc_A27F2
A27EC:  LDR             R6, [R0,#0x30]
A27EE:  CMP             R6, #1
A27F0:  BLE             loc_A2840
A27F2:  CMP.W           R11, #0
A27F6:  ITT NE
A27F8:  MOVNE           R0, #0
A27FA:  STRNE.W         R0, [R11]
A27FE:  CMP.W           R8, #0
A2802:  ITT NE
A2804:  MOVNE           R0, #0
A2806:  STRNE.W         R0, [R8]
A280A:  CMP             R4, #0
A280C:  ITT NE
A280E:  MOVNE           R0, #0
A2810:  STRNE           R0, [R4]
A2812:  CMP.W           R9, #0
A2816:  BEQ             loc_A281E
A2818:  MOVS            R0, #0
A281A:  STR.W           R0, [R9]
A281E:  LDR             R0, [SP,#0x68+var_34]
A2820:  LDR             R1, =(__stack_chk_guard_ptr - 0xA2826)
A2822:  ADD             R1, PC; __stack_chk_guard_ptr
A2824:  LDR             R1, [R1]; __stack_chk_guard
A2826:  LDR             R1, [R1]
A2828:  CMP             R1, R0
A282A:  ITTTT EQ
A282C:  ADDEQ           SP, SP, #0x38 ; '8'
A282E:  VPOPEQ          {D8-D9}
A2832:  ADDEQ           SP, SP, #4
A2834:  POPEQ.W         {R8-R11}
A2838:  IT EQ
A283A:  POPEQ           {R4-R7,PC}
A283C:  BLX             __stack_chk_fail
A2840:  LDR             R2, [R0,#4]
A2842:  LDR             R3, [R0,#0x10]
A2844:  ADD             R3, R2
A2846:  CBZ             R6, loc_A285C
A2848:  LDR.W           R6, [R3,R1,LSL#2]
A284C:  ADD.W           R1, R3, R1,LSL#2
A2850:  LDR             R3, [R1,#4]
A2852:  REV             R1, R6
A2854:  REV             R3, R3
A2856:  CMP             R1, R3
A2858:  BNE             loc_A287A
A285A:  B               loc_A27F2
A285C:  LDRB.W          R6, [R3,R1,LSL#1]
A2860:  ADD.W           R1, R3, R1,LSL#1
A2864:  LDRB            R5, [R1,#1]
A2866:  LDRB            R3, [R1,#2]
A2868:  LDRB            R1, [R1,#3]
A286A:  LSLS            R1, R1, #1
A286C:  ORR.W           R3, R1, R3,LSL#9
A2870:  LSLS            R1, R5, #1
A2872:  ORR.W           R1, R1, R6,LSL#9
A2876:  CMP             R1, R3
A2878:  BEQ             loc_A27F2
A287A:  LDR             R0, [R0,#0x18]
A287C:  ADDS            R0, R0, R1
A287E:  BMI             loc_A27F2
A2880:  ADD             R0, R2
A2882:  LDRH            R1, [R0,#8]
A2884:  LDRH            R2, [R0,#6]
A2886:  LDRH            R3, [R0,#4]
A2888:  REVSH           R5, R1
A288A:  LDRH            R0, [R0,#2]
A288C:  REVSH           R4, R2
A288E:  REVSH.W         R10, R3
A2892:  REVSH           R1, R0
A2894:  CMP.W           R11, #0
A2898:  BNE.W           loc_A273E
A289C:  B               loc_A2762
