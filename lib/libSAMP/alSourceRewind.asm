; =========================================================
; Game Engine Function: alSourceRewind
; Address            : 0x1CDB4C - 0x1CDB98
; =========================================================

1CDB4C:  PUSH            {R11,LR}
1CDB50:  MOV             R11, SP
1CDB54:  SUB             SP, SP, #8
1CDB58:  LDR             R1, =(__stack_chk_guard_ptr - 0x1CDB64)
1CDB5C:  LDR             R1, [PC,R1]; __stack_chk_guard
1CDB60:  LDR             R1, [R1]
1CDB64:  STR             R1, [SP,#8+var_4]
1CDB68:  MOV             R1, SP
1CDB6C:  STR             R0, [SP,#8+var_8]
1CDB70:  MOV             R0, #1
1CDB74:  BL              j_alSourceRewindv
1CDB78:  LDR             R0, =(__stack_chk_guard_ptr - 0x1CDB88)
1CDB7C:  LDR             R1, [SP,#8+var_4]
1CDB80:  LDR             R0, [PC,R0]; __stack_chk_guard
1CDB84:  LDR             R0, [R0]
1CDB88:  SUBS            R0, R0, R1
1CDB8C:  MOVEQ           SP, R11
1CDB90:  POPEQ           {R11,PC}
1CDB94:  BL              __stack_chk_fail
