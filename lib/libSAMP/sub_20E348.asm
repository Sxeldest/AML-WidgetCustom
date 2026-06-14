; =========================================================
; Game Engine Function: sub_20E348
; Address            : 0x20E348 - 0x20E386
; =========================================================

20E348:  PUSH            {R0-R4,R6,R7,LR}
20E34A:  ADD             R7, SP, #0x18
20E34C:  LDR             R4, =(__stack_chk_guard_ptr - 0x20E352)
20E34E:  ADD             R4, PC; __stack_chk_guard_ptr
20E350:  LDR             R4, [R4]; __stack_chk_guard
20E352:  LDR             R4, [R4]
20E354:  STR             R4, [SP,#0x18+var_C]
20E356:  LDR             R4, [R0,#4]
20E358:  STR             R0, [SP,#0x18+var_18]
20E35A:  ADDS            R0, #0x10
20E35C:  ADD.W           R3, R4, R3,LSL#2
20E360:  STR             R3, [SP,#0x18+var_10]
20E362:  MOV             R3, SP
20E364:  STR             R4, [SP,#0x18+var_14]
20E366:  ADDS            R3, #4
20E368:  BL              sub_20E3FE
20E36C:  LDRD.W          R0, R1, [SP,#0x18+var_18]
20E370:  STR             R1, [R0,#4]
20E372:  LDR             R0, [SP,#0x18+var_C]
20E374:  LDR             R1, =(__stack_chk_guard_ptr - 0x20E37A)
20E376:  ADD             R1, PC; __stack_chk_guard_ptr
20E378:  LDR             R1, [R1]; __stack_chk_guard
20E37A:  LDR             R1, [R1]
20E37C:  CMP             R1, R0
20E37E:  IT EQ
20E380:  POPEQ           {R0-R4,R6,R7,PC}
20E382:  BLX             __stack_chk_fail
