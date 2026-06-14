; =========================================================
; Game Engine Function: sub_F6458
; Address            : 0xF6458 - 0xF6496
; =========================================================

F6458:  PUSH            {R0-R4,R6,R7,LR}
F645A:  ADD             R7, SP, #0x18
F645C:  LDR             R4, =(__stack_chk_guard_ptr - 0xF6462)
F645E:  ADD             R4, PC; __stack_chk_guard_ptr
F6460:  LDR             R4, [R4]; __stack_chk_guard
F6462:  LDR             R4, [R4]
F6464:  STR             R4, [SP,#0x18+var_C]
F6466:  LDR             R4, [R0,#4]
F6468:  STR             R0, [SP,#0x18+var_18]
F646A:  ADDS            R0, #0x10
F646C:  ADD.W           R3, R4, R3,LSL#2
F6470:  STR             R3, [SP,#0x18+var_10]
F6472:  MOV             R3, SP
F6474:  STR             R4, [SP,#0x18+var_14]
F6476:  ADDS            R3, #4
F6478:  BL              sub_F650E
F647C:  LDRD.W          R0, R1, [SP,#0x18+var_18]
F6480:  STR             R1, [R0,#4]
F6482:  LDR             R0, [SP,#0x18+var_C]
F6484:  LDR             R1, =(__stack_chk_guard_ptr - 0xF648A)
F6486:  ADD             R1, PC; __stack_chk_guard_ptr
F6488:  LDR             R1, [R1]; __stack_chk_guard
F648A:  LDR             R1, [R1]
F648C:  CMP             R1, R0
F648E:  IT EQ
F6490:  POPEQ           {R0-R4,R6,R7,PC}
F6492:  BLX             __stack_chk_fail
