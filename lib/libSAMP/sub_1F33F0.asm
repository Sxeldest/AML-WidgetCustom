; =========================================================
; Game Engine Function: sub_1F33F0
; Address            : 0x1F33F0 - 0x1F346E
; =========================================================

1F33F0:  PUSH            {R4-R7,LR}
1F33F2:  ADD             R7, SP, #0xC
1F33F4:  PUSH.W          {R0-R9,R11}
1F33F8:  MOV             R9, R0
1F33FA:  LDR             R0, =(__stack_chk_guard_ptr - 0x1F3406)
1F33FC:  ADD.W           R6, R1, #8
1F3400:  MOV             R5, R1
1F3402:  ADD             R0, PC; __stack_chk_guard_ptr
1F3404:  MOVS            R4, #0
1F3406:  MOVS            R1, #0x68 ; 'h'; n
1F3408:  MOV             R8, R2
1F340A:  LDR             R0, [R0]; __stack_chk_guard
1F340C:  LDR             R0, [R0]
1F340E:  STR             R0, [SP,#0x38+var_1C]
1F3410:  MOVW            R0, #0xFFFF
1F3414:  STRD.W          R4, R0, [R5,#0x70]
1F3418:  MOV             R0, R6; int
1F341A:  BLX             sub_22178C
1F341E:  STR             R4, [SP,#0x38+var_28]
1F3420:  BLX             j__ZNSt6__ndk115system_categoryEv; std::system_category(void)
1F3424:  STR             R0, [SP,#0x38+var_24]
1F3426:  MOV             R1, R6; buf
1F3428:  LDR             R0, [R5,#4]; fd
1F342A:  BLX             fstat
1F342E:  ADDS            R0, #1
1F3430:  ITT EQ
1F3432:  ADDEQ           R0, SP, #0x38+var_28
1F3434:  BLEQ            sub_1EFB50
1F3438:  LDR             R2, [R5]
1F343A:  MOV             R3, R6
1F343C:  STR.W           R8, [SP,#0x38+var_38]
1F3440:  ADD             R0, SP, #0x38+var_30
1F3442:  ADD             R1, SP, #0x38+var_28
1F3444:  BL              sub_1F2DD4
1F3448:  LDRD.W          R0, R1, [SP,#0x38+var_30]
1F344C:  STRD.W          R0, R1, [R5,#0x70]
1F3450:  STRD.W          R0, R1, [R9]
1F3454:  LDR             R0, [SP,#0x38+var_1C]
1F3456:  LDR             R1, =(__stack_chk_guard_ptr - 0x1F345C)
1F3458:  ADD             R1, PC; __stack_chk_guard_ptr
1F345A:  LDR             R1, [R1]; __stack_chk_guard
1F345C:  LDR             R1, [R1]
1F345E:  CMP             R1, R0
1F3460:  ITTT EQ
1F3462:  ADDEQ           SP, SP, #0x20 ; ' '
1F3464:  POPEQ.W         {R8,R9,R11}
1F3468:  POPEQ           {R4-R7,PC}
1F346A:  BLX             __stack_chk_fail
