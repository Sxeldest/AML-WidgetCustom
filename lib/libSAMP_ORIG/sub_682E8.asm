; =========================================================
; Game Engine Function: sub_682E8
; Address            : 0x682E8 - 0x684AA
; =========================================================

682E8:  SUB             SP, SP, #0xC
682EA:  PUSH            {R4-R7,LR}
682EC:  ADD             R7, SP, #0xC
682EE:  PUSH.W          {R8-R11}
682F2:  SUB             SP, SP, #0x18
682F4:  MOV             R4, R0
682F6:  ADD.W           R0, R7, #8
682FA:  LDR             R6, =(word_1A4090 - 0x6830C)
682FC:  VMOV.I32        Q8, #0
68300:  LDR             R5, =(dword_1A408C - 0x6830E)
68302:  MOV.W           R11, #2
68306:  STM             R0!, {R1-R3}
68308:  ADD             R6, PC; word_1A4090
6830A:  ADD             R5, PC; dword_1A408C
6830C:  LDR             R0, =(__stack_chk_guard_ptr - 0x6831A)
6830E:  MOV             R8, R6
68310:  MOVS            R2, #0
68312:  MOV.W           R9, #0
68316:  ADD             R0, PC; __stack_chk_guard_ptr
68318:  LDR             R0, [R0]; __stack_chk_guard
6831A:  LDR             R0, [R0]
6831C:  STR             R0, [SP,#0x34+var_20]
6831E:  LDRH.W          R0, [R4],#2
68322:  LDR             R1, [R5]
68324:  STRH            R0, [R6]
68326:  ADD.W           R0, R7, #8
6832A:  STR             R0, [SP,#0x34+var_24]
6832C:  ADD.W           R0, R1, #0x3C ; '<'
68330:  VST1.32         {D16-D17}, [R0]!
68334:  VST1.32         {D16-D17}, [R0]!
68338:  VST1.32         {D16-D17}, [R0]!
6833C:  VST1.32         {D16-D17}, [R0]!
68340:  STR             R5, [SP,#0x34+var_34]
68342:  STR.W           R2, [R1,#0x80]
68346:  STR             R1, [SP,#0x34+var_30]
68348:  STR             R2, [R0]
6834A:  STRH.W          R2, [R7,#var_26]
6834E:  LDRB            R1, [R4]
68350:  SUB.W           R0, R1, #0x66 ; 'f'; switch 21 cases
68354:  CMP             R0, #0x14
68356:  BHI.W           def_6835A; jumptable 0006835A default case
6835A:  TBB.W           [PC,R0]; switch jump
6835E:  DCB 0x26; jump table for switch statement
6835F:  DCB 0x92
68360:  DCB 0x92
68361:  DCB 0x3A
68362:  DCB 0x92
68363:  DCB 0x92
68364:  DCB 0x92
68365:  DCB 0x92
68366:  DCB 0x92
68367:  DCB 0x92
68368:  DCB 0x92
68369:  DCB 0x92
6836A:  DCB 0x92
6836B:  DCB 0xB
6836C:  DCB 0x92
6836D:  DCB 0x92
6836E:  DCB 0x49
6836F:  DCB 0x92
68370:  DCB 0x92
68371:  DCB 0x92
68372:  DCB 0x67
68373:  ALIGN 2
68374:  LDR             R0, [SP,#0x34+var_24]; jumptable 0006835A case 115
68376:  ADDS            R1, R0, #4
68378:  STR             R1, [SP,#0x34+var_24]
6837A:  LDR.W           R10, [R0]
6837E:  MOV             R0, R10; s
68380:  BLX             strlen
68384:  MOV             R6, R0
68386:  MOVS            R0, #0xE
68388:  STRB.W          R0, [R8,R11]
6838C:  ADD.W           R0, R8, R11
68390:  ADD.W           R5, R11, #2
68394:  STRB            R6, [R0,#1]
68396:  ADD.W           R0, R8, R5; dest
6839A:  UXTB            R2, R6; n
6839C:  MOV             R1, R10; src
6839E:  BLX             j_memcpy
683A2:  UXTAB.W         R11, R5, R6
683A6:  ADDS            R4, #1
683A8:  B               loc_6834E
683AA:  LDR             R0, [SP,#0x34+var_24]; jumptable 0006835A case 102
683AC:  MOVS            R1, #6
683AE:  ADD.W           R2, R8, R11
683B2:  ADDS            R0, #7
683B4:  BIC.W           R0, R0, #7
683B8:  VLDM            R0!, {D16}
683BC:  STRB.W          R1, [R8,R11]
683C0:  VCVT.F32.F64    S0, D16
683C4:  STR             R0, [SP,#0x34+var_24]
683C6:  VSTR            S0, [SP,#0x34+var_2C]
683CA:  LDR             R1, [SP,#0x34+var_2C]
683CC:  STR.W           R1, [R2,#1]
683D0:  B               loc_683E8
683D2:  LDR             R0, [SP,#0x34+var_24]; jumptable 0006835A case 105
683D4:  ADDS            R1, R0, #4
683D6:  STR             R1, [SP,#0x34+var_24]
683D8:  MOVS            R1, #1
683DA:  LDR             R0, [R0]
683DC:  STRB.W          R1, [R8,R11]
683E0:  ADD.W           R1, R8, R11
683E4:  STR.W           R0, [R1,#1]
683E8:  ADD.W           R11, R11, #5
683EC:  ADDS            R4, #1
683EE:  B               loc_6834E
683F0:  LDR             R0, [SP,#0x34+var_24]; jumptable 0006835A case 118
683F2:  ADDS            R4, #1
683F4:  LDR             R1, =(dword_1A4190 - 0x6840E)
683F6:  ADDS            R2, R0, #4
683F8:  STR             R2, [SP,#0x34+var_24]
683FA:  MOVS            R2, #3
683FC:  LDR             R0, [R0]
683FE:  STRB.W          R2, [R8,R11]
68402:  MOV             R2, #unk_3FFFC
6840A:  ADD             R1, PC; dword_1A4190
6840C:  AND.W           R2, R2, R9,LSL#2
68410:  STR             R0, [R1,R2]
68412:  LDR             R1, [SP,#0x34+var_30]
68414:  LDR             R0, [R0]
68416:  ADD             R1, R2
68418:  STR             R0, [R1,#0x3C]
6841A:  ADD.W           R0, R8, R11
6841E:  ADD.W           R11, R11, #3
68422:  STRH.W          R9, [R0,#1]
68426:  ADD.W           R9, R9, #1
6842A:  B               loc_6834E
6842C:  MOVS            R0, #0; jumptable 0006835A case 122
6842E:  ADDS            R4, #1
68430:  STRB.W          R0, [R8,R11]
68434:  ADD.W           R11, R11, #1
68438:  B               loc_6834E
6843A:  CBNZ            R1, loc_68482; jumptable 0006835A default case
6843C:  LDR             R1, =(off_114AA8 - 0x6844C)
6843E:  MOVW            R2, #0xB6B9
68442:  LDR             R4, [SP,#0x34+var_34]
68444:  MOVT            R2, #0x32 ; '2'
68448:  ADD             R1, PC; off_114AA8
6844A:  STRH.W          R9, [R7,#var_26]
6844E:  LDR             R1, [R1]; dword_1A4404
68450:  LDR             R0, [R4]
68452:  LDR             R1, [R1]
68454:  STR.W           R8, [R0,#0x14]
68458:  ADD             R1, R2
6845A:  BLX             R1
6845C:  LDR             R2, [R4]
6845E:  MOVS.W          R1, R9,LSL#16
68462:  LDRB.W          R0, [R2,#0xE5]
68466:  BEQ             loc_68488
68468:  LDR             R1, =(dword_1A4190 - 0x68474)
6846A:  ADDS            R2, #0x3C ; '<'
6846C:  UXTH.W          R3, R9
68470:  ADD             R1, PC; dword_1A4190
68472:  LDR.W           R6, [R1],#4
68476:  SUBS            R3, #1
68478:  LDR.W           R5, [R2],#4
6847C:  STR             R5, [R6]
6847E:  BNE             loc_68472
68480:  B               loc_68488
68482:  MOVS            R0, #0; jumptable 0006835A cases 103,104,106-114,116,117,119-121
68484:  STRH.W          R9, [R7,#var_26]
68488:  LDR             R1, [SP,#0x34+var_20]
6848A:  LDR             R2, =(__stack_chk_guard_ptr - 0x68490)
6848C:  ADD             R2, PC; __stack_chk_guard_ptr
6848E:  LDR             R2, [R2]; __stack_chk_guard
68490:  LDR             R2, [R2]
68492:  CMP             R2, R1
68494:  ITTTT EQ
68496:  ADDEQ           SP, SP, #0x18
68498:  POPEQ.W         {R8-R11}
6849C:  POPEQ.W         {R4-R7,LR}
684A0:  ADDEQ           SP, SP, #0xC
684A2:  IT EQ
684A4:  BXEQ            LR
684A6:  BLX             __stack_chk_fail
