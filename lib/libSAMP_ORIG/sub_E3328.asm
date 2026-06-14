; =========================================================
; Game Engine Function: sub_E3328
; Address            : 0xE3328 - 0xE350C
; =========================================================

E3328:  PUSH            {R4-R7,LR}
E332A:  ADD             R7, SP, #0xC
E332C:  PUSH.W          {R8-R11}
E3330:  SUB             SP, SP, #0x8C
E3332:  STR             R1, [SP,#0xA8+var_88]
E3334:  MOVS            R1, #0xC
E3336:  STR             R0, [SP,#0xA8+var_A0]
E3338:  MOV             R4, R3
E333A:  LDR             R0, =(__stack_chk_guard_ptr - 0xE3342)
E333C:  MOV             R11, R2
E333E:  ADD             R0, PC; __stack_chk_guard_ptr
E3340:  LDR             R0, [R0]; __stack_chk_guard
E3342:  LDR             R0, [R0]
E3344:  STR             R0, [SP,#0xA8+var_20]
E3346:  LDR             R0, =(free_ptr - 0xE334C)
E3348:  ADD             R0, PC; free_ptr
E334A:  LDR             R0, [R0]; __imp_free
E334C:  STR             R0, [SP,#0xA8+var_8C]
E334E:  MOVS            R0, #0
E3350:  STR             R0, [SP,#0xA8+var_90]
E3352:  SUBS            R0, R3, R2
E3354:  BLX             sub_108848
E3358:  MOV             R5, R0
E335A:  CMP             R0, #0x65 ; 'e'
E335C:  BCC             loc_E3376
E335E:  MOV             R0, R5; size
E3360:  BLX             malloc
E3364:  CMP             R0, #0
E3366:  BEQ.W           loc_E3508
E336A:  MOV             R10, R0
E336C:  ADD             R0, SP, #0xA8+var_90
E336E:  MOV             R1, R10
E3370:  BL              sub_F6866
E3374:  B               loc_E337A
E3376:  ADD.W           R10, SP, #0xA8+var_84
E337A:  MOVS            R0, #0
E337C:  MOV.W           R8, #2
E3380:  MOV.W           R9, #1
E3384:  MOV             R6, R11
E3386:  STR             R0, [SP,#0xA8+var_98]
E3388:  STR.W           R10, [SP,#0xA8+var_9C]
E338C:  CMP             R6, R4
E338E:  BEQ             loc_E33B2
E3390:  MOV             R0, R6
E3392:  BL              sub_E82F0
E3396:  CBZ             R0, loc_E33A6
E3398:  LDR             R0, [SP,#0xA8+var_98]
E339A:  SUBS            R5, #1
E339C:  STRB.W          R8, [R10]
E33A0:  ADDS            R0, #1
E33A2:  STR             R0, [SP,#0xA8+var_98]
E33A4:  B               loc_E33AA
E33A6:  STRB.W          R9, [R10]
E33AA:  ADD.W           R10, R10, #1
E33AE:  ADDS            R6, #0xC
E33B0:  B               loc_E338C
E33B2:  LDRD.W          R9, R8, [SP,#0xA8+var_A0]
E33B6:  MOVS            R6, #0
E33B8:  MOV             R10, R11
E33BA:  STR.W           R11, [SP,#0xA8+var_A4]
E33BE:  ADD             R1, SP, #0xA8+var_88
E33C0:  MOV             R0, R9
E33C2:  BL              sub_DD238
E33C6:  CMP             R5, #0
E33C8:  MOV             R1, R5
E33CA:  IT NE
E33CC:  MOVNE           R1, #1
E33CE:  TST             R0, R1
E33D0:  BEQ             loc_E34AE
E33D2:  MOV             R0, R9
E33D4:  BL              sub_E483C
E33D8:  MOV             R11, R0
E33DA:  LDR             R0, [R7,#arg_8]
E33DC:  CBNZ            R0, loc_E33EA
E33DE:  LDR             R0, [R7,#arg_0]
E33E0:  LDR             R1, [R0]
E33E2:  LDR             R2, [R1,#0xC]
E33E4:  MOV             R1, R11
E33E6:  BLX             R2
E33E8:  MOV             R11, R0
E33EA:  MOV.W           R9, #0
E33EE:  ADDS            R0, R6, #1
E33F0:  STR             R0, [SP,#0xA8+var_94]
E33F2:  CMP             R10, R4
E33F4:  BEQ             loc_E345C
E33F6:  LDRB.W          R0, [R8]
E33FA:  CMP             R0, #1
E33FC:  BNE             loc_E3452
E33FE:  LDRB.W          R1, [R10]
E3402:  LDR.W           R0, [R10,#8]
E3406:  LSLS            R1, R1, #0x1F
E3408:  IT EQ
E340A:  ADDEQ.W         R0, R10, #1
E340E:  LDRB            R1, [R0,R6]
E3410:  LDR             R0, [R7,#arg_8]
E3412:  CBNZ            R0, loc_E341E
E3414:  LDR             R0, [R7,#arg_0]
E3416:  LDR             R2, [R0]
E3418:  LDR             R2, [R2,#0xC]
E341A:  BLX             R2
E341C:  MOV             R1, R0
E341E:  CMP             R11, R1
E3420:  BNE             loc_E344A
E3422:  LDRB.W          R1, [R10]
E3426:  LDR.W           R0, [R10,#4]
E342A:  LSLS            R2, R1, #0x1F
E342C:  IT EQ
E342E:  LSREQ           R0, R1, #1
E3430:  LDR             R1, [SP,#0xA8+var_94]
E3432:  CMP             R0, R1
E3434:  BNE             loc_E3444
E3436:  MOVS            R0, #2
E3438:  SUBS            R5, #1
E343A:  STRB.W          R0, [R8]
E343E:  LDR             R0, [SP,#0xA8+var_98]
E3440:  ADDS            R0, #1
E3442:  STR             R0, [SP,#0xA8+var_98]
E3444:  MOV.W           R9, #1
E3448:  B               loc_E3452
E344A:  SUBS            R5, #1
E344C:  MOVS            R0, #0
E344E:  STRB.W          R0, [R8]
E3452:  ADD.W           R8, R8, #1
E3456:  ADD.W           R10, R10, #0xC
E345A:  B               loc_E33F2
E345C:  MOVS.W          R0, R9,LSL#31
E3460:  LDR             R6, [SP,#0xA8+var_94]
E3462:  LDR.W           R8, [SP,#0xA8+var_9C]
E3466:  LDRD.W          R10, R9, [SP,#0xA8+var_A4]
E346A:  BEQ             loc_E33BE
E346C:  MOV             R0, R9
E346E:  BL              sub_E484A
E3472:  LDR             R0, [SP,#0xA8+var_98]
E3474:  LDR             R6, [SP,#0xA8+var_94]
E3476:  ADD             R0, R5
E3478:  CMP             R0, #2
E347A:  BCC             loc_E33BE
E347C:  MOV             R0, R8
E347E:  MOV             R1, R10
E3480:  CMP             R1, R4
E3482:  BEQ             loc_E34AA
E3484:  LDRB            R2, [R0]
E3486:  CMP             R2, #2
E3488:  BNE             loc_E34A4
E348A:  LDRB            R3, [R1]
E348C:  LDR             R2, [R1,#4]
E348E:  LSLS            R6, R3, #0x1F
E3490:  IT EQ
E3492:  LSREQ           R2, R3, #1
E3494:  LDR             R3, [SP,#0xA8+var_94]
E3496:  CMP             R2, R3
E3498:  BEQ             loc_E34A4
E349A:  MOVS            R2, #0
E349C:  STRB            R2, [R0]
E349E:  LDR             R2, [SP,#0xA8+var_98]
E34A0:  SUBS            R2, #1
E34A2:  STR             R2, [SP,#0xA8+var_98]
E34A4:  ADDS            R0, #1
E34A6:  ADDS            R1, #0xC
E34A8:  B               loc_E3480
E34AA:  LDR             R6, [SP,#0xA8+var_94]
E34AC:  B               loc_E33BE
E34AE:  ADD             R1, SP, #0xA8+var_88
E34B0:  MOV             R0, R9
E34B2:  BL              sub_E2F64
E34B6:  CBZ             R0, loc_E34D4
E34B8:  LDR             R1, [R7,#arg_4]
E34BA:  LDR             R0, [R1]
E34BC:  ORR.W           R0, R0, #2
E34C0:  STR             R0, [R1]
E34C2:  B               loc_E34D4
E34C4:  LDRB.W          R0, [R8]
E34C8:  CMP             R0, #2
E34CA:  BEQ             loc_E34E4
E34CC:  ADD.W           R8, R8, #1
E34D0:  ADD.W           R10, R10, #0xC
E34D4:  CMP             R10, R4
E34D6:  BNE             loc_E34C4
E34D8:  LDR             R1, [R7,#arg_4]
E34DA:  LDR             R0, [R1]
E34DC:  ORR.W           R0, R0, #4
E34E0:  STR             R0, [R1]
E34E2:  B               loc_E34E6
E34E4:  MOV             R4, R10
E34E6:  ADD             R0, SP, #0xA8+var_90
E34E8:  BL              sub_F687C
E34EC:  LDR             R0, [SP,#0xA8+var_20]
E34EE:  LDR             R1, =(__stack_chk_guard_ptr - 0xE34F4)
E34F0:  ADD             R1, PC; __stack_chk_guard_ptr
E34F2:  LDR             R1, [R1]; __stack_chk_guard
E34F4:  LDR             R1, [R1]
E34F6:  CMP             R1, R0
E34F8:  ITTTT EQ
E34FA:  MOVEQ           R0, R4
E34FC:  ADDEQ           SP, SP, #0x8C
E34FE:  POPEQ.W         {R8-R11}
E3502:  POPEQ           {R4-R7,PC}
E3504:  BLX             __stack_chk_fail
E3508:  BLX             j__ZSt17__throw_bad_allocv; std::__throw_bad_alloc(void)
