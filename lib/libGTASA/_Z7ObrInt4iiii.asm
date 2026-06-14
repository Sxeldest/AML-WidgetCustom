; =========================================================
; Game Engine Function: _Z7ObrInt4iiii
; Address            : 0x3F7494 - 0x3F774E
; =========================================================

3F7494:  PUSH            {R4-R7,LR}
3F7496:  ADD             R7, SP, #0xC
3F7498:  PUSH.W          {R8-R11}
3F749C:  SUB             SP, SP, #4
3F749E:  MOV             R10, R3
3F74A0:  MOV             R11, R2
3F74A2:  MOV             R9, R1
3F74A4:  CMP.W           R0, #0xFFFFFFFF
3F74A8:  BLE             loc_3F74B0
3F74AA:  MOV.W           R12, #0
3F74AE:  B               loc_3F74C0
3F74B0:  LDR             R1, =(obrstr_ptr - 0x3F74BE)
3F74B2:  NEGS            R0, R0
3F74B4:  MOV.W           R12, #1
3F74B8:  MOVS            R2, #0x2D ; '-'
3F74BA:  ADD             R1, PC; obrstr_ptr
3F74BC:  LDR             R1, [R1]; obrstr
3F74BE:  STRB            R2, [R1]
3F74C0:  LSLS            R1, R0, #0x10
3F74C2:  MOVS            R2, #1
3F74C4:  CMP.W           R1, #0x90000
3F74C8:  BLE             loc_3F74EA
3F74CA:  MOVW            LR, #0xCCCD
3F74CE:  MOV             R3, R0
3F74D0:  MOVT            LR, #0xCCCC
3F74D4:  UXTH            R1, R3
3F74D6:  ADDS            R2, #1
3F74D8:  UMULL.W         R3, R4, R1, LR
3F74DC:  CMP             R1, #0x63 ; 'c'
3F74DE:  SXTH            R2, R2
3F74E0:  MOV.W           R3, R4,LSR#3
3F74E4:  BHI             loc_3F74D4
3F74E6:  CMP             R2, #0
3F74E8:  BLE             loc_3F7524
3F74EA:  LDR             R1, =(obrstr_ptr - 0x3F74F8)
3F74EC:  ADD.W           R3, R12, R2
3F74F0:  MOVW            LR, #0x6667
3F74F4:  ADD             R1, PC; obrstr_ptr
3F74F6:  MOVT            LR, #0x6666
3F74FA:  LDR             R1, [R1]; obrstr
3F74FC:  ADD             R1, R3
3F74FE:  SUBS            R3, R1, #1
3F7500:  UXTH            R1, R2
3F7502:  SMMUL.W         R4, R0, LR
3F7506:  SUBS            R1, #1
3F7508:  MOV.W           R5, R4,ASR#2
3F750C:  ADD.W           R4, R5, R4,LSR#31
3F7510:  ADD.W           R5, R4, R4,LSL#2
3F7514:  SUB.W           R0, R0, R5,LSL#1
3F7518:  ADD.W           R0, R0, #0x30 ; '0'
3F751C:  STRB.W          R0, [R3],#-1
3F7520:  MOV             R0, R4
3F7522:  BNE             loc_3F7502
3F7524:  LDR             R0, =(obrstr_ptr - 0x3F752C)
3F7526:  MOVS            R1, #0
3F7528:  ADD             R0, PC; obrstr_ptr
3F752A:  LDR.W           R8, [R0]; obrstr
3F752E:  ADD.W           R0, R12, R2
3F7532:  STRB.W          R1, [R8,R0]
3F7536:  MOV             R0, R8; char *
3F7538:  BLX             strlen
3F753C:  MOVW            R1, #0x2020
3F7540:  MOV.W           R12, #0
3F7544:  STRH.W          R1, [R8,R0]
3F7548:  ADD             R0, R8
3F754A:  CMP.W           R9, #0xFFFFFFFF
3F754E:  STRB.W          R12, [R0,#2]
3F7552:  BGT             loc_3F7566
3F7554:  LDR             R0, =(obrstr2_ptr - 0x3F7564)
3F7556:  RSB.W           R9, R9, #0
3F755A:  MOV.W           R12, #1
3F755E:  MOVS            R1, #0x2D ; '-'
3F7560:  ADD             R0, PC; obrstr2_ptr
3F7562:  LDR             R0, [R0]; obrstr2
3F7564:  STRB            R1, [R0]
3F7566:  MOV.W           R0, R9,LSL#16
3F756A:  CMP.W           R0, #0x90000
3F756E:  BLE             loc_3F7594
3F7570:  MOVW            R1, #0xCCCD
3F7574:  MOVS            R0, #1
3F7576:  MOVT            R1, #0xCCCC
3F757A:  MOV             R2, R9
3F757C:  UXTH            R3, R2
3F757E:  ADDS            R0, #1
3F7580:  UMULL.W         R2, R5, R3, R1
3F7584:  CMP             R3, #0x63 ; 'c'
3F7586:  SXTH            R0, R0
3F7588:  MOV.W           R2, R5,LSR#3
3F758C:  BHI             loc_3F757C
3F758E:  CMP             R0, #0
3F7590:  BGT             loc_3F7596
3F7592:  B               loc_3F75D0
3F7594:  MOVS            R0, #1
3F7596:  LDR             R1, =(obrstr2_ptr - 0x3F75A4)
3F7598:  ADD.W           R2, R12, R0
3F759C:  MOVW            R3, #0x6667
3F75A0:  ADD             R1, PC; obrstr2_ptr
3F75A2:  MOVT            R3, #0x6666
3F75A6:  LDR             R1, [R1]; obrstr2
3F75A8:  ADD             R1, R2
3F75AA:  UXTH            R2, R0
3F75AC:  SUBS            R1, #1
3F75AE:  SMMUL.W         R5, R9, R3
3F75B2:  SUBS            R2, #1
3F75B4:  MOV.W           R4, R5,ASR#2
3F75B8:  ADD.W           R6, R4, R5,LSR#31
3F75BC:  ADD.W           R5, R6, R6,LSL#2
3F75C0:  SUB.W           R5, R9, R5,LSL#1
3F75C4:  MOV             R9, R6
3F75C6:  ADD.W           R5, R5, #0x30 ; '0'
3F75CA:  STRB.W          R5, [R1],#-1
3F75CE:  BNE             loc_3F75AE
3F75D0:  LDR             R1, =(obrstr2_ptr - 0x3F75DE)
3F75D2:  ADD             R0, R12
3F75D4:  LDR             R2, =(obrstr_ptr - 0x3F75E0)
3F75D6:  MOV.W           R8, #0
3F75DA:  ADD             R1, PC; obrstr2_ptr
3F75DC:  ADD             R2, PC; obrstr_ptr
3F75DE:  LDR             R1, [R1]; obrstr2 ; src
3F75E0:  LDR             R6, [R2]; obrstr
3F75E2:  STRB.W          R8, [R1,R0]
3F75E6:  MOV             R0, R6; dest
3F75E8:  BLX             strcat
3F75EC:  MOV             R0, R6; char *
3F75EE:  BLX             strlen
3F75F2:  MOVW            R1, #0x2020
3F75F6:  CMP.W           R11, #0xFFFFFFFF
3F75FA:  STRH            R1, [R6,R0]
3F75FC:  ADD             R0, R6
3F75FE:  STRB.W          R8, [R0,#2]
3F7602:  BGT             loc_3F7616
3F7604:  LDR             R0, =(obrstr2_ptr - 0x3F7614)
3F7606:  RSB.W           R11, R11, #0
3F760A:  MOV.W           R8, #1
3F760E:  MOVS            R1, #0x2D ; '-'
3F7610:  ADD             R0, PC; obrstr2_ptr
3F7612:  LDR             R0, [R0]; obrstr2
3F7614:  STRB            R1, [R0]
3F7616:  MOV.W           R0, R11,LSL#16
3F761A:  CMP.W           R0, #0x90000
3F761E:  BLE             loc_3F7644
3F7620:  MOVW            R1, #0xCCCD
3F7624:  MOVS            R0, #1
3F7626:  MOVT            R1, #0xCCCC
3F762A:  MOV             R2, R11
3F762C:  UXTH            R3, R2
3F762E:  ADDS            R0, #1
3F7630:  UMULL.W         R2, R6, R3, R1
3F7634:  CMP             R3, #0x63 ; 'c'
3F7636:  SXTH            R0, R0
3F7638:  MOV.W           R2, R6,LSR#3
3F763C:  BHI             loc_3F762C
3F763E:  CMP             R0, #0
3F7640:  BGT             loc_3F7646
3F7642:  B               loc_3F7680
3F7644:  MOVS            R0, #1
3F7646:  LDR             R1, =(obrstr2_ptr - 0x3F7654)
3F7648:  ADD.W           R2, R8, R0
3F764C:  MOVW            R3, #0x6667
3F7650:  ADD             R1, PC; obrstr2_ptr
3F7652:  MOVT            R3, #0x6666
3F7656:  LDR             R1, [R1]; obrstr2
3F7658:  ADD             R1, R2
3F765A:  UXTH            R2, R0
3F765C:  SUBS            R1, #1
3F765E:  SMMUL.W         R6, R11, R3
3F7662:  SUBS            R2, #1
3F7664:  MOV.W           R5, R6,ASR#2
3F7668:  ADD.W           R6, R5, R6,LSR#31
3F766C:  ADD.W           R5, R6, R6,LSL#2
3F7670:  SUB.W           R5, R11, R5,LSL#1
3F7674:  MOV             R11, R6
3F7676:  ADD.W           R5, R5, #0x30 ; '0'
3F767A:  STRB.W          R5, [R1],#-1
3F767E:  BNE             loc_3F765E
3F7680:  LDR             R1, =(obrstr2_ptr - 0x3F768C)
3F7682:  ADD             R0, R8
3F7684:  LDR             R2, =(obrstr_ptr - 0x3F768E)
3F7686:  MOVS            R6, #0
3F7688:  ADD             R1, PC; obrstr2_ptr
3F768A:  ADD             R2, PC; obrstr_ptr
3F768C:  LDR             R1, [R1]; obrstr2 ; src
3F768E:  LDR             R5, [R2]; obrstr
3F7690:  STRB            R6, [R1,R0]
3F7692:  MOV             R0, R5; dest
3F7694:  BLX             strcat
3F7698:  MOV             R0, R5; char *
3F769A:  BLX             strlen
3F769E:  MOVW            R1, #0x2020
3F76A2:  CMP.W           R10, #0xFFFFFFFF
3F76A6:  STRH            R1, [R5,R0]
3F76A8:  ADD             R0, R5
3F76AA:  STRB            R6, [R0,#2]
3F76AC:  BGT             loc_3F76BE
3F76AE:  LDR             R0, =(obrstr2_ptr - 0x3F76BC)
3F76B0:  RSB.W           R10, R10, #0
3F76B4:  MOVS            R6, #1
3F76B6:  MOVS            R1, #0x2D ; '-'
3F76B8:  ADD             R0, PC; obrstr2_ptr
3F76BA:  LDR             R0, [R0]; obrstr2
3F76BC:  STRB            R1, [R0]
3F76BE:  MOV.W           R0, R10,LSL#16
3F76C2:  CMP.W           R0, #0x90000
3F76C6:  BLE             loc_3F76EC
3F76C8:  MOVW            R1, #0xCCCD
3F76CC:  MOVS            R0, #1
3F76CE:  MOVT            R1, #0xCCCC
3F76D2:  MOV             R2, R10
3F76D4:  UXTH            R3, R2
3F76D6:  ADDS            R0, #1
3F76D8:  UMULL.W         R2, R5, R3, R1
3F76DC:  CMP             R3, #0x63 ; 'c'
3F76DE:  SXTH            R0, R0
3F76E0:  MOV.W           R2, R5,LSR#3
3F76E4:  BHI             loc_3F76D4
3F76E6:  CMP             R0, #0
3F76E8:  BGT             loc_3F76EE
3F76EA:  B               loc_3F7726
3F76EC:  MOVS            R0, #1
3F76EE:  LDR             R1, =(obrstr2_ptr - 0x3F76FA)
3F76F0:  ADDS            R2, R6, R0
3F76F2:  MOVW            R3, #0x6667
3F76F6:  ADD             R1, PC; obrstr2_ptr
3F76F8:  MOVT            R3, #0x6666
3F76FC:  LDR             R1, [R1]; obrstr2
3F76FE:  ADD             R1, R2
3F7700:  UXTH            R2, R0
3F7702:  SUBS            R1, #1
3F7704:  SMMUL.W         R5, R10, R3
3F7708:  SUBS            R2, #1
3F770A:  MOV.W           R4, R5,ASR#2
3F770E:  ADD.W           R5, R4, R5,LSR#31
3F7712:  ADD.W           R4, R5, R5,LSL#2
3F7716:  SUB.W           R4, R10, R4,LSL#1
3F771A:  MOV             R10, R5
3F771C:  ADD.W           R4, R4, #0x30 ; '0'
3F7720:  STRB.W          R4, [R1],#-1
3F7724:  BNE             loc_3F7704
3F7726:  LDR             R1, =(obrstr2_ptr - 0x3F7730)
3F7728:  ADD             R0, R6
3F772A:  LDR             R2, =(obrstr_ptr - 0x3F7732)
3F772C:  ADD             R1, PC; obrstr2_ptr
3F772E:  ADD             R2, PC; obrstr_ptr
3F7730:  LDR             R1, [R1]; obrstr2 ; src
3F7732:  LDR             R4, [R2]; obrstr
3F7734:  MOVS            R2, #0
3F7736:  STRB            R2, [R1,R0]
3F7738:  MOV             R0, R4; dest
3F773A:  BLX             strcat
3F773E:  MOV             R0, R4; this
3F7740:  ADD             SP, SP, #4
3F7742:  POP.W           {R8-R11}
3F7746:  POP.W           {R4-R7,LR}
3F774A:  B.W             sub_1993B0
