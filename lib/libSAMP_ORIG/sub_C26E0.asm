; =========================================================
; Game Engine Function: sub_C26E0
; Address            : 0xC26E0 - 0xC28F4
; =========================================================

C26E0:  PUSH            {R4-R7,LR}
C26E2:  ADD             R7, SP, #0xC
C26E4:  PUSH.W          {R8-R11}
C26E8:  SUB             SP, SP, #0x20
C26EA:  STRD.W          R0, R3, [SP,#0x3C+var_24]
C26EE:  MOVS            R6, #0
C26F0:  LDRD.W          R0, LR, [R7,#arg_0]
C26F4:  MOVS            R5, #1
C26F6:  CMP             R2, #1
C26F8:  STR             R6, [R0]
C26FA:  STR.W           R5, [R0,#4]!
C26FE:  STR             R0, [SP,#0x3C+var_3C]
C2700:  BLT             loc_C271A
C2702:  MOVS            R5, #1
C2704:  MOV             R6, R2
C2706:  MOV             R4, R1
C2708:  LDRSH.W         R0, [R4],#2
C270C:  SUBS            R6, #1
C270E:  SMULBB.W        R0, R0, R0
C2712:  LSR.W           R0, R0, LR
C2716:  ADD             R5, R0
C2718:  BNE             loc_C2708
C271A:  LDR             R0, [SP,#0x3C+var_20]
C271C:  CMP             R0, #1
C271E:  BLT.W           loc_C28EC
C2722:  LDR             R6, [R7,#arg_8]
C2724:  MOVW            R0, #0xFFFF
C2728:  STR             R0, [SP,#0x3C+var_30]
C272A:  CLZ.W           R6, R6
C272E:  STR             R1, [SP,#0x3C+var_28]
C2730:  RSB.W           R4, R6, #0x1F
C2734:  CMP             R4, #0xE
C2736:  BLE             loc_C280E
C2738:  RSB.W           R0, R6, #0x11
C273C:  ADD.W           R12, R1, R2,LSL#1
C2740:  STR             R0, [SP,#0x3C+var_2C]
C2742:  MOVS            R0, #0
C2744:  MOVS            R4, #0
C2746:  MOV.W           R8, #0
C274A:  MOVW            R10, #0xFFFF
C274E:  STR             R0, [SP,#0x3C+var_34]
C2750:  LDR             R0, [SP,#0x3C+var_24]
C2752:  LDR.W           R2, [R0,R4,LSL#2]
C2756:  CMP             R2, #1
C2758:  BLT             loc_C27E2
C275A:  LDR             R0, [SP,#0x3C+var_2C]
C275C:  SXTH.W          R11, R10
C2760:  LSRS            R2, R0
C2762:  SMULBB.W        R6, R2, R2
C2766:  UXTH.W          R2, R8
C276A:  SBFX.W          R9, R6, #0xF, #0x10
C276E:  MUL.W           R0, R9, R2
C2772:  UXTH            R2, R5
C2774:  MUL.W           R3, R2, R11
C2778:  MOV.W           R11, R6,LSR#15
C277C:  SMULTB.W        R1, R8, R11
C2780:  SMULBT.W        R6, R10, R5
C2784:  LSLS            R1, R1, #1
C2786:  ADD.W           R0, R1, R0,ASR#15
C278A:  LSLS            R6, R6, #1
C278C:  ADD.W           R3, R6, R3,ASR#15
C2790:  CMP             R0, R3
C2792:  BLE             loc_C27D4
C2794:  LDR.W           R10, [SP,#0x3C+var_30]
C2798:  ASRS            R0, R5, #0x10
C279A:  LDR             R6, [SP,#0x3C+var_34]
C279C:  SXTH.W          R1, R10
C27A0:  UXTH            R3, R6
C27A2:  SMULBB.W        R0, R1, R0
C27A6:  MULS            R2, R1
C27A8:  SMULTB.W        R1, R6, R9
C27AC:  MUL.W           R3, R9, R3
C27B0:  LSLS            R0, R0, #1
C27B2:  ADD.W           R0, R0, R2,ASR#15
C27B6:  LSLS            R1, R1, #1
C27B8:  ADD.W           R1, R1, R3,ASR#15
C27BC:  CMP             R1, R0
C27BE:  BLE             loc_C27D8
C27C0:  LDR             R0, [R7,#arg_0]
C27C2:  MOV             R8, R6
C27C4:  MOV             R1, R0
C27C6:  LDR             R0, [R1]
C27C8:  MOV             R2, R1
C27CA:  STR             R0, [R1,#4]
C27CC:  STR.W           R11, [SP,#0x3C+var_30]
C27D0:  STR             R5, [SP,#0x3C+var_34]
C27D2:  B               loc_C27DE
C27D4:  LDR             R1, [SP,#0x3C+var_28]
C27D6:  B               loc_C27E2
C27D8:  MOV             R10, R11
C27DA:  MOV             R8, R5
C27DC:  LDR             R2, [SP,#0x3C+var_3C]
C27DE:  LDR             R1, [SP,#0x3C+var_28]
C27E0:  STR             R4, [R2]
C27E2:  LDRSH.W         R0, [R1,R4,LSL#1]
C27E6:  LDRSH.W         R2, [R12,R4,LSL#1]
C27EA:  ADDS            R4, #1
C27EC:  SMULBB.W        R0, R0, R0
C27F0:  SMULBB.W        R2, R2, R2
C27F4:  LSR.W           R0, R0, LR
C27F8:  LSR.W           R2, R2, LR
C27FC:  SUBS            R0, R2, R0
C27FE:  ADD             R5, R0
C2800:  CMP             R5, #1
C2802:  IT LE
C2804:  MOVLE           R5, #1
C2806:  LDR             R0, [SP,#0x3C+var_20]
C2808:  CMP             R0, R4
C280A:  BNE             loc_C2750
C280C:  B               loc_C28EC
C280E:  RSB.W           R0, R4, #0xE
C2812:  STR             R0, [SP,#0x3C+var_34]
C2814:  ADD.W           R0, R1, R2,LSL#1
C2818:  STR             R0, [SP,#0x3C+var_2C]
C281A:  MOVS            R0, #0
C281C:  MOVS            R4, #0
C281E:  MOV.W           R11, #0
C2822:  MOVW            R10, #0xFFFF
C2826:  STR             R0, [SP,#0x3C+var_38]
C2828:  LDR             R0, [SP,#0x3C+var_24]
C282A:  LDR.W           R6, [R0,R4,LSL#2]
C282E:  CMP             R6, #1
C2830:  BLT             loc_C28C0
C2832:  LDR             R0, [SP,#0x3C+var_34]
C2834:  SXTH.W          R1, R10
C2838:  UXTH.W          R8, R5
C283C:  UXTH.W          R3, R11
C2840:  MUL.W           R1, R8, R1
C2844:  LSL.W           R0, R6, R0
C2848:  SMULBB.W        R0, R0, R0
C284C:  SMULBT.W        R12, R10, R5
C2850:  SBFX.W          R9, R0, #0xF, #0x10
C2854:  LSRS            R6, R0, #0xF
C2856:  SMULTB.W        R0, R11, R6
C285A:  MOV.W           R2, R12,LSL#1
C285E:  MUL.W           R3, R9, R3
C2862:  ADD.W           R1, R2, R1,ASR#15
C2866:  LSLS            R0, R0, #1
C2868:  ADD.W           R0, R0, R3,ASR#15
C286C:  CMP             R0, R1
C286E:  BLE             loc_C28B2
C2870:  LDR.W           R10, [SP,#0x3C+var_30]
C2874:  ASRS            R0, R5, #0x10
C2876:  LDR.W           R11, [SP,#0x3C+var_38]
C287A:  SXTH.W          R1, R10
C287E:  UXTH.W          R3, R11
C2882:  SMULBB.W        R0, R1, R0
C2886:  MUL.W           R8, R8, R1
C288A:  SMULTB.W        R1, R11, R9
C288E:  MUL.W           R3, R9, R3
C2892:  LSLS            R0, R0, #1
C2894:  ADD.W           R0, R0, R8,ASR#15
C2898:  LSLS            R1, R1, #1
C289A:  ADD.W           R1, R1, R3,ASR#15
C289E:  CMP             R1, R0
C28A0:  BLE             loc_C28B6
C28A2:  LDR             R0, [R7,#arg_0]
C28A4:  MOV             R1, R0
C28A6:  LDR             R0, [R1]
C28A8:  STR             R0, [R1,#4]
C28AA:  STR             R6, [SP,#0x3C+var_30]
C28AC:  MOV             R6, R1
C28AE:  STR             R5, [SP,#0x3C+var_38]
C28B0:  B               loc_C28BC
C28B2:  LDR             R1, [SP,#0x3C+var_28]
C28B4:  B               loc_C28C0
C28B6:  MOV             R10, R6
C28B8:  MOV             R11, R5
C28BA:  LDR             R6, [SP,#0x3C+var_3C]
C28BC:  LDR             R1, [SP,#0x3C+var_28]
C28BE:  STR             R4, [R6]
C28C0:  LDR             R2, [SP,#0x3C+var_2C]
C28C2:  LDRSH.W         R0, [R1,R4,LSL#1]
C28C6:  LDRSH.W         R2, [R2,R4,LSL#1]
C28CA:  ADDS            R4, #1
C28CC:  SMULBB.W        R0, R0, R0
C28D0:  SMULBB.W        R2, R2, R2
C28D4:  LSR.W           R0, R0, LR
C28D8:  LSR.W           R2, R2, LR
C28DC:  SUBS            R0, R2, R0
C28DE:  ADD             R5, R0
C28E0:  CMP             R5, #1
C28E2:  IT LE
C28E4:  MOVLE           R5, #1
C28E6:  LDR             R0, [SP,#0x3C+var_20]
C28E8:  CMP             R0, R4
C28EA:  BNE             loc_C2828
C28EC:  ADD             SP, SP, #0x20 ; ' '
C28EE:  POP.W           {R8-R11}
C28F2:  POP             {R4-R7,PC}
