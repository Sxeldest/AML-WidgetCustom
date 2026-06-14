; =========================================================
; Game Engine Function: sub_10427C
; Address            : 0x10427C - 0x104A66
; =========================================================

10427C:  PUSH            {R4-R7,LR}
10427E:  ADD             R7, SP, #0xC
104280:  PUSH.W          {R8}
104284:  SUB             SP, SP, #0x10
104286:  MOV             R4, R0
104288:  LDR.W           R0, =(__stack_chk_guard_ptr - 0x104292)
10428C:  MOV             R5, R1
10428E:  ADD             R0, PC; __stack_chk_guard_ptr
104290:  LDR             R0, [R0]; __stack_chk_guard
104292:  LDR             R0, [R0]
104294:  STR             R0, [SP,#0x20+var_14]
104296:  LDRD.W          R1, R0, [R4]
10429A:  SUBS            R2, R0, R1
10429C:  BEQ.W           loc_104912
1042A0:  LDRB            R0, [R1]
1042A2:  SUB.W           R3, R0, #0x61 ; 'a'; switch 22 cases
1042A6:  MOVS            R0, #0
1042A8:  CMP             R3, #0x15
1042AA:  BHI.W           def_1042AE; jumptable 001042AE default case, cases 98,102,104,106,107,116,117
1042AE:  TBH.W           [PC,R3,LSL#1]; switch jump
1042B2:  DCW 0x16; jump table for switch statement
1042B4:  DCW 0x331
1042B6:  DCW 0xDB
1042B8:  DCW 0x33
1042BA:  DCW 0xFA
1042BC:  DCW 0x331
1042BE:  DCW 0x115
1042C0:  DCW 0x331
1042C2:  DCW 0x5B
1042C4:  DCW 0x331
1042C6:  DCW 0x331
1042C8:  DCW 0x12D
1042CA:  DCW 0x14E
1042CC:  DCW 0x160
1042CE:  DCW 0x187
1042D0:  DCW 0x70
1042D2:  DCW 0x93
1042D4:  DCW 0xA8
1042D6:  DCW 0xC6
1042D8:  DCW 0x331
1042DA:  DCW 0x331
1042DC:  DCW 0x1A2
1042DE:  CMP             R2, #2; jumptable 001042AE case 97
1042E0:  BCC.W           loc_104912
1042E4:  LDRB            R0, [R1,#1]
1042E6:  CMP             R0, #0x4E ; 'N'
1042E8:  BEQ.W           loc_104834
1042EC:  CMP             R0, #0x53 ; 'S'
1042EE:  BEQ.W           loc_10484C
1042F2:  CMP             R0, #0x6E ; 'n'
1042F4:  IT NE
1042F6:  CMPNE           R0, #0x64 ; 'd'
1042F8:  BNE.W           loc_104730
1042FC:  ADDS            R0, R1, #2
1042FE:  STR             R0, [R4]
104300:  LDR             R0, [SP,#0x20+var_14]
104302:  LDR.W           R1, =(__stack_chk_guard_ptr - 0x10430A)
104306:  ADD             R1, PC; __stack_chk_guard_ptr
104308:  LDR             R1, [R1]; __stack_chk_guard
10430A:  LDR             R1, [R1]
10430C:  CMP             R1, R0
10430E:  BNE.W           loc_10492A
104312:  LDR             R1, =(aOperator - 0x104318); "operator&" ...
104314:  ADD             R1, PC; "operator&"
104316:  B               loc_1049E2
104318:  CMP             R2, #2; jumptable 001042AE case 100
10431A:  BCC.W           loc_104912
10431E:  LDRB            R0, [R1,#1]
104320:  CMP             R0, #0x56 ; 'V'
104322:  BEQ.W           loc_104864
104326:  CMP             R0, #0x76 ; 'v'
104328:  BEQ.W           loc_10487C
10432C:  CMP             R0, #0x65 ; 'e'
10432E:  BEQ.W           loc_104640
104332:  CMP             R0, #0x6C ; 'l'
104334:  BEQ.W           loc_104894
104338:  CMP             R0, #0x61 ; 'a'
10433A:  BNE.W           loc_104912
10433E:  ADDS            R0, R1, #2
104340:  STR             R0, [R4]
104342:  LDR             R0, [SP,#0x20+var_14]
104344:  LDR.W           R1, =(__stack_chk_guard_ptr - 0x10434C)
104348:  ADD             R1, PC; __stack_chk_guard_ptr
10434A:  LDR             R1, [R1]; __stack_chk_guard
10434C:  LDR             R1, [R1]
10434E:  CMP             R1, R0
104350:  BNE.W           loc_10492A
104354:  LDR             R1, =(aOperatorDelete - 0x10435C); "operator delete[]" ...
104356:  MOV             R0, R4
104358:  ADD             R1, PC; "operator delete[]"
10435A:  ADD             SP, SP, #0x10
10435C:  POP.W           {R8}
104360:  POP.W           {R4-R7,LR}
104364:  B.W             sub_104C64
104368:  CMP             R2, #2; jumptable 001042AE case 105
10436A:  BCC.W           loc_104912
10436E:  LDRB            R0, [R1,#1]
104370:  CMP             R0, #0x78 ; 'x'
104372:  BNE.W           loc_104912
104376:  ADDS            R0, R1, #2
104378:  STR             R0, [R4]
10437A:  LDR             R0, [SP,#0x20+var_14]
10437C:  LDR.W           R1, =(__stack_chk_guard_ptr - 0x104384)
104380:  ADD             R1, PC; __stack_chk_guard_ptr
104382:  LDR             R1, [R1]; __stack_chk_guard
104384:  LDR             R1, [R1]
104386:  CMP             R1, R0
104388:  BNE.W           loc_10492A
10438C:  LDR             R1, =(aOperator_0 - 0x104392); "operator[]" ...
10438E:  ADD             R1, PC; "operator[]"
104390:  B               loc_104A4A
104392:  CMP             R2, #2; jumptable 001042AE case 112
104394:  BCC.W           loc_104912
104398:  LDRB            R3, [R1,#1]
10439A:  MOVS            R0, #0
10439C:  SUB.W           R2, R3, #0x6C ; 'l'; switch 9 cases
1043A0:  CMP             R2, #8
1043A2:  BHI.W           def_1043A6; jumptable 001043A6 default case
1043A6:  TBH.W           [PC,R2,LSL#1]; switch jump
1043AA:  DCW 9; jump table for switch statement
1043AC:  DCW 0x324
1043AE:  DCW 0x2B5
1043B0:  DCW 0x2B5
1043B2:  DCW 0x337
1043B4:  DCW 0x2B5
1043B6:  DCW 0x2B5
1043B8:  DCW 9
1043BA:  DCW 0x344
1043BC:  ADDS            R0, R1, #2; jumptable 001043A6 cases 108,115
1043BE:  STR             R0, [R4]
1043C0:  LDR             R0, [SP,#0x20+var_14]
1043C2:  LDR.W           R1, =(__stack_chk_guard_ptr - 0x1043CA)
1043C6:  ADD             R1, PC; __stack_chk_guard_ptr
1043C8:  LDR             R1, [R1]; __stack_chk_guard
1043CA:  LDR             R1, [R1]
1043CC:  CMP             R1, R0
1043CE:  BNE.W           loc_10492A
1043D2:  LDR             R1, =(aOperator_1 - 0x1043D8); "operator+" ...
1043D4:  ADD             R1, PC; "operator+"
1043D6:  B               loc_1049E2
1043D8:  CMP             R2, #2; jumptable 001042AE case 113
1043DA:  BCC.W           loc_104912
1043DE:  LDRB            R0, [R1,#1]
1043E0:  CMP             R0, #0x75 ; 'u'
1043E2:  BNE.W           loc_104912
1043E6:  ADDS            R0, R1, #2
1043E8:  STR             R0, [R4]
1043EA:  LDR             R0, [SP,#0x20+var_14]
1043EC:  LDR.W           R1, =(__stack_chk_guard_ptr - 0x1043F4)
1043F0:  ADD             R1, PC; __stack_chk_guard_ptr
1043F2:  LDR             R1, [R1]; __stack_chk_guard
1043F4:  LDR             R1, [R1]
1043F6:  CMP             R1, R0
1043F8:  BNE.W           loc_10492A
1043FC:  LDR             R1, =(aOperator_2 - 0x104402); "operator?" ...
1043FE:  ADD             R1, PC; "operator?"
104400:  B               loc_1049E2
104402:  CMP             R2, #2; jumptable 001042AE case 114
104404:  BCC.W           loc_104912
104408:  LDRB            R0, [R1,#1]
10440A:  CMP             R0, #0x4D ; 'M'
10440C:  BEQ.W           loc_104772
104410:  CMP             R0, #0x53 ; 'S'
104412:  BEQ.W           loc_10478E
104416:  CMP             R0, #0x73 ; 's'
104418:  BEQ.W           loc_1047AA
10441C:  CMP             R0, #0x6D ; 'm'
10441E:  BNE.W           loc_104912
104422:  ADDS            R0, R1, #2
104424:  STR             R0, [R4]
104426:  LDR             R0, [SP,#0x20+var_14]
104428:  LDR.W           R1, =(__stack_chk_guard_ptr - 0x104430)
10442C:  ADD             R1, PC; __stack_chk_guard_ptr
10442E:  LDR             R1, [R1]; __stack_chk_guard
104430:  LDR             R1, [R1]
104432:  CMP             R1, R0
104434:  BNE.W           loc_10492A
104438:  LDR             R1, =(aOperator_3 - 0x10443E); "operator%" ...
10443A:  ADD             R1, PC; "operator%"
10443C:  B               loc_1049E2
10443E:  CMP             R2, #2; jumptable 001042AE case 115
104440:  BCC.W           loc_104912
104444:  LDRB            R0, [R1,#1]
104446:  CMP             R0, #0x73 ; 's'
104448:  BNE.W           loc_104912
10444C:  ADDS            R0, R1, #2
10444E:  STR             R0, [R4]
104450:  LDR             R0, [SP,#0x20+var_14]
104452:  LDR.W           R1, =(__stack_chk_guard_ptr - 0x10445A)
104456:  ADD             R1, PC; __stack_chk_guard_ptr
104458:  LDR             R1, [R1]; __stack_chk_guard
10445A:  LDR             R1, [R1]
10445C:  CMP             R1, R0
10445E:  BNE.W           loc_10492A
104462:  LDR             R1, =(aOperator_4 - 0x104468); "operator<=>" ...
104464:  ADD             R1, PC; "operator<=>"
104466:  B               loc_104A08
104468:  CMP             R2, #2; jumptable 001042AE case 99
10446A:  BCC.W           loc_104912
10446E:  LDRB            R2, [R1,#1]
104470:  MOVS            R0, #0
104472:  CMP             R2, #0x76 ; 'v'
104474:  BEQ.W           loc_1047FA
104478:  CMP             R2, #0x6D ; 'm'
10447A:  BEQ.W           loc_1047C6
10447E:  CMP             R2, #0x6F ; 'o'
104480:  BEQ.W           loc_1047E0
104484:  CMP             R2, #0x6C ; 'l'
104486:  BNE.W           def_1042AE; jumptable 001042AE default case, cases 98,102,104,106,107,116,117
10448A:  ADDS            R0, R1, #2
10448C:  STR             R0, [R4]
10448E:  LDR             R0, [SP,#0x20+var_14]
104490:  LDR.W           R1, =(__stack_chk_guard_ptr - 0x104498)
104494:  ADD             R1, PC; __stack_chk_guard_ptr
104496:  LDR             R1, [R1]; __stack_chk_guard
104498:  LDR             R1, [R1]
10449A:  CMP             R1, R0
10449C:  BNE.W           loc_10492A
1044A0:  LDR             R1, =(aOperator_5 - 0x1044A6); "operator()" ...
1044A2:  ADD             R1, PC; "operator()"
1044A4:  B               loc_104A4A
1044A6:  CMP             R2, #2; jumptable 001042AE case 101
1044A8:  BCC.W           loc_104912
1044AC:  LDRB            R0, [R1,#1]
1044AE:  CMP             R0, #0x4F ; 'O'
1044B0:  BEQ.W           loc_104678
1044B4:  CMP             R0, #0x71 ; 'q'
1044B6:  BEQ.W           loc_104694
1044BA:  CMP             R0, #0x6F ; 'o'
1044BC:  BNE.W           loc_104912
1044C0:  ADDS            R0, R1, #2
1044C2:  STR             R0, [R4]
1044C4:  LDR             R0, [SP,#0x20+var_14]
1044C6:  LDR.W           R1, =(__stack_chk_guard_ptr - 0x1044CE)
1044CA:  ADD             R1, PC; __stack_chk_guard_ptr
1044CC:  LDR             R1, [R1]; __stack_chk_guard
1044CE:  LDR             R1, [R1]
1044D0:  CMP             R1, R0
1044D2:  BNE.W           loc_10492A
1044D6:  LDR             R1, =(aOperator_6 - 0x1044DC); "operator^" ...
1044D8:  ADD             R1, PC; "operator^"
1044DA:  B               loc_1049E2
1044DC:  CMP             R2, #2; jumptable 001042AE case 103
1044DE:  BCC.W           loc_104912
1044E2:  LDRB            R0, [R1,#1]
1044E4:  CMP             R0, #0x74 ; 't'
1044E6:  BEQ.W           loc_104624
1044EA:  CMP             R0, #0x65 ; 'e'
1044EC:  BNE.W           loc_104912
1044F0:  ADDS            R0, R1, #2
1044F2:  STR             R0, [R4]
1044F4:  LDR             R0, [SP,#0x20+var_14]
1044F6:  LDR.W           R1, =(__stack_chk_guard_ptr - 0x1044FE)
1044FA:  ADD             R1, PC; __stack_chk_guard_ptr
1044FC:  LDR             R1, [R1]; __stack_chk_guard
1044FE:  LDR             R1, [R1]
104500:  CMP             R1, R0
104502:  BNE.W           loc_10492A
104506:  LDR             R1, =(aOperator_7 - 0x10450C); "operator>=" ...
104508:  ADD             R1, PC; "operator>="
10450A:  B               loc_104A4A
10450C:  CMP             R2, #2; jumptable 001042AE case 108
10450E:  BCC.W           loc_104912
104512:  LDRB            R0, [R1,#1]
104514:  CMP             R0, #0x53 ; 'S'
104516:  BEQ.W           loc_1048BA
10451A:  CMP             R0, #0x74 ; 't'
10451C:  BEQ.W           loc_1048D2
104520:  CMP             R0, #0x69 ; 'i'
104522:  BEQ.W           loc_1048EA
104526:  CMP             R0, #0x73 ; 's'
104528:  BEQ.W           loc_10492E
10452C:  CMP             R0, #0x65 ; 'e'
10452E:  BNE.W           loc_104912
104532:  ADDS            R0, R1, #2
104534:  STR             R0, [R4]
104536:  LDR             R0, [SP,#0x20+var_14]
104538:  LDR.W           R1, =(__stack_chk_guard_ptr - 0x104540)
10453C:  ADD             R1, PC; __stack_chk_guard_ptr
10453E:  LDR             R1, [R1]; __stack_chk_guard
104540:  LDR             R1, [R1]
104542:  CMP             R1, R0
104544:  BNE.W           loc_10492A
104548:  LDR             R1, =(aOperator_8 - 0x10454E); "operator<=" ...
10454A:  ADD             R1, PC; "operator<="
10454C:  B               loc_104A4A
10454E:  CMP             R2, #2; jumptable 001042AE case 109
104550:  BCC.W           loc_104912
104554:  LDRB            R0, [R1,#1]
104556:  CMP             R0, #0x49 ; 'I'
104558:  BEQ.W           loc_104946
10455C:  CMP             R0, #0x4C ; 'L'
10455E:  BEQ.W           loc_10495E
104562:  CMP             R0, #0x6D ; 'm'
104564:  BEQ.W           loc_104976
104568:  CMP             R0, #0x6C ; 'l'
10456A:  BEQ             loc_104640
10456C:  CMP             R0, #0x69 ; 'i'
10456E:  BEQ             loc_10465C
104570:  B               loc_104912
104572:  CMP             R2, #2; jumptable 001042AE case 110
104574:  BCC.W           loc_104912
104578:  LDRB            R0, [R1,#1]
10457A:  CMP             R0, #0x77 ; 'w'
10457C:  BEQ.W           loc_10498E
104580:  CMP             R0, #0x65 ; 'e'
104582:  BEQ.W           loc_1049B4
104586:  CMP             R0, #0x67 ; 'g'
104588:  BEQ             loc_10465C
10458A:  CMP             R0, #0x74 ; 't'
10458C:  BEQ.W           loc_1049CC
104590:  CMP             R0, #0x61 ; 'a'
104592:  BNE.W           loc_104912
104596:  ADDS            R0, R1, #2
104598:  STR             R0, [R4]
10459A:  LDR             R0, [SP,#0x20+var_14]
10459C:  LDR.W           R1, =(__stack_chk_guard_ptr - 0x1045A4)
1045A0:  ADD             R1, PC; __stack_chk_guard_ptr
1045A2:  LDR             R1, [R1]; __stack_chk_guard
1045A4:  LDR             R1, [R1]
1045A6:  CMP             R1, R0
1045A8:  BNE.W           loc_10492A
1045AC:  LDR             R1, =(aOperatorNew - 0x1045B4); "operator new[]" ...
1045AE:  MOV             R0, R4
1045B0:  ADD             R1, PC; "operator new[]"
1045B2:  ADD             SP, SP, #0x10
1045B4:  POP.W           {R8}
1045B8:  POP.W           {R4-R7,LR}
1045BC:  B.W             sub_104CD4
1045C0:  CMP             R2, #2; jumptable 001042AE case 111
1045C2:  BCC.W           loc_104912
1045C6:  LDRB            R0, [R1,#1]
1045C8:  CMP             R0, #0x52 ; 'R'
1045CA:  BEQ.W           loc_1046F8
1045CE:  CMP             R0, #0x72 ; 'r'
1045D0:  BEQ.W           loc_104714
1045D4:  CMP             R0, #0x6F ; 'o'
1045D6:  BNE.W           loc_104912
1045DA:  ADDS            R0, R1, #2
1045DC:  STR             R0, [R4]
1045DE:  LDR             R0, [SP,#0x20+var_14]
1045E0:  LDR.W           R1, =(__stack_chk_guard_ptr - 0x1045E8)
1045E4:  ADD             R1, PC; __stack_chk_guard_ptr
1045E6:  LDR             R1, [R1]; __stack_chk_guard
1045E8:  LDR             R1, [R1]
1045EA:  CMP             R1, R0
1045EC:  BNE.W           loc_10492A
1045F0:  LDR             R1, =(aOperator_9 - 0x1045F6); "operator||" ...
1045F2:  ADD             R1, PC; "operator||"
1045F4:  B               loc_104A4A
1045F6:  CMP             R2, #2; jumptable 001042AE case 118
1045F8:  BCC.W           loc_104912
1045FC:  LDRB            R0, [R1,#1]
1045FE:  SUBS            R0, #0x3A ; ':'
104600:  CMN.W           R0, #0xA
104604:  BCC.W           loc_104912
104608:  ADDS            R0, R1, #2
10460A:  STR             R0, [R4]
10460C:  MOV             R0, R4
10460E:  BL              sub_104164
104612:  CMP             R0, #0
104614:  STR             R0, [SP,#0x20+var_1C]
104616:  BEQ.W           loc_104912
10461A:  ADD             R1, SP, #0x20+var_1C
10461C:  MOV             R0, R4
10461E:  BL              sub_104C38
104622:  B               def_1042AE; jumptable 001042AE default case, cases 98,102,104,106,107,116,117
104624:  ADDS            R0, R1, #2
104626:  STR             R0, [R4]
104628:  LDR             R0, [SP,#0x20+var_14]
10462A:  LDR.W           R1, =(__stack_chk_guard_ptr - 0x104632)
10462E:  ADD             R1, PC; __stack_chk_guard_ptr
104630:  LDR             R1, [R1]; __stack_chk_guard
104632:  LDR             R1, [R1]
104634:  CMP             R1, R0
104636:  BNE.W           loc_10492A
10463A:  LDR             R1, =(aOperator_10 - 0x104640); "operator>" ...
10463C:  ADD             R1, PC; "operator>"
10463E:  B               loc_1049E2
104640:  ADDS            R0, R1, #2
104642:  STR             R0, [R4]
104644:  LDR             R0, [SP,#0x20+var_14]
104646:  LDR.W           R1, =(__stack_chk_guard_ptr - 0x10464E)
10464A:  ADD             R1, PC; __stack_chk_guard_ptr
10464C:  LDR             R1, [R1]; __stack_chk_guard
10464E:  LDR             R1, [R1]
104650:  CMP             R1, R0
104652:  BNE.W           loc_10492A
104656:  LDR             R1, =(aOperator_11 - 0x10465C); "operator*" ...
104658:  ADD             R1, PC; "operator*"
10465A:  B               loc_1049E2
10465C:  ADDS            R0, R1, #2
10465E:  STR             R0, [R4]
104660:  LDR             R0, [SP,#0x20+var_14]
104662:  LDR.W           R1, =(__stack_chk_guard_ptr - 0x10466A)
104666:  ADD             R1, PC; __stack_chk_guard_ptr
104668:  LDR             R1, [R1]; __stack_chk_guard
10466A:  LDR             R1, [R1]
10466C:  CMP             R1, R0
10466E:  BNE.W           loc_10492A
104672:  LDR             R1, =(aOperator_12 - 0x104678); "operator-" ...
104674:  ADD             R1, PC; "operator-"
104676:  B               loc_1049E2
104678:  ADDS            R0, R1, #2
10467A:  STR             R0, [R4]
10467C:  LDR             R0, [SP,#0x20+var_14]
10467E:  LDR.W           R1, =(__stack_chk_guard_ptr - 0x104686)
104682:  ADD             R1, PC; __stack_chk_guard_ptr
104684:  LDR             R1, [R1]; __stack_chk_guard
104686:  LDR             R1, [R1]
104688:  CMP             R1, R0
10468A:  BNE.W           loc_10492A
10468E:  LDR             R1, =(aOperator_13 - 0x104694); "operator^=" ...
104690:  ADD             R1, PC; "operator^="
104692:  B               loc_104A4A
104694:  ADDS            R0, R1, #2
104696:  STR             R0, [R4]
104698:  LDR             R0, [SP,#0x20+var_14]
10469A:  LDR.W           R1, =(__stack_chk_guard_ptr - 0x1046A2)
10469E:  ADD             R1, PC; __stack_chk_guard_ptr
1046A0:  LDR             R1, [R1]; __stack_chk_guard
1046A2:  LDR             R1, [R1]
1046A4:  CMP             R1, R0
1046A6:  BNE.W           loc_10492A
1046AA:  LDR             R1, =(aOperator_14 - 0x1046B0); "operator==" ...
1046AC:  ADD             R1, PC; "operator=="
1046AE:  B               loc_104A4A
1046B0:  DCD aOperator - 0x104318
1046B4:  DCD aOperatorDelete - 0x10435C
1046B8:  DCD aOperator_0 - 0x104392
1046BC:  DCD aOperator_1 - 0x1043D8
1046C0:  DCD aOperator_2 - 0x104402
1046C4:  DCD aOperator_3 - 0x10443E
1046C8:  DCD aOperator_4 - 0x104468
1046CC:  DCD aOperator_5 - 0x1044A6
1046D0:  DCD aOperator_6 - 0x1044DC
1046D4:  DCD aOperator_7 - 0x10450C
1046D8:  DCD aOperator_8 - 0x10454E
1046DC:  DCD aOperatorNew - 0x1045B4
1046E0:  DCD aOperator_9 - 0x1045F6
1046E4:  DCD aOperator_10 - 0x104640
1046E8:  DCD aOperator_11 - 0x10465C
1046EC:  DCD aOperator_12 - 0x104678
1046F0:  DCD aOperator_13 - 0x104694
1046F4:  DCD aOperator_14 - 0x1046B0
1046F8:  ADDS            R0, R1, #2
1046FA:  STR             R0, [R4]
1046FC:  LDR             R0, [SP,#0x20+var_14]
1046FE:  LDR.W           R1, =(__stack_chk_guard_ptr - 0x104706)
104702:  ADD             R1, PC; __stack_chk_guard_ptr
104704:  LDR             R1, [R1]; __stack_chk_guard
104706:  LDR             R1, [R1]
104708:  CMP             R1, R0
10470A:  BNE.W           loc_10492A
10470E:  LDR             R1, =(aOperator_15 - 0x104714); "operator|=" ...
104710:  ADD             R1, PC; "operator|="
104712:  B               loc_104A4A
104714:  ADDS            R0, R1, #2
104716:  STR             R0, [R4]
104718:  LDR             R0, [SP,#0x20+var_14]
10471A:  LDR.W           R1, =(__stack_chk_guard_ptr - 0x104722)
10471E:  ADD             R1, PC; __stack_chk_guard_ptr
104720:  LDR             R1, [R1]; __stack_chk_guard
104722:  LDR             R1, [R1]
104724:  CMP             R1, R0
104726:  BNE.W           loc_10492A
10472A:  LDR             R1, =(aOperator_16 - 0x104730); "operator|" ...
10472C:  ADD             R1, PC; "operator|"
10472E:  B               loc_1049E2
104730:  CMP             R0, #0x61 ; 'a'
104732:  BNE.W           loc_104912
104736:  ADDS            R0, R1, #2
104738:  STR             R0, [R4]
10473A:  LDR             R0, [SP,#0x20+var_14]
10473C:  LDR             R1, =(__stack_chk_guard_ptr - 0x104742)
10473E:  ADD             R1, PC; __stack_chk_guard_ptr
104740:  LDR             R1, [R1]; __stack_chk_guard
104742:  LDR             R1, [R1]
104744:  CMP             R1, R0
104746:  BNE.W           loc_10492A
10474A:  LDR             R1, =(aOperator_17 - 0x104750); "operator&&" ...
10474C:  ADD             R1, PC; "operator&&"
10474E:  B               loc_104A4A
104750:  CMP             R3, #0x4C ; 'L'; jumptable 001043A6 default case
104752:  BNE.W           def_1042AE; jumptable 001042AE default case, cases 98,102,104,106,107,116,117
104756:  ADDS            R0, R1, #2
104758:  STR             R0, [R4]
10475A:  LDR             R0, [SP,#0x20+var_14]
10475C:  LDR.W           R1, =(__stack_chk_guard_ptr - 0x104764)
104760:  ADD             R1, PC; __stack_chk_guard_ptr
104762:  LDR             R1, [R1]; __stack_chk_guard
104764:  LDR             R1, [R1]
104766:  CMP             R1, R0
104768:  BNE.W           loc_10492A
10476C:  LDR             R1, =(aOperator_18 - 0x104772); "operator+=" ...
10476E:  ADD             R1, PC; "operator+="
104770:  B               loc_104A4A
104772:  ADDS            R0, R1, #2
104774:  STR             R0, [R4]
104776:  LDR             R0, [SP,#0x20+var_14]
104778:  LDR.W           R1, =(__stack_chk_guard_ptr - 0x104780)
10477C:  ADD             R1, PC; __stack_chk_guard_ptr
10477E:  LDR             R1, [R1]; __stack_chk_guard
104780:  LDR             R1, [R1]
104782:  CMP             R1, R0
104784:  BNE.W           loc_10492A
104788:  LDR             R1, =(aOperator_19 - 0x10478E); "operator%=" ...
10478A:  ADD             R1, PC; "operator%="
10478C:  B               loc_104A4A
10478E:  ADDS            R0, R1, #2
104790:  STR             R0, [R4]
104792:  LDR             R0, [SP,#0x20+var_14]
104794:  LDR.W           R1, =(__stack_chk_guard_ptr - 0x10479C)
104798:  ADD             R1, PC; __stack_chk_guard_ptr
10479A:  LDR             R1, [R1]; __stack_chk_guard
10479C:  LDR             R1, [R1]
10479E:  CMP             R1, R0
1047A0:  BNE.W           loc_10492A
1047A4:  LDR             R1, =(aOperator_20 - 0x1047AA); "operator>>=" ...
1047A6:  ADD             R1, PC; "operator>>="
1047A8:  B               loc_104A08
1047AA:  ADDS            R0, R1, #2
1047AC:  STR             R0, [R4]
1047AE:  LDR             R0, [SP,#0x20+var_14]
1047B0:  LDR.W           R1, =(__stack_chk_guard_ptr - 0x1047B8)
1047B4:  ADD             R1, PC; __stack_chk_guard_ptr
1047B6:  LDR             R1, [R1]; __stack_chk_guard
1047B8:  LDR             R1, [R1]
1047BA:  CMP             R1, R0
1047BC:  BNE.W           loc_10492A
1047C0:  LDR             R1, =(aOperator_21 - 0x1047C6); "operator>>" ...
1047C2:  ADD             R1, PC; "operator>>"
1047C4:  B               loc_104A4A
1047C6:  ADDS            R0, R1, #2
1047C8:  STR             R0, [R4]
1047CA:  LDR             R0, [SP,#0x20+var_14]
1047CC:  LDR             R1, =(__stack_chk_guard_ptr - 0x1047D2)
1047CE:  ADD             R1, PC; __stack_chk_guard_ptr
1047D0:  LDR             R1, [R1]; __stack_chk_guard
1047D2:  LDR             R1, [R1]
1047D4:  CMP             R1, R0
1047D6:  BNE.W           loc_10492A
1047DA:  LDR             R1, =(aOperator_22 - 0x1047E0); "operator," ...
1047DC:  ADD             R1, PC; "operator,"
1047DE:  B               loc_1049E2
1047E0:  ADDS            R0, R1, #2
1047E2:  STR             R0, [R4]
1047E4:  LDR             R0, [SP,#0x20+var_14]
1047E6:  LDR             R1, =(__stack_chk_guard_ptr - 0x1047EC)
1047E8:  ADD             R1, PC; __stack_chk_guard_ptr
1047EA:  LDR             R1, [R1]; __stack_chk_guard
1047EC:  LDR             R1, [R1]
1047EE:  CMP             R1, R0
1047F0:  BNE.W           loc_10492A
1047F4:  LDR             R1, =(aOperator_23 - 0x1047FA); "operator~" ...
1047F6:  ADD             R1, PC; "operator~"
1047F8:  B               loc_1049E2
1047FA:  LDRB.W          R8, [R4,#0x184]
1047FE:  ADDS            R1, #2
104800:  LDRB.W          R6, [R4,#0x185]
104804:  STRB.W          R0, [R4,#0x184]
104808:  ORRS.W          R0, R5, R6
10480C:  STR             R1, [R4]
10480E:  IT NE
104810:  MOVNE           R0, #1
104812:  STRB.W          R0, [R4,#0x185]
104816:  MOV             R0, R4
104818:  BL              sub_FE7F0
10481C:  CMP             R0, #0
10481E:  STR             R0, [SP,#0x20+var_18]
104820:  BEQ.W           loc_104A5A
104824:  CBZ             R5, loc_10482A
104826:  MOVS            R0, #1
104828:  STRB            R0, [R5]
10482A:  ADD             R1, SP, #0x20+var_18
10482C:  MOV             R0, R4
10482E:  BL              sub_104C38
104832:  B               loc_104A5C
104834:  ADDS            R0, R1, #2
104836:  STR             R0, [R4]
104838:  LDR             R0, [SP,#0x20+var_14]
10483A:  LDR             R1, =(__stack_chk_guard_ptr - 0x104840)
10483C:  ADD             R1, PC; __stack_chk_guard_ptr
10483E:  LDR             R1, [R1]; __stack_chk_guard
104840:  LDR             R1, [R1]
104842:  CMP             R1, R0
104844:  BNE             loc_10492A
104846:  LDR             R1, =(aOperator_24 - 0x10484C); "operator&=" ...
104848:  ADD             R1, PC; "operator&="
10484A:  B               loc_104A4A
10484C:  ADDS            R0, R1, #2
10484E:  STR             R0, [R4]
104850:  LDR             R0, [SP,#0x20+var_14]
104852:  LDR             R1, =(__stack_chk_guard_ptr - 0x104858)
104854:  ADD             R1, PC; __stack_chk_guard_ptr
104856:  LDR             R1, [R1]; __stack_chk_guard
104858:  LDR             R1, [R1]
10485A:  CMP             R1, R0
10485C:  BNE             loc_10492A
10485E:  LDR             R1, =(aOperator_25 - 0x104864); "operator=" ...
104860:  ADD             R1, PC; "operator="
104862:  B               loc_1049E2
104864:  ADDS            R0, R1, #2
104866:  STR             R0, [R4]
104868:  LDR             R0, [SP,#0x20+var_14]
10486A:  LDR             R1, =(__stack_chk_guard_ptr - 0x104870)
10486C:  ADD             R1, PC; __stack_chk_guard_ptr
10486E:  LDR             R1, [R1]; __stack_chk_guard
104870:  LDR             R1, [R1]
104872:  CMP             R1, R0
104874:  BNE             loc_10492A
104876:  LDR             R1, =(aOperator_26 - 0x10487C); "operator/=" ...
104878:  ADD             R1, PC; "operator/="
10487A:  B               loc_104A4A
10487C:  ADDS            R0, R1, #2
10487E:  STR             R0, [R4]
104880:  LDR             R0, [SP,#0x20+var_14]
104882:  LDR             R1, =(__stack_chk_guard_ptr - 0x104888)
104884:  ADD             R1, PC; __stack_chk_guard_ptr
104886:  LDR             R1, [R1]; __stack_chk_guard
104888:  LDR             R1, [R1]
10488A:  CMP             R1, R0
10488C:  BNE             loc_10492A
10488E:  LDR             R1, =(aOperator_27 - 0x104894); "operator/" ...
104890:  ADD             R1, PC; "operator/"
104892:  B               loc_1049E2
104894:  ADDS            R0, R1, #2
104896:  STR             R0, [R4]
104898:  LDR             R0, [SP,#0x20+var_14]
10489A:  LDR             R1, =(__stack_chk_guard_ptr - 0x1048A0)
10489C:  ADD             R1, PC; __stack_chk_guard_ptr
10489E:  LDR             R1, [R1]; __stack_chk_guard
1048A0:  LDR             R1, [R1]
1048A2:  CMP             R1, R0
1048A4:  BNE             loc_10492A
1048A6:  LDR             R1, =(aOperatorDelete_0 - 0x1048AE); "operator delete" ...
1048A8:  MOV             R0, R4
1048AA:  ADD             R1, PC; "operator delete"
1048AC:  ADD             SP, SP, #0x10
1048AE:  POP.W           {R8}
1048B2:  POP.W           {R4-R7,LR}
1048B6:  B.W             sub_1034B8
1048BA:  ADDS            R0, R1, #2
1048BC:  STR             R0, [R4]
1048BE:  LDR             R0, [SP,#0x20+var_14]
1048C0:  LDR             R1, =(__stack_chk_guard_ptr - 0x1048C6)
1048C2:  ADD             R1, PC; __stack_chk_guard_ptr
1048C4:  LDR             R1, [R1]; __stack_chk_guard
1048C6:  LDR             R1, [R1]
1048C8:  CMP             R1, R0
1048CA:  BNE             loc_10492A
1048CC:  LDR             R1, =(aOperator_28 - 0x1048D2); "operator<<=" ...
1048CE:  ADD             R1, PC; "operator<<="
1048D0:  B               loc_104A08
1048D2:  ADDS            R0, R1, #2
1048D4:  STR             R0, [R4]
1048D6:  LDR             R0, [SP,#0x20+var_14]
1048D8:  LDR             R1, =(__stack_chk_guard_ptr - 0x1048DE)
1048DA:  ADD             R1, PC; __stack_chk_guard_ptr
1048DC:  LDR             R1, [R1]; __stack_chk_guard
1048DE:  LDR             R1, [R1]
1048E0:  CMP             R1, R0
1048E2:  BNE             loc_10492A
1048E4:  LDR             R1, =(aOperator_29 - 0x1048EA); "operator<" ...
1048E6:  ADD             R1, PC; "operator<"
1048E8:  B               loc_1049E2
1048EA:  ADDS            R0, R1, #2
1048EC:  STR             R0, [R4]
1048EE:  MOV             R0, R4
1048F0:  BL              sub_104164
1048F4:  CBZ             R0, loc_104912
1048F6:  MOV             R5, R0
1048F8:  ADD.W           R0, R4, #0x198
1048FC:  MOVS            R1, #0xC
1048FE:  BL              sub_FFA98
104902:  LDR             R2, =(_ZTVN12_GLOBAL__N_116itanium_demangle15LiteralOperatorE - 0x10490A); `vtable for'`anonymous namespace'::itanium_demangle::LiteralOperator ...
104904:  LDR             R1, =0x1010113
104906:  ADD             R2, PC; `vtable for'`anonymous namespace'::itanium_demangle::LiteralOperator
104908:  STR             R5, [R0,#8]
10490A:  ADDS            R2, #8
10490C:  STRD.W          R2, R1, [R0]
104910:  B               def_1042AE; jumptable 001042AE default case, cases 98,102,104,106,107,116,117
104912:  MOVS            R0, #0
104914:  LDR             R1, [SP,#0x20+var_14]; jumptable 001042AE default case, cases 98,102,104,106,107,116,117
104916:  LDR             R2, =(__stack_chk_guard_ptr - 0x10491C)
104918:  ADD             R2, PC; __stack_chk_guard_ptr
10491A:  LDR             R2, [R2]; __stack_chk_guard
10491C:  LDR             R2, [R2]
10491E:  CMP             R2, R1
104920:  ITTT EQ
104922:  ADDEQ           SP, SP, #0x10
104924:  POPEQ.W         {R8}
104928:  POPEQ           {R4-R7,PC}
10492A:  BLX             __stack_chk_fail
10492E:  ADDS            R0, R1, #2
104930:  STR             R0, [R4]
104932:  LDR             R0, [SP,#0x20+var_14]
104934:  LDR             R1, =(__stack_chk_guard_ptr - 0x10493A)
104936:  ADD             R1, PC; __stack_chk_guard_ptr
104938:  LDR             R1, [R1]; __stack_chk_guard
10493A:  LDR             R1, [R1]
10493C:  CMP             R1, R0
10493E:  BNE             loc_10492A
104940:  LDR             R1, =(aOperator_30 - 0x104946); "operator<<" ...
104942:  ADD             R1, PC; "operator<<"
104944:  B               loc_104A4A
104946:  ADDS            R0, R1, #2
104948:  STR             R0, [R4]
10494A:  LDR             R0, [SP,#0x20+var_14]
10494C:  LDR             R1, =(__stack_chk_guard_ptr - 0x104952)
10494E:  ADD             R1, PC; __stack_chk_guard_ptr
104950:  LDR             R1, [R1]; __stack_chk_guard
104952:  LDR             R1, [R1]
104954:  CMP             R1, R0
104956:  BNE             loc_10492A
104958:  LDR             R1, =(aOperator_31 - 0x10495E); "operator-=" ...
10495A:  ADD             R1, PC; "operator-="
10495C:  B               loc_104A4A
10495E:  ADDS            R0, R1, #2
104960:  STR             R0, [R4]
104962:  LDR             R0, [SP,#0x20+var_14]
104964:  LDR             R1, =(__stack_chk_guard_ptr - 0x10496A)
104966:  ADD             R1, PC; __stack_chk_guard_ptr
104968:  LDR             R1, [R1]; __stack_chk_guard
10496A:  LDR             R1, [R1]
10496C:  CMP             R1, R0
10496E:  BNE             loc_10492A
104970:  LDR             R1, =(aOperator_32 - 0x104976); "operator*=" ...
104972:  ADD             R1, PC; "operator*="
104974:  B               loc_104A4A
104976:  ADDS            R0, R1, #2
104978:  STR             R0, [R4]
10497A:  LDR             R0, [SP,#0x20+var_14]
10497C:  LDR             R1, =(__stack_chk_guard_ptr - 0x104982)
10497E:  ADD             R1, PC; __stack_chk_guard_ptr
104980:  LDR             R1, [R1]; __stack_chk_guard
104982:  LDR             R1, [R1]
104984:  CMP             R1, R0
104986:  BNE             loc_10492A
104988:  LDR             R1, =(aOperator_33 - 0x10498E); "operator--" ...
10498A:  ADD             R1, PC; "operator--"
10498C:  B               loc_104A4A
10498E:  ADDS            R0, R1, #2
104990:  STR             R0, [R4]
104992:  LDR             R0, [SP,#0x20+var_14]
104994:  LDR             R1, =(__stack_chk_guard_ptr - 0x10499A)
104996:  ADD             R1, PC; __stack_chk_guard_ptr
104998:  LDR             R1, [R1]; __stack_chk_guard
10499A:  LDR             R1, [R1]
10499C:  CMP             R1, R0
10499E:  BNE             loc_10492A
1049A0:  LDR             R1, =(aOperatorNew_0 - 0x1049A8); "operator new" ...
1049A2:  MOV             R0, R4
1049A4:  ADD             R1, PC; "operator new"
1049A6:  ADD             SP, SP, #0x10
1049A8:  POP.W           {R8}
1049AC:  POP.W           {R4-R7,LR}
1049B0:  B.W             sub_104D0C
1049B4:  ADDS            R0, R1, #2
1049B6:  STR             R0, [R4]
1049B8:  LDR             R0, [SP,#0x20+var_14]
1049BA:  LDR             R1, =(__stack_chk_guard_ptr - 0x1049C0)
1049BC:  ADD             R1, PC; __stack_chk_guard_ptr
1049BE:  LDR             R1, [R1]; __stack_chk_guard
1049C0:  LDR             R1, [R1]
1049C2:  CMP             R1, R0
1049C4:  BNE             loc_10492A
1049C6:  LDR             R1, =(aOperator_34 - 0x1049CC); "operator!=" ...
1049C8:  ADD             R1, PC; "operator!="
1049CA:  B               loc_104A4A
1049CC:  ADDS            R0, R1, #2
1049CE:  STR             R0, [R4]
1049D0:  LDR             R0, [SP,#0x20+var_14]
1049D2:  LDR             R1, =(__stack_chk_guard_ptr - 0x1049D8)
1049D4:  ADD             R1, PC; __stack_chk_guard_ptr
1049D6:  LDR             R1, [R1]; __stack_chk_guard
1049D8:  LDR             R1, [R1]
1049DA:  CMP             R1, R0
1049DC:  BNE             loc_10492A
1049DE:  LDR             R1, =(aOperator_35 - 0x1049E4); "operator!" ...
1049E0:  ADD             R1, PC; "operator!"
1049E2:  MOV             R0, R4
1049E4:  ADD             SP, SP, #0x10
1049E6:  POP.W           {R8}
1049EA:  POP.W           {R4-R7,LR}
1049EE:  B.W             sub_104C00
1049F2:  ADDS            R0, R1, #2; jumptable 001043A6 case 109
1049F4:  STR             R0, [R4]
1049F6:  LDR             R0, [SP,#0x20+var_14]
1049F8:  LDR             R1, =(__stack_chk_guard_ptr - 0x1049FE)
1049FA:  ADD             R1, PC; __stack_chk_guard_ptr
1049FC:  LDR             R1, [R1]; __stack_chk_guard
1049FE:  LDR             R1, [R1]
104A00:  CMP             R1, R0
104A02:  BNE             loc_10492A
104A04:  LDR             R1, =(aOperator_36 - 0x104A0A); "operator->*" ...
104A06:  ADD             R1, PC; "operator->*"
104A08:  MOV             R0, R4
104A0A:  ADD             SP, SP, #0x10
104A0C:  POP.W           {R8}
104A10:  POP.W           {R4-R7,LR}
104A14:  B.W             sub_104C9C
104A18:  ADDS            R0, R1, #2; jumptable 001043A6 case 112
104A1A:  STR             R0, [R4]
104A1C:  LDR             R0, [SP,#0x20+var_14]
104A1E:  LDR             R1, =(__stack_chk_guard_ptr - 0x104A24)
104A20:  ADD             R1, PC; __stack_chk_guard_ptr
104A22:  LDR             R1, [R1]; __stack_chk_guard
104A24:  LDR             R1, [R1]
104A26:  CMP             R1, R0
104A28:  BNE.W           loc_10492A
104A2C:  LDR             R1, =(aOperator_37 - 0x104A32); "operator++" ...
104A2E:  ADD             R1, PC; "operator++"
104A30:  B               loc_104A4A
104A32:  ADDS            R0, R1, #2; jumptable 001043A6 case 116
104A34:  STR             R0, [R4]
104A36:  LDR             R0, [SP,#0x20+var_14]
104A38:  LDR             R1, =(__stack_chk_guard_ptr - 0x104A3E)
104A3A:  ADD             R1, PC; __stack_chk_guard_ptr
104A3C:  LDR             R1, [R1]; __stack_chk_guard
104A3E:  LDR             R1, [R1]
104A40:  CMP             R1, R0
104A42:  BNE.W           loc_10492A
104A46:  LDR             R1, =(aOperator_38 - 0x104A4C); "operator->" ...
104A48:  ADD             R1, PC; "operator->"
104A4A:  MOV             R0, R4
104A4C:  ADD             SP, SP, #0x10
104A4E:  POP.W           {R8}
104A52:  POP.W           {R4-R7,LR}
104A56:  B.W             sub_104BC8
104A5A:  MOVS            R0, #0
104A5C:  STRB.W          R8, [R4,#0x184]
104A60:  STRB.W          R6, [R4,#0x185]
104A64:  B               def_1042AE; jumptable 001042AE default case, cases 98,102,104,106,107,116,117
