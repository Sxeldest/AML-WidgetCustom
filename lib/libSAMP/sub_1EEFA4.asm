; =========================================================
; Game Engine Function: sub_1EEFA4
; Address            : 0x1EEFA4 - 0x1EEFEE
; =========================================================

1EEFA4:  PUSH            {R0-R5,R7,LR}
1EEFA6:  ADD             R7, SP, #0x18
1EEFA8:  MOV             R4, R0
1EEFAA:  LDR             R0, =(__stack_chk_guard_ptr - 0x1EEFB2)
1EEFAC:  MOV             R5, R1
1EEFAE:  ADD             R0, PC; __stack_chk_guard_ptr
1EEFB0:  LDR             R0, [R0]; __stack_chk_guard
1EEFB2:  LDR             R0, [R0]
1EEFB4:  STR             R0, [SP,#0x18+var_C]
1EEFB6:  MOV             R0, R4
1EEFB8:  BL              sub_1EEFF8
1EEFBC:  CBNZ            R0, loc_1EEFC4
1EEFBE:  MOV             R0, R4
1EEFC0:  BL              sub_1EF00C
1EEFC4:  ADD             R0, SP, #0x18+var_14
1EEFC6:  MOV             R1, R4
1EEFC8:  BL              sub_1EEF50
1EEFCC:  LDR             R0, [SP,#0x18+var_10]
1EEFCE:  MOV             R1, R5
1EEFD0:  BL              sub_1EF666
1EEFD4:  LDR             R0, [R4,#0x14]
1EEFD6:  ADDS            R0, #1
1EEFD8:  STR             R0, [R4,#0x14]
1EEFDA:  LDR             R0, [SP,#0x18+var_C]
1EEFDC:  LDR             R1, =(__stack_chk_guard_ptr - 0x1EEFE2)
1EEFDE:  ADD             R1, PC; __stack_chk_guard_ptr
1EEFE0:  LDR             R1, [R1]; __stack_chk_guard
1EEFE2:  LDR             R1, [R1]
1EEFE4:  CMP             R1, R0
1EEFE6:  IT EQ
1EEFE8:  POPEQ           {R0-R5,R7,PC}
1EEFEA:  BLX             __stack_chk_fail
