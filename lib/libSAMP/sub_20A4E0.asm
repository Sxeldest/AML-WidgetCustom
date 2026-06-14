; =========================================================
; Game Engine Function: sub_20A4E0
; Address            : 0x20A4E0 - 0x20A516
; =========================================================

20A4E0:  PUSH            {R2-R4,R6,R7,LR}
20A4E2:  ADD             R7, SP, #0x10
20A4E4:  LDR             R1, =(__stack_chk_guard_ptr - 0x20A4EA)
20A4E6:  ADD             R1, PC; __stack_chk_guard_ptr
20A4E8:  LDR             R1, [R1]; __stack_chk_guard
20A4EA:  LDR             R1, [R1]
20A4EC:  STR             R1, [SP,#0x10+var_C]
20A4EE:  BL              sub_21FCA0
20A4F2:  STR             R0, [SP,#0x10+var_10]
20A4F4:  BL              sub_21FCD0
20A4F8:  MOV             R4, R0
20A4FA:  MOV             R0, SP
20A4FC:  BL              sub_20E0DC
20A500:  LDR             R0, [SP,#0x10+var_C]
20A502:  LDR             R1, =(__stack_chk_guard_ptr - 0x20A508)
20A504:  ADD             R1, PC; __stack_chk_guard_ptr
20A506:  LDR             R1, [R1]; __stack_chk_guard
20A508:  LDR             R1, [R1]
20A50A:  CMP             R1, R0
20A50C:  ITT EQ
20A50E:  MOVEQ           R0, R4
20A510:  POPEQ           {R2-R4,R6,R7,PC}
20A512:  BLX             __stack_chk_fail
