; =========================================================
; Game Engine Function: png_warning_parameter_unsigned
; Address            : 0x1F26BC - 0x1F282C
; =========================================================

1F26BC:  PUSH            {R4-R7,LR}
1F26BE:  ADD             R7, SP, #0xC
1F26C0:  PUSH.W          {R8-R11}
1F26C4:  SUB             SP, SP, #0x2C
1F26C6:  STR             R1, [SP,#0x48+var_3C]
1F26C8:  ADD             R4, SP, #0x48+var_38
1F26CA:  LDR             R1, =(__stack_chk_guard_ptr - 0x1F26DC)
1F26CC:  MOVW            R11, #0xCCCD
1F26D0:  LDR.W           R8, =(a0123456789abcd_1 - 0x1F26E2); "0123456789ABCDEF"
1F26D4:  ADD.W           LR, R4, #0x17
1F26D8:  ADD             R1, PC; __stack_chk_guard_ptr
1F26DA:  LDR.W           R10, =(a0123456789abcd_1 - 0x1F26EA); "0123456789ABCDEF"
1F26DE:  ADD             R8, PC; "0123456789ABCDEF"
1F26E0:  MOV.W           R12, #0
1F26E4:  LDR             R1, [R1]; __stack_chk_guard
1F26E6:  ADD             R10, PC; "0123456789ABCDEF"
1F26E8:  MOVS            R6, #1
1F26EA:  MOVT            R11, #0xCCCC
1F26EE:  MOV.W           R9, #0
1F26F2:  LDR             R1, [R1]
1F26F4:  STR             R1, [SP,#0x48+var_20]
1F26F6:  MOVS            R1, #0
1F26F8:  STRB.W          R12, [SP,#0x48+var_21]
1F26FC:  STR             R1, [SP,#0x48+var_40]
1F26FE:  B               loc_1F27C4
1F2700:  SUBS            R5, R2, #1; switch 5 cases
1F2702:  CMP             R5, #4
1F2704:  BHI             def_1F2706; jumptable 001F2706 default case
1F2706:  TBB.W           [PC,R5]; switch jump
1F270A:  DCB 4; jump table for switch statement
1F270B:  DCB 3
1F270C:  DCB 0x10
1F270D:  DCB 0xF
1F270E:  DCB 0x1F
1F270F:  ALIGN 2
1F2710:  MOVS            R6, #2; jumptable 001F2706 case 2
1F2712:  UMULL.W         R5, R1, R3, R11; jumptable 001F2706 case 1
1F2716:  LSRS            R5, R1, #3
1F2718:  ADD.W           R1, R5, R5,LSL#2
1F271C:  SUB.W           R1, R3, R1,LSL#1
1F2720:  MOV             R3, R5
1F2722:  LDRB.W          R12, [R8,R1]
1F2726:  B               loc_1F2734
1F2728:  MOVS            R6, #2; jumptable 001F2706 case 4
1F272A:  AND.W           R1, R3, #0xF; jumptable 001F2706 case 3
1F272E:  LSRS            R3, R3, #4
1F2730:  LDRB.W          R12, [R10,R1]
1F2734:  STRB.W          R12, [LR,#-1]!
1F2738:  ADD.W           R9, R9, #1
1F273C:  CMP             LR, R4
1F273E:  BHI             loc_1F27C4
1F2740:  B               loc_1F27D0
1F2742:  MOVS            R5, #0; jumptable 001F2706 default case
1F2744:  STR             R0, [SP,#0x48+var_44]
1F2746:  B               loc_1F2774
1F2748:  STR             R0, [SP,#0x48+var_44]; jumptable 001F2706 case 5
1F274A:  UMULL.W         R0, R1, R3, R11
1F274E:  LSRS            R5, R1, #3
1F2750:  LDR             R1, [SP,#0x48+var_40]
1F2752:  ADD.W           R0, R5, R5,LSL#2
1F2756:  SUB.W           R0, R3, R0,LSL#1
1F275A:  ORRS            R1, R0
1F275C:  BEQ             loc_1F276E
1F275E:  LDR             R1, =(a0123456789abcd_1 - 0x1F2764); "0123456789ABCDEF"
1F2760:  ADD             R1, PC; "0123456789ABCDEF"
1F2762:  LDRB.W          R12, [R1,R0]
1F2766:  MOVS            R0, #1
1F2768:  STRB.W          R12, [LR,#-1]!
1F276C:  B               loc_1F2770
1F276E:  MOVS            R0, #0
1F2770:  STR             R0, [SP,#0x48+var_40]
1F2772:  MOVS            R6, #5
1F2774:  CMP             R2, #5
1F2776:  ADD.W           R0, R9, #1
1F277A:  IT EQ
1F277C:  CMPEQ.W         R9, #4
1F2780:  BNE             loc_1F2796
1F2782:  CMP             LR, R4
1F2784:  BLS             loc_1F2796
1F2786:  LDR             R0, [SP,#0x48+var_40]
1F2788:  CMP             R0, #0
1F278A:  BEQ             loc_1F279C
1F278C:  MOV.W           R12, #0x2E ; '.'
1F2790:  STRB.W          R12, [LR,#-1]!
1F2794:  B               loc_1F27A2
1F2796:  MOV             R3, R5
1F2798:  MOV             R9, R0
1F279A:  B               loc_1F27A8
1F279C:  CBZ             R5, loc_1F27B0
1F279E:  MOVS            R0, #0
1F27A0:  STR             R0, [SP,#0x48+var_40]
1F27A2:  MOV.W           R9, #5
1F27A6:  MOV             R3, R5
1F27A8:  LDR             R0, [SP,#0x48+var_44]
1F27AA:  CMP             LR, R4
1F27AC:  BHI             loc_1F27C4
1F27AE:  B               loc_1F27D0
1F27B0:  MOV.W           R12, #0x30 ; '0'
1F27B4:  MOVS            R0, #0
1F27B6:  STRB.W          R12, [LR,#-1]!
1F27BA:  MOV.W           R9, #5
1F27BE:  MOVS            R3, #0
1F27C0:  STR             R0, [SP,#0x48+var_40]
1F27C2:  B               loc_1F27A8
1F27C4:  CMP             R9, R6
1F27C6:  BLT.W           loc_1F2700
1F27CA:  CMP             R3, #0
1F27CC:  BNE.W           loc_1F2700
1F27D0:  LDR             R1, [SP,#0x48+var_3C]
1F27D2:  SUBS            R1, #1
1F27D4:  CMP             R1, #7
1F27D6:  BHI             loc_1F2812
1F27D8:  ADD.W           R0, R0, R1,LSL#5
1F27DC:  CBZ             R0, loc_1F2812
1F27DE:  MOVS            R1, #0
1F27E0:  CMP.W           LR, #0
1F27E4:  BEQ             loc_1F280E
1F27E6:  MOVS.W          R2, R12,LSL#24
1F27EA:  MOV.W           R4, #0
1F27EE:  BEQ             loc_1F2810
1F27F0:  ADD.W           R2, LR, #1
1F27F4:  MOVS            R3, #0
1F27F6:  ADDS            R4, R3, #1
1F27F8:  STRB.W          R12, [R0,R3]
1F27FC:  CMP             R4, #0x1E
1F27FE:  BHI             loc_1F2810
1F2800:  LDRB.W          R12, [R2,R3]
1F2804:  MOV             R3, R4
1F2806:  CMP.W           R12, #0
1F280A:  BNE             loc_1F27F6
1F280C:  B               loc_1F2810
1F280E:  MOVS            R4, #0
1F2810:  STRB            R1, [R0,R4]
1F2812:  LDR             R0, =(__stack_chk_guard_ptr - 0x1F281A)
1F2814:  LDR             R1, [SP,#0x48+var_20]
1F2816:  ADD             R0, PC; __stack_chk_guard_ptr
1F2818:  LDR             R0, [R0]; __stack_chk_guard
1F281A:  LDR             R0, [R0]
1F281C:  SUBS            R0, R0, R1
1F281E:  ITTT EQ
1F2820:  ADDEQ           SP, SP, #0x2C ; ','
1F2822:  POPEQ.W         {R8-R11}
1F2826:  POPEQ           {R4-R7,PC}
1F2828:  BLX             __stack_chk_fail
