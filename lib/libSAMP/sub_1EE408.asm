; =========================================================
; Game Engine Function: sub_1EE408
; Address            : 0x1EE408 - 0x1EE448
; =========================================================

1EE408:  PUSH            {R3-R7,LR}
1EE40A:  ADD             R7, SP, #0x10
1EE40C:  STRD.W          R0, R1, [SP,#0x10+var_C]
1EE410:  CMP             R1, R3
1EE412:  LDR             R0, =(__stack_chk_guard_ptr - 0x1EE418)
1EE414:  ADD             R0, PC; __stack_chk_guard_ptr
1EE416:  LDR             R0, [R0]; __stack_chk_guard
1EE418:  LDR             R0, [R0]
1EE41A:  STR             R0, [SP,#0x10+var_4]
1EE41C:  BNE             loc_1EE430
1EE41E:  ADD             R0, SP, #0x10+var_C; int
1EE420:  MOV             R1, R2; int
1EE422:  MOV             R2, R3; n
1EE424:  BL              sub_126DBE
1EE428:  CLZ.W           R0, R0
1EE42C:  LSRS            R0, R0, #5
1EE42E:  B               loc_1EE432
1EE430:  MOVS            R0, #0
1EE432:  LDR             R1, [SP,#0x10+var_4]
1EE434:  LDR             R2, =(__stack_chk_guard_ptr - 0x1EE43A)
1EE436:  ADD             R2, PC; __stack_chk_guard_ptr
1EE438:  LDR             R2, [R2]; __stack_chk_guard
1EE43A:  LDR             R2, [R2]
1EE43C:  CMP             R2, R1
1EE43E:  ITT EQ
1EE440:  ADDEQ           SP, SP, #0x10
1EE442:  POPEQ           {R7,PC}
1EE444:  BLX             __stack_chk_fail
