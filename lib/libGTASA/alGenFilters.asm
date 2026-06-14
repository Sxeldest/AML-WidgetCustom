; =========================================================
; Game Engine Function: alGenFilters
; Address            : 0x254340 - 0x254624
; =========================================================

254340:  PUSH            {R4-R7,LR}
254342:  ADD             R7, SP, #0xC
254344:  PUSH.W          {R8-R11}
254348:  SUB             SP, SP, #0x1C
25434A:  STR             R1, [SP,#0x38+var_28]
25434C:  MOV             R5, R0
25434E:  BLX             j_GetContextRef
254352:  CMP             R0, #0
254354:  BEQ.W           loc_254590
254358:  STR             R0, [SP,#0x38+var_30]
25435A:  ADD.W           R4, R0, #0x50 ; 'P'
25435E:  LDR             R0, =(TrapALError_ptr - 0x254370)
254360:  MOV.W           R9, #1
254364:  LDR.W           R10, =(dword_6D681C - 0x254376)
254368:  LDR.W           R8, =(dword_6D681C - 0x254378)
25436C:  ADD             R0, PC; TrapALError_ptr
25436E:  LDR.W           R11, =(dword_6D681C - 0x25437C)
254372:  ADD             R10, PC; dword_6D681C
254374:  ADD             R8, PC; dword_6D681C
254376:  LDR             R0, [R0]; TrapALError
254378:  ADD             R11, PC; dword_6D681C
25437A:  STRD.W          R0, R4, [SP,#0x38+var_38]
25437E:  STR             R5, [SP,#0x38+var_2C]
254380:  CMP             R5, #0
254382:  BLT.W           loc_2545EC
254386:  CMP             R5, #1
254388:  BLT.W           loc_2545DC
25438C:  LDR             R0, [SP,#0x38+var_30]
25438E:  MOVS            R4, #0
254390:  LDR.W           R0, [R0,#0x88]
254394:  ADDS            R0, #0x88
254396:  STR             R0, [SP,#0x38+var_24]
254398:  MOVS            R0, #1; item_count
25439A:  MOVS            R1, #0x30 ; '0'; item_size
25439C:  BLX             calloc
2543A0:  MOV             R6, R0
2543A2:  CMP             R6, #0
2543A4:  STR             R4, [SP,#0x38+var_20]
2543A6:  BEQ.W           loc_254598
2543AA:  LDR             R0, =(sub_264EEC+1 - 0x2543B0)
2543AC:  ADD             R0, PC; sub_264EEC
2543AE:  STR             R0, [R6,#0xC]
2543B0:  LDR             R0, =(sub_264F34+1 - 0x2543B6)
2543B2:  ADD             R0, PC; sub_264F34
2543B4:  STR             R0, [R6,#0x10]
2543B6:  LDR             R0, =(sub_264F7C+1 - 0x2543BC)
2543B8:  ADD             R0, PC; sub_264F7C
2543BA:  STR             R0, [R6,#0x14]
2543BC:  LDR             R0, =(sub_264FC4+1 - 0x2543C2)
2543BE:  ADD             R0, PC; sub_264FC4
2543C0:  STR             R0, [R6,#0x18]
2543C2:  LDR             R0, =(sub_26500C+1 - 0x2543C8)
2543C4:  ADD             R0, PC; sub_26500C
2543C6:  STR             R0, [R6,#0x1C]
2543C8:  LDR             R0, =(sub_265054+1 - 0x2543CE)
2543CA:  ADD             R0, PC; sub_265054
2543CC:  STR             R0, [R6,#0x20]
2543CE:  LDR             R0, =(sub_26509C+1 - 0x2543D4)
2543D0:  ADD             R0, PC; sub_26509C
2543D2:  STR             R0, [R6,#0x24]
2543D4:  LDR             R0, =(sub_2650E4+1 - 0x2543DA)
2543D6:  ADD             R0, PC; sub_2650E4
2543D8:  STR             R0, [R6,#0x28]
2543DA:  ADD.W           R0, R6, #0x2C ; ','
2543DE:  BLX             j_NewThunkEntry
2543E2:  LDR             R4, [R6,#0x2C]
2543E4:  MOV             R5, R0
2543E6:  CBNZ            R5, loc_25440C
2543E8:  LDR             R0, [SP,#0x38+var_24]
2543EA:  MOV             R1, R4
2543EC:  MOV             R2, R6
2543EE:  BLX             j_InsertUIntMapEntry
2543F2:  LDR             R4, [R6,#0x2C]
2543F4:  MOV             R5, R0
2543F6:  CBNZ            R5, loc_25440C
2543F8:  LDR             R0, [SP,#0x38+var_28]
2543FA:  LDR             R1, [SP,#0x38+var_20]
2543FC:  STR.W           R4, [R0,R1,LSL#2]
254400:  MOV             R4, R1
254402:  ADDS            R4, #1
254404:  LDR             R5, [SP,#0x38+var_2C]
254406:  CMP             R4, R5
254408:  BLT             loc_254398
25440A:  B               loc_2545DC
25440C:  LDR             R2, =(dword_6D681C - 0x254416)
25440E:  DMB.W           ISH
254412:  ADD             R2, PC; dword_6D681C
254414:  LDREX.W         R0, [R2,#0xC]
254418:  STREX.W         R1, R9, [R2,#0xC]
25441C:  CMP             R1, #0
25441E:  BNE             loc_254414
254420:  B               loc_254436
254422:  BLX             sched_yield
254426:  DMB.W           ISH
25442A:  LDREX.W         R0, [R10,#0xC]
25442E:  STREX.W         R1, R9, [R10,#0xC]
254432:  CMP             R1, #0
254434:  BNE             loc_25442A
254436:  CMP             R0, #1
254438:  DMB.W           ISH
25443C:  BEQ             loc_254422
25443E:  LDR             R2, =(dword_6D681C - 0x254448)
254440:  DMB.W           ISH
254444:  ADD             R2, PC; dword_6D681C
254446:  LDREX.W         R0, [R2,#8]
25444A:  STREX.W         R1, R9, [R2,#8]
25444E:  CMP             R1, #0
254450:  BNE             loc_254446
254452:  B               loc_254468
254454:  BLX             sched_yield
254458:  DMB.W           ISH
25445C:  LDREX.W         R0, [R8,#8]
254460:  STREX.W         R1, R9, [R8,#8]
254464:  CMP             R1, #0
254466:  BNE             loc_25445C
254468:  CMP             R0, #1
25446A:  DMB.W           ISH
25446E:  BEQ             loc_254454
254470:  LDR             R3, =(dword_6D681C - 0x25447A)
254472:  DMB.W           ISH
254476:  ADD             R3, PC; dword_6D681C
254478:  LDREX.W         R0, [R3]
25447C:  ADDS            R1, R0, #1
25447E:  STREX.W         R2, R1, [R3]
254482:  CMP             R2, #0
254484:  BNE             loc_254478
254486:  CMP             R0, #0
254488:  DMB.W           ISH
25448C:  BNE             loc_2544C0
25448E:  LDR             R2, =(dword_6D681C - 0x254498)
254490:  DMB.W           ISH
254494:  ADD             R2, PC; dword_6D681C
254496:  LDREX.W         R0, [R2,#0x10]
25449A:  STREX.W         R1, R9, [R2,#0x10]
25449E:  CMP             R1, #0
2544A0:  BNE             loc_254496
2544A2:  B               loc_2544B8
2544A4:  BLX             sched_yield
2544A8:  DMB.W           ISH
2544AC:  LDREX.W         R0, [R11,#0x10]
2544B0:  STREX.W         R1, R9, [R11,#0x10]
2544B4:  CMP             R1, #0
2544B6:  BNE             loc_2544AC
2544B8:  CMP             R0, #1
2544BA:  DMB.W           ISH
2544BE:  BEQ             loc_2544A4
2544C0:  LDR             R1, =(dword_6D681C - 0x2544CC)
2544C2:  MOVS            R3, #0
2544C4:  DMB.W           ISH
2544C8:  ADD             R1, PC; dword_6D681C
2544CA:  LDREX.W         R0, [R1,#8]
2544CE:  STREX.W         R0, R3, [R1,#8]
2544D2:  CMP             R0, #0
2544D4:  BNE             loc_2544CA
2544D6:  LDR             R1, =(dword_6D681C - 0x2544E4)
2544D8:  DMB.W           ISH
2544DC:  DMB.W           ISH
2544E0:  ADD             R1, PC; dword_6D681C
2544E2:  LDREX.W         R0, [R1,#0xC]
2544E6:  STREX.W         R0, R3, [R1,#0xC]
2544EA:  CMP             R0, #0
2544EC:  BNE             loc_2544E2
2544EE:  LDR             R0, =(dword_6D6830 - 0x2544F8)
2544F0:  DMB.W           ISH
2544F4:  ADD             R0, PC; dword_6D6830
2544F6:  LDR             R1, [R0]
2544F8:  SUBS            R0, R4, #1
2544FA:  LDR             R4, =(dword_6D681C - 0x254502)
2544FC:  CMP             R0, R1
2544FE:  ADD             R4, PC; dword_6D681C
254500:  BCS             loc_254520
254502:  LDR             R1, =(dword_6D6834 - 0x254508)
254504:  ADD             R1, PC; dword_6D6834
254506:  LDR             R1, [R1]
254508:  DMB.W           ISH
25450C:  ADD.W           R0, R1, R0,LSL#2
254510:  LDREX.W         R1, [R0]
254514:  STREX.W         R1, R3, [R0]
254518:  CMP             R1, #0
25451A:  BNE             loc_254510
25451C:  DMB.W           ISH
254520:  DMB.W           ISH
254524:  LDREX.W         R0, [R4]
254528:  SUBS            R1, R0, #1
25452A:  STREX.W         R2, R1, [R4]
25452E:  CMP             R2, #0
254530:  BNE             loc_254524
254532:  CMP             R0, #1
254534:  DMB.W           ISH
254538:  BNE             loc_254552
25453A:  LDR             R1, =(dword_6D681C - 0x254544)
25453C:  DMB.W           ISH
254540:  ADD             R1, PC; dword_6D681C
254542:  LDREX.W         R0, [R1,#0x10]
254546:  STREX.W         R0, R3, [R1,#0x10]
25454A:  CMP             R0, #0
25454C:  BNE             loc_254542
25454E:  DMB.W           ISH
254552:  MOV             R0, R6; p
254554:  BLX             free
254558:  LDR             R0, [SP,#0x38+var_38]
25455A:  LDRB            R0, [R0]
25455C:  CBZ             R0, loc_254564
25455E:  MOVS            R0, #5; sig
254560:  BLX             raise
254564:  LDR             R4, [SP,#0x38+var_34]
254566:  LDREX.W         R0, [R4]
25456A:  CBNZ            R0, loc_25457E
25456C:  DMB.W           ISH
254570:  STREX.W         R0, R5, [R4]
254574:  CBZ             R0, loc_254582
254576:  LDREX.W         R0, [R4]
25457A:  CMP             R0, #0
25457C:  BEQ             loc_254570
25457E:  CLREX.W
254582:  DMB.W           ISH
254586:  CMP             R5, #0
254588:  LDR             R5, [SP,#0x38+var_2C]
25458A:  BEQ.W           loc_254380
25458E:  B               loc_2545D0
254590:  ADD             SP, SP, #0x1C
254592:  POP.W           {R8-R11}
254596:  POP             {R4-R7,PC}
254598:  LDR             R0, =(TrapALError_ptr - 0x25459E)
25459A:  ADD             R0, PC; TrapALError_ptr
25459C:  LDR             R0, [R0]; TrapALError
25459E:  LDRB            R0, [R0]
2545A0:  CMP             R0, #0
2545A2:  ITT NE
2545A4:  MOVNE           R0, #5; sig
2545A6:  BLXNE           raise
2545AA:  LDR             R2, [SP,#0x38+var_34]
2545AC:  LDREX.W         R0, [R2]
2545B0:  CBNZ            R0, loc_2545C8
2545B2:  MOVW            R0, #0xA005
2545B6:  DMB.W           ISH
2545BA:  STREX.W         R1, R0, [R2]
2545BE:  CBZ             R1, loc_2545CC
2545C0:  LDREX.W         R1, [R2]
2545C4:  CMP             R1, #0
2545C6:  BEQ             loc_2545BA
2545C8:  CLREX.W
2545CC:  DMB.W           ISH
2545D0:  LDR             R0, [SP,#0x38+var_20]
2545D2:  CMP             R0, #1
2545D4:  BLT             loc_2545DC
2545D6:  LDR             R1, [SP,#0x38+var_28]
2545D8:  BLX             j_alDeleteFilters
2545DC:  LDR             R0, [SP,#0x38+var_30]
2545DE:  ADD             SP, SP, #0x1C
2545E0:  POP.W           {R8-R11}
2545E4:  POP.W           {R4-R7,LR}
2545E8:  B.W             ALCcontext_DecRef
2545EC:  LDR             R0, =(TrapALError_ptr - 0x2545F2)
2545EE:  ADD             R0, PC; TrapALError_ptr
2545F0:  LDR             R0, [R0]; TrapALError
2545F2:  LDRB            R0, [R0]
2545F4:  CMP             R0, #0
2545F6:  ITT NE
2545F8:  MOVNE           R0, #5; sig
2545FA:  BLXNE           raise
2545FE:  LDREX.W         R0, [R4]
254602:  CBNZ            R0, loc_25461A
254604:  MOVW            R0, #0xA003
254608:  DMB.W           ISH
25460C:  STREX.W         R1, R0, [R4]
254610:  CBZ             R1, loc_25461E
254612:  LDREX.W         R1, [R4]
254616:  CMP             R1, #0
254618:  BEQ             loc_25460C
25461A:  CLREX.W
25461E:  DMB.W           ISH
254622:  B               loc_2545DC
