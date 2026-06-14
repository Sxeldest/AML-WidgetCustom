; =========================================================
; Game Engine Function: sub_F27F4
; Address            : 0xF27F4 - 0xF285A
; =========================================================

F27F4:  PUSH            {R4-R7,LR}
F27F6:  ADD             R7, SP, #0xC
F27F8:  PUSH.W          {R11}
F27FC:  SUB             SP, SP, #0x10
F27FE:  MOV             R4, R0
F2800:  LDR             R0, =(__stack_chk_guard_ptr - 0xF2808)
F2802:  MOV             R5, R1
F2804:  ADD             R0, PC; __stack_chk_guard_ptr
F2806:  LDR             R0, [R0]; __stack_chk_guard
F2808:  LDR             R0, [R0]
F280A:  STR             R0, [SP,#0x20+var_14]
F280C:  MOVS            R0, #0
F280E:  LDRB            R1, [R1]
F2810:  CBZ             R1, loc_F2840
F2812:  STR             R0, [SP,#0x20+var_18]
F2814:  MOV             R0, R5; s
F2816:  MOV             R6, R2
F2818:  BLX             strlen
F281C:  MOV             R2, R0
F281E:  STR             R6, [SP,#0x20+var_20]
F2820:  ADD             R0, SP, #0x20+var_1C
F2822:  ADD             R3, SP, #0x20+var_18
F2824:  MOV             R1, R5
F2826:  BL              sub_F005C
F282A:  MOV             R1, R0
F282C:  CMN.W           R0, #3
F2830:  ITT LS
F2832:  LDRLS           R0, [SP,#0x20+var_1C]
F2834:  STRLS           R0, [R4]
F2836:  MOVS            R0, #0
F2838:  CMN.W           R1, #2
F283C:  IT CC
F283E:  MOVCC           R0, #1
F2840:  LDR             R1, [SP,#0x20+var_14]
F2842:  LDR             R2, =(__stack_chk_guard_ptr - 0xF2848)
F2844:  ADD             R2, PC; __stack_chk_guard_ptr
F2846:  LDR             R2, [R2]; __stack_chk_guard
F2848:  LDR             R2, [R2]
F284A:  CMP             R2, R1
F284C:  ITTT EQ
F284E:  ADDEQ           SP, SP, #0x10
F2850:  POPEQ.W         {R11}
F2854:  POPEQ           {R4-R7,PC}
F2856:  BLX             __stack_chk_fail
