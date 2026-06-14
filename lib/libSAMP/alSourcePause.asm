; =========================================================
; Game Engine Function: alSourcePause
; Address            : 0x1CD880 - 0x1CD8CC
; =========================================================

1CD880:  PUSH            {R11,LR}
1CD884:  MOV             R11, SP
1CD888:  SUB             SP, SP, #8
1CD88C:  LDR             R1, =(__stack_chk_guard_ptr - 0x1CD898)
1CD890:  LDR             R1, [PC,R1]; __stack_chk_guard
1CD894:  LDR             R1, [R1]
1CD898:  STR             R1, [SP,#8+var_4]
1CD89C:  MOV             R1, SP
1CD8A0:  STR             R0, [SP,#8+var_8]
1CD8A4:  MOV             R0, #1
1CD8A8:  BL              j_alSourcePausev
1CD8AC:  LDR             R0, =(__stack_chk_guard_ptr - 0x1CD8BC)
1CD8B0:  LDR             R1, [SP,#8+var_4]
1CD8B4:  LDR             R0, [PC,R0]; __stack_chk_guard
1CD8B8:  LDR             R0, [R0]
1CD8BC:  SUBS            R0, R0, R1
1CD8C0:  MOVEQ           SP, R11
1CD8C4:  POPEQ           {R11,PC}
1CD8C8:  BL              __stack_chk_fail
