; =========================================================
; Game Engine Function: sub_7D418
; Address            : 0x7D418 - 0x7D456
; =========================================================

7D418:  PUSH            {R4,R5,R7,LR}
7D41A:  ADD             R7, SP, #8
7D41C:  SUB             SP, SP, #0x10
7D41E:  MOV             R4, R0
7D420:  LDR             R0, =(__stack_chk_guard_ptr - 0x7D42C)
7D422:  ADD             R5, SP, #0x18+var_14
7D424:  ADD.W           R2, R4, #0x54 ; 'T'
7D428:  ADD             R0, PC; __stack_chk_guard_ptr
7D42A:  MOV             R1, R4
7D42C:  LDR             R0, [R0]; __stack_chk_guard
7D42E:  LDR             R0, [R0]
7D430:  STR             R0, [SP,#0x18+var_C]
7D432:  MOV             R0, R5
7D434:  BL              sub_7D460
7D438:  MOV             R0, R4
7D43A:  MOV             R1, R5
7D43C:  BL              sub_7C44C
7D440:  LDR             R0, [SP,#0x18+var_C]
7D442:  LDR             R1, =(__stack_chk_guard_ptr - 0x7D448)
7D444:  ADD             R1, PC; __stack_chk_guard_ptr
7D446:  LDR             R1, [R1]; __stack_chk_guard
7D448:  LDR             R1, [R1]
7D44A:  CMP             R1, R0
7D44C:  ITT EQ
7D44E:  ADDEQ           SP, SP, #0x10
7D450:  POPEQ           {R4,R5,R7,PC}
7D452:  BLX             __stack_chk_fail
