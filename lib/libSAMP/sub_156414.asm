; =========================================================
; Game Engine Function: sub_156414
; Address            : 0x156414 - 0x156A58
; =========================================================

156414:  PUSH            {R4-R7,LR}
156416:  ADD             R7, SP, #0xC
156418:  PUSH.W          {R8-R11}
15641C:  SUB             SP, SP, #0x1C
15641E:  MOV             R4, R0
156420:  LDRB            R0, [R1]
156422:  CMP             R0, #9; switch 10 cases
156424:  BHI             def_15642E; jumptable 0015642E default case
156426:  MOV             R11, R1
156428:  LDRD.W          R8, R9, [R7,#arg_0]
15642C:  MOV             R10, R3
15642E:  TBH.W           [PC,R0,LSL#1]; switch jump
156432:  DCW 0xA; jump table for switch statement
156434:  DCW 0x14
156436:  DCW 0xC4
156438:  DCW 0x13E
15643A:  DCW 0x14E
15643C:  DCW 0x15A
15643E:  DCW 0x164
156440:  DCW 0x16E
156442:  DCW 0x17A
156444:  DCW 0x1EC
156446:  LDR             R0, [R4]; jumptable 0015642E case 0
156448:  LDR             R2, [R0]
15644A:  LDR             R1, =(aNull_0 - 0x156450); "null" ...
15644C:  ADD             R1, PC; "null"
15644E:  LDR             R3, [R2,#4]
156450:  B               loc_1566E2
156452:  ADD             SP, SP, #0x1C; jumptable 0015642E default case
156454:  POP.W           {R8-R11}
156458:  POP             {R4-R7,PC}
15645A:  LDR.W           R1, [R11,#8]; jumptable 0015642E case 1
15645E:  LDR             R0, [R4]
156460:  LDR             R1, [R1,#8]
156462:  CMP             R1, #0
156464:  BEQ.W           loc_15686E
156468:  CMP             R2, #0
15646A:  BEQ.W           loc_156888
15646E:  LDR             R1, [R0]
156470:  MOVS            R2, #2
156472:  LDR             R3, [R1,#4]
156474:  LDR             R1, =(asc_8E635 - 0x15647A); "{\n" ...
156476:  ADD             R1, PC; "{\n"
156478:  BLX             R3
15647A:  LDRB.W          R1, [R4,#0x250]
15647E:  ADD.W           R5, R4, #0x250
156482:  LDR.W           R0, [R4,#0x254]
156486:  LSLS            R2, R1, #0x1F
156488:  IT EQ
15648A:  LSREQ           R0, R1, #1
15648C:  STR.W           R9, [SP,#0x38+var_2C]
156490:  ADD             R9, R8
156492:  CMP             R0, R9
156494:  BCC.W           loc_156A40
156498:  LDR.W           R0, [R11,#8]
15649C:  ADDS            R1, R5, #1
15649E:  STR             R1, [SP,#0x38+var_20]
1564A0:  LDR             R6, [R0]
1564A2:  LDR             R0, [R0,#8]
1564A4:  CMP             R0, #1
1564A6:  BEQ             loc_156548
1564A8:  LDR             R0, =(asc_8A675 - 0x1564B0); "\": " ...
1564AA:  MOVS            R5, #0
1564AC:  ADD             R0, PC; "\": "
1564AE:  STR             R0, [SP,#0x38+var_24]
1564B0:  LDR             R0, =(asc_8B46A - 0x1564B6); ",\n" ...
1564B2:  ADD             R0, PC; ",\n"
1564B4:  STR             R0, [SP,#0x38+var_28]
1564B6:  LDR             R0, [R4]
1564B8:  LDRB.W          R2, [R4,#0x250]
1564BC:  LDR.W           R1, [R4,#0x258]
1564C0:  LDR             R3, [R0]
1564C2:  LSLS            R2, R2, #0x1F
1564C4:  LDR             R2, [SP,#0x38+var_20]
1564C6:  LDR             R3, [R3,#4]
1564C8:  IT EQ
1564CA:  MOVEQ           R1, R2
1564CC:  MOV             R2, R9
1564CE:  BLX             R3
1564D0:  LDR             R0, [R4]
1564D2:  LDR             R1, [R0]
1564D4:  LDR             R2, [R1]
1564D6:  MOVS            R1, #0x22 ; '"'
1564D8:  BLX             R2
1564DA:  ADD.W           R1, R6, #0x10
1564DE:  MOV             R0, R4
1564E0:  MOV             R2, R10
1564E2:  BL              sub_156AEC
1564E6:  LDR             R0, [R4]
1564E8:  MOVS            R2, #3
1564EA:  LDR             R1, [R0]
1564EC:  LDR             R3, [R1,#4]
1564EE:  LDR             R1, [SP,#0x38+var_24]
1564F0:  BLX             R3
1564F2:  ADD.W           R1, R6, #0x20 ; ' '
1564F6:  MOV             R0, R4
1564F8:  MOVS            R2, #1
1564FA:  MOV             R3, R10
1564FC:  STRD.W          R8, R9, [SP,#0x38+var_38]
156500:  BL              sub_156414
156504:  LDR             R0, [R4]
156506:  MOVS            R2, #2
156508:  LDR             R1, [R0]
15650A:  LDR             R3, [R1,#4]
15650C:  LDR             R1, [SP,#0x38+var_28]
15650E:  BLX             R3
156510:  LDR             R0, [R6,#4]
156512:  CBZ             R0, loc_15651E
156514:  MOV             R6, R0
156516:  LDR             R0, [R0]
156518:  CMP             R0, #0
15651A:  BNE             loc_156514
15651C:  B               loc_15653A
15651E:  MOV             R0, R6
156520:  LDR.W           R1, [R0,#8]!
156524:  LDR             R2, [R1]
156526:  CMP             R2, R6
156528:  MOV             R6, R1
15652A:  BEQ             loc_15653A
15652C:  LDR             R1, [R0]
15652E:  MOV             R0, R1
156530:  LDR.W           R6, [R0,#8]!
156534:  LDR             R2, [R6]
156536:  CMP             R2, R1
156538:  BNE             loc_15652C
15653A:  LDR.W           R0, [R11,#8]
15653E:  ADDS            R5, #1
156540:  LDR             R0, [R0,#8]
156542:  SUBS            R0, #1
156544:  CMP             R5, R0
156546:  BCC             loc_1564B6
156548:  LDR             R0, [R4]
15654A:  LDRB.W          R2, [R4,#0x250]
15654E:  LDR.W           R1, [R4,#0x258]
156552:  LDR             R3, [R0]
156554:  LSLS            R2, R2, #0x1F
156556:  LDR             R5, [SP,#0x38+var_20]
156558:  MOV             R2, R9
15655A:  LDR             R3, [R3,#4]
15655C:  IT EQ
15655E:  MOVEQ           R1, R5
156560:  BLX             R3
156562:  LDR             R0, [R4]
156564:  LDR             R1, [R0]
156566:  LDR             R2, [R1]
156568:  MOVS            R1, #0x22 ; '"'
15656A:  BLX             R2
15656C:  ADD.W           R1, R6, #0x10
156570:  MOV             R0, R4
156572:  MOV             R2, R10
156574:  BL              sub_156AEC
156578:  LDR             R0, [R4]
15657A:  MOVS            R2, #3
15657C:  LDR             R1, [R0]
15657E:  LDR             R3, [R1,#4]
156580:  LDR             R1, =(asc_8A675 - 0x156586); "\": " ...
156582:  ADD             R1, PC; "\": "
156584:  BLX             R3
156586:  ADD.W           R1, R6, #0x20 ; ' '
15658A:  MOV             R0, R4
15658C:  MOVS            R2, #1
15658E:  MOV             R3, R10
156590:  STRD.W          R8, R9, [SP,#0x38+var_38]
156594:  BL              sub_156414
156598:  LDR             R0, [R4]
15659A:  LDR             R1, [R0]
15659C:  LDR             R2, [R1]
15659E:  MOVS            R1, #0xA
1565A0:  BLX             R2
1565A2:  LDR             R0, [R4]
1565A4:  LDRB.W          R2, [R4,#0x250]
1565A8:  LDR.W           R1, [R4,#0x258]
1565AC:  LDR             R3, [R0]
1565AE:  LSLS            R2, R2, #0x1F
1565B0:  LDR             R3, [R3,#4]
1565B2:  IT EQ
1565B4:  MOVEQ           R1, R5
1565B6:  LDR             R2, [SP,#0x38+var_2C]
1565B8:  B               loc_156A00
1565BA:  LDR.W           R1, [R11,#8]; jumptable 0015642E case 2
1565BE:  LDR             R0, [R4]
1565C0:  LDRD.W          R3, R1, [R1]
1565C4:  CMP             R3, R1
1565C6:  BEQ.W           loc_156876
1565CA:  CMP             R2, #0
1565CC:  BEQ.W           loc_156952
1565D0:  LDR             R1, [R0]
1565D2:  MOVS            R2, #2
1565D4:  LDR             R3, [R1,#4]
1565D6:  LDR             R1, =(unk_891FD - 0x1565DC)
1565D8:  ADD             R1, PC; unk_891FD
1565DA:  BLX             R3
1565DC:  LDRB.W          R1, [R4,#0x250]
1565E0:  ADD.W           R5, R4, #0x250
1565E4:  LDR.W           R0, [R4,#0x254]
1565E8:  LSLS            R2, R1, #0x1F
1565EA:  IT EQ
1565EC:  LSREQ           R0, R1, #1
1565EE:  STR.W           R9, [SP,#0x38+var_2C]
1565F2:  ADD             R9, R8
1565F4:  CMP             R0, R9
1565F6:  STR.W           R8, [SP,#0x38+var_20]
1565FA:  BCC.W           loc_156A4C
1565FE:  LDR.W           R0, [R11,#8]
156602:  ADDS            R5, #1
156604:  LDRD.W          R6, R0, [R0]
156608:  SUBS            R0, #0x10
15660A:  CMP             R6, R0
15660C:  BEQ             loc_156658
15660E:  LDR             R0, =(asc_8B46A - 0x156614); ",\n" ...
156610:  ADD             R0, PC; ",\n"
156612:  MOV             R8, R0
156614:  LDR             R0, [R4]
156616:  LDRB.W          R2, [R4,#0x250]
15661A:  LDR.W           R1, [R4,#0x258]
15661E:  LDR             R3, [R0]
156620:  LSLS            R2, R2, #0x1F
156622:  MOV             R2, R9
156624:  LDR             R3, [R3,#4]
156626:  IT EQ
156628:  MOVEQ           R1, R5
15662A:  BLX             R3
15662C:  LDR             R0, [SP,#0x38+var_20]
15662E:  MOV             R1, R6
156630:  STRD.W          R0, R9, [SP,#0x38+var_38]
156634:  MOV             R0, R4
156636:  MOVS            R2, #1
156638:  MOV             R3, R10
15663A:  BL              sub_156414
15663E:  LDR             R0, [R4]
156640:  MOVS            R2, #2
156642:  LDR             R1, [R0]
156644:  LDR             R3, [R1,#4]
156646:  MOV             R1, R8
156648:  BLX             R3
15664A:  LDR.W           R0, [R11,#8]
15664E:  ADDS            R6, #0x10
156650:  LDR             R0, [R0,#4]
156652:  SUBS            R0, #0x10
156654:  CMP             R6, R0
156656:  BNE             loc_156614
156658:  LDR             R0, [R4]
15665A:  LDRB.W          R2, [R4,#0x250]
15665E:  LDR.W           R1, [R4,#0x258]
156662:  LDR             R3, [R0]
156664:  LSLS            R2, R2, #0x1F
156666:  MOV             R2, R9
156668:  LDR             R3, [R3,#4]
15666A:  IT EQ
15666C:  MOVEQ           R1, R5
15666E:  BLX             R3
156670:  LDR.W           R0, [R11,#8]
156674:  MOVS            R2, #1
156676:  LDR             R1, [SP,#0x38+var_20]
156678:  MOV             R3, R10
15667A:  LDR             R0, [R0,#4]
15667C:  STRD.W          R1, R9, [SP,#0x38+var_38]
156680:  SUB.W           R1, R0, #0x10
156684:  MOV             R0, R4
156686:  BL              sub_156414
15668A:  LDR             R0, [R4]
15668C:  LDR             R1, [R0]
15668E:  LDR             R2, [R1]
156690:  MOVS            R1, #0xA
156692:  BLX             R2
156694:  LDR             R0, [R4]
156696:  LDRB.W          R2, [R4,#0x250]
15669A:  LDR.W           R1, [R4,#0x258]
15669E:  LDR             R3, [R0]
1566A0:  LSLS            R2, R2, #0x1F
1566A2:  LDR             R3, [R3,#4]
1566A4:  IT EQ
1566A6:  MOVEQ           R1, R5
1566A8:  LDR             R2, [SP,#0x38+var_2C]
1566AA:  BLX             R3
1566AC:  B               loc_1569C6
1566AE:  LDR             R0, [R4]; jumptable 0015642E case 3
1566B0:  LDR             R1, [R0]
1566B2:  LDR             R2, [R1]
1566B4:  MOVS            R1, #0x22 ; '"'
1566B6:  BLX             R2
1566B8:  LDR.W           R1, [R11,#8]
1566BC:  MOV             R0, R4
1566BE:  MOV             R2, R10
1566C0:  BL              sub_156AEC
1566C4:  LDR             R0, [R4]
1566C6:  LDR             R1, [R0]
1566C8:  LDR             R2, [R1]
1566CA:  MOVS            R1, #0x22 ; '"'
1566CC:  B               loc_156A0A
1566CE:  LDR             R0, [R4]; jumptable 0015642E case 4
1566D0:  LDRB.W          R2, [R11,#8]
1566D4:  LDR             R1, [R0]
1566D6:  CMP             R2, #0
1566D8:  LDR             R3, [R1,#4]
1566DA:  BEQ.W           loc_156882
1566DE:  LDR             R1, =(aTrue_0 - 0x1566E4); "true" ...
1566E0:  ADD             R1, PC; "true"
1566E2:  MOVS            R2, #4
1566E4:  B               loc_156A22
1566E6:  LDRD.W          R2, R3, [R11,#8]; jumptable 0015642E case 5
1566EA:  MOV             R0, R4
1566EC:  ADD             SP, SP, #0x1C
1566EE:  POP.W           {R8-R11}
1566F2:  POP.W           {R4-R7,LR}
1566F6:  B.W             sub_15711C
1566FA:  LDRD.W          R2, R3, [R11,#8]; jumptable 0015642E case 6
1566FE:  MOV             R0, R4
156700:  ADD             SP, SP, #0x1C
156702:  POP.W           {R8-R11}
156706:  POP.W           {R4-R7,LR}
15670A:  B.W             sub_156FD8
15670E:  VLDR            D16, [R11,#8]; jumptable 0015642E case 7
156712:  MOV             R0, R4
156714:  VMOV            R2, R3, D16
156718:  ADD             SP, SP, #0x1C
15671A:  POP.W           {R8-R11}
15671E:  POP.W           {R4-R7,LR}
156722:  B.W             sub_157308
156726:  LDR             R0, [R4]; jumptable 0015642E case 8
156728:  CMP             R2, #0
15672A:  LDR             R1, [R0]
15672C:  LDR             R3, [R1,#4]
15672E:  BEQ.W           loc_156834
156732:  LDR             R1, =(asc_8E635 - 0x15673A); "{\n" ...
156734:  MOVS            R2, #2
156736:  ADD             R1, PC; "{\n"
156738:  BLX             R3
15673A:  LDRB.W          R1, [R4,#0x250]
15673E:  MOV             R10, R9
156740:  LDR.W           R0, [R4,#0x254]
156744:  ADD             R9, R8
156746:  ANDS.W          R2, R1, #1
15674A:  ADD.W           R6, R4, #0x250
15674E:  IT EQ
156750:  LSREQ           R0, R1, #1
156752:  CMP             R0, R9
156754:  BCC.W           loc_156A2E
156758:  LDR             R0, [R4]
15675A:  CMP             R2, #0
15675C:  LDR.W           R1, [R4,#0x258]
156760:  MOV             R2, R9
156762:  ADD.W           R8, R6, #1
156766:  LDR             R3, [R0]
156768:  LDR             R3, [R3,#4]
15676A:  IT EQ
15676C:  MOVEQ           R1, R8
15676E:  BLX             R3
156770:  LDR             R0, [R4]
156772:  MOVS            R2, #0xA
156774:  LDR             R1, [R0]
156776:  LDR             R3, [R1,#4]
156778:  LDR             R1, =(aBytes - 0x15677E); "\"bytes\": [" ...
15677A:  ADD             R1, PC; "\"bytes\": ["
15677C:  BLX             R3
15677E:  LDR.W           R0, [R11,#8]
156782:  LDRD.W          R5, R0, [R0]
156786:  CMP             R5, R0
156788:  BEQ             loc_1567BE
15678A:  SUBS            R0, #1
15678C:  CMP             R5, R0
15678E:  BEQ             loc_1567B6
156790:  LDR             R6, =(asc_8F279 - 0x156796); ", " ...
156792:  ADD             R6, PC; ", "
156794:  LDRB.W          R1, [R5],#1
156798:  MOV             R0, R4
15679A:  BL              sub_156F54
15679E:  LDR             R0, [R4]
1567A0:  MOVS            R2, #2
1567A2:  LDR             R1, [R0]
1567A4:  LDR             R3, [R1,#4]
1567A6:  MOV             R1, R6
1567A8:  BLX             R3
1567AA:  LDR.W           R0, [R11,#8]
1567AE:  LDR             R0, [R0,#4]
1567B0:  SUBS            R0, #1
1567B2:  CMP             R5, R0
1567B4:  BNE             loc_156794
1567B6:  LDRB            R1, [R5]
1567B8:  MOV             R0, R4
1567BA:  BL              sub_156F54
1567BE:  LDR             R0, [R4]
1567C0:  MOVS            R2, #3
1567C2:  LDR             R1, [R0]
1567C4:  LDR             R3, [R1,#4]
1567C6:  LDR             R1, =(asc_8BBCF - 0x1567CC); "],\n" ...
1567C8:  ADD             R1, PC; "],\n"
1567CA:  BLX             R3
1567CC:  LDR             R0, [R4]
1567CE:  LDRB.W          R2, [R4,#0x250]
1567D2:  LDR.W           R1, [R4,#0x258]
1567D6:  LDR             R3, [R0]
1567D8:  LSLS            R2, R2, #0x1F
1567DA:  MOV             R2, R9
1567DC:  LDR             R3, [R3,#4]
1567DE:  IT EQ
1567E0:  MOVEQ           R1, R8
1567E2:  BLX             R3
1567E4:  LDR             R0, [R4]
1567E6:  MOVS            R2, #0xB
1567E8:  LDR             R1, [R0]
1567EA:  LDR             R3, [R1,#4]
1567EC:  LDR             R1, =(aSubtype - 0x1567F2); "\"subtype\": " ...
1567EE:  ADD             R1, PC; "\"subtype\": "
1567F0:  BLX             R3
1567F2:  LDR.W           R0, [R11,#8]
1567F6:  LDRB            R1, [R0,#0x18]
1567F8:  CMP             R1, #0
1567FA:  BEQ.W           loc_1569D0
1567FE:  LDRD.W          R2, R3, [R0,#0x10]
156802:  MOV             R0, R4
156804:  BL              sub_156FD8
156808:  B               loc_1569DE
15680A:  LDR             R0, [R4]; jumptable 0015642E case 9
15680C:  LDR             R2, [R0]
15680E:  LDR             R1, =(aDiscarded - 0x156816); "<discarded>" ...
156810:  LDR             R3, [R2,#4]
156812:  ADD             R1, PC; "<discarded>"
156814:  MOVS            R2, #0xB
156816:  B               loc_156A22
156818:  DCD aNull_0 - 0x156450
15681C:  DCD asc_8E635 - 0x15647A
156820:  DCD asc_8A675 - 0x1564B0
156824:  DCD asc_8B46A - 0x1564B6
156828:  DCD asc_8A675 - 0x156586
15682C:  DCD unk_891FD - 0x1565DC
156830:  DCD asc_8B46A - 0x156614
156834:  LDR             R1, =(aBytes_0 - 0x15683C); "{\"bytes\":[" ...
156836:  MOVS            R2, #0xA
156838:  ADD             R1, PC; "{\"bytes\":["
15683A:  BLX             R3
15683C:  LDR.W           R0, [R11,#8]
156840:  LDRD.W          R5, R0, [R0]
156844:  CMP             R5, R0
156846:  BEQ.W           loc_156994
15684A:  SUBS            R0, #1
15684C:  CMP             R5, R0
15684E:  BEQ.W           loc_15698C
156852:  LDRB.W          R1, [R5],#1
156856:  MOV             R0, R4
156858:  BL              sub_156F54
15685C:  LDR             R0, [R4]
15685E:  LDR             R1, [R0]
156860:  LDR             R2, [R1]
156862:  MOVS            R1, #0x2C ; ','
156864:  BLX             R2
156866:  LDR.W           R0, [R11,#8]
15686A:  LDR             R0, [R0,#4]
15686C:  B               loc_15684A
15686E:  LDR             R2, [R0]
156870:  LDR             R1, =(asc_841A0 - 0x156876); "{}" ...
156872:  ADD             R1, PC; "{}"
156874:  B               loc_15687C
156876:  LDR             R2, [R0]
156878:  LDR             R1, =(asc_91028 - 0x15687E); "[]" ...
15687A:  ADD             R1, PC; "[]"
15687C:  LDR             R3, [R2,#4]
15687E:  MOVS            R2, #2
156880:  B               loc_156A22
156882:  LDR             R1, =(aFalse - 0x156888); "false" ...
156884:  ADD             R1, PC; "false"
156886:  B               loc_156A20
156888:  LDR             R1, [R0]
15688A:  LDR             R2, [R1]
15688C:  MOVS            R1, #0x7B ; '{'
15688E:  BLX             R2
156890:  LDR.W           R0, [R11,#8]
156894:  LDR             R5, [R0]
156896:  LDR             R0, [R0,#8]
156898:  CMP             R0, #1
15689A:  BEQ             loc_15691A
15689C:  LDR             R0, =(asc_8ED50 - 0x1568A4); "\":" ...
15689E:  MOVS            R6, #0
1568A0:  ADD             R0, PC; "\":"
1568A2:  STR             R0, [SP,#0x38+var_20]
1568A4:  LDR             R0, [R4]
1568A6:  LDR             R1, [R0]
1568A8:  LDR             R2, [R1]
1568AA:  MOVS            R1, #0x22 ; '"'
1568AC:  BLX             R2
1568AE:  ADD.W           R1, R5, #0x10
1568B2:  MOV             R0, R4
1568B4:  MOV             R2, R10
1568B6:  BL              sub_156AEC
1568BA:  LDR             R0, [R4]
1568BC:  MOVS            R2, #2
1568BE:  LDR             R1, [R0]
1568C0:  LDR             R3, [R1,#4]
1568C2:  LDR             R1, [SP,#0x38+var_20]
1568C4:  BLX             R3
1568C6:  ADD.W           R1, R5, #0x20 ; ' '
1568CA:  MOV             R0, R4
1568CC:  MOVS            R2, #0
1568CE:  MOV             R3, R10
1568D0:  STRD.W          R8, R9, [SP,#0x38+var_38]
1568D4:  BL              sub_156414
1568D8:  LDR             R0, [R4]
1568DA:  LDR             R1, [R0]
1568DC:  LDR             R2, [R1]
1568DE:  MOVS            R1, #0x2C ; ','
1568E0:  BLX             R2
1568E2:  LDR             R0, [R5,#4]
1568E4:  CBZ             R0, loc_1568F0
1568E6:  MOV             R5, R0
1568E8:  LDR             R0, [R0]
1568EA:  CMP             R0, #0
1568EC:  BNE             loc_1568E6
1568EE:  B               loc_15690C
1568F0:  MOV             R0, R5
1568F2:  LDR.W           R1, [R0,#8]!
1568F6:  LDR             R2, [R1]
1568F8:  CMP             R2, R5
1568FA:  MOV             R5, R1
1568FC:  BEQ             loc_15690C
1568FE:  LDR             R1, [R0]
156900:  MOV             R0, R1
156902:  LDR.W           R5, [R0,#8]!
156906:  LDR             R2, [R5]
156908:  CMP             R2, R1
15690A:  BNE             loc_1568FE
15690C:  LDR.W           R0, [R11,#8]
156910:  ADDS            R6, #1
156912:  LDR             R0, [R0,#8]
156914:  SUBS            R0, #1
156916:  CMP             R6, R0
156918:  BCC             loc_1568A4
15691A:  LDR             R0, [R4]
15691C:  LDR             R1, [R0]
15691E:  LDR             R2, [R1]
156920:  MOVS            R1, #0x22 ; '"'
156922:  BLX             R2
156924:  ADD.W           R1, R5, #0x10
156928:  MOV             R0, R4
15692A:  MOV             R2, R10
15692C:  BL              sub_156AEC
156930:  LDR             R0, [R4]
156932:  MOVS            R2, #2
156934:  LDR             R1, [R0]
156936:  LDR             R3, [R1,#4]
156938:  LDR             R1, =(asc_8ED50 - 0x15693E); "\":" ...
15693A:  ADD             R1, PC; "\":"
15693C:  BLX             R3
15693E:  ADD.W           R1, R5, #0x20 ; ' '
156942:  MOV             R0, R4
156944:  MOVS            R2, #0
156946:  MOV             R3, R10
156948:  STRD.W          R8, R9, [SP,#0x38+var_38]
15694C:  BL              sub_156414
156950:  B               loc_156A02
156952:  LDR             R1, [R0]
156954:  LDR             R2, [R1]
156956:  MOVS            R1, #0x5B ; '['
156958:  BLX             R2
15695A:  LDR.W           R0, [R11,#8]
15695E:  LDRD.W          R5, R0, [R0]
156962:  SUBS            R0, #0x10
156964:  CMP             R5, R0
156966:  BEQ             loc_1569B6
156968:  MOV             R0, R4
15696A:  MOV             R1, R5
15696C:  MOVS            R2, #0
15696E:  MOV             R3, R10
156970:  STRD.W          R8, R9, [SP,#0x38+var_38]
156974:  BL              sub_156414
156978:  LDR             R0, [R4]
15697A:  LDR             R1, [R0]
15697C:  LDR             R2, [R1]
15697E:  MOVS            R1, #0x2C ; ','
156980:  BLX             R2
156982:  LDR.W           R0, [R11,#8]
156986:  ADDS            R5, #0x10
156988:  LDR             R0, [R0,#4]
15698A:  B               loc_156962
15698C:  LDRB            R1, [R5]
15698E:  MOV             R0, R4
156990:  BL              sub_156F54
156994:  LDR             R0, [R4]
156996:  MOVS            R2, #0xC
156998:  LDR             R1, [R0]
15699A:  LDR             R3, [R1,#4]
15699C:  LDR             R1, =(aSubtype_0 - 0x1569A2); "],\"subtype\":" ...
15699E:  ADD             R1, PC; "],\"subtype\":"
1569A0:  BLX             R3
1569A2:  LDR.W           R0, [R11,#8]
1569A6:  LDRB            R1, [R0,#0x18]
1569A8:  CBZ             R1, loc_156A16
1569AA:  LDRD.W          R2, R3, [R0,#0x10]
1569AE:  MOV             R0, R4
1569B0:  BL              sub_156FD8
1569B4:  B               loc_156A02
1569B6:  MOV             R0, R4
1569B8:  MOV             R1, R5
1569BA:  MOVS            R2, #0
1569BC:  MOV             R3, R10
1569BE:  STRD.W          R8, R9, [SP,#0x38+var_38]
1569C2:  BL              sub_156414
1569C6:  LDR             R0, [R4]
1569C8:  LDR             R1, [R0]
1569CA:  LDR             R2, [R1]
1569CC:  MOVS            R1, #0x5D ; ']'
1569CE:  B               loc_156A0A
1569D0:  LDR             R0, [R4]
1569D2:  MOVS            R2, #4
1569D4:  LDR             R1, [R0]
1569D6:  LDR             R3, [R1,#4]
1569D8:  LDR             R1, =(aNull_0 - 0x1569DE); "null" ...
1569DA:  ADD             R1, PC; "null"
1569DC:  BLX             R3
1569DE:  LDR             R0, [R4]
1569E0:  MOV             R5, R10
1569E2:  LDR             R1, [R0]
1569E4:  LDR             R2, [R1]
1569E6:  MOVS            R1, #0xA
1569E8:  BLX             R2
1569EA:  LDR             R0, [R4]
1569EC:  LDRB.W          R2, [R4,#0x250]
1569F0:  LDR.W           R1, [R4,#0x258]
1569F4:  LDR             R3, [R0]
1569F6:  LSLS            R2, R2, #0x1F
1569F8:  MOV             R2, R10
1569FA:  LDR             R3, [R3,#4]
1569FC:  IT EQ
1569FE:  MOVEQ           R1, R8
156A00:  BLX             R3
156A02:  LDR             R0, [R4]
156A04:  LDR             R1, [R0]
156A06:  LDR             R2, [R1]
156A08:  MOVS            R1, #0x7D ; '}'
156A0A:  ADD             SP, SP, #0x1C
156A0C:  POP.W           {R8-R11}
156A10:  POP.W           {R4-R7,LR}
156A14:  BX              R2
156A16:  LDR             R0, [R4]
156A18:  LDR             R2, [R0]
156A1A:  LDR             R1, =(aNull_1 - 0x156A20); "null}" ...
156A1C:  ADD             R1, PC; "null}"
156A1E:  LDR             R3, [R2,#4]
156A20:  MOVS            R2, #5
156A22:  ADD             SP, SP, #0x1C
156A24:  POP.W           {R8-R11}
156A28:  POP.W           {R4-R7,LR}
156A2C:  BX              R3
156A2E:  LSLS            R1, R0, #1
156A30:  MOV             R0, R6
156A32:  MOVS            R2, #0x20 ; ' '
156A34:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6resizeEjc; std::string::resize(uint,char)
156A38:  LDRB            R0, [R6]
156A3A:  AND.W           R2, R0, #1
156A3E:  B               loc_156758
156A40:  LSLS            R1, R0, #1
156A42:  MOV             R0, R5
156A44:  MOVS            R2, #0x20 ; ' '
156A46:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6resizeEjc; std::string::resize(uint,char)
156A4A:  B               loc_156498
156A4C:  LSLS            R1, R0, #1
156A4E:  MOV             R0, R5
156A50:  MOVS            R2, #0x20 ; ' '
156A52:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6resizeEjc; std::string::resize(uint,char)
156A56:  B               loc_1565FE
