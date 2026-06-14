; =========================================================
; Game Engine Function: alSourcePlay
; Address            : 0x1CD518 - 0x1CD564
; =========================================================

1CD518:  PUSH            {R11,LR}
1CD51C:  MOV             R11, SP
1CD520:  SUB             SP, SP, #8
1CD524:  LDR             R1, =(__stack_chk_guard_ptr - 0x1CD530)
1CD528:  LDR             R1, [PC,R1]; __stack_chk_guard
1CD52C:  LDR             R1, [R1]
1CD530:  STR             R1, [SP,#8+var_4]
1CD534:  MOV             R1, SP
1CD538:  STR             R0, [SP,#8+var_8]
1CD53C:  MOV             R0, #1
1CD540:  BL              j_alSourcePlayv
1CD544:  LDR             R0, =(__stack_chk_guard_ptr - 0x1CD554)
1CD548:  LDR             R1, [SP,#8+var_4]
1CD54C:  LDR             R0, [PC,R0]; __stack_chk_guard
1CD550:  LDR             R0, [R0]
1CD554:  SUBS            R0, R0, R1
1CD558:  MOVEQ           SP, R11
1CD55C:  POPEQ           {R11,PC}
1CD560:  BL              __stack_chk_fail
