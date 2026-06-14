; =========================================================
; Game Engine Function: sub_F01D4
; Address            : 0xF01D4 - 0xF0204
; =========================================================

F01D4:  PUSH            {R5-R7,LR}
F01D6:  ADD             R7, SP, #8
F01D8:  LDR             R1, =(__stack_chk_guard_ptr - 0xF01DE)
F01DA:  ADD             R1, PC; __stack_chk_guard_ptr
F01DC:  LDR             R1, [R1]; __stack_chk_guard
F01DE:  LDR             R1, [R1]
F01E0:  STR             R1, [SP,#8+var_4]
F01E2:  BLX             uselocale
F01E6:  STR             R0, [SP,#8+var_8]
F01E8:  MOV             R0, SP
F01EA:  BL              sub_F61EC
F01EE:  LDR             R0, [SP,#8+var_4]
F01F0:  LDR             R1, =(__stack_chk_guard_ptr - 0xF01F6)
F01F2:  ADD             R1, PC; __stack_chk_guard_ptr
F01F4:  LDR             R1, [R1]; __stack_chk_guard
F01F6:  LDR             R1, [R1]
F01F8:  CMP             R1, R0
F01FA:  ITT EQ
F01FC:  MOVEQ           R0, #1
F01FE:  POPEQ           {R2,R3,R7,PC}
F0200:  BLX             __stack_chk_fail
