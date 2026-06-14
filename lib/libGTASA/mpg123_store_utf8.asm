; =========================================================
; Game Engine Function: mpg123_store_utf8
; Address            : 0x2334AC - 0x23370C
; =========================================================

2334AC:  PUSH            {R4-R7,LR}
2334AE:  ADD             R7, SP, #0xC
2334B0:  PUSH.W          {R8-R10}
2334B4:  SUB             SP, SP, #8
2334B6:  MOV             R4, R1
2334B8:  MOV             R9, R0
2334BA:  SUBS            R0, R4, #1; switch 7 cases
2334BC:  MOV             R6, R3
2334BE:  MOV             R5, R2
2334C0:  CMP             R0, #6
2334C2:  BHI.W           def_2334C6; jumptable 002334C6 default case
2334C6:  TBB.W           [PC,R0]; switch jump
2334CA:  DCB 0x3F; jump table for switch statement
2334CB:  DCB 0x5B
2334CC:  DCB 4
2334CD:  DCB 4
2334CE:  DCB 0x2F
2334CF:  DCB 0x2F
2334D0:  DCB 0x37
2334D1:  ALIGN 2
2334D2:  LDR.W           R0, [R9]; jumptable 002334C6 cases 3,4
2334D6:  CMP             R0, #0
2334D8:  IT NE
2334DA:  BLXNE           free
2334DE:  MOVS            R1, #0
2334E0:  ADDS            R0, R5, R6
2334E2:  STRD.W          R1, R1, [R9]
2334E6:  STR.W           R1, [R9,#8]
2334EA:  LDRB.W          R0, [R0,#-1]
2334EE:  CMP             R0, #0
2334F0:  BNE.W           loc_2336FA
2334F4:  CMP             R4, #4
2334F6:  MOV             R0, R5
2334F8:  IT EQ
2334FA:  MOVEQ           R1, #1
2334FC:  BLX             j_INT123_icy2utf8
233500:  MOV             R4, R0
233502:  CMP             R4, #0
233504:  BEQ.W           loc_2336FA
233508:  MOVS            R0, #0
23350A:  STR.W           R0, [R9,#8]
23350E:  MOV             R0, R4; char *
233510:  BLX             strlen
233514:  MOV             R3, R0; size_t
233516:  MOV             R0, R9; int
233518:  MOV             R1, R4; int
23351A:  MOVS            R2, #0; int
23351C:  BLX             j_mpg123_add_substring
233520:  MOV             R0, R4; p
233522:  BLX             free
233526:  B               loc_2336FA
233528:  CMP             R6, #3; jumptable 002334C6 cases 5,6
23352A:  BCC             loc_233538; jumptable 002334C6 case 7
23352C:  LDRB            R0, [R5]
23352E:  CBNZ            R0, loc_233538; jumptable 002334C6 case 7
233530:  SUBS            R6, #1
233532:  ADDS            R5, #1
233534:  CMP             R6, #2
233536:  BHI             loc_23352C
233538:  BIC.W           R2, R6, #1; jumptable 002334C6 case 7
23353C:  MOV             R0, R9
23353E:  MOV             R1, R5
233540:  MOVS            R3, #0
233542:  BL              sub_23AECC
233546:  B               loc_2336FA
233548:  CMP             R6, #2; jumptable 002334C6 case 1
23354A:  BCC             loc_233558
23354C:  LDRB            R0, [R5]
23354E:  CBNZ            R0, loc_233558
233550:  SUBS            R6, #1
233552:  ADDS            R5, #1
233554:  CMP             R6, #1
233556:  BHI             loc_23354C
233558:  LDR.W           R1, [R9,#4]
23355C:  ADDS.W          R8, R6, #1
233560:  BEQ             loc_233614
233562:  LDR.W           R0, [R9]; ptr
233566:  CMP             R1, R8
233568:  BEQ.W           loc_2336CA
23356C:  CMP             R0, #0
23356E:  BEQ.W           loc_2336BE
233572:  MOV             R1, R8; size
233574:  BLX             realloc
233578:  CMP             R0, #0
23357A:  BNE.W           loc_2336C6
23357E:  B               def_2334C6; jumptable 002334C6 default case
233580:  CMP             R6, #2; jumptable 002334C6 case 2
233582:  BCC             loc_233590
233584:  LDRB            R0, [R5]
233586:  CBNZ            R0, loc_233596
233588:  SUBS            R6, #1
23358A:  ADDS            R5, #1
23358C:  CMP             R6, #1
23358E:  BHI             loc_233584
233590:  CMP             R6, #0
233592:  BEQ             loc_23362E
233594:  MOVS            R6, #1
233596:  CMP             R6, #4
233598:  BCC             loc_2335F0
23359A:  BIC.W           R0, R6, #3
23359E:  MOVS            R1, #0
2335A0:  CBZ             R0, loc_2335F0
2335A2:  VDUP.32         Q8, R1
2335A6:  VMOV.I32        Q9, #0xFF
2335AA:  ADD             R1, SP, #0x20+var_1C
2335AC:  MOV             R2, R0
2335AE:  VMOV.32         D16[0], R6
2335B2:  MOV             R3, R5
2335B4:  LDR.W           R4, [R3],#4
2335B8:  SUBS            R2, #4
2335BA:  STR             R4, [SP,#0x20+var_1C]
2335BC:  VLD1.32         {D20[0]}, [R1@32]
2335C0:  VMOVL.U8        Q10, D20
2335C4:  VSHR.U16        D20, D20, #7
2335C8:  VMOVL.U16       Q10, D20
2335CC:  VAND            Q10, Q10, Q9
2335D0:  VADD.I32        Q8, Q8, Q10
2335D4:  BNE             loc_2335B4
2335D6:  VEXT.8          Q9, Q8, Q8, #8
2335DA:  CMP             R6, R0
2335DC:  VADD.I32        Q8, Q8, Q9
2335E0:  VDUP.32         Q9, D16[1]
2335E4:  VADD.I32        Q8, Q8, Q9
2335E8:  VMOV.32         R4, D16[0]
2335EC:  BNE             loc_2335F4
2335EE:  B               loc_233604
2335F0:  MOVS            R0, #0
2335F2:  MOV             R4, R6
2335F4:  SUBS            R1, R6, R0
2335F6:  ADD             R0, R5
2335F8:  LDRB.W          R2, [R0],#1
2335FC:  SUBS            R1, #1
2335FE:  ADD.W           R4, R4, R2,LSR#7
233602:  BNE             loc_2335F8
233604:  LDR.W           R1, [R9,#4]
233608:  ADDS.W          R8, R4, #1
23360C:  BEQ             loc_233652
23360E:  MOV.W           R10, #0
233612:  B               loc_23363E
233614:  CBZ             R1, loc_233622
233616:  LDR.W           R0, [R9]; p
23361A:  CMP             R0, #0
23361C:  IT NE
23361E:  BLXNE           free
233622:  MOVS            R0, #0
233624:  STRD.W          R0, R0, [R9]
233628:  STR.W           R0, [R9,#8]
23362C:  B               loc_2336CA
23362E:  LDR.W           R1, [R9,#4]
233632:  MOV.W           R8, #1
233636:  MOVS            R4, #0
233638:  MOVS            R6, #0
23363A:  MOV.W           R10, #1
23363E:  LDR.W           R0, [R9]; ptr
233642:  CMP             R1, R8
233644:  BEQ             loc_233680
233646:  CBZ             R0, loc_233674
233648:  MOV             R1, R8; size
23364A:  BLX             realloc
23364E:  CBNZ            R0, loc_23367C
233650:  B               def_2334C6; jumptable 002334C6 default case
233652:  CBZ             R1, loc_233660
233654:  LDR.W           R0, [R9]; p
233658:  CMP             R0, #0
23365A:  IT NE
23365C:  BLXNE           free
233660:  MOVS            R0, #0
233662:  MOV.W           R4, #0xFFFFFFFF
233666:  STRD.W          R0, R0, [R9]
23366A:  MOV.W           R8, #0
23366E:  STR.W           R0, [R9,#8]
233672:  B               loc_233686
233674:  MOV             R0, R8; byte_count
233676:  BLX             malloc
23367A:  CBZ             R0, def_2334C6; jumptable 002334C6 default case
23367C:  STRD.W          R0, R8, [R9]
233680:  CMP.W           R10, #0
233684:  BNE             loc_2336B4
233686:  MOVS            R1, #0xC0
233688:  LDRB            R3, [R5]
23368A:  SXTB            R2, R3
23368C:  CMP             R2, #0
23368E:  BLT             loc_233696
233690:  STRB            R2, [R0]
233692:  MOVS            R2, #1
233694:  B               loc_2336A6
233696:  ORR.W           R2, R1, R3,LSR#6
23369A:  STRB            R2, [R0]
23369C:  LDRB            R3, [R5]
23369E:  MOVS            R2, #2
2336A0:  BFI.W           R3, R2, #6, #0x1A
2336A4:  STRB            R3, [R0,#1]
2336A6:  ADD             R0, R2
2336A8:  SUBS            R6, #1
2336AA:  ADD.W           R5, R5, #1
2336AE:  BNE             loc_233688
2336B0:  LDR.W           R0, [R9]
2336B4:  MOVS            R1, #0
2336B6:  STRB            R1, [R0,R4]
2336B8:  STR.W           R8, [R9,#8]
2336BC:  B               loc_2336FA
2336BE:  MOV             R0, R8; byte_count
2336C0:  BLX             malloc
2336C4:  CBZ             R0, def_2334C6; jumptable 002334C6 default case
2336C6:  STRD.W          R0, R8, [R9]
2336CA:  MOV             R1, R5; void *
2336CC:  MOV             R2, R6; size_t
2336CE:  BLX             memcpy_1
2336D2:  LDR.W           R0, [R9]
2336D6:  MOVS            R1, #0
2336D8:  STRB            R1, [R0,R6]
2336DA:  STR.W           R8, [R9,#8]
2336DE:  B               loc_2336FA
2336E0:  LDR.W           R0, [R9]; jumptable 002334C6 default case
2336E4:  CMP             R0, #0
2336E6:  IT NE
2336E8:  BLXNE           free
2336EC:  MOVS            R0, #0
2336EE:  STR.W           R0, [R9]
2336F2:  STR.W           R0, [R9,#4]
2336F6:  STR.W           R0, [R9,#8]
2336FA:  LDR.W           R0, [R9,#8]
2336FE:  CMP             R0, #0
233700:  IT NE
233702:  MOVNE           R0, #1
233704:  ADD             SP, SP, #8
233706:  POP.W           {R8-R10}
23370A:  POP             {R4-R7,PC}
