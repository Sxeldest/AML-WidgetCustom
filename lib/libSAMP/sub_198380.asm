; =========================================================
; Game Engine Function: sub_198380
; Address            : 0x198380 - 0x19914A
; =========================================================

198380:  PUSH            {R4-R7,LR}
198382:  ADD             R7, SP, #0xC
198384:  PUSH.W          {R8-R11}
198388:  SUB.W           SP, SP, #0x960
19838C:  SUB             SP, SP, #4
19838E:  MOV             R6, SP
198390:  ADD.W           LR, R6, #0x148
198394:  STR.W           R2, [R6,#0x980+var_850]
198398:  MOVS            R4, #0
19839A:  LDR.W           R2, =(__stack_chk_guard_ptr - 0x1983A2)
19839E:  ADD             R2, PC; __stack_chk_guard_ptr
1983A0:  LDR             R2, [R2]; __stack_chk_guard
1983A2:  LDR             R2, [R2]
1983A4:  STR.W           R2, [R6,#0x980+var_840]
1983A8:  LDR.W           R9, [R0]
1983AC:  LDR             R3, [R0,#8]; int
1983AE:  LDRD.W          R5, R11, [R9,#4]
1983B2:  LDR.W           R2, [R9,#0x18]
1983B6:  STR.W           R2, [R6,#0x980+var_858]
1983BA:  MOVW            R2, #0x2058
1983BE:  SUB.W           R8, R2, R1,LSL#2
1983C2:  MOV.W           R2, #0x2000
1983C6:  STR.W           R1, [R6,#0x980+var_8C0]
1983CA:  NEGS            R1, R1
1983CC:  STR.W           R1, [R6,#0x980+var_8E0]
1983D0:  ADD.W           R2, R2, R5,LSL#2
1983D4:  ADD.W           R12, R5, #0x800
1983D8:  ADD.W           R1, R6, #0x150
1983DC:  STR.W           R5, [R6,#0x980+var_8C8]
1983E0:  MOV             R5, R0
1983E2:  STR.W           R5, [R6,#0x980+var_848]
1983E6:  ADD.W           R5, R0, #0x58 ; 'X'
1983EA:  STR.W           R5, [R1,R4,LSL#2]
1983EE:  ADD.W           R5, R0, R8
1983F2:  STR.W           R5, [LR,R4,LSL#2]
1983F6:  ADDS            R4, #1
1983F8:  ADD             R0, R2
1983FA:  CMP             R4, R3
1983FC:  BLT             loc_1983E6
1983FE:  MUL.W           R0, R12, R3
198402:  LDR.W           R1, [R6,#0x138]
198406:  LDR             R2, [R1,#0x34]
198408:  LDR             R5, [R1,#0x14]
19840A:  CMP             R2, #4
19840C:  STR.W           R2, [R6,#0xA4]
198410:  ADD.W           R0, R1, R0,LSL#2
198414:  STR.W           R3, [R6,#0xC8]
198418:  ADD.W           R10, R0, #0x58 ; 'X'
19841C:  BGT             loc_19842E
19841E:  CMP             R5, #0
198420:  ITTT EQ
198422:  LDREQ.W         R0, [R6,#0x138]
198426:  LDREQ           R0, [R0,#0x38]
198428:  CMPEQ           R0, #0
19842A:  BEQ.W           loc_198652
19842E:  ADD.W           R0, R3, R3,LSL#1
198432:  STR.W           R0, [R6,#0x134]
198436:  LDR.W           R0, [R6,#0xC0]
19843A:  MOVS            R2, #7
19843C:  LDR.W           R1, [R6,#0xA4]
198440:  MULS            R0, R3
198442:  MOV.W           R3, #0x200
198446:  CMP             R1, #0
198448:  IT EQ
19844A:  MOVEQ.W         R3, #0x600
19844E:  LDR.W           R1, [R6,#0x138]
198452:  STR.W           R9, [R6,#0x118]
198456:  LDR.W           LR, [R9,#0xC]
19845A:  LDR             R1, [R1,#0x18]
19845C:  ADD.W           R0, R2, R0,LSL#1
198460:  CMP             R1, LR
198462:  BIC.W           R0, R0, #7
198466:  IT LT
198468:  MOVLT           LR, R1
19846A:  SUB.W           R0, SP, R0
19846E:  CMP             R5, LR
198470:  MOV             R2, LR
198472:  IT GT
198474:  MOVGT           R2, R5
198476:  STR.W           R0, [R6,#0x13C]
19847A:  STR.W           R2, [R6,#0x12C]
19847E:  MOV             SP, R0
198480:  CMP             R5, R1
198482:  STR.W           R5, [R6,#0x11C]
198486:  BGE             loc_1984E8
198488:  LDR.W           R2, [R6,#0xB8]
19848C:  MOVW            R0, #0x2030
198490:  MOV.W           R9, R11,LSL#1
198494:  ADD.W           R0, R0, R2,LSL#2
198498:  LDR.W           R2, [R6,#0xC8]
19849C:  MULS            R0, R2
19849E:  LDR.W           R2, [R6,#0x11C]
1984A2:  SUB.W           R8, R1, R2
1984A6:  LDR.W           R1, [R6,#0x138]
1984AA:  ADD.W           R0, R0, R2,LSL#1
1984AE:  ADD             R0, R1
1984B0:  ADD.W           R12, R0, #0x58 ; 'X'
1984B4:  ADD.W           R0, R11, R11,LSL#1
1984B8:  MOV.W           R11, #0
1984BC:  LSLS            R0, R0, #2
1984BE:  MOV             R4, R12
1984C0:  MOV             R1, R8
1984C2:  LDRSH.W         R5, [R4]
1984C6:  LDRSH           R2, [R4,R0]
1984C8:  SUBS            R5, R5, R3
1984CA:  CMP             R5, R2
1984CC:  IT LT
1984CE:  MOVLT           R5, R2
1984D0:  SUBS            R1, #1
1984D2:  STRH            R5, [R4]
1984D4:  ADD.W           R4, R4, #2
1984D8:  BNE             loc_1984C2
1984DA:  LDR.W           R1, [R6,#0xC8]
1984DE:  ADD.W           R11, R11, #1
1984E2:  ADD             R12, R9
1984E4:  CMP             R11, R1
1984E6:  BLT             loc_1984BE
1984E8:  LDR.W           R0, [R6,#0x134]
1984EC:  LDR.W           R8, [R6,#0xC8]
1984F0:  ADD.W           R0, R10, R0,LSL#4
1984F4:  STR.W           R0, [R6,#0x114]
1984F8:  LDR.W           R0, [R6,#0x138]
1984FC:  CMP.W           R8, #1
198500:  LDR             R5, [R0,#0x28]
198502:  BLT             loc_1985B4
198504:  LDR.W           R0, [R6,#0x11C]
198508:  LDR.W           R9, [R6,#0xC0]
19850C:  CMP             R0, LR
19850E:  BGE             loc_1985B8
198510:  MOVS            R0, #0
198512:  STR.W           R0, [R6,#0x124]
198516:  MOVS            R0, #0
198518:  STR.W           R0, [R6,#0x120]
19851C:  MUL.W           R0, R0, R9
198520:  LDR.W           R4, [R6,#0x11C]
198524:  STR.W           R0, [R6,#0x134]
198528:  LDR.W           R1, [R6,#0x128]
19852C:  LDR.W           R2, [R6,#0x130]
198530:  LDRSH.W         R0, [R1,R4,LSL#1]
198534:  ADDS            R4, #1
198536:  LDRSH.W         R1, [R1,R4,LSL#1]
19853A:  SUBS            R1, R1, R0
19853C:  LSLS            R0, R2
19853E:  LSL.W           R11, R1, R2
198542:  LDR.W           R1, [R6,#0x134]
198546:  CMP.W           R11, #1
19854A:  ADD.W           R9, R0, R1
19854E:  BLT             loc_198576
198550:  LDR.W           R1, [R6,#0x124]
198554:  MOV             R10, R11
198556:  ADD             R0, R1
198558:  LDR.W           R1, [R6,#0x13C]
19855C:  ADD.W           R8, R1, R0,LSL#1
198560:  MOV             R0, R5
198562:  BLX             j_celt_lcg_rand
198566:  MOV             R5, R0
198568:  SUBS.W          R10, R10, #1
19856C:  MOV.W           R0, R5,ASR#20
198570:  STRH.W          R0, [R8],#2
198574:  BNE             loc_198560
198576:  LDR.W           R1, [R6,#0x138]
19857A:  MOVW            R2, #0x7FFF
19857E:  LDR.W           R0, [R6,#0x13C]
198582:  LDR             R3, [R1,#0x24]
198584:  ADD.W           R0, R0, R9,LSL#1
198588:  MOV             R1, R11
19858A:  BLX             j_renormalise_vector
19858E:  LDR.W           R0, [R6,#0x12C]
198592:  CMP             R4, R0
198594:  BLT             loc_198528
198596:  LDR.W           R9, [R6,#0xC0]
19859A:  LDR.W           R0, [R6,#0x124]
19859E:  LDR.W           R8, [R6,#0xC8]
1985A2:  ADD             R0, R9
1985A4:  STR.W           R0, [R6,#0x124]
1985A8:  LDR.W           R0, [R6,#0x120]
1985AC:  ADDS            R0, #1
1985AE:  CMP             R0, R8
1985B0:  BNE             loc_198518
1985B2:  B               loc_1985B8
1985B4:  LDR.W           R9, [R6,#0xC0]
1985B8:  LDR.W           R0, [R6,#0x138]
1985BC:  ADD.W           R10, R6, #0x150
1985C0:  MOVS            R4, #0
1985C2:  STR             R5, [R0,#0x28]
1985C4:  RSB.W           R0, R9, #0x800
1985C8:  LDR.W           R1, [R6,#0xB8]
1985CC:  ADD.W           R0, R0, R1,LSR#1
1985D0:  LSLS            R5, R0, #2
1985D2:  LDR.W           R0, [R10,R4,LSL#2]; dest
1985D6:  MOV             R2, R5; n
1985D8:  ADD.W           R1, R0, R9,LSL#2; src
1985DC:  BLX             j_memmove
1985E0:  ADDS            R4, #1
1985E2:  CMP             R4, R8
1985E4:  BLT             loc_1985D2
1985E6:  LDR.W           R0, [R6,#0x138]
1985EA:  MOV             R1, R0
1985EC:  LDR             R0, [R1,#0x10]
1985EE:  LDR             R1, [R1,#0x24]
1985F0:  SUB             SP, SP, #0x28 ; '('
1985F2:  LDR.W           R2, [R6,#0x11C]
1985F6:  STR             R1, [SP,#0x9A8+var_988]; int
1985F8:  MOVS            R1, #0
1985FA:  STR             R2, [SP,#0x9A8+var_9A8]; int
1985FC:  LDR.W           R2, [R6,#0x12C]
198600:  STRD.W          R2, R8, [SP,#0x9A8+var_9A4]; int
198604:  STRD.W          R8, R1, [SP,#0x9A8+var_99C]; int
198608:  LDR.W           R2, [R6,#0x130]
19860C:  STRD.W          R2, R0, [SP,#0x9A8+var_994]; int
198610:  ADD.W           R2, R6, #0x148; int
198614:  STR             R1, [SP,#0x9A8+var_98C]; int
198616:  LDR.W           R1, [R6,#0x13C]; int
19861A:  LDRD.W          R3, R0, [R6,#0x114]; int
19861E:  BL              sub_1994A8
198622:  ADD             SP, SP, #0x28 ; '('
198624:  LDR.W           R0, [R6,#0xA4]
198628:  LDR.W           R1, [R6,#0x138]
19862C:  ADDS            R0, #1
19862E:  STR             R0, [R1,#0x34]
198630:  LDR.W           R0, =(__stack_chk_guard_ptr - 0x19863C)
198634:  LDR.W           R1, [R6,#0x140]
198638:  ADD             R0, PC; __stack_chk_guard_ptr
19863A:  LDR             R0, [R0]; __stack_chk_guard
19863C:  LDR             R0, [R0]
19863E:  SUBS            R0, R0, R1
198640:  ITTTT EQ
198642:  SUBEQ.W         R4, R7, #-var_1C
198646:  MOVEQ           SP, R4
198648:  POPEQ.W         {R8-R11}
19864C:  POPEQ           {R4-R7,PC}
19864E:  BLX             __stack_chk_fail
198652:  LDR.W           R0, [R6,#0xA4]
198656:  MOV             R11, R9
198658:  CBZ             R0, loc_198670
19865A:  LDR.W           R0, [R6,#0x138]
19865E:  ADD.W           R1, R0, #0x24 ; '$'
198662:  STR.W           R1, [R6,#0xBC]
198666:  LDR.W           R9, [R0,#0x30]
19866A:  MOVW            R0, #0x6666
19866E:  B               loc_1986C6
198670:  LDR.W           R4, [R6,#0x138]
198674:  LDR.W           R5, [R4,#0x24]!
198678:  SUB             SP, SP, #8
19867A:  ADD.W           R9, R6, #0x158
19867E:  ADD.W           R0, R6, #0x150; int
198682:  MOV.W           R2, #0x800; int
198686:  STR             R5, [SP,#0x988+var_988]; int
198688:  MOV             R1, R9; src
19868A:  BLX             j_pitch_downsample
19868E:  ADD             SP, SP, #8
198690:  SUB             SP, SP, #8
198692:  ADD.W           R0, R6, #0x144
198696:  MOV             R1, R9
198698:  MOV.W           R2, #0x530
19869C:  MOV.W           R3, #0x26C
1986A0:  MOV             R8, R0
1986A2:  ADD.W           R0, R9, #0x2D0
1986A6:  STRD.W          R8, R5, [SP,#0x988+var_988]; int
1986AA:  BLX             j_pitch_search
1986AE:  ADD             SP, SP, #8
1986B0:  LDR.W           R0, [R8]
1986B4:  RSB.W           R9, R0, #0x2D0
1986B8:  MOV             R0, R4
1986BA:  STR.W           R0, [R6,#0xBC]
1986BE:  MOVW            R0, #0x7FFF
1986C2:  STR.W           R9, [R4,#0xC]
1986C6:  STR             R0, [R6,#8]
1986C8:  MOV.W           R0, R9,LSL#1
1986CC:  CMP.W           R0, #0x400
1986D0:  MOV.W           R8, #0x400
1986D4:  LDR.W           R2, [R6,#0xC0]
1986D8:  IT LT
1986DA:  MOVLT.W         R8, R9,LSL#1
1986DE:  LDR.W           LR, [R6,#0xB8]
1986E2:  MOVS            R1, #7
1986E4:  ADD.W           R0, R1, R8,LSL#1
1986E8:  BIC.W           R12, R0, #7
1986EC:  ADD.W           R0, R1, LR,LSL#2
1986F0:  BIC.W           R0, R0, #7
1986F4:  SUB.W           R0, SP, R0
1986F8:  STR.W           R0, [R6,#0x98]
1986FC:  MOV             SP, R0
1986FE:  MOV             R0, SP
198700:  SUB.W           R3, R0, #0x830
198704:  MOV             SP, R3
198706:  MVN.W           R1, R8
19870A:  ADD.W           R4, LR, R2
19870E:  STR             R1, [R6,#0x10]
198710:  ADD.W           R1, R0, R1,LSL#1
198714:  ADDS            R1, #2
198716:  STR.W           R1, [R6,#0x8C]
19871A:  MOV             R1, #0xFFFFFFFE
19871E:  SUB.W           R12, SP, R12
198722:  ADD.W           R1, R1, LR,LSL#1
198726:  STR             R1, [R6,#4]
198728:  MOVW            R1, #0x7E9
19872C:  ADDS            R5, R0, #2
19872E:  SUBS            R1, R1, R2
198730:  STR.W           R1, [R6,#0x88]
198734:  MOVW            R1, #0x7EA
198738:  STR.W           R12, [R6,#0x90]
19873C:  SUBS            R1, R1, R2
19873E:  STR.W           R1, [R6,#0x84]
198742:  MOVW            R1, #0x7EB
198746:  SUBS            R1, R1, R2
198748:  STR.W           R1, [R6,#0x80]
19874C:  MOVW            R1, #0x7EC
198750:  SUBS            R1, R1, R2
198752:  STR             R1, [R6,#0x7C]
198754:  MOVW            R1, #0x7ED
198758:  SUBS            R1, R1, R2
19875A:  STR             R1, [R6,#0x78]
19875C:  MOVW            R1, #0x7EE
198760:  SUBS            R1, R1, R2
198762:  STR             R1, [R6,#0x74]
198764:  MOVW            R1, #0x7EF
198768:  SUBS            R1, R1, R2
19876A:  STR             R1, [R6,#0x70]
19876C:  MOVW            R1, #0x7F1
198770:  SUBS            R1, R1, R2
198772:  STR             R1, [R6,#0x6C]
198774:  MOVW            R1, #0x7F2
198778:  SUBS            R1, R1, R2
19877A:  STR             R1, [R6,#0x68]
19877C:  MOVW            R1, #0x7F3
198780:  SUBS            R1, R1, R2
198782:  STR             R1, [R6,#0x64]
198784:  MOVW            R1, #0x7F4
198788:  SUBS            R1, R1, R2
19878A:  STR             R1, [R6,#0x60]
19878C:  MOVW            R1, #0x7F5
198790:  SUBS            R1, R1, R2
198792:  STR             R1, [R6,#0x5C]
198794:  MOVW            R1, #0x7F6
198798:  SUBS            R1, R1, R2
19879A:  STR             R1, [R6,#0x58]
19879C:  MOVW            R1, #0x7F7
1987A0:  SUBS            R1, R1, R2
1987A2:  STR             R1, [R6,#0x54]
1987A4:  MOVW            R1, #0x7F9
1987A8:  SUBS            R1, R1, R2
1987AA:  STR             R1, [R6,#0x50]
1987AC:  MOVW            R1, #0x7FA
1987B0:  SUBS            R1, R1, R2
1987B2:  STR             R1, [R6,#0x4C]
1987B4:  MOVW            R1, #0x7FB
1987B8:  SUBS            R1, R1, R2
1987BA:  STR             R1, [R6,#0x48]
1987BC:  MOVW            R1, #0x7FC
1987C0:  SUBS            R1, R1, R2
1987C2:  STR             R1, [R6,#0x44]
1987C4:  MOVW            R1, #0x7FD
1987C8:  SUBS            R1, R1, R2
1987CA:  STR             R1, [R6,#0x40]
1987CC:  MOVW            R1, #0x7FE
1987D0:  SUBS            R1, R1, R2
1987D2:  STR             R1, [R6,#0x3C]
1987D4:  MOVW            R1, #0x7FF
1987D8:  SUBS            R1, R1, R2
1987DA:  STR             R1, [R6,#0x38]
1987DC:  ADD.W           R1, R2, R9
1987E0:  RSB.W           R1, R1, #0x800
1987E4:  STR.W           R1, [R6,#0x130]
1987E8:  RSB.W           R1, R9, #0x400
1987EC:  STR.W           R1, [R6,#0x12C]
1987F0:  ADD.W           R1, LR, LR,LSR#31
1987F4:  MOV.W           LR, R1,ASR#1
1987F8:  SUB.W           R1, R0, R8
1987FC:  STR.W           R1, [R6,#0x124]
198800:  SUB.W           R1, R0, R8,LSL#1
198804:  SUB.W           R0, R0, #0x800
198808:  STR             R1, [R6,#0x30]
19880A:  STR.W           R0, [R6,#0x134]
19880E:  MOV             SP, R12
198810:  LDR.W           R0, [R11,#0x34]
198814:  LSLS            R1, R4, #2
198816:  STR.W           R0, [R6,#0xA8]
19881A:  RSB.W           R0, R2, #0x7E8
19881E:  STR             R0, [R6,#0x24]
198820:  RSB.W           R0, R2, #0x7F0
198824:  STR             R0, [R6,#0x20]
198826:  RSB.W           R0, R2, #0x7F8
19882A:  STR             R0, [R6,#0x1C]
19882C:  RSB.W           R0, R2, #0x800
198830:  STR.W           R0, [R6,#0xB0]
198834:  LSLS            R0, R0, #2
198836:  STR             R1, [R6]
198838:  STR             R0, [R6,#0x18]
19883A:  MOV.W           R0, R8,ASR#1
19883E:  STR             R0, [R6,#0xC]
198840:  MOV.W           R0, R8,LSL#1
198844:  STR.W           R8, [R6,#0x9C]
198848:  MOV             R8, R10
19884A:  MOVS            R1, #0
19884C:  STR             R0, [R6,#0x14]
19884E:  STR.W           R9, [R6,#0xAC]
198852:  STR.W           R3, [R6,#0x94]
198856:  STR.W           R4, [R6,#0xB4]
19885A:  STR.W           LR, [R6,#0x34]
19885E:  STRD.W          R10, R5, [R6,#0x28]
198862:  B               loc_198874
198864:  LDR.W           R5, [R6,#0x13C]
198868:  CMP.W           R9, R1,ASR#2
19886C:  BGT.W           loc_198FCE
198870:  B.W             loc_199088
198874:  ADD.W           R0, R6, #0x150
198878:  STR.W           R1, [R6,#0xC4]
19887C:  LDR.W           R0, [R0,R1,LSL#2]
198880:  MOVS            R1, #0
198882:  STR.W           R0, [R6,#0x13C]
198886:  ADD.W           R0, R0, #0xFA0
19888A:  LDR.W           R2, [R0,R1,LSL#2]
19888E:  ADD.W           R2, R2, #0x800
198892:  LSRS            R2, R2, #0xC
198894:  STRH.W          R2, [R3,R1,LSL#1]
198898:  ADDS            R1, #1
19889A:  CMP.W           R1, #0x418
19889E:  BNE             loc_19888A
1988A0:  LDR.W           R0, [R6,#0xA4]
1988A4:  LDR.W           R9, [R6,#0x124]
1988A8:  CMP             R0, #0
1988AA:  BNE.W           loc_198BDC
1988AE:  LDR.W           R0, [R6,#0xBC]
1988B2:  LDR             R0, [R0]
1988B4:  SUB             SP, SP, #0x10
1988B6:  MOVS            R1, #0x18
1988B8:  ADD.W           R4, R6, #0x158
1988BC:  STR             R1, [SP,#0x990+var_990]; int
1988BE:  MOV.W           R1, #0x400
1988C2:  STRD.W          R1, R0, [SP,#0x990+var_98C]; int
1988C6:  MOV             R1, R4; int
1988C8:  LDR.W           R0, [R6,#0x134]; src
1988CC:  LDR.W           R2, [R6,#0xA8]; int
1988D0:  LDR.W           R3, [R6,#0xB8]; int
1988D4:  BLX             j__celt_autocorr
1988D8:  MOV             R1, R4
1988DA:  ADD             SP, SP, #0x10
1988DC:  ADD.W           R0, R6, #0x144
1988E0:  MOV.W           R5, #0x20000
1988E4:  MOV             R2, R0
1988E6:  LDR             R0, [R2,#0x14]
1988E8:  ADD.W           R0, R0, R0,ASR#13
1988EC:  STR             R0, [R2,#0x14]
1988EE:  MOVS            R0, #1
1988F0:  MUL.W           R2, R5, R0
1988F4:  LDR.W           R3, [R1,R0,LSL#2]
1988F8:  ADD.W           R5, R5, #0x20000
1988FC:  UXTH.W          R12, R3
198900:  ASRS            R4, R2, #0x10
198902:  SMULTT.W        R2, R2, R3
198906:  MUL.W           R4, R12, R4
19890A:  SUB.W           R3, R3, R4,ASR#15
19890E:  SUB.W           R2, R3, R2,LSL#1
198912:  STR.W           R2, [R1,R0,LSL#2]
198916:  ADDS            R0, #1
198918:  CMP             R0, #0x19
19891A:  BNE             loc_1988F0
19891C:  LDR.W           R0, [R6,#0xC4]
198920:  MOVS            R2, #0x18
198922:  ADD.W           R5, R0, R0,LSL#1
198926:  LSLS            R0, R5, #3
198928:  ADD.W           R0, R10, R0,LSL#1
19892C:  MOV             R11, R0
19892E:  BLX             j__celt_lpc
198932:  MOVS            R0, #0x17
198934:  ADD.W           R0, R0, R5,LSL#3
198938:  STR.W           R0, [R6,#0x128]
19893C:  MOVS            R0, #0x16
19893E:  ADD.W           R0, R0, R5,LSL#3
198942:  STR.W           R0, [R6,#0x120]
198946:  MOVS            R0, #0x15
198948:  ADD.W           R0, R0, R5,LSL#3
19894C:  STR.W           R0, [R6,#0x11C]
198950:  MOVS            R0, #0x14
198952:  ADD.W           R0, R0, R5,LSL#3
198956:  STR.W           R0, [R6,#0x118]
19895A:  MOVS            R0, #0x13
19895C:  ADD.W           R0, R0, R5,LSL#3
198960:  STR.W           R0, [R6,#0x114]
198964:  MOVS            R0, #0x12
198966:  ADD.W           R0, R0, R5,LSL#3
19896A:  STR.W           R0, [R6,#0x110]
19896E:  MOVS            R0, #0x11
198970:  ADD.W           R0, R0, R5,LSL#3
198974:  STR.W           R0, [R6,#0x10C]
198978:  MOVS            R0, #0x10
19897A:  ADD.W           R0, R0, R5,LSL#3
19897E:  STR.W           R0, [R6,#0x108]
198982:  MOVS            R0, #0xF
198984:  ADD.W           R0, R0, R5,LSL#3
198988:  STR.W           R0, [R6,#0x104]
19898C:  MOVS            R0, #0xE
19898E:  ADD.W           R0, R0, R5,LSL#3
198992:  STR.W           R0, [R6,#0x100]
198996:  MOVS            R0, #0xD
198998:  ADD.W           R0, R0, R5,LSL#3
19899C:  STR.W           R0, [R6,#0xFC]
1989A0:  MOVS            R0, #0xC
1989A2:  ADD.W           R0, R0, R5,LSL#3
1989A6:  STR.W           R0, [R6,#0xF8]
1989AA:  MOVS            R0, #0xB
1989AC:  ADD.W           R0, R0, R5,LSL#3
1989B0:  STR.W           R0, [R6,#0xF4]
1989B4:  MOVS            R0, #0xA
1989B6:  ADD.W           R0, R0, R5,LSL#3
1989BA:  STR.W           R0, [R6,#0xF0]
1989BE:  MOVS            R0, #9
1989C0:  ADD.W           R0, R0, R5,LSL#3
1989C4:  STR.W           R0, [R6,#0xEC]
1989C8:  MOVS            R0, #8
1989CA:  ADD.W           R0, R0, R5,LSL#3
1989CE:  STR.W           R0, [R6,#0xE8]
1989D2:  MOVS            R0, #7
1989D4:  ORR.W           R0, R0, R5,LSL#3
1989D8:  STR.W           R0, [R6,#0xE4]
1989DC:  MOVS            R0, #6
1989DE:  ORR.W           R0, R0, R5,LSL#3
1989E2:  STR.W           R0, [R6,#0xE0]
1989E6:  MOVS            R0, #5
1989E8:  ORR.W           R0, R0, R5,LSL#3
1989EC:  STR.W           R0, [R6,#0xDC]
1989F0:  MOVS            R0, #4
1989F2:  ORR.W           R0, R0, R5,LSL#3
1989F6:  STR.W           R0, [R6,#0xD8]
1989FA:  MOVS            R0, #3
1989FC:  ORR.W           R0, R0, R5,LSL#3
198A00:  STR.W           R0, [R6,#0xD4]
198A04:  MOVS            R0, #2
198A06:  ORR.W           R0, R0, R5,LSL#3
198A0A:  STR.W           R0, [R6,#0xD0]
198A0E:  MOVS            R0, #1
198A10:  ORR.W           R0, R0, R5,LSL#3
198A14:  STR.W           R0, [R6,#0xCC]
198A18:  B               loc_198A44
198A1A:  MOVW            R1, #0x7FFF
198A1E:  MOVS            R0, #0
198A20:  MOVW            R5, #0x7EB8
198A24:  SXTH            R1, R1
198A26:  LDRSH.W         R2, [R8,R0,LSL#1]
198A2A:  SMULBB.W        R1, R1, R5
198A2E:  SBFX.W          R3, R1, #0xF, #0x10
198A32:  ASRS            R1, R1, #0xF
198A34:  SMULBB.W        R2, R3, R2
198A38:  LSRS            R2, R2, #0xF
198A3A:  STRH.W          R2, [R8,R0,LSL#1]
198A3E:  ADDS            R0, #1
198A40:  CMP             R0, #0x18
198A42:  BNE             loc_198A24
198A44:  LDR.W           R0, [R6,#0x128]
198A48:  LDRSH.W         LR, [R10,R0,LSL#1]
198A4C:  LDR.W           R0, [R6,#0x120]
198A50:  LDRSH.W         R12, [R10,R0,LSL#1]
198A54:  LDR.W           R0, [R6,#0x11C]
198A58:  LDRSH.W         R4, [R10,R0,LSL#1]
198A5C:  LDR.W           R0, [R6,#0x118]
198A60:  LDRSH.W         R3, [R10,R0,LSL#1]
198A64:  LDR.W           R0, [R6,#0x114]
198A68:  LDRSH.W         R5, [R10,R0,LSL#1]
198A6C:  LDR.W           R0, [R6,#0xD0]
198A70:  LDRSH.W         R9, [R10,R0,LSL#1]
198A74:  LDR.W           R0, [R6,#0xCC]
198A78:  LDRSH.W         R1, [R10,R0,LSL#1]
198A7C:  CMP             R1, #0
198A7E:  IT MI
198A80:  NEGMI           R1, R1
198A82:  LDRSH.W         R0, [R11]
198A86:  CMP             R0, #0
198A88:  IT MI
198A8A:  NEGMI           R0, R0
198A8C:  CMP.W           R9, #0
198A90:  ADD             R0, R1
198A92:  IT MI
198A94:  RSBMI.W         R9, R9, #0
198A98:  LDR.W           R1, [R6,#0xD4]
198A9C:  ADD             R0, R9
198A9E:  LDRSH.W         R1, [R10,R1,LSL#1]
198AA2:  CMP             R1, #0
198AA4:  IT MI
198AA6:  NEGMI           R1, R1
198AA8:  LDR.W           R9, [R6,#0x124]
198AAC:  ADD             R0, R1
198AAE:  LDR.W           R1, [R6,#0xD8]
198AB2:  LDRSH.W         R1, [R10,R1,LSL#1]
198AB6:  CMP             R1, #0
198AB8:  IT MI
198ABA:  NEGMI           R1, R1
198ABC:  ADD             R0, R1
198ABE:  LDR.W           R1, [R6,#0xDC]
198AC2:  LDRSH.W         R1, [R10,R1,LSL#1]
198AC6:  CMP             R1, #0
198AC8:  IT MI
198ACA:  NEGMI           R1, R1
198ACC:  ADD             R0, R1
198ACE:  LDR.W           R1, [R6,#0xE0]
198AD2:  LDRSH.W         R1, [R10,R1,LSL#1]
198AD6:  CMP             R1, #0
198AD8:  IT MI
198ADA:  NEGMI           R1, R1
198ADC:  ADD             R0, R1
198ADE:  LDR.W           R1, [R6,#0xE4]
198AE2:  LDRSH.W         R1, [R10,R1,LSL#1]
198AE6:  CMP             R1, #0
198AE8:  IT MI
198AEA:  NEGMI           R1, R1
198AEC:  ADD             R0, R1
198AEE:  LDR.W           R1, [R6,#0xE8]
198AF2:  LDRSH.W         R1, [R10,R1,LSL#1]
198AF6:  CMP             R1, #0
198AF8:  IT MI
198AFA:  NEGMI           R1, R1
198AFC:  ADD             R0, R1
198AFE:  LDR.W           R1, [R6,#0xEC]
198B02:  LDRSH.W         R1, [R10,R1,LSL#1]
198B06:  CMP             R1, #0
198B08:  IT MI
198B0A:  NEGMI           R1, R1
198B0C:  ADD             R0, R1
198B0E:  LDR.W           R1, [R6,#0xF0]
198B12:  LDRSH.W         R1, [R10,R1,LSL#1]
198B16:  CMP             R1, #0
198B18:  IT MI
198B1A:  NEGMI           R1, R1
198B1C:  ADD             R0, R1
198B1E:  LDR.W           R1, [R6,#0xF4]
198B22:  LDRSH.W         R1, [R10,R1,LSL#1]
198B26:  CMP             R1, #0
198B28:  IT MI
198B2A:  NEGMI           R1, R1
198B2C:  ADD             R0, R1
198B2E:  LDR.W           R1, [R6,#0xF8]
198B32:  LDRSH.W         R1, [R10,R1,LSL#1]
198B36:  CMP             R1, #0
198B38:  IT MI
198B3A:  NEGMI           R1, R1
198B3C:  ADD             R0, R1
198B3E:  LDR.W           R1, [R6,#0xFC]
198B42:  LDRSH.W         R1, [R10,R1,LSL#1]
198B46:  CMP             R1, #0
198B48:  IT MI
198B4A:  NEGMI           R1, R1
198B4C:  ADD             R0, R1
198B4E:  LDR.W           R1, [R6,#0x100]
198B52:  LDRSH.W         R1, [R10,R1,LSL#1]
198B56:  CMP             R1, #0
198B58:  IT MI
198B5A:  NEGMI           R1, R1
198B5C:  ADD             R0, R1
198B5E:  LDR.W           R1, [R6,#0x104]
198B62:  LDRSH.W         R1, [R10,R1,LSL#1]
198B66:  CMP             R1, #0
198B68:  IT MI
198B6A:  NEGMI           R1, R1
198B6C:  ADD             R0, R1
198B6E:  LDR.W           R1, [R6,#0x108]
198B72:  LDRSH.W         R1, [R10,R1,LSL#1]
198B76:  CMP             R1, #0
198B78:  IT MI
198B7A:  NEGMI           R1, R1
198B7C:  LDR.W           R2, [R6,#0x10C]
198B80:  ADD             R0, R1
198B82:  LDR.W           R1, [R6,#0x110]
198B86:  LDRSH.W         R2, [R10,R2,LSL#1]
198B8A:  LDRSH.W         R1, [R10,R1,LSL#1]
198B8E:  CMP             R2, #0
198B90:  IT MI
198B92:  NEGMI           R2, R2
198B94:  CMP             R1, #0
198B96:  IT MI
198B98:  NEGMI           R1, R1
198B9A:  ADD             R0, R2
198B9C:  CMP             R5, #0
198B9E:  ADD             R0, R1
198BA0:  IT MI
198BA2:  NEGMI           R5, R5
198BA4:  CMP             R3, #0
198BA6:  IT MI
198BA8:  NEGMI           R3, R3
198BAA:  ADD             R0, R5
198BAC:  CMP             R4, #0
198BAE:  ADD             R0, R3
198BB0:  IT MI
198BB2:  NEGMI           R4, R4
198BB4:  CMP.W           R12, #0
198BB8:  IT MI
198BBA:  RSBMI.W         R12, R12, #0
198BBE:  ADD             R0, R4
198BC0:  CMP.W           LR, #0
198BC4:  ADD             R0, R12
198BC6:  IT MI
198BC8:  RSBMI.W         LR, LR, #0
198BCC:  MOVW            R1, #0xFFFF
198BD0:  ADD             R0, LR
198BD2:  ADD.W           R0, R0, #0x1000
198BD6:  CMP             R0, R1
198BD8:  BGE.W           loc_198A1A
198BDC:  LDR.W           R0, [R6,#0xBC]
198BE0:  LDR             R0, [R0]
198BE2:  SUB             SP, SP, #8
198BE4:  MOVS            R1, #0x18
198BE6:  STRD.W          R1, R0, [SP,#0x988+var_988]
198BEA:  LDR.W           R0, [R6,#0xC4]
198BEE:  LDR.W           R4, [R6,#0x90]
198BF2:  LDR             R5, [R6,#0x30]
198BF4:  ADD.W           R0, R0, R0,LSL#1
198BF8:  LDR.W           R3, [R6,#0x9C]
198BFC:  MOV             R2, R4
198BFE:  ADD.W           R1, R10, R0,LSL#4
198C02:  MOV             R0, R5
198C04:  STR.W           R1, [R6,#0x120]
198C08:  BLX             j_celt_fir_c
198C0C:  ADD             SP, SP, #8
198C0E:  LDR             R2, [R6,#0x14]; n
198C10:  MOV             R0, R5; dest
198C12:  MOV             R1, R4; src
198C14:  BLX             j_memcpy
198C18:  LDR.W           LR, [R6,#0xAC]
198C1C:  MOVS            R0, #0
198C1E:  CMP.W           LR, #1
198C22:  BLT             loc_198C50
198C24:  LDR             R1, [R6,#0x10]
198C26:  MOVS            R2, #0
198C28:  LDR.W           R12, [R6,#0x8C]
198C2C:  MOV.W           R10, #0x8000
198C30:  LDR             R4, [R6,#0x2C]
198C32:  LDRSH.W         R3, [R4,R1,LSL#1]
198C36:  SXTH            R5, R0
198C38:  ADDS            R1, #1
198C3A:  CMP             R5, R3
198C3C:  SXTH            R5, R2
198C3E:  IT GE
198C40:  MOVGE           R0, R3
198C42:  CMP             R5, R3
198C44:  IT LE
198C46:  MOVLE           R2, R3
198C48:  ADDS            R3, R1, #1
198C4A:  BNE             loc_198C32
198C4C:  SXTH            R1, R2
198C4E:  B               loc_198C5C
198C50:  MOVS            R1, #0
198C52:  LDR.W           R12, [R6,#0x8C]
198C56:  LDR             R4, [R6,#0x2C]
198C58:  MOV.W           R10, #0x8000
198C5C:  SXTH            R0, R0
198C5E:  NEGS            R0, R0
198C60:  CMP             R1, R0
198C62:  IT GT
198C64:  MOVGT           R0, R1
198C66:  CMP             R0, #1
198C68:  BLT             loc_198C76
198C6A:  CLZ.W           R0, R0
198C6E:  RSB.W           R0, R0, #0x1F
198C72:  CMP             R0, #0xA
198C74:  BGE             loc_198CAC
198C76:  MOVS            R0, #0
198C78:  CMP.W           LR, #1
198C7C:  BLT             loc_198D00
198C7E:  LDR.W           LR, [R6,#0xC]
198C82:  MOVS            R1, #1
198C84:  MOVS            R3, #0
198C86:  MOVS            R2, #1
198C88:  LDRSH.W         R5, [R12,R3,LSL#1]
198C8C:  LDRSH.W         R4, [R9,R3,LSL#1]
198C90:  ADDS            R3, #1
198C92:  CMP             R3, LR
198C94:  SMULBB.W        R5, R5, R5
198C98:  SMULBB.W        R4, R4, R4
198C9C:  LSR.W           R5, R5, R0
198CA0:  ADD             R1, R5
198CA2:  LSR.W           R5, R4, R0
198CA6:  ADD             R2, R5
198CA8:  BLT             loc_198C88
198CAA:  B               loc_198D04
198CAC:  MOVS            R0, #0
198CAE:  CMP.W           LR, #1
198CB2:  BLT             loc_198CD6
198CB4:  LDR             R1, [R6,#0x10]
198CB6:  MOVS            R2, #0
198CB8:  LDRSH.W         R3, [R4,R1,LSL#1]
198CBC:  SXTH            R5, R0
198CBE:  ADDS            R1, #1
198CC0:  CMP             R5, R3
198CC2:  SXTH            R5, R2
198CC4:  IT GE
198CC6:  MOVGE           R0, R3
198CC8:  CMP             R5, R3
198CCA:  IT LE
198CCC:  MOVLE           R2, R3
198CCE:  ADDS            R3, R1, #1
198CD0:  BNE             loc_198CB8
198CD2:  SXTH            R1, R2
198CD4:  B               loc_198CD8
198CD6:  MOVS            R1, #0
198CD8:  SXTH            R0, R0
198CDA:  NEGS            R2, R0
198CDC:  CMP             R1, R2
198CDE:  IT GT
198CE0:  MOVGT           R2, R1
198CE2:  MOV             R1, #0xFFFFFFEC
198CE6:  CLZ.W           R0, R2
198CEA:  CMP             R2, #1
198CEC:  RSB.W           R0, R0, #0x1F
198CF0:  ADD.W           R0, R1, R0,LSL#1
198CF4:  IT LT
198CF6:  MOVLT           R0, #0xFFFFFFEC
198CFA:  CMP.W           LR, #1
198CFE:  BGE             loc_198C7E
198D00:  MOVS            R2, #1
198D02:  MOVS            R1, #1
198D04:  CMP             R2, R1
198D06:  IT GE
198D08:  MOVGE           R2, R1
198D0A:  ASRS            R0, R2, #1
198D0C:  BLX             j_frac_div32
198D10:  BLX             j_celt_sqrt
198D14:  MOV             R9, R0
198D16:  LDR.W           R0, [R6,#0xC0]
198D1A:  LDR.W           R5, [R6,#0x13C]
198D1E:  LDR             R2, [R6,#0x18]; n
198D20:  ADD.W           R1, R5, R0,LSL#2; src
198D24:  MOV             R0, R5; dest
198D26:  BLX             j_memmove
198D2A:  LDR.W           R4, [R6,#0xB4]
198D2E:  CMP             R4, #1
198D30:  BLT             loc_198DA8
198D32:  LDR             R0, [R6,#8]
198D34:  SXTH.W          R12, R9
198D38:  LDR.W           R1, [R6,#0xB0]
198D3C:  MOVS            R2, #0
198D3E:  LDR.W           LR, [R6,#0xAC]
198D42:  MOV.W           R9, #0
198D46:  SMULBB.W        R0, R12, R0
198D4A:  ADD.W           R1, R5, R1,LSL#2
198D4E:  LSRS            R3, R0, #0xF
198D50:  MOV             R0, R4
198D52:  CMP             R2, LR
198D54:  ITTTT GE
198D56:  SXTHGE          R3, R3
198D58:  SMULBBGE.W      R3, R12, R3
198D5C:  SUBGE.W         R2, R2, LR
198D60:  LSRGE           R3, R3, #0xF
198D62:  LDR.W           R4, [R6,#0x12C]
198D66:  LDR.W           R5, [R6,#0x134]
198D6A:  SUBS            R0, #1
198D6C:  ADD             R4, R2
198D6E:  LDRSH.W         R4, [R5,R4,LSL#1]
198D72:  SXTH            R5, R3
198D74:  SMULBB.W        R5, R4, R5
198D78:  MOV.W           R5, R5,ASR#15
198D7C:  MOV.W           R5, R5,LSL#12
198D80:  STR.W           R5, [R1],#4
198D84:  LDR.W           R4, [R6,#0x130]
198D88:  ADD.W           R5, R4, R2
198D8C:  LDR.W           R4, [R6,#0x13C]
198D90:  ADD.W           R2, R2, #1
198D94:  LDR.W           R5, [R4,R5,LSL#2]
198D98:  ADD.W           R5, R10, R5,LSL#4
198D9C:  SMULTT.W        R5, R5, R5
198DA0:  ADD.W           R9, R9, R5,LSR#10
198DA4:  BNE             loc_198D52
198DA6:  B               loc_198DAC
198DA8:  MOV.W           R9, #0
198DAC:  LDR.W           R5, [R6,#0x13C]
198DB0:  LDR             R0, [R6,#0x38]
198DB2:  LDR.W           R0, [R5,R0,LSL#2]
198DB6:  ADD.W           R0, R0, #0x800
198DBA:  LSRS            R0, R0, #0xC
198DBC:  STRH.W          R0, [R6,#0x158]
198DC0:  LDR             R0, [R6,#0x3C]
198DC2:  LDR.W           R0, [R5,R0,LSL#2]
198DC6:  ADD.W           R0, R0, #0x800
198DCA:  LSRS            R0, R0, #0xC
198DCC:  STRH.W          R0, [R6,#0x15A]
198DD0:  LDR             R0, [R6,#0x40]
198DD2:  LDR.W           R0, [R5,R0,LSL#2]
198DD6:  ADD.W           R0, R0, #0x800
198DDA:  LSRS            R0, R0, #0xC
198DDC:  STRH.W          R0, [R6,#0x15C]
198DE0:  LDR             R0, [R6,#0x44]
198DE2:  LDR.W           R0, [R5,R0,LSL#2]
198DE6:  ADD.W           R0, R0, #0x800
198DEA:  LSRS            R0, R0, #0xC
198DEC:  STRH.W          R0, [R6,#0x15E]
198DF0:  LDR             R0, [R6,#0x48]
198DF2:  LDR.W           R0, [R5,R0,LSL#2]
198DF6:  ADD.W           R0, R0, #0x800
198DFA:  LSRS            R0, R0, #0xC
198DFC:  STRH.W          R0, [R6,#0x160]
198E00:  LDR             R0, [R6,#0x4C]
198E02:  LDR.W           R0, [R5,R0,LSL#2]
198E06:  ADD.W           R0, R0, #0x800
198E0A:  LSRS            R0, R0, #0xC
198E0C:  STRH.W          R0, [R6,#0x162]
198E10:  LDR             R0, [R6,#0x50]
198E12:  LDR.W           R0, [R5,R0,LSL#2]
198E16:  ADD.W           R0, R0, #0x800
198E1A:  LSRS            R0, R0, #0xC
198E1C:  STRH.W          R0, [R6,#0x164]
198E20:  LDR             R0, [R6,#0x1C]
198E22:  LDR.W           R0, [R5,R0,LSL#2]
198E26:  ADD.W           R0, R0, #0x800
198E2A:  LSRS            R0, R0, #0xC
198E2C:  STRH.W          R0, [R6,#0x166]
198E30:  LDR             R0, [R6,#0x54]
198E32:  LDR.W           R0, [R5,R0,LSL#2]
198E36:  ADD.W           R0, R0, #0x800
198E3A:  LSRS            R0, R0, #0xC
198E3C:  STRH.W          R0, [R6,#0x168]
198E40:  LDR             R0, [R6,#0x58]
198E42:  LDR.W           R0, [R5,R0,LSL#2]
198E46:  ADD.W           R0, R0, #0x800
198E4A:  LSRS            R0, R0, #0xC
198E4C:  STRH.W          R0, [R6,#0x16A]
198E50:  LDR             R0, [R6,#0x5C]
198E52:  LDR.W           R0, [R5,R0,LSL#2]
198E56:  ADD.W           R0, R0, #0x800
198E5A:  LSRS            R0, R0, #0xC
198E5C:  STRH.W          R0, [R6,#0x16C]
198E60:  LDR             R0, [R6,#0x60]
198E62:  LDR.W           R0, [R5,R0,LSL#2]
198E66:  ADD.W           R0, R0, #0x800
198E6A:  LSRS            R0, R0, #0xC
198E6C:  STRH.W          R0, [R6,#0x16E]
198E70:  LDR             R0, [R6,#0x64]
198E72:  LDR.W           R0, [R5,R0,LSL#2]
198E76:  ADD.W           R0, R0, #0x800
198E7A:  LSRS            R0, R0, #0xC
198E7C:  STRH.W          R0, [R6,#0x170]
198E80:  LDR             R0, [R6,#0x68]
198E82:  LDR.W           R0, [R5,R0,LSL#2]
198E86:  ADD.W           R0, R0, #0x800
198E8A:  LSRS            R0, R0, #0xC
198E8C:  STRH.W          R0, [R6,#0x172]
198E90:  LDR             R0, [R6,#0x6C]
198E92:  LDR.W           R0, [R5,R0,LSL#2]
198E96:  ADD.W           R0, R0, #0x800
198E9A:  LSRS            R0, R0, #0xC
198E9C:  STRH.W          R0, [R6,#0x174]
198EA0:  LDR             R0, [R6,#0x20]
198EA2:  LDR.W           R0, [R5,R0,LSL#2]
198EA6:  ADD.W           R0, R0, #0x800
198EAA:  LSRS            R0, R0, #0xC
198EAC:  STRH.W          R0, [R6,#0x176]
198EB0:  LDR             R0, [R6,#0x70]
198EB2:  LDR.W           R0, [R5,R0,LSL#2]
198EB6:  ADD.W           R0, R0, #0x800
198EBA:  LSRS            R0, R0, #0xC
198EBC:  STRH.W          R0, [R6,#0x178]
198EC0:  LDR             R0, [R6,#0x74]
198EC2:  LDR.W           R0, [R5,R0,LSL#2]
198EC6:  ADD.W           R0, R0, #0x800
198ECA:  LSRS            R0, R0, #0xC
198ECC:  STRH.W          R0, [R6,#0x17A]
198ED0:  LDR             R0, [R6,#0x78]
198ED2:  LDR.W           R0, [R5,R0,LSL#2]
198ED6:  ADD.W           R0, R0, #0x800
198EDA:  LSRS            R0, R0, #0xC
198EDC:  STRH.W          R0, [R6,#0x17C]
198EE0:  LDR             R0, [R6,#0x7C]
198EE2:  LDR.W           R0, [R5,R0,LSL#2]
198EE6:  ADD.W           R0, R0, #0x800
198EEA:  LSRS            R0, R0, #0xC
198EEC:  STRH.W          R0, [R6,#0x17E]
198EF0:  LDR.W           R0, [R6,#0x80]
198EF4:  LDR.W           R0, [R5,R0,LSL#2]
198EF8:  ADD.W           R0, R0, #0x800
198EFC:  LSRS            R0, R0, #0xC
198EFE:  STRH.W          R0, [R6,#0x180]
198F02:  LDR.W           R0, [R6,#0x84]
198F06:  LDR.W           R0, [R5,R0,LSL#2]
198F0A:  ADD.W           R0, R0, #0x800
198F0E:  LSRS            R0, R0, #0xC
198F10:  STRH.W          R0, [R6,#0x182]
198F14:  LDR.W           R0, [R6,#0x88]
198F18:  LDR.W           R0, [R5,R0,LSL#2]
198F1C:  ADD.W           R0, R0, #0x800
198F20:  LSRS            R0, R0, #0xC
198F22:  STRH.W          R0, [R6,#0x184]
198F26:  LDR             R0, [R6,#0x24]
198F28:  LDR.W           R0, [R5,R0,LSL#2]
198F2C:  ADD.W           R0, R0, #0x800
198F30:  LSRS            R0, R0, #0xC
198F32:  STRH.W          R0, [R6,#0x186]
198F36:  LDR.W           R0, [R6,#0xBC]
198F3A:  LDR             R0, [R0]
198F3C:  SUB             SP, SP, #0x10
198F3E:  MOVS            R1, #0x18
198F40:  STR             R1, [SP,#0x990+var_990]
198F42:  ADD.W           R1, R6, #0x158
198F46:  STRD.W          R1, R0, [SP,#0x990+var_98C]
198F4A:  ADD.W           R1, R5, #0x2000
198F4E:  LDR.W           R0, [R6,#0xA0]
198F52:  LDR.W           R4, [R6,#0xB4]
198F56:  STR.W           R1, [R6,#0x128]
198F5A:  ADD.W           R0, R1, R0,LSL#2
198F5E:  LDR.W           R1, [R6,#0x120]
198F62:  MOV             R3, R4
198F64:  MOV             R2, R0
198F66:  BLX             j_celt_iir
198F6A:  ADD             SP, SP, #0x10
198F6C:  CMP             R4, #1
198F6E:  BLT.W           loc_199080
198F72:  LDR.W           R0, [R6,#0xB0]
198F76:  MOV             R2, R4
198F78:  ADD.W           R0, R5, R0,LSL#2
198F7C:  MOV             R5, #0xEE1E5D00
198F84:  MOV             R12, R5
198F86:  MOVW            R5, #0xA300
198F8A:  MOV             R1, R0
198F8C:  MOVT            R5, #0x11E1
198F90:  LDR             R3, [R1]
198F92:  CMP             R3, R12
198F94:  IT LE
198F96:  MOVLE           R3, R12
198F98:  CMP             R3, R5
198F9A:  IT GE
198F9C:  MOVGE           R3, R5
198F9E:  SUBS            R2, #1
198FA0:  STR.W           R3, [R1],#4
198FA4:  BNE             loc_198F90
198FA6:  MOVS            R1, #0
198FA8:  CMP             R4, #1
198FAA:  BLT.W           loc_198864
198FAE:  LDR.W           R5, [R6,#0x13C]
198FB2:  MOV             R2, R4
198FB4:  LDR.W           R3, [R0],#4
198FB8:  SUBS            R2, #1
198FBA:  ADD.W           R3, R10, R3,LSL#4
198FBE:  SMULTT.W        R3, R3, R3
198FC2:  ADD.W           R1, R1, R3,LSR#10
198FC6:  BNE             loc_198FB4
198FC8:  CMP.W           R9, R1,ASR#2
198FCC:  BLE             loc_199088
198FCE:  CMP             R9, R1
198FD0:  MOV.W           R10, #0x2000
198FD4:  BGE             loc_19909A
198FD6:  MOVS            R0, #1
198FD8:  ADDS            R1, #1
198FDA:  ADD.W           R0, R0, R9,ASR#1
198FDE:  BLX             j_frac_div32
198FE2:  BLX             j_celt_sqrt
198FE6:  LDR.W           R1, [R6,#0xB8]
198FEA:  MOVW            R9, #0x7FFF
198FEE:  CMP             R1, #1
198FF0:  BLT             loc_199038
198FF2:  LDR.W           R1, [R6,#0xB0]
198FF6:  LDR.W           R2, [R6,#0x13C]
198FFA:  LDR.W           R3, [R6,#0xB8]
198FFE:  ADD.W           R1, R2, R1,LSL#2
199002:  SUB.W           R2, R9, R0
199006:  LDR.W           R5, [R6,#0xA8]
19900A:  SXTH.W          R12, R2
19900E:  LDRSH.W         R4, [R5],#2
199012:  SUBS            R3, #1
199014:  LDR             R2, [R1]
199016:  SMULBB.W        R4, R12, R4
19901A:  SUB.W           R4, R9, R4,LSR#15
19901E:  SMULTB.W        LR, R2, R4
199022:  SXTH            R4, R4
199024:  UXTH            R2, R2
199026:  MUL.W           R2, R4, R2
19902A:  MOV.W           R4, LR,LSL#1
19902E:  ADD.W           R2, R4, R2,ASR#15
199032:  STR.W           R2, [R1],#4
199036:  BNE             loc_19900E
199038:  LDR.W           R1, [R6,#0xC0]
19903C:  LDR.W           LR, [R6,#0xB4]
199040:  LDR.W           R11, [R6,#0x13C]
199044:  CMP             R1, #1
199046:  BLT             loc_19909A
199048:  LDR.W           R1, [R6,#0xA0]
19904C:  SXTH            R2, R0
19904E:  LDR.W           R3, [R6,#0xB8]
199052:  LSLS            R0, R0, #0x10
199054:  ASRS            R0, R0, #0xF
199056:  ADD.W           R12, R11, R1,LSL#2
19905A:  ADD.W           R5, R12, R3,LSL#2
19905E:  ADDS            R3, #1
199060:  CMP             R3, LR
199062:  LDR.W           R4, [R5,R10]
199066:  UXTH            R1, R4
199068:  MOV.W           R4, R4,ASR#16
19906C:  MUL.W           R1, R2, R1
199070:  MUL.W           R4, R0, R4
199074:  ADD.W           R1, R4, R1,ASR#15
199078:  STR.W           R1, [R5,R10]
19907C:  BLT             loc_19905A
19907E:  B               loc_19909A
199080:  MOVS            R1, #0
199082:  CMP.W           R9, R1,ASR#2
199086:  BGT             loc_198FCE
199088:  CMP             R4, #1
19908A:  BLT             loc_19909A
19908C:  LDR.W           R0, [R6,#0xB0]
199090:  LDR             R1, [R6]; n
199092:  ADD.W           R0, R5, R0,LSL#2; int
199096:  BLX             sub_22178C
19909A:  LDR.W           R0, [R6,#0x138]
19909E:  MOV             R3, R0
1990A0:  LDR             R0, [R3,#0x24]
1990A2:  LDR             R2, [R3,#0x3C]
1990A4:  LDR             R1, [R3,#0x48]
1990A6:  LDRH.W          R3, [R3,#0x44]
1990AA:  SUB             SP, SP, #0x20 ; ' '
1990AC:  LDR.W           R5, [R6,#0xB8]
1990B0:  NEGS            R3, R3
1990B2:  SXTH            R3, R3
1990B4:  MOV             R4, R5
1990B6:  STRD.W          R4, R3, [SP,#0x9A0+var_9A0]
1990BA:  STRD.W          R3, R1, [SP,#0x9A0+var_998]
1990BE:  MOV             R3, R2
1990C0:  STR             R1, [SP,#0x9A0+var_990]
1990C2:  MOVS            R1, #0
1990C4:  STRD.W          R1, R1, [SP,#0x9A0+var_98C]
1990C8:  LDR.W           R9, [R6,#0x98]
1990CC:  LDR.W           R1, [R6,#0x128]
1990D0:  STR             R0, [SP,#0x9A0+var_984]
1990D2:  MOV             R0, R9
1990D4:  BLX             j_comb_filter
1990D8:  ADD             SP, SP, #0x20 ; ' '
1990DA:  LDR.W           R11, [R6,#0x34]
1990DE:  CMP             R4, #2
1990E0:  LDR.W           R10, [R6,#0xA8]
1990E4:  BLT             loc_19912A
1990E6:  LDR             R1, [R6,#4]
1990E8:  MOVS            R0, #0
1990EA:  LDR.W           R3, [R9,R0,LSL#2]
1990EE:  LDR.W           R12, [R9,R1,LSL#1]
1990F2:  LDRSH.W         R5, [R10,R1]
1990F6:  LDRSH.W         R4, [R10,R0,LSL#1]
1990FA:  UXTH            R2, R3
1990FC:  MUL.W           LR, R2, R5
199100:  UXTH.W          R2, R12
199104:  SUBS            R1, #2
199106:  MULS            R2, R4
199108:  SMULTB.W        R3, R3, R5
19910C:  SMLATB.W        R3, R12, R4, R3
199110:  MOV.W           R5, LR,ASR#15
199114:  ADD.W           R2, R5, R2,ASR#15
199118:  ADD.W           R2, R2, R3,LSL#1
19911C:  LDR.W           R3, [R6,#0x128]
199120:  STR.W           R2, [R3,R0,LSL#2]
199124:  ADDS            R0, #1
199126:  CMP             R11, R0
199128:  BNE             loc_1990EA
19912A:  LDR.W           R1, [R6,#0xC4]
19912E:  ADD.W           R8, R8, #0x30 ; '0'
199132:  LDR.W           R0, [R6,#0xC8]
199136:  LDR.W           R3, [R6,#0x94]
19913A:  ADDS            R1, #1
19913C:  LDR.W           R10, [R6,#0x28]
199140:  CMP             R1, R0
199142:  BLT.W           loc_198874
199146:  B.W             loc_198624
