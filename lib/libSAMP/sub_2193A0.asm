; =========================================================
; Game Engine Function: sub_2193A0
; Address            : 0x2193A0 - 0x21991C
; =========================================================

2193A0:  PUSH            {R4-R7,LR}
2193A2:  ADD             R7, SP, #0xC
2193A4:  PUSH.W          {R5-R11}
2193A8:  MOV             R8, R0
2193AA:  LDR.W           R0, =(__stack_chk_guard_ptr - 0x2193B2)
2193AE:  ADD             R0, PC; __stack_chk_guard_ptr
2193B0:  LDR             R0, [R0]; __stack_chk_guard
2193B2:  LDR             R0, [R0]
2193B4:  STR             R0, [SP,#0x28+var_20]
2193B6:  LDRD.W          R6, R4, [R8]
2193BA:  CMP             R6, R4
2193BC:  BEQ.W           loc_2198FE
2193C0:  LDRB            R0, [R6]
2193C2:  CMP             R0, #0x4C ; 'L'
2193C4:  BNE.W           loc_2198FE
2193C8:  ADDS            R1, R6, #1
2193CA:  STR.W           R1, [R8]
2193CE:  SUBS            R0, R4, R1
2193D0:  BEQ.W           def_2193E2; jumptable 002193E2 default case, cases 66,67,69-83,86-94,96,103,107,112-114,117,118
2193D4:  LDRB            R1, [R1]
2193D6:  SUBS            R1, #0x41 ; 'A'; switch 57 cases
2193D8:  CMP             R1, #0x38 ; '8'
2193DA:  BHI.W           def_2193E2; jumptable 002193E2 default case, cases 66,67,69-83,86-94,96,103,107,112-114,117,118
2193DE:  MOV.W           R11, #0
2193E2:  TBH.W           [PC,R1,LSL#1]; switch jump
2193E6:  DCW 0x39; jump table for switch statement
2193E8:  DCW 0x56
2193EA:  DCW 0x56
2193EC:  DCW 0x86
2193EE:  DCW 0x56
2193F0:  DCW 0x56
2193F2:  DCW 0x56
2193F4:  DCW 0x56
2193F6:  DCW 0x56
2193F8:  DCW 0x56
2193FA:  DCW 0x56
2193FC:  DCW 0x56
2193FE:  DCW 0x56
219400:  DCW 0x56
219402:  DCW 0x56
219404:  DCW 0x56
219406:  DCW 0x56
219408:  DCW 0x56
21940A:  DCW 0x56
21940C:  DCW 0x28E
21940E:  DCW 0xA2
219410:  DCW 0x56
219412:  DCW 0x56
219414:  DCW 0x56
219416:  DCW 0x56
219418:  DCW 0x56
21941A:  DCW 0x56
21941C:  DCW 0x56
21941E:  DCW 0x56
219420:  DCW 0x56
219422:  DCW 0xD0
219424:  DCW 0x56
219426:  DCW 0xED
219428:  DCW 0xFD
21942A:  DCW 0x108
21942C:  DCW 0x117
21942E:  DCW 0x130
219430:  DCW 0x149
219432:  DCW 0x56
219434:  DCW 0x162
219436:  DCW 0x172
219438:  DCW 0x182
21943A:  DCW 0x56
21943C:  DCW 0x190
21943E:  DCW 0x19F
219440:  DCW 0x1AD
219442:  DCW 0x1BD
219444:  DCW 0x56
219446:  DCW 0x56
219448:  DCW 0x56
21944A:  DCW 0x1CD
21944C:  DCW 0x1DC
21944E:  DCW 0x56
219450:  DCW 0x56
219452:  DCW 0x1EC
219454:  DCW 0x1FB
219456:  DCW 0x20A
219458:  MOV             R0, R8; jumptable 002193E2 case 65
21945A:  BL              sub_215C48
21945E:  CMP             R0, #0
219460:  BEQ.W           loc_2198FE
219464:  MOV             R6, R0
219466:  LDRD.W          R0, R1, [R8]
21946A:  CMP             R0, R1
21946C:  BEQ.W           loc_2198FE
219470:  LDRB            R1, [R0]
219472:  CMP             R1, #0x45 ; 'E'
219474:  BNE.W           loc_2198FE
219478:  ADDS            R0, #1
21947A:  STR.W           R0, [R8]
21947E:  ADD.W           R0, R8, #0x198
219482:  MOVS            R1, #0xC
219484:  BL              sub_216EF0
219488:  LDR             R1, =(_ZTVN12_GLOBAL__N_116itanium_demangle13StringLiteralE - 0x219492); `vtable for'`anonymous namespace'::itanium_demangle::StringLiteral ...
21948A:  MOV             R11, R0
21948C:  LDR             R0, =0x1010142
21948E:  ADD             R1, PC; `vtable for'`anonymous namespace'::itanium_demangle::StringLiteral
219490:  B               loc_219576
219492:  MOV             R0, R8; jumptable 002193E2 default case, cases 66,67,69-83,86-94,96,103,107,112-114,117,118
219494:  BL              sub_215C48
219498:  CMP             R0, #0
21949A:  BEQ.W           loc_2198FE
21949E:  MOV             R6, R0
2194A0:  MOV             R0, SP
2194A2:  MOV             R1, R8
2194A4:  MOVS            R2, #0
2194A6:  MOV.W           R11, #0
2194AA:  BL              sub_215BB4
2194AE:  LDRD.W          R4, R9, [SP,#0x28+var_28]
2194B2:  CMP             R4, R9
2194B4:  BEQ.W           loc_219902; jumptable 002193E2 case 84
2194B8:  LDRD.W          R0, R1, [R8]
2194BC:  CMP             R0, R1
2194BE:  BEQ.W           loc_2198FE
2194C2:  LDRB            R1, [R0]
2194C4:  CMP             R1, #0x45 ; 'E'
2194C6:  BNE.W           loc_2198FE
2194CA:  ADDS            R0, #1
2194CC:  STR.W           R0, [R8]
2194D0:  ADD.W           R0, R8, #0x198
2194D4:  MOVS            R1, #0x14
2194D6:  BL              sub_216EF0
2194DA:  MOV             R11, R0
2194DC:  LDR             R1, =(_ZTVN12_GLOBAL__N_116itanium_demangle15IntegerCastExprE - 0x2194E4); `vtable for'`anonymous namespace'::itanium_demangle::IntegerCastExpr ...
2194DE:  LDR             R0, =0x1010144
2194E0:  ADD             R1, PC; `vtable for'`anonymous namespace'::itanium_demangle::IntegerCastExpr
2194E2:  STRD.W          R6, R4, [R11,#8]
2194E6:  ADDS            R1, #8
2194E8:  STR.W           R9, [R11,#0x10]
2194EC:  STRD.W          R1, R0, [R11]
2194F0:  B               loc_219902; jumptable 002193E2 case 84
2194F2:  LDR             R1, =(aDne - 0x2194FA); jumptable 002193E2 case 68
2194F4:  MOV             R0, R8
2194F6:  ADD             R1, PC; "DnE"
2194F8:  ADDS            R2, R1, #3
2194FA:  BL              sub_2155E4
2194FE:  CMP             R0, #0
219500:  BEQ.W           loc_2198FE
219504:  LDR             R0, [SP,#0x28+var_20]
219506:  LDR.W           R1, =(__stack_chk_guard_ptr - 0x21950E)
21950A:  ADD             R1, PC; __stack_chk_guard_ptr
21950C:  LDR             R1, [R1]; __stack_chk_guard
21950E:  LDR             R1, [R1]
219510:  CMP             R1, R0
219512:  BNE.W           loc_219918
219516:  LDR             R1, =(aNullptr - 0x21951E); "nullptr" ...
219518:  MOV             R0, R8
21951A:  ADD             R1, PC; "nullptr"
21951C:  ADD             SP, SP, #0xC
21951E:  POP.W           {R8-R11}
219522:  POP.W           {R4-R7,LR}
219526:  B.W             sub_21A068
21952A:  CMP             R0, #2; jumptable 002193E2 case 85
21952C:  BCC.W           loc_2198FE
219530:  LDRB            R0, [R6,#2]
219532:  CMP             R0, #0x6C ; 'l'
219534:  BNE.W           loc_2198FE
219538:  MOV             R0, R8
21953A:  MOVS            R1, #0
21953C:  MOV.W           R11, #0
219540:  BL              sub_21A0A0
219544:  CMP             R0, #0
219546:  BEQ.W           loc_219902; jumptable 002193E2 case 84
21954A:  MOV             R6, R0
21954C:  LDRD.W          R0, R1, [R8]
219550:  CMP             R0, R1
219552:  BEQ.W           loc_2198FE
219556:  LDRB            R1, [R0]
219558:  CMP             R1, #0x45 ; 'E'
21955A:  BNE.W           loc_2198FE
21955E:  ADDS            R0, #1
219560:  STR.W           R0, [R8]
219564:  ADD.W           R0, R8, #0x198
219568:  MOVS            R1, #0xC
21956A:  BL              sub_216EF0
21956E:  LDR             R1, =(_ZTVN12_GLOBAL__N_116itanium_demangle10LambdaExprE - 0x219578); `vtable for'`anonymous namespace'::itanium_demangle::LambdaExpr ...
219570:  MOV             R11, R0
219572:  LDR             R0, =0x1010143
219574:  ADD             R1, PC; `vtable for'`anonymous namespace'::itanium_demangle::LambdaExpr
219576:  ADDS            R1, #8
219578:  STR.W           R1, [R11]
21957C:  STR.W           R0, [R11,#4]
219580:  STR.W           R6, [R11,#8]
219584:  B               loc_219902; jumptable 002193E2 case 84
219586:  LDR             R1, =(aZ - 0x21958E); jumptable 002193E2 case 95
219588:  MOV             R0, R8
21958A:  ADD             R1, PC; "_Z"
21958C:  ADDS            R2, R1, #2
21958E:  BL              sub_2155E4
219592:  CMP             R0, #0
219594:  BEQ.W           loc_2198FE
219598:  MOV             R0, R8
21959A:  BL              sub_215654
21959E:  CMP             R0, #0
2195A0:  BEQ.W           loc_2198FE
2195A4:  MOV             R11, R0
2195A6:  LDRD.W          R0, R1, [R8]
2195AA:  CMP             R0, R1
2195AC:  BEQ.W           loc_2198FE
2195B0:  LDRB            R1, [R0]
2195B2:  CMP             R1, #0x45 ; 'E'
2195B4:  BNE.W           loc_2198FE
2195B8:  ADDS            R0, #1
2195BA:  STR.W           R0, [R8]
2195BE:  B               loc_219902; jumptable 002193E2 case 84
2195C0:  ADDS            R0, R6, #2; jumptable 002193E2 case 97
2195C2:  STR.W           R0, [R8]
2195C6:  LDR             R0, [SP,#0x28+var_20]
2195C8:  LDR             R1, =(__stack_chk_guard_ptr - 0x2195CE)
2195CA:  ADD             R1, PC; __stack_chk_guard_ptr
2195CC:  LDR             R1, [R1]; __stack_chk_guard
2195CE:  LDR             R1, [R1]
2195D0:  CMP             R1, R0
2195D2:  BNE.W           loc_219918
2195D6:  LDR             R1, =(aSignedChar - 0x2195DC); "signed char" ...
2195D8:  ADD             R1, PC; "signed char"
2195DA:  ADD.W           R2, R1, #0xB
2195DE:  B               loc_219816
2195E0:  LDR             R1, =(aB0e - 0x2195E8); jumptable 002193E2 case 98
2195E2:  MOV             R0, R8
2195E4:  ADD             R1, PC; "b0E"
2195E6:  ADDS            R2, R1, #3
2195E8:  BL              sub_2155E4
2195EC:  CMP             R0, #0
2195EE:  BEQ.W           loc_219848
2195F2:  MOVS            R0, #0
2195F4:  B               loc_21985A
2195F6:  ADDS            R0, R6, #2; jumptable 002193E2 case 99
2195F8:  STR.W           R0, [R8]
2195FC:  LDR             R0, [SP,#0x28+var_20]
2195FE:  LDR             R1, =(__stack_chk_guard_ptr - 0x219604)
219600:  ADD             R1, PC; __stack_chk_guard_ptr
219602:  LDR             R1, [R1]; __stack_chk_guard
219604:  LDR             R1, [R1]
219606:  CMP             R1, R0
219608:  BNE.W           loc_219918
21960C:  LDR             R1, =(aChar - 0x219612); "char" ...
21960E:  ADD             R1, PC; "char"
219610:  ADDS            R2, R1, #4
219612:  B               loc_219816
219614:  ADD.W           R9, R6, #2; jumptable 002193E2 case 100
219618:  STR.W           R9, [R8]
21961C:  SUB.W           R0, R4, R9
219620:  CMP             R0, #0x11
219622:  BCC.W           loc_2198FE
219626:  ADD.W           R10, R6, #0x12
21962A:  MOVS            R5, #0
21962C:  MOV.W           R11, #0
219630:  CMP             R5, #0x10
219632:  BEQ.W           loc_219868
219636:  LDRB.W          R0, [R9,R5]
21963A:  BL              sub_21A3DC
21963E:  ADDS            R5, #1
219640:  CMP             R0, #0
219642:  BNE             loc_219630
219644:  B               loc_219902; jumptable 002193E2 case 84
219646:  ADD.W           R9, R6, #2; jumptable 002193E2 case 101
21964A:  STR.W           R9, [R8]
21964E:  SUB.W           R0, R4, R9
219652:  CMP             R0, #0x11
219654:  BCC.W           loc_2198FE
219658:  ADD.W           R10, R6, #0x12
21965C:  MOVS            R5, #0
21965E:  MOV.W           R11, #0
219662:  CMP             R5, #0x10
219664:  BEQ.W           loc_219894
219668:  LDRB.W          R0, [R9,R5]
21966C:  BL              sub_21A3DC
219670:  ADDS            R5, #1
219672:  CMP             R0, #0
219674:  BNE             loc_219662
219676:  B               loc_219902; jumptable 002193E2 case 84
219678:  ADD.W           R9, R6, #2; jumptable 002193E2 case 102
21967C:  STR.W           R9, [R8]
219680:  SUB.W           R0, R4, R9
219684:  CMP             R0, #9
219686:  BCC.W           loc_2198FE
21968A:  ADD.W           R10, R6, #0xA
21968E:  MOVS            R5, #0
219690:  MOV.W           R11, #0
219694:  CMP             R5, #8
219696:  BEQ.W           loc_2198C0
21969A:  LDRB.W          R0, [R9,R5]
21969E:  BL              sub_21A3DC
2196A2:  ADDS            R5, #1
2196A4:  CMP             R0, #0
2196A6:  BNE             loc_219694
2196A8:  B               loc_219902; jumptable 002193E2 case 84
2196AA:  ADDS            R0, R6, #2; jumptable 002193E2 case 104
2196AC:  STR.W           R0, [R8]
2196B0:  LDR             R0, [SP,#0x28+var_20]
2196B2:  LDR             R1, =(__stack_chk_guard_ptr - 0x2196B8)
2196B4:  ADD             R1, PC; __stack_chk_guard_ptr
2196B6:  LDR             R1, [R1]; __stack_chk_guard
2196B8:  LDR             R1, [R1]
2196BA:  CMP             R1, R0
2196BC:  BNE.W           loc_219918
2196C0:  LDR             R1, =(aUnsignedChar - 0x2196C6); "unsigned char" ...
2196C2:  ADD             R1, PC; "unsigned char"
2196C4:  ADD.W           R2, R1, #0xD
2196C8:  B               loc_219816
2196CA:  ADDS            R0, R6, #2; jumptable 002193E2 case 105
2196CC:  STR.W           R0, [R8]
2196D0:  LDR             R0, [SP,#0x28+var_20]
2196D2:  LDR             R1, =(__stack_chk_guard_ptr - 0x2196D8)
2196D4:  ADD             R1, PC; __stack_chk_guard_ptr
2196D6:  LDR             R1, [R1]; __stack_chk_guard
2196D8:  LDR             R1, [R1]
2196DA:  CMP             R1, R0
2196DC:  BNE.W           loc_219918
2196E0:  LDR             R1, =(byte_8F794 - 0x2196E8)
2196E2:  MOV             R0, R8
2196E4:  ADD             R1, PC; byte_8F794
2196E6:  MOV             R2, R1
2196E8:  B               loc_219818
2196EA:  ADDS            R0, R6, #2; jumptable 002193E2 case 106
2196EC:  STR.W           R0, [R8]
2196F0:  LDR             R0, [SP,#0x28+var_20]
2196F2:  LDR             R1, =(__stack_chk_guard_ptr - 0x2196F8)
2196F4:  ADD             R1, PC; __stack_chk_guard_ptr
2196F6:  LDR             R1, [R1]; __stack_chk_guard
2196F8:  LDR             R1, [R1]
2196FA:  CMP             R1, R0
2196FC:  BNE.W           loc_219918
219700:  LDR             R1, =(aU - 0x219706); "u" ...
219702:  ADD             R1, PC; "u"
219704:  B               loc_219720
219706:  ADDS            R0, R6, #2; jumptable 002193E2 case 108
219708:  STR.W           R0, [R8]
21970C:  LDR             R0, [SP,#0x28+var_20]
21970E:  LDR             R1, =(__stack_chk_guard_ptr - 0x219714)
219710:  ADD             R1, PC; __stack_chk_guard_ptr
219712:  LDR             R1, [R1]; __stack_chk_guard
219714:  LDR             R1, [R1]
219716:  CMP             R1, R0
219718:  BNE.W           loc_219918
21971C:  LDR             R1, =(aL - 0x219722); "l" ...
21971E:  ADD             R1, PC; "l"
219720:  ADDS            R2, R1, #1
219722:  B               loc_219816
219724:  ADDS            R0, R6, #2; jumptable 002193E2 case 109
219726:  STR.W           R0, [R8]
21972A:  LDR             R0, [SP,#0x28+var_20]
21972C:  LDR             R1, =(__stack_chk_guard_ptr - 0x219732)
21972E:  ADD             R1, PC; __stack_chk_guard_ptr
219730:  LDR             R1, [R1]; __stack_chk_guard
219732:  LDR             R1, [R1]
219734:  CMP             R1, R0
219736:  BNE.W           loc_219918
21973A:  LDR             R1, =(aUl - 0x219740); "ul" ...
21973C:  ADD             R1, PC; "ul"
21973E:  B               loc_2197F6
219740:  ADDS            R0, R6, #2; jumptable 002193E2 case 110
219742:  STR.W           R0, [R8]
219746:  LDR             R0, [SP,#0x28+var_20]
219748:  LDR             R1, =(__stack_chk_guard_ptr - 0x21974E)
21974A:  ADD             R1, PC; __stack_chk_guard_ptr
21974C:  LDR             R1, [R1]; __stack_chk_guard
21974E:  LDR             R1, [R1]
219750:  CMP             R1, R0
219752:  BNE.W           loc_219918
219756:  LDR             R1, =(aInt128 - 0x21975C); "__int128" ...
219758:  ADD             R1, PC; "__int128"
21975A:  ADD.W           R2, R1, #8
21975E:  B               loc_219816
219760:  ADDS            R0, R6, #2; jumptable 002193E2 case 111
219762:  STR.W           R0, [R8]
219766:  LDR             R0, [SP,#0x28+var_20]
219768:  LDR             R1, =(__stack_chk_guard_ptr - 0x21976E)
21976A:  ADD             R1, PC; __stack_chk_guard_ptr
21976C:  LDR             R1, [R1]; __stack_chk_guard
21976E:  LDR             R1, [R1]
219770:  CMP             R1, R0
219772:  BNE.W           loc_219918
219776:  LDR             R1, =(aUnsignedInt128 - 0x21977C); "unsigned __int128" ...
219778:  ADD             R1, PC; "unsigned __int128"
21977A:  ADD.W           R2, R1, #0x11
21977E:  B               loc_219816
219780:  ADDS            R0, R6, #2; jumptable 002193E2 case 115
219782:  STR.W           R0, [R8]
219786:  LDR             R0, [SP,#0x28+var_20]
219788:  LDR             R1, =(__stack_chk_guard_ptr - 0x21978E)
21978A:  ADD             R1, PC; __stack_chk_guard_ptr
21978C:  LDR             R1, [R1]; __stack_chk_guard
21978E:  LDR             R1, [R1]
219790:  CMP             R1, R0
219792:  BNE.W           loc_219918
219796:  LDR             R1, =(aShort - 0x21979C); "short" ...
219798:  ADD             R1, PC; "short"
21979A:  ADDS            R2, R1, #5
21979C:  B               loc_219816
21979E:  ADDS            R0, R6, #2; jumptable 002193E2 case 116
2197A0:  STR.W           R0, [R8]
2197A4:  LDR             R0, [SP,#0x28+var_20]
2197A6:  LDR             R1, =(__stack_chk_guard_ptr - 0x2197AC)
2197A8:  ADD             R1, PC; __stack_chk_guard_ptr
2197AA:  LDR             R1, [R1]; __stack_chk_guard
2197AC:  LDR             R1, [R1]
2197AE:  CMP             R1, R0
2197B0:  BNE.W           loc_219918
2197B4:  LDR             R1, =(aUnsignedShort - 0x2197BA); "unsigned short" ...
2197B6:  ADD             R1, PC; "unsigned short"
2197B8:  ADD.W           R2, R1, #0xE
2197BC:  B               loc_219816
2197BE:  ADDS            R0, R6, #2; jumptable 002193E2 case 119
2197C0:  STR.W           R0, [R8]
2197C4:  LDR             R0, [SP,#0x28+var_20]
2197C6:  LDR             R1, =(__stack_chk_guard_ptr - 0x2197CC)
2197C8:  ADD             R1, PC; __stack_chk_guard_ptr
2197CA:  LDR             R1, [R1]; __stack_chk_guard
2197CC:  LDR             R1, [R1]
2197CE:  CMP             R1, R0
2197D0:  BNE.W           loc_219918
2197D4:  LDR             R1, =(aWcharT - 0x2197DA); "wchar_t" ...
2197D6:  ADD             R1, PC; "wchar_t"
2197D8:  ADDS            R2, R1, #7
2197DA:  B               loc_219816
2197DC:  ADDS            R0, R6, #2; jumptable 002193E2 case 120
2197DE:  STR.W           R0, [R8]
2197E2:  LDR             R0, [SP,#0x28+var_20]
2197E4:  LDR             R1, =(__stack_chk_guard_ptr - 0x2197EA)
2197E6:  ADD             R1, PC; __stack_chk_guard_ptr
2197E8:  LDR             R1, [R1]; __stack_chk_guard
2197EA:  LDR             R1, [R1]
2197EC:  CMP             R1, R0
2197EE:  BNE.W           loc_219918
2197F2:  LDR             R1, =(aLl - 0x2197F8); "ll" ...
2197F4:  ADD             R1, PC; "ll"
2197F6:  ADDS            R2, R1, #2
2197F8:  B               loc_219816
2197FA:  ADDS            R0, R6, #2; jumptable 002193E2 case 121
2197FC:  STR.W           R0, [R8]
219800:  LDR             R0, [SP,#0x28+var_20]
219802:  LDR             R1, =(__stack_chk_guard_ptr - 0x219808)
219804:  ADD             R1, PC; __stack_chk_guard_ptr
219806:  LDR             R1, [R1]; __stack_chk_guard
219808:  LDR             R1, [R1]
21980A:  CMP             R1, R0
21980C:  BNE.W           loc_219918
219810:  LDR             R1, =(aUll - 0x219816); "ull" ...
219812:  ADD             R1, PC; "ull"
219814:  ADDS            R2, R1, #3
219816:  MOV             R0, R8
219818:  ADD             SP, SP, #0xC
21981A:  POP.W           {R8-R11}
21981E:  POP.W           {R4-R7,LR}
219822:  B.W             sub_219FB0
219826:  ALIGN 4
219828:  DCD _ZTVN12_GLOBAL__N_116itanium_demangle13StringLiteralE - 0x219492
21982C:  DCD 0x1010142
219830:  DCD _ZTVN12_GLOBAL__N_116itanium_demangle15IntegerCastExprE - 0x2194E4
219834:  DCD 0x1010144
219838:  DCD aDne - 0x2194FA
21983C:  DCD aNullptr - 0x21951E
219840:  DCD _ZTVN12_GLOBAL__N_116itanium_demangle10LambdaExprE - 0x219578
219844:  DCD 0x1010143
219848:  LDR             R1, =(aB1e - 0x219850); "b1E" ...
21984A:  MOV             R0, R8
21984C:  ADD             R1, PC; "b1E"
21984E:  ADDS            R2, R1, #3
219850:  BL              sub_2155E4
219854:  CMP             R0, #0
219856:  BEQ             loc_2198FE
219858:  MOVS            R0, #1
21985A:  STR             R0, [SP,#0x28+var_28]
21985C:  MOV             R1, SP
21985E:  MOV             R0, R8
219860:  BL              sub_21A038
219864:  MOV             R11, R0
219866:  B               loc_219902; jumptable 002193E2 case 84
219868:  STR.W           R10, [R8]
21986C:  CMP             R10, R4
21986E:  BEQ             loc_2198FE
219870:  LDRB.W          R0, [R10]
219874:  CMP             R0, #0x45 ; 'E'
219876:  BNE             loc_2198FE
219878:  ADD.W           R0, R6, #0x13
21987C:  STR.W           R0, [R8]
219880:  ADD.W           R0, R8, #0x198
219884:  MOVS            R1, #0x10
219886:  BL              sub_216EF0
21988A:  LDR             R1, =(_ZTVN12_GLOBAL__N_116itanium_demangle16FloatLiteralImplIdEE - 0x219894); `vtable for'`anonymous namespace'::itanium_demangle::FloatLiteralImpl<double> ...
21988C:  MOV             R11, R0
21988E:  LDR             R0, =0x1010147
219890:  ADD             R1, PC; `vtable for'`anonymous namespace'::itanium_demangle::FloatLiteralImpl<double>
219892:  B               loc_2198EA
219894:  STR.W           R10, [R8]
219898:  CMP             R10, R4
21989A:  BEQ             loc_2198FE
21989C:  LDRB.W          R0, [R10]
2198A0:  CMP             R0, #0x45 ; 'E'
2198A2:  BNE             loc_2198FE
2198A4:  ADD.W           R0, R6, #0x13
2198A8:  STR.W           R0, [R8]
2198AC:  ADD.W           R0, R8, #0x198
2198B0:  MOVS            R1, #0x10
2198B2:  BL              sub_216EF0
2198B6:  LDR             R1, =(_ZTVN12_GLOBAL__N_116itanium_demangle16FloatLiteralImplIeEE - 0x2198C0); `vtable for'`anonymous namespace'::itanium_demangle::FloatLiteralImpl<long double> ...
2198B8:  MOV             R11, R0
2198BA:  LDR             R0, =0x1010148
2198BC:  ADD             R1, PC; `vtable for'`anonymous namespace'::itanium_demangle::FloatLiteralImpl<long double>
2198BE:  B               loc_2198EA
2198C0:  STR.W           R10, [R8]
2198C4:  CMP             R10, R4
2198C6:  BEQ             loc_2198FE
2198C8:  LDRB.W          R0, [R10]
2198CC:  CMP             R0, #0x45 ; 'E'
2198CE:  BNE             loc_2198FE
2198D0:  ADD.W           R0, R6, #0xB
2198D4:  STR.W           R0, [R8]
2198D8:  ADD.W           R0, R8, #0x198
2198DC:  MOVS            R1, #0x10
2198DE:  BL              sub_216EF0
2198E2:  LDR             R1, =(_ZTVN12_GLOBAL__N_116itanium_demangle16FloatLiteralImplIfEE - 0x2198EC); `vtable for'`anonymous namespace'::itanium_demangle::FloatLiteralImpl<float> ...
2198E4:  MOV             R11, R0
2198E6:  LDR             R0, =0x1010146
2198E8:  ADD             R1, PC; `vtable for'`anonymous namespace'::itanium_demangle::FloatLiteralImpl<float>
2198EA:  ADDS            R1, #8
2198EC:  STR.W           R1, [R11]
2198F0:  STR.W           R0, [R11,#4]
2198F4:  STR.W           R9, [R11,#8]
2198F8:  STR.W           R10, [R11,#0xC]
2198FC:  B               loc_219902; jumptable 002193E2 case 84
2198FE:  MOV.W           R11, #0
219902:  LDR             R0, [SP,#0x28+var_20]; jumptable 002193E2 case 84
219904:  LDR             R1, =(__stack_chk_guard_ptr - 0x21990A)
219906:  ADD             R1, PC; __stack_chk_guard_ptr
219908:  LDR             R1, [R1]; __stack_chk_guard
21990A:  LDR             R1, [R1]
21990C:  CMP             R1, R0
21990E:  ITTT EQ
219910:  MOVEQ           R0, R11
219912:  POPEQ.W         {R1-R3,R8-R11}
219916:  POPEQ           {R4-R7,PC}
219918:  BLX             __stack_chk_fail
