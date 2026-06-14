; =========================================================
; Game Engine Function: sub_8732C
; Address            : 0x8732C - 0x87508
; =========================================================

8732C:  PUSH            {R4-R7,LR}
8732E:  ADD             R7, SP, #0xC
87330:  PUSH.W          {R8-R11}
87334:  SUBW            SP, SP, #0x624
87338:  MOV             R10, R0
8733A:  LDR             R0, =(__stack_chk_guard_ptr - 0x87344)
8733C:  MOV             R5, R1
8733E:  MOVS            R4, #0
87340:  ADD             R0, PC; __stack_chk_guard_ptr
87342:  LDR             R0, [R0]; __stack_chk_guard
87344:  LDR             R0, [R0]
87346:  STR.W           R0, [R7,#var_20]
8734A:  STR             R4, [SP,#0x640+var_638]
8734C:  STRD.W          R4, R4, [SP,#0x640+var_640]
87350:  MOV             R0, R10
87352:  BL              sub_8714C
87356:  ADD.W           R8, SP, #0x640+var_420
8735A:  MOV             R9, SP
8735C:  MOVS            R6, #0
8735E:  MOVS            R0, #0x14; unsigned int
87360:  BLX             j__Znwj; operator new(uint)
87364:  LDR.W           R1, [R5,R6,LSL#2]
87368:  STR.W           R0, [R8,R6,LSL#2]
8736C:  STRB            R6, [R0]
8736E:  CMP             R1, #0
87370:  IT EQ
87372:  MOVEQ           R1, #1
87374:  STRD.W          R1, R4, [R0,#4]
87378:  STR             R4, [R0,#0xC]
8737A:  MOV             R1, R0
8737C:  MOV             R2, R9
8737E:  BL              sub_87510
87382:  ADDS            R6, #1
87384:  CMP.W           R6, #0x100
87388:  BNE             loc_8735E
8738A:  MOV             R9, SP
8738C:  LDR             R0, [SP,#0x640+var_63C]; void *
8738E:  CMP             R0, #0
87390:  ITTE NE
87392:  STRNE           R0, [SP,#0x640+var_638]
87394:  MOVNE           R1, R0
87396:  LDREQ           R1, [SP,#0x640+var_638]
87398:  LDR             R6, [SP,#0x640+var_640]
8739A:  LDR             R5, [R1]
8739C:  CBNZ            R6, loc_873A2
8739E:  MOV             R4, R5
873A0:  B               loc_8740C
873A2:  CMP             R6, #1
873A4:  BEQ.W           loc_874EA
873A8:  LDRD.W          R2, R3, [R1,#4]
873AC:  CMP             R1, R0
873AE:  MOV             R0, R1; void *
873B0:  STR             R3, [R2,#8]
873B2:  LDR             R6, [R1,#8]
873B4:  STR             R2, [R6,#4]
873B6:  IT EQ
873B8:  STREQ           R6, [SP,#0x640+var_63C]
873BA:  BLX             j__ZdlPv; operator delete(void *)
873BE:  STR             R6, [SP,#0x640+var_638]
873C0:  LDR             R0, [SP,#0x640+var_640]
873C2:  LDR             R4, [R6]
873C4:  SUBS            R1, R0, #1
873C6:  STR             R1, [SP,#0x640+var_640]
873C8:  BEQ             loc_873E0
873CA:  CMP             R0, #2
873CC:  BNE             loc_873E4
873CE:  LDR             R0, [SP,#0x640+var_63C]; void *
873D0:  CMP             R0, #0
873D2:  IT NE
873D4:  BLXNE           j__ZdlPv; operator delete(void *)
873D8:  MOVS            R6, #0
873DA:  STRD.W          R6, R6, [SP,#0x640+var_63C]
873DE:  B               loc_8740A
873E0:  MOVS            R6, #0
873E2:  B               loc_8740C
873E4:  LDRD.W          R0, R1, [R6,#4]
873E8:  STR             R1, [R0,#8]
873EA:  LDR.W           R11, [R6,#8]
873EE:  LDR             R1, [SP,#0x640+var_63C]
873F0:  STR.W           R0, [R11,#4]
873F4:  MOV             R0, R6; void *
873F6:  CMP             R6, R1
873F8:  IT EQ
873FA:  STREQ.W         R11, [SP,#0x640+var_63C]
873FE:  BLX             j__ZdlPv; operator delete(void *)
87402:  LDR             R0, [SP,#0x640+var_640]
87404:  STR.W           R11, [SP,#0x640+var_638]
87408:  SUBS            R6, R0, #1
8740A:  STR             R6, [SP,#0x640+var_640]
8740C:  MOVS            R0, #0x14; unsigned int
8740E:  BLX             j__Znwj; operator new(uint)
87412:  LDR             R2, [R4,#4]
87414:  LDR             R1, [R5,#4]
87416:  STR             R0, [R5,#0x10]
87418:  STRD.W          R5, R4, [R0,#8]
8741C:  ADD             R1, R2
8741E:  STR             R0, [R4,#0x10]
87420:  STR             R1, [R0,#4]
87422:  CBZ             R6, loc_8742E
87424:  MOV             R1, R0
87426:  MOV             R2, R9
87428:  BL              sub_87510
8742C:  B               loc_8738C
8742E:  MOVS            R1, #0
87430:  STR.W           R0, [R10]
87434:  STR             R1, [R0,#0x10]
87436:  ADD             R0, SP, #0x640+var_634
87438:  BL              sub_86B90
8743C:  ADD             R4, SP, #0x640+var_520
8743E:  ADD             R5, SP, #0x640+var_634
87440:  MOV.W           R9, #0
87444:  LDR.W           R3, [R8,R9,LSL#2]
87448:  MOVS            R2, #0
8744A:  LDR.W           R0, [R10]
8744E:  LDR             R1, [R3,#0x10]
87450:  LDR             R6, [R1,#8]
87452:  SUBS            R3, R6, R3
87454:  UXTH            R6, R2
87456:  IT NE
87458:  MOVNE           R3, #1
8745A:  ADDS            R2, #1
8745C:  STRB            R3, [R4,R6]
8745E:  CMP             R1, R0
87460:  MOV             R3, R1
87462:  BNE             loc_8744E
87464:  LSLS            R0, R2, #0x10
87466:  BNE             loc_87496
87468:  ADD.W           R6, R10, R9,LSL#3
8746C:  ADDS            R1, R6, #4
8746E:  MOV             R0, R5
87470:  BL              sub_87112
87474:  UXTB            R0, R0
87476:  STRH            R0, [R6,#8]
87478:  MOV             R0, R5
8747A:  BL              sub_86C14
8747E:  ADD.W           R9, R9, #1
87482:  CMP.W           R9, #0x100
87486:  BNE             loc_87444
87488:  B               loc_874A4
8748A:  MOV             R0, R5
8748C:  BL              sub_86ECA
87490:  SUBS            R6, #1
87492:  ADDS            R0, R6, #1
87494:  BEQ             loc_87468
87496:  LDRB            R0, [R4,R6]
87498:  CMP             R0, #0
8749A:  BEQ             loc_8748A
8749C:  MOV             R0, R5
8749E:  BL              sub_86F46
874A2:  B               loc_87490
874A4:  ADD             R0, SP, #0x640+var_634
874A6:  BL              sub_86BF8
874AA:  LDR             R0, [SP,#0x640+var_640]
874AC:  CBZ             R0, loc_874CC
874AE:  CMP             R0, #1
874B0:  BNE             loc_874BC
874B2:  LDR             R0, [SP,#0x640+var_63C]; void *
874B4:  CBZ             R0, loc_874CC
874B6:  BLX             j__ZdlPv; operator delete(void *)
874BA:  B               loc_874CC
874BC:  LDR             R0, [SP,#0x640+var_63C]; void *
874BE:  LDR             R4, [R0,#8]
874C0:  BLX             j__ZdlPv; operator delete(void *)
874C4:  LDR             R0, [SP,#0x640+var_63C]
874C6:  CMP             R4, R0
874C8:  MOV             R0, R4
874CA:  BNE             loc_874BE
874CC:  LDR.W           R0, [R7,#var_20]
874D0:  LDR             R1, =(__stack_chk_guard_ptr - 0x874D6)
874D2:  ADD             R1, PC; __stack_chk_guard_ptr
874D4:  LDR             R1, [R1]; __stack_chk_guard
874D6:  LDR             R1, [R1]
874D8:  CMP             R1, R0
874DA:  ITTT EQ
874DC:  ADDWEQ          SP, SP, #0x624
874E0:  POPEQ.W         {R8-R11}
874E4:  POPEQ           {R4-R7,PC}
874E6:  BLX             __stack_chk_fail
874EA:  BLX             j__ZdlPv; operator delete(void *)
874EE:  B               loc_874FE
874F0:  B               loc_874FE
874F2:  B               loc_874FE
874F4:  B               loc_874F8
874F6:  B               loc_874FE
874F8:  ADD             R0, SP, #0x640+var_634
874FA:  BL              sub_86BF8
874FE:  MOV             R0, SP
87500:  BL              sub_875E4
87504:  BLX             j___cxa_end_cleanup
