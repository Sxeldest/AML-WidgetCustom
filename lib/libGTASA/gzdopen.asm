; =========================================================
; Game Engine Function: gzdopen
; Address            : 0x20C3EC - 0x20C43C
; =========================================================

20C3EC:  PUSH            {R4-R7,LR}
20C3EE:  ADD             R7, SP, #0xC
20C3F0:  PUSH.W          {R11}
20C3F4:  SUB             SP, SP, #0x18
20C3F6:  MOV             R4, R0
20C3F8:  LDR             R0, =(__stack_chk_guard_ptr - 0x20C402)
20C3FA:  MOV             R5, R1
20C3FC:  CMP             R4, #0
20C3FE:  ADD             R0, PC; __stack_chk_guard_ptr
20C400:  LDR             R0, [R0]; __stack_chk_guard
20C402:  LDR             R0, [R0]
20C404:  STR             R0, [SP,#0x28+var_14]
20C406:  BLT             loc_20C420
20C408:  MOV             R6, SP
20C40A:  ADR             R1, aFdD; "<fd:%d>"
20C40C:  MOV             R0, R6
20C40E:  MOV             R2, R4
20C410:  BL              sub_5E6BC0
20C414:  MOV             R0, R6
20C416:  MOV             R1, R5
20C418:  MOV             R2, R4
20C41A:  BL              sub_20C1CC
20C41E:  B               loc_20C422
20C420:  MOVS            R0, #0
20C422:  LDR             R1, =(__stack_chk_guard_ptr - 0x20C42A)
20C424:  LDR             R2, [SP,#0x28+var_14]
20C426:  ADD             R1, PC; __stack_chk_guard_ptr
20C428:  LDR             R1, [R1]; __stack_chk_guard
20C42A:  LDR             R1, [R1]
20C42C:  SUBS            R1, R1, R2
20C42E:  ITTT EQ
20C430:  ADDEQ           SP, SP, #0x18
20C432:  POPEQ.W         {R11}
20C436:  POPEQ           {R4-R7,PC}
20C438:  BLX             __stack_chk_fail
