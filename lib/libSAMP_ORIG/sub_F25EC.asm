; =========================================================
; Game Engine Function: sub_F25EC
; Address            : 0xF25EC - 0xF2622
; =========================================================

F25EC:  PUSH            {R2-R4,R6,R7,LR}
F25EE:  ADD             R7, SP, #0x10
F25F0:  LDR             R1, =(__stack_chk_guard_ptr - 0xF25F6)
F25F2:  ADD             R1, PC; __stack_chk_guard_ptr
F25F4:  LDR             R1, [R1]; __stack_chk_guard
F25F6:  LDR             R1, [R1]
F25F8:  STR             R1, [SP,#0x10+var_C]
F25FA:  BLX             uselocale
F25FE:  STR             R0, [SP,#0x10+var_10]
F2600:  BLX             localeconv
F2604:  MOV             R4, R0
F2606:  MOV             R0, SP
F2608:  BL              sub_F61EC
F260C:  LDR             R0, [SP,#0x10+var_C]
F260E:  LDR             R1, =(__stack_chk_guard_ptr - 0xF2614)
F2610:  ADD             R1, PC; __stack_chk_guard_ptr
F2612:  LDR             R1, [R1]; __stack_chk_guard
F2614:  LDR             R1, [R1]
F2616:  CMP             R1, R0
F2618:  ITT EQ
F261A:  MOVEQ           R0, R4
F261C:  POPEQ           {R2-R4,R6,R7,PC}
F261E:  BLX             __stack_chk_fail
