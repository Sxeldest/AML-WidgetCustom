; =========================================================
; Game Engine Function: sub_1EE450
; Address            : 0x1EE450 - 0x1EE498
; =========================================================

1EE450:  PUSH            {R0-R5,R7,LR}
1EE452:  ADD             R7, SP, #0x18
1EE454:  MOV             R5, R0
1EE456:  LDR             R0, =(__stack_chk_guard_ptr - 0x1EE45E)
1EE458:  MOV             R4, R1
1EE45A:  ADD             R0, PC; __stack_chk_guard_ptr
1EE45C:  LDR             R0, [R0]; __stack_chk_guard
1EE45E:  LDR             R0, [R0]
1EE460:  STR             R0, [SP,#0x18+var_C]
1EE462:  MOV             R0, R5
1EE464:  BL              sub_1ED8D4
1EE468:  LDR             R0, [R4]; dirp
1EE46A:  BLX             closedir
1EE46E:  ADDS            R0, #1
1EE470:  BNE             loc_1EE480
1EE472:  MOV             R0, SP
1EE474:  BL              sub_1EE4D8
1EE478:  LDRD.W          R0, R1, [SP,#0x18+var_18]
1EE47C:  STRD.W          R0, R1, [R5]
1EE480:  MOVS            R0, #0
1EE482:  STR             R0, [R4]
1EE484:  LDR             R0, [SP,#0x18+var_C]
1EE486:  LDR             R1, =(__stack_chk_guard_ptr - 0x1EE48C)
1EE488:  ADD             R1, PC; __stack_chk_guard_ptr
1EE48A:  LDR             R1, [R1]; __stack_chk_guard
1EE48C:  LDR             R1, [R1]
1EE48E:  CMP             R1, R0
1EE490:  IT EQ
1EE492:  POPEQ           {R0-R5,R7,PC}
1EE494:  BLX             __stack_chk_fail
