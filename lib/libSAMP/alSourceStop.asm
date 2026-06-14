; =========================================================
; Game Engine Function: alSourceStop
; Address            : 0x1CD9E8 - 0x1CDA34
; =========================================================

1CD9E8:  PUSH            {R11,LR}
1CD9EC:  MOV             R11, SP
1CD9F0:  SUB             SP, SP, #8
1CD9F4:  LDR             R1, =(__stack_chk_guard_ptr - 0x1CDA00)
1CD9F8:  LDR             R1, [PC,R1]; __stack_chk_guard
1CD9FC:  LDR             R1, [R1]
1CDA00:  STR             R1, [SP,#8+var_4]
1CDA04:  MOV             R1, SP
1CDA08:  STR             R0, [SP,#8+var_8]
1CDA0C:  MOV             R0, #1
1CDA10:  BL              j_alSourceStopv
1CDA14:  LDR             R0, =(__stack_chk_guard_ptr - 0x1CDA24)
1CDA18:  LDR             R1, [SP,#8+var_4]
1CDA1C:  LDR             R0, [PC,R0]; __stack_chk_guard
1CDA20:  LDR             R0, [R0]
1CDA24:  SUBS            R0, R0, R1
1CDA28:  MOVEQ           SP, R11
1CDA2C:  POPEQ           {R11,PC}
1CDA30:  BL              __stack_chk_fail
