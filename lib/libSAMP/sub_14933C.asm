; =========================================================
; Game Engine Function: sub_14933C
; Address            : 0x14933C - 0x1499F8
; =========================================================

14933C:  PUSH            {R4-R7,LR}
14933E:  ADD             R7, SP, #0xC
149340:  PUSH.W          {R8-R11}
149344:  SUB             SP, SP, #0xE4
149346:  MOV             R4, R0
149348:  LDR.W           R0, [R0,#0x128]
14934C:  CMP             R0, #0
14934E:  BEQ.W           loc_1494AC
149352:  LDRB            R1, [R4,#0x19]
149354:  CMP             R1, #0
149356:  BEQ.W           loc_1494AC
14935A:  ADD.W           R8, R4, #0x128
14935E:  ADD.W           R10, R4, #0x7A ; 'z'
149362:  CMP             R1, #0x11
149364:  BNE             loc_14937E
149366:  MOV             R11, R4
149368:  LDRB.W          R1, [R11,#0x1A]!
14936C:  CMP             R1, #0x10
14936E:  BNE.W           loc_149640
149372:  BL              sub_104108
149376:  CMP             R0, #0
149378:  BEQ.W           loc_1494D0
14937C:  LDRB            R1, [R4,#0x19]
14937E:  CMP             R1, #0x13
149380:  BNE.W           loc_149582
149384:  MOV             R11, R4
149386:  LDRB.W          R0, [R11,#0x1A]!
14938A:  CMP             R0, #0x11
14938C:  BNE.W           loc_149654
149390:  LDR.W           R0, [R8]
149394:  BL              sub_104108
149398:  CMP             R0, #0
14939A:  BEQ.W           loc_149580
14939E:  LDR             R0, [R4,#4]
1493A0:  CMP             R0, #0
1493A2:  BEQ.W           loc_1499C8
1493A6:  BL              sub_109FEA
1493AA:  CMP             R0, #0
1493AC:  BEQ.W           loc_1499C8
1493B0:  ADD.W           R9, R4, #0xC0
1493B4:  MOV             R0, R9
1493B6:  BL              sub_17D2F2
1493BA:  ADD             R1, SP, #0x100+var_9C
1493BC:  MOV             R0, R9
1493BE:  BL              sub_17D238
1493C2:  MOV             R9, R4
1493C4:  ADD.W           R12, SP, #0x100+var_6C
1493C8:  LDR.W           R1, [R9,#0xD0]!
1493CC:  LDR.W           R0, [R9,#-0xCC]
1493D0:  LDRD.W          R2, R3, [R9,#4]
1493D4:  STM.W           R12, {R1-R3}
1493D8:  BL              sub_F8A2C
1493DC:  MOVW            R1, #0x21A
1493E0:  CMP             R0, R1
1493E2:  BEQ             loc_149414
1493E4:  LDR             R0, [R4,#4]
1493E6:  BL              sub_F8A2C
1493EA:  MOVW            R1, #0x219
1493EE:  CMP             R0, R1
1493F0:  BEQ             loc_149414
1493F2:  LDR             R0, [R4,#4]
1493F4:  BL              sub_F8A2C
1493F8:  MOVW            R1, #0x1C1
1493FC:  CMP             R0, R1
1493FE:  BEQ             loc_149414
149400:  ADD.W           R3, R4, #0xDC
149404:  ADD             R1, SP, #0x100+var_9C
149406:  MOV             R0, R4
149408:  MOV             R2, R9
14940A:  BL              sub_149C18
14940E:  MOV             R0, R4
149410:  BL              sub_149CC4
149414:  LDR             R0, [R4,#4]
149416:  BL              sub_F8A2C
14941A:  CMP.W           R0, #0x208
14941E:  BNE             loc_149430
149420:  LDR             R0, [R4,#4]
149422:  BL              sub_109864
149426:  CMP             R0, #2
149428:  ITT NE
14942A:  LDRNE           R0, [R4,#4]
14942C:  BLNE            sub_109864
149430:  LDR             R0, [R4,#4]
149432:  LDR.W           R1, [R4,#0xE8]
149436:  BL              sub_109AD0
14943A:  LDRH.W          R0, [R4,#0xF1]
14943E:  MOVW            R1, #0xF830
149442:  SUB.W           R0, R0, #0x7D0
149446:  UXTH            R0, R0
149448:  CMP             R0, R1
14944A:  BHI             loc_149462
14944C:  LDR             R0, [R4,#4]
14944E:  BL              sub_109E00
149452:  CBZ             R0, loc_149462
149454:  LDR             R0, [R4,#4]
149456:  BL              sub_1099D0
14945A:  LDR             R0, [R4,#4]
14945C:  MOVS            R1, #0
14945E:  BL              sub_109C00
149462:  LDR.W           R0, [R4,#0x128]
149466:  LDRB.W          R5, [R4,#0xEE]
14946A:  BL              sub_104648
14946E:  AND.W           R9, R5, #0x3F ; '?'
149472:  CMP             R0, R9
149474:  BEQ.W           loc_149578
149478:  LDR.W           R0, [R8]
14947C:  MOV             R1, R9
14947E:  MOVS            R2, #0
149480:  BL              sub_10479C
149484:  LDR.W           R0, [R8]
149488:  BL              sub_104648
14948C:  CMP             R0, R9
14948E:  BEQ             loc_149578
149490:  LDR.W           R0, [R8]
149494:  MOV             R1, R9
149496:  MOVW            R2, #0x270F
14949A:  BL              sub_104950
14949E:  LDR.W           R0, [R8]
1494A2:  MOV             R1, R9
1494A4:  MOVS            R2, #0
1494A6:  BL              sub_10479C
1494AA:  B               loc_149578
1494AC:  CMP             R0, #0
1494AE:  BEQ.W           loc_1499C8
1494B2:  MOV             R0, R4
1494B4:  BL              sub_149278
1494B8:  LDR             R0, =(off_234970 - 0x1494C2)
1494BA:  LDR.W           R1, [R4,#0x128]
1494BE:  ADD             R0, PC; off_234970
1494C0:  LDR             R0, [R0]; dword_23DEF0
1494C2:  LDR             R0, [R0]
1494C4:  BL              sub_F9E64
1494C8:  MOVS            R0, #0
1494CA:  STR.W           R0, [R4,#0x128]
1494CE:  B               loc_1499C8
1494D0:  LDR.W           R5, [R10,#4]
1494D4:  LDR.W           R1, [R10,#0x20]
1494D8:  LDR.W           R2, [R10,#0x24]
1494DC:  LDR.W           R3, [R10,#0x28]
1494E0:  LDR.W           R0, [R4,#0x128]
1494E4:  LDR.W           R6, [R10]
1494E8:  LDR.W           R12, [R10,#8]
1494EC:  STR.W           R8, [SP,#0x100+var_B4]
1494F0:  LDRB.W          R8, [R4,#0x19]
1494F4:  LDRH.W          R9, [R4,#0xB2]
1494F8:  STRD.W          R6, R5, [R4,#0x28]
1494FC:  STRD.W          R12, R1, [R4,#0x30]
149500:  STRD.W          R2, R3, [R4,#0x38]
149504:  BL              sub_F89BC
149508:  CMP.W           R8, #0x11
14950C:  BNE             loc_14951A
14950E:  SUB.W           R0, R9, #1
149512:  MOVW            R1, #0xBB7
149516:  CMP             R0, R1
149518:  BCC             loc_149520
14951A:  MOV             R0, R4
14951C:  BL              sub_149A00
149520:  LDR.W           R0, [R4,#0x128]
149524:  LDRB.W          R6, [R4,#0x98]
149528:  BL              sub_F8C70
14952C:  LDR.W           R8, [SP,#0x100+var_B4]
149530:  CBZ             R0, loc_149574
149532:  LDR.W           R0, [R8]
149536:  AND.W           R9, R6, #0x3F ; '?'
14953A:  BL              sub_104648
14953E:  CMP             R0, R9
149540:  BEQ             loc_149574
149542:  LDR.W           R0, [R8]
149546:  MOV             R1, R9
149548:  MOVS            R2, #0
14954A:  BL              sub_10479C
14954E:  LDR.W           R0, [R8]
149552:  BL              sub_104648
149556:  CMP             R0, R9
149558:  BEQ             loc_149574
14955A:  LDR.W           R0, [R8]
14955E:  MOV             R1, R9
149560:  MOVW            R2, #0x270F
149564:  BL              sub_104950
149568:  LDR.W           R0, [R8]
14956C:  MOV             R1, R9
14956E:  MOVS            R2, #0
149570:  BL              sub_10479C
149574:  MOVS            R0, #0
149576:  STR             R0, [R4,#4]
149578:  MOVS            R0, #0
14957A:  STRB.W          R0, [R11]
14957E:  B               loc_14963A
149580:  LDRB            R1, [R4,#0x19]
149582:  CMP             R1, #0x12
149584:  BNE             loc_14963C
149586:  MOV             R11, R4
149588:  LDRB.W          R0, [R11,#0x1A]!
14958C:  CMP             R0, #0x12
14958E:  BNE             loc_14963A
149590:  LDR.W           R0, [R8]
149594:  BL              sub_104108
149598:  CMP             R0, #0
14959A:  BEQ             loc_14963A
14959C:  LDR             R0, [R4,#4]
14959E:  CMP             R0, #0
1495A0:  BEQ.W           loc_1499C8
1495A4:  LDR             R0, [R0,#8]
1495A6:  BL              sub_108354
1495AA:  CMP             R0, #0
1495AC:  BEQ.W           loc_1499C8
1495B0:  LDR.W           R0, [R8]
1495B4:  BL              sub_F8C70
1495B8:  CBZ             R0, loc_149600
1495BA:  LDR.W           R0, [R4,#0x128]
1495BE:  LDRB.W          R1, [R4,#0xFB]
1495C2:  AND.W           R9, R1, #0x3F ; '?'
1495C6:  BL              sub_104648
1495CA:  CMP             R0, R9
1495CC:  BEQ             loc_149600
1495CE:  LDR.W           R0, [R8]
1495D2:  MOV             R1, R9
1495D4:  MOVS            R2, #0
1495D6:  BL              sub_10479C
1495DA:  LDR.W           R0, [R8]
1495DE:  BL              sub_104648
1495E2:  CMP             R0, R9
1495E4:  BEQ             loc_149600
1495E6:  LDR.W           R0, [R8]
1495EA:  MOV             R1, R9
1495EC:  MOVW            R2, #0x270F
1495F0:  BL              sub_104950
1495F4:  LDR.W           R0, [R8]
1495F8:  MOV             R1, R9
1495FA:  MOVS            R2, #0
1495FC:  BL              sub_10479C
149600:  LDR.W           R0, [R8]
149604:  BL              sub_10414A
149608:  CMP             R0, #0x32 ; '2'
14960A:  BNE             loc_149578
14960C:  LDR.W           R0, [R4,#0x128]
149610:  LDRB.W          R5, [R4,#0xFA]
149614:  BL              sub_106B50
149618:  LSLS            R1, R5, #0x19
14961A:  BMI.W           loc_1499D0
14961E:  CMP             R0, #0
149620:  BEQ             loc_149578
149622:  LDR.W           R0, [R8]
149626:  BL              sub_F8C70
14962A:  CMP             R0, #0
14962C:  BEQ             loc_149578
14962E:  LDR.W           R0, [R8]
149632:  BL              sub_1046BC
149636:  MOVS            R0, #0
149638:  B               loc_1499F4
14963A:  LDRB            R1, [R4,#0x19]
14963C:  CMP             R1, #0x11
14963E:  BNE             loc_14964E
149640:  LDR.W           R0, [R8]
149644:  BL              sub_104108
149648:  CMP             R0, #0
14964A:  BEQ             loc_149736
14964C:  LDRB            R1, [R4,#0x19]
14964E:  CMP             R1, #0x13
149650:  BNE.W           loc_1497AC
149654:  LDR.W           R0, [R8]
149658:  BL              sub_104108
14965C:  CMP             R0, #0
14965E:  BEQ.W           loc_1497AA
149662:  LDR             R0, [R4,#4]
149664:  CBZ             R0, loc_149694
149666:  BL              sub_F8A2C
14966A:  MOVW            R1, #0x21A
14966E:  CMP             R0, R1
149670:  BEQ             loc_149694
149672:  LDR             R0, [R4,#4]
149674:  BL              sub_F8A2C
149678:  MOVW            R1, #0x219
14967C:  CMP             R0, R1
14967E:  BEQ             loc_149694
149680:  LDR             R0, [R4,#4]
149682:  BL              sub_F8A2C
149686:  MOVW            R1, #0x1C1
14968A:  CMP             R0, R1
14968C:  ITT NE
14968E:  MOVNE           R0, R4
149690:  BLNE            sub_14A0B8
149694:  LDR.W           R0, [R4,#0x128]
149698:  MOVS            R1, #0
14969A:  STRB            R1, [R4,#0x1C]
14969C:  BL              sub_1051C0
1496A0:  LDR             R0, [R4,#4]
1496A2:  CBZ             R0, loc_1496B4
1496A4:  BL              sub_109A0C
1496A8:  CBZ             R0, loc_1496B4
1496AA:  LDR.W           R0, [R8]
1496AE:  LDR             R1, [R0]
1496B0:  LDR             R1, [R1,#0xC]
1496B2:  BLX             R1
1496B4:  LDRB            R0, [R4,#0x18]
1496B6:  CBZ             R0, loc_1496E4
1496B8:  VLDR            S0, [R4,#0xDC]
1496BC:  VCMP.F32        S0, #0.0
1496C0:  VMRS            APSR_nzcv, FPSCR
1496C4:  BNE             loc_1496E4
1496C6:  VLDR            S2, [R4,#0xE0]
1496CA:  VCMP.F32        S2, #0.0
1496CE:  VMRS            APSR_nzcv, FPSCR
1496D2:  ITTT EQ
1496D4:  VLDREQ          S4, [R4,#0xE4]
1496D8:  VCMPEQ.F32      S4, #0.0
1496DC:  VMRSEQ          APSR_nzcv, FPSCR
1496E0:  BEQ.W           loc_149916
1496E4:  LDRH.W          R3, [R4,#0xBE]
1496E8:  LDRH.W          R2, [R4,#0xBC]
1496EC:  LDRH.W          R1, [R4,#0xBA]
1496F0:  LDR.W           R0, [R4,#0x128]
1496F4:  BL              sub_104B1C
1496F8:  LDR.W           R0, [R4,#0x128]
1496FC:  BL              nullsub_10
149700:  VLDR            S0, [R4,#0xDC]
149704:  LDRB            R0, [R4,#0x10]
149706:  VCMP.F32        S0, #0.0
14970A:  VMRS            APSR_nzcv, FPSCR
14970E:  ITTT EQ
149710:  VLDREQ          S0, [R4,#0xE0]
149714:  VCMPEQ.F32      S0, #0.0
149718:  VMRSEQ          APSR_nzcv, FPSCR
14971C:  BEQ.W           loc_1498EA
149720:  CMP             R0, #0
149722:  BNE.W           loc_14999E
149726:  BL              sub_F0B30
14972A:  LDR.W           R1, [R4,#0x120]
14972E:  SUBS            R0, R0, R1
149730:  MOVW            R1, #0x5DD
149734:  B               loc_14990C
149736:  MOV             R0, R4
149738:  BL              sub_149F48
14973C:  LDR.W           R0, [R4,#0x128]
149740:  MOVS            R6, #0
149742:  LDRH.W          R3, [R4,#0x78]
149746:  LDRH.W          R2, [R4,#0x76]
14974A:  LDRH.W          R1, [R4,#0x74]
14974E:  STRB            R6, [R4,#0x1C]
149750:  BL              sub_104B1C
149754:  LDR.W           R1, [R10,#0x20]
149758:  VMOV            S0, R1
14975C:  VCMP.F32        S0, #0.0
149760:  VMRS            APSR_nzcv, FPSCR
149764:  BNE             loc_149792
149766:  LDR.W           R2, [R10,#0x24]
14976A:  VMOV            S0, R2
14976E:  VCMP.F32        S0, #0.0
149772:  VMRS            APSR_nzcv, FPSCR
149776:  BNE             loc_149792
149778:  LDR.W           R3, [R10,#0x28]
14977C:  VMOV            S0, R3
149780:  VCMP.F32        S0, #0.0
149784:  VMRS            APSR_nzcv, FPSCR
149788:  ITT EQ
14978A:  LDREQ.W         R0, [R8]
14978E:  BLEQ            sub_F89BC
149792:  BL              sub_F0B30
149796:  LDR.W           R1, [R4,#0x120]
14979A:  SUBS            R0, R0, R1
14979C:  MOVW            R1, #0x5DD
1497A0:  CMP             R0, R1
1497A2:  BCC             loc_1497E4
1497A4:  MOVS            R0, #1
1497A6:  STRB            R0, [R4,#0x10]
1497A8:  B               loc_1497EA
1497AA:  LDRB            R1, [R4,#0x19]
1497AC:  CMP             R1, #0x12
1497AE:  BNE             loc_1497BE
1497B0:  LDR.W           R0, [R8]
1497B4:  BL              sub_104108
1497B8:  CMP             R0, #0
1497BA:  BNE.W           loc_14999E
1497BE:  LDR.W           R0, [R4,#0x128]
1497C2:  MOVS            R1, #0
1497C4:  MOVS            R2, #0
1497C6:  MOVS            R3, #0
1497C8:  MOVS            R5, #0
1497CA:  BL              sub_104B1C
1497CE:  LDR.W           R0, [R4,#0x128]
1497D2:  MOVS            R1, #0
1497D4:  MOVS            R2, #0
1497D6:  MOVS            R3, #0
1497D8:  BL              sub_F89BC
1497DC:  STRB            R5, [R4,#0x1C]
1497DE:  B               loc_14999E
1497E0:  DCD off_234970 - 0x1494C2
1497E4:  LDRB            R0, [R4,#0x10]
1497E6:  CMP             R0, #0
1497E8:  BEQ             loc_149884
1497EA:  BL              sub_F0B30
1497EE:  LDR.W           R1, [R4,#0x120]
1497F2:  SUBS            R0, R0, R1
1497F4:  MOVW            R1, #0xBB9
1497F8:  CMP             R0, R1
1497FA:  BCC             loc_149884
1497FC:  LDR.W           R0, [R4,#0x128]
149800:  MOVS            R1, #0
149802:  STR             R1, [R4,#0x74]
149804:  MOVS            R1, #0
149806:  MOVS            R2, #0
149808:  MOVS            R3, #0
14980A:  BL              sub_F89BC
14980E:  LDR.W           R0, [R4,#0x128]
149812:  ADD             R1, SP, #0x100+var_5C
149814:  BL              sub_F8910
149818:  LDR             R0, [SP,#0x100+var_5C]
14981A:  ADD.W           R11, SP, #0x100+var_4C
14981E:  STR             R0, [SP,#0x100+var_B8]
149820:  LDR             R0, [SP,#0x100+var_58]
149822:  STR             R0, [SP,#0x100+var_BC]
149824:  LDR             R0, [SP,#0x100+var_54]
149826:  STR             R0, [SP,#0x100+var_C0]
149828:  LDR             R0, [SP,#0x100+var_50]
14982A:  STR             R0, [SP,#0x100+var_C8]
14982C:  LDR.W           R0, [R4,#0x128]
149830:  LDR.W           R6, [R10]
149834:  LDR.W           R5, [R10,#4]
149838:  LDR.W           R12, [R10,#8]
14983C:  STR             R0, [SP,#0x100+var_C4]
14983E:  LDRD.W          R2, R0, [SP,#0x100+var_34]
149842:  STR.W           R8, [SP,#0x100+var_B4]
149846:  LDM.W           R11, {R8-R11}
14984A:  STRD.W          R0, R6, [SP,#0x100+var_E0]
14984E:  LDR             R0, [SP,#0x100+var_C8]
149850:  LDRD.W          R3, LR, [SP,#0x100+var_3C]
149854:  STRD.W          R0, R8, [SP,#0x100+var_100]
149858:  ADD             R0, SP, #0x100+var_F8
14985A:  LDR             R1, [SP,#0x100+var_20]
14985C:  STR             R1, [SP,#0x100+var_D0]
14985E:  STR             R2, [SP,#0x100+var_E4]
149860:  STM.W           R0, {R9-R11}
149864:  STRD.W          R3, LR, [SP,#0x100+var_EC]
149868:  LDRD.W          R2, R1, [SP,#0x100+var_BC]
14986C:  LDRD.W          R0, R3, [SP,#0x100+var_C4]
149870:  STRD.W          R6, R5, [SP,#0x100+var_2C]
149874:  STR.W           R12, [SP,#0x100+var_24]
149878:  STRD.W          R5, R12, [SP,#0x100+var_D8]
14987C:  LDR.W           R8, [SP,#0x100+var_B4]
149880:  BL              sub_F894A
149884:  LDRH.W          R1, [R4,#0xB2]
149888:  MOVW            R5, #0xF449
14988C:  LDRB            R2, [R4,#0x19]
14988E:  MOVS            R6, #0
149890:  SUBW            R1, R1, #0xBB8
149894:  LDRB            R3, [R4,#0x1B]
149896:  LDR.W           R0, [R4,#0x128]
14989A:  UXTH            R1, R1
14989C:  CMP             R1, R5
14989E:  MOV.W           R1, #0
1498A2:  IT CC
1498A4:  MOVCC           R1, #1
1498A6:  SUBS            R2, #0x11
1498A8:  IT NE
1498AA:  MOVNE           R2, #1
1498AC:  ORRS            R1, R2
1498AE:  SUBS            R2, R3, #3
1498B0:  IT NE
1498B2:  MOVNE           R2, #1
1498B4:  AND.W           R5, R1, R2
1498B8:  MOV             R1, R5
1498BA:  BL              sub_F8F1C
1498BE:  LDR.W           R0, [R4,#0x128]
1498C2:  MOV             R1, R5
1498C4:  BL              sub_F8EC0
1498C8:  LDR             R0, [R4,#0x20]
1498CA:  LDR.W           R1, [R4,#0xB4]
1498CE:  CMP             R1, R0
1498D0:  BNE             loc_1498D6
1498D2:  STR             R6, [R4,#4]
1498D4:  B               loc_14999E
1498D6:  CBZ             R1, loc_149930
1498D8:  LDR.W           R0, [R4,#0x128]
1498DC:  STR             R1, [SP,#0x100+var_A8]
1498DE:  ADD             R1, SP, #0x100+var_A8
1498E0:  BL              sub_104DD4
1498E4:  LDR.W           R5, [R4,#0xB4]
1498E8:  B               loc_149998
1498EA:  VLDR            S0, [R4,#0xE4]
1498EE:  VCMP.F32        S0, #0.0
1498F2:  VMRS            APSR_nzcv, FPSCR
1498F6:  BNE.W           loc_149720
1498FA:  CMP             R0, #0
1498FC:  BNE             loc_14999E
1498FE:  BL              sub_F0B30
149902:  LDR.W           R1, [R4,#0x120]
149906:  SUBS            R0, R0, R1
149908:  MOVW            R1, #0xBB9
14990C:  CMP             R0, R1
14990E:  ITT CS
149910:  MOVCS           R0, #1
149912:  STRBCS          R0, [R4,#0x10]
149914:  B               loc_14999E
149916:  LDR             R0, [R4,#4]
149918:  CMP             R0, #0
14991A:  BEQ.W           loc_1496E4
14991E:  VMOV            R3, S4
149922:  VMOV            R2, S2
149926:  VMOV            R1, S0
14992A:  BL              sub_F89BC
14992E:  B               loc_1496E4
149930:  MOVW            R1, #0x67C
149934:  MOVS            R5, #0
149936:  MOVT            R1, #0x1804
14993A:  CMP             R0, R1
14993C:  BNE             loc_149998
14993E:  MOVS            R3, #0
149940:  LDR             R1, =(aVendEatP - 0x149960); "VEND_EAT_P" ...
149942:  LDR.W           R0, [R4,#0x128]
149946:  MOVT            R3, #0x4010
14994A:  LDR             R2, =(aVending - 0x149962); "VENDING" ...
14994C:  SUB.W           R9, R7, #-var_AA
149950:  STRD.W          R5, R3, [SP,#0x100+var_A8]
149954:  SUB.W           R3, R7, #-var_A9
149958:  STRD.W          R3, R9, [SP,#0x100+var_100]
14995C:  ADD             R1, PC; "VEND_EAT_P"
14995E:  ADD             R2, PC; "VENDING"
149960:  ADD             R3, SP, #0x100+var_A8
149962:  ADD.W           R12, SP, #0x100+var_B0
149966:  MOV             R6, R8
149968:  SUB.W           R8, R7, #-var_AB
14996C:  STRB.W          R5, [R7,#var_A9]
149970:  STRB.W          R5, [R7,#var_AA]
149974:  ADD.W           LR, SP, #0x100+var_AC
149978:  STRB.W          R5, [R7,#var_AB]
14997C:  STRB.W          R5, [SP,#0x100+var_AC]
149980:  MOV.W           R5, #0xFFFFFFFF
149984:  STR.W           R8, [SP,#0x100+var_F8]
149988:  MOV             R8, R6
14998A:  STR             R5, [SP,#0x100+var_B0]
14998C:  STRD.W          LR, R12, [SP,#0x100+var_F4]
149990:  BL              sub_104F28
149994:  STR.W           R5, [R4,#0xB4]
149998:  MOVS            R0, #0
14999A:  STR             R5, [R4,#0x20]
14999C:  STRB            R0, [R4,#0x11]
14999E:  LDRB            R0, [R4,#0x19]
1499A0:  CMP             R0, #0x20 ; ' '
1499A2:  BEQ             loc_1499B2
1499A4:  LDR.W           R0, [R8]
1499A8:  MOVS            R1, #0x447A0000
1499AE:  BL              sub_1042F4
1499B2:  BL              sub_F0B30
1499B6:  LDR.W           R1, [R4,#0x120]
1499BA:  SUBS            R0, R0, R1
1499BC:  MOVW            R1, #0x5DB
1499C0:  CMP             R0, R1
1499C2:  ITT LS
1499C4:  MOVLS           R0, #0
1499C6:  STRBLS          R0, [R4,#0x10]
1499C8:  ADD             SP, SP, #0xE4
1499CA:  POP.W           {R8-R11}
1499CE:  POP             {R4-R7,PC}
1499D0:  CMP             R0, #0
1499D2:  BNE.W           loc_149578
1499D6:  LDR.W           R0, [R8]
1499DA:  BL              sub_F8C70
1499DE:  CMP             R0, #0
1499E0:  BEQ.W           loc_149578
1499E4:  LDR.W           R0, [R8]
1499E8:  BL              sub_104700
1499EC:  CMP             R0, #0
1499EE:  BEQ.W           loc_149578
1499F2:  MOVS            R0, #1
1499F4:  STRB            R0, [R4,#0x1C]
1499F6:  B               loc_149578
