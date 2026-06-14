; =========================================================
; Game Engine Function: _ZN6CWorld21GetIsLineOfSightClearERK7CVectorS2_bbbbbbb
; Address            : 0x423418 - 0x4249CC
; =========================================================

423418:  PUSH            {R4-R7,LR}
42341A:  ADD             R7, SP, #0xC
42341C:  PUSH.W          {R8-R11}
423420:  SUB             SP, SP, #4
423422:  VPUSH           {D8-D13}
423426:  SUB             SP, SP, #0x68; bool
423428:  STRD.W          R3, R2, [SP,#0xB8+var_80]
42342C:  STRD.W          R1, R0, [SP,#0xB8+var_78]
423430:  MOVW            R1, #0xFFFF
423434:  LDR.W           R0, =(_ZN6CWorld19ms_nCurrentScanCodeE_ptr - 0x42343C)
423438:  ADD             R0, PC; _ZN6CWorld19ms_nCurrentScanCodeE_ptr
42343A:  LDR             R0, [R0]; CWorld::ms_nCurrentScanCode ...
42343C:  LDRH            R0, [R0]; this
42343E:  CMP             R0, R1
423440:  BEQ             loc_423446
423442:  ADDS            R0, #1
423444:  B               loc_42344C
423446:  BLX             j__ZN6CWorld14ClearScanCodesEv; CWorld::ClearScanCodes(void)
42344A:  MOVS            R0, #1
42344C:  LDR.W           R1, =(_ZN6CWorld19ms_nCurrentScanCodeE_ptr - 0x423458)
423450:  VLDR            S16, =50.0
423454:  ADD             R1, PC; _ZN6CWorld19ms_nCurrentScanCodeE_ptr
423456:  VLDR            S18, =60.0
42345A:  LDR             R1, [R1]; CWorld::ms_nCurrentScanCode ...
42345C:  STRH            R0, [R1]; CWorld::ms_nCurrentScanCode
42345E:  LDR             R0, [SP,#0xB8+var_74]
423460:  VLDR            S24, [R0]
423464:  VLDR            S22, [R0,#4]
423468:  VDIV.F32        S0, S24, S16
42346C:  VADD.F32        S0, S0, S18
423470:  VMOV            R0, S0; x
423474:  BLX             floorf
423478:  VDIV.F32        S0, S22, S16
42347C:  MOV             R4, R0
42347E:  VADD.F32        S0, S0, S18
423482:  VMOV            R0, S0; x
423486:  BLX             floorf
42348A:  MOV             R6, R0
42348C:  LDR             R0, [SP,#0xB8+var_78]
42348E:  VLDR            S26, [R0]
423492:  VLDR            S20, [R0,#4]
423496:  VDIV.F32        S0, S26, S16
42349A:  VADD.F32        S0, S0, S18
42349E:  VMOV            R0, S0; x
4234A2:  BLX             floorf
4234A6:  VDIV.F32        S0, S20, S16
4234AA:  MOV             R5, R0
4234AC:  VADD.F32        S0, S0, S18
4234B0:  VMOV            R0, S0; x
4234B4:  BLX             floorf
4234B8:  VMOV            S0, R0
4234BC:  VMOV            S2, R5
4234C0:  VMOV            S4, R6
4234C4:  VMOV            S6, R4
4234C8:  VCVT.S32.F32    S0, S0
4234CC:  VCVT.S32.F32    S2, S2
4234D0:  VCVT.S32.F32    S4, S4
4234D4:  VCVT.S32.F32    S6, S6
4234D8:  VMOV            R0, S0
4234DC:  VMOV            R1, S2
4234E0:  VMOV            R6, S4
4234E4:  VMOV            R11, S6
4234E8:  CMP             R11, R1
4234EA:  IT EQ
4234EC:  CMPEQ           R6, R0
4234EE:  BNE.W           loc_4235FA
4234F2:  LDRD.W          R2, R1, [SP,#0xB8+var_78]; CVector *
4234F6:  ADD             R0, SP, #0xB8+var_70; this
4234F8:  BLX             j__ZN8CColLineC2ERK7CVectorS2_; CColLine::CColLine(CVector const&,CVector const&)
4234FC:  CMP.W           R11, #0
423500:  MOV.W           R1, #0
423504:  IT GT
423506:  MOVGT           R1, R11
423508:  MOVS            R2, #0x77 ; 'w'
42350A:  CMP             R1, #0x77 ; 'w'
42350C:  MOV.W           R0, #0
423510:  IT GE
423512:  MOVGE           R1, R2
423514:  CMP             R6, #0
423516:  IT GT
423518:  MOVGT           R0, R6
42351A:  CMP             R0, #0x77 ; 'w'
42351C:  IT GE
42351E:  MOVGE           R0, R2
423520:  RSB.W           R0, R0, R0,LSL#4
423524:  ADD.W           R8, R1, R0,LSL#3
423528:  LDR             R0, [SP,#0xB8+var_7C]
42352A:  CMP             R0, #1
42352C:  BNE             loc_42354C
42352E:  LDR.W           R0, =(_ZN6CWorld11ms_aSectorsE_ptr - 0x42353C)
423532:  ADD             R1, SP, #0xB8+var_70; CPtrList *
423534:  LDR             R2, [R7,#arg_C]; CColLine *
423536:  MOVS            R3, #0; bool
423538:  ADD             R0, PC; _ZN6CWorld11ms_aSectorsE_ptr
42353A:  MOVS            R4, #0
42353C:  LDR             R0, [R0]; CWorld::ms_aSectors ...
42353E:  ADD.W           R0, R0, R8,LSL#3; this
423542:  BLX             j__ZN6CWorld31GetIsLineOfSightSectorListClearER8CPtrListRK8CColLinebb; CWorld::GetIsLineOfSightSectorListClear(CPtrList &,CColLine const&,bool,bool)
423546:  CMP             R0, #1
423548:  BNE.W           loc_4249BC
42354C:  AND.W           R5, R11, #0xF
423550:  LDR             R0, [SP,#0xB8+var_80]
423552:  BFI.W           R5, R6, #4, #4
423556:  CMP             R0, #1
423558:  BNE             loc_42357C
42355A:  LDR.W           R0, =(_ZN6CWorld17ms_aRepeatSectorsE_ptr - 0x42356A)
42355E:  ADD.W           R1, R5, R5,LSL#1
423562:  LDR             R2, [R7,#arg_C]; CColLine *
423564:  MOVS            R3, #0; bool
423566:  ADD             R0, PC; _ZN6CWorld17ms_aRepeatSectorsE_ptr
423568:  MOVS            R4, #0
42356A:  LDR             R0, [R0]; CWorld::ms_aRepeatSectors ...
42356C:  ADD.W           R0, R0, R1,LSL#2; this
423570:  ADD             R1, SP, #0xB8+var_70; CPtrList *
423572:  BLX             j__ZN6CWorld31GetIsLineOfSightSectorListClearER8CPtrListRK8CColLinebb; CWorld::GetIsLineOfSightSectorListClear(CPtrList &,CColLine const&,bool,bool)
423576:  CMP             R0, #1
423578:  BNE.W           loc_4249BC
42357C:  LDR             R0, [R7,#arg_0]
42357E:  CMP             R0, #1
423580:  BNE             loc_4235A6
423582:  LDR.W           R0, =(_ZN6CWorld17ms_aRepeatSectorsE_ptr - 0x423592)
423586:  ADD.W           R1, R5, R5,LSL#1
42358A:  LDR             R2, [R7,#arg_C]; CColLine *
42358C:  MOVS            R3, #0; bool
42358E:  ADD             R0, PC; _ZN6CWorld17ms_aRepeatSectorsE_ptr
423590:  MOVS            R4, #0
423592:  LDR             R0, [R0]; CWorld::ms_aRepeatSectors ...
423594:  ADD.W           R0, R0, R1,LSL#2
423598:  ADD             R1, SP, #0xB8+var_70; CPtrList *
42359A:  ADDS            R0, #4; this
42359C:  BLX             j__ZN6CWorld31GetIsLineOfSightSectorListClearER8CPtrListRK8CColLinebb; CWorld::GetIsLineOfSightSectorListClear(CPtrList &,CColLine const&,bool,bool)
4235A0:  CMP             R0, #1
4235A2:  BNE.W           loc_4249BC
4235A6:  LDR             R0, [R7,#arg_4]
4235A8:  CMP             R0, #1
4235AA:  BNE             loc_4235CE
4235AC:  LDR.W           R0, =(_ZN6CWorld17ms_aRepeatSectorsE_ptr - 0x4235BC)
4235B0:  ADD.W           R1, R5, R5,LSL#1
4235B4:  LDRD.W          R2, R3, [R7,#arg_C]; bool
4235B8:  ADD             R0, PC; _ZN6CWorld17ms_aRepeatSectorsE_ptr
4235BA:  LDR             R0, [R0]; CWorld::ms_aRepeatSectors ...
4235BC:  ADD.W           R0, R0, R1,LSL#2
4235C0:  ADD             R1, SP, #0xB8+var_70; CPtrList *
4235C2:  ADDS            R0, #8; this
4235C4:  BLX             j__ZN6CWorld31GetIsLineOfSightSectorListClearER8CPtrListRK8CColLinebb; CWorld::GetIsLineOfSightSectorListClear(CPtrList &,CColLine const&,bool,bool)
4235C8:  CMP             R0, #1
4235CA:  BNE.W           loc_4249BA
4235CE:  LDR             R0, [R7,#arg_8]
4235D0:  CMP             R0, #1
4235D2:  BNE.W           loc_42397E
4235D6:  LDR.W           R0, =(_ZN6CWorld11ms_aSectorsE_ptr - 0x4235E4)
4235DA:  ADD             R1, SP, #0xB8+var_70; CPtrList *
4235DC:  LDR             R2, [R7,#arg_C]; CColLine *
4235DE:  MOVS            R3, #0; bool
4235E0:  ADD             R0, PC; _ZN6CWorld11ms_aSectorsE_ptr
4235E2:  MOVS            R4, #0
4235E4:  LDR             R0, [R0]; CWorld::ms_aSectors ...
4235E6:  ADD.W           R0, R0, R8,LSL#3
4235EA:  ADDS            R0, #4; this
4235EC:  BLX             j__ZN6CWorld31GetIsLineOfSightSectorListClearER8CPtrListRK8CColLinebb; CWorld::GetIsLineOfSightSectorListClear(CPtrList &,CColLine const&,bool,bool)
4235F0:  CMP             R0, #1
4235F2:  IT EQ
4235F4:  MOVEQ           R4, #1
4235F6:  B.W             loc_4249BC
4235FA:  CMP             R11, R1
4235FC:  STR             R0, [SP,#0xB8+var_84]
4235FE:  BNE.W           loc_42373C
423602:  MOV.W           R9, #0
423606:  CMP.W           R11, #0
42360A:  IT GT
42360C:  MOVGT           R9, R11
42360E:  MOVS            R1, #0x77 ; 'w'
423610:  CMP.W           R9, #0x77 ; 'w'
423614:  AND.W           R11, R11, #0xF
423618:  IT GE
42361A:  MOVGE           R9, R1
42361C:  LSLS            R5, R6, #4
42361E:  CMP             R6, R0
423620:  BGE.W           loc_423874
423624:  LDR.W           R0, =(_ZN6CWorld11ms_aSectorsE_ptr - 0x423630)
423628:  ADD.W           R8, SP, #0xB8+var_70
42362C:  ADD             R0, PC; _ZN6CWorld11ms_aSectorsE_ptr
42362E:  LDR             R0, [R0]; CWorld::ms_aSectors ...
423630:  STR             R0, [SP,#0xB8+var_88]
423632:  LDR.W           R0, =(_ZN6CWorld17ms_aRepeatSectorsE_ptr - 0x42363A)
423636:  ADD             R0, PC; _ZN6CWorld17ms_aRepeatSectorsE_ptr
423638:  LDR             R0, [R0]; CWorld::ms_aRepeatSectors ...
42363A:  STR             R0, [SP,#0xB8+var_8C]
42363C:  LDR.W           R0, =(_ZN6CWorld17ms_aRepeatSectorsE_ptr - 0x423644)
423640:  ADD             R0, PC; _ZN6CWorld17ms_aRepeatSectorsE_ptr
423642:  LDR             R0, [R0]; CWorld::ms_aRepeatSectors ...
423644:  STR             R0, [SP,#0xB8+var_90]
423646:  LDR.W           R0, =(_ZN6CWorld17ms_aRepeatSectorsE_ptr - 0x42364E)
42364A:  ADD             R0, PC; _ZN6CWorld17ms_aRepeatSectorsE_ptr
42364C:  LDR             R0, [R0]; CWorld::ms_aRepeatSectors ...
42364E:  STR             R0, [SP,#0xB8+var_94]
423650:  LDR.W           R0, =(_ZN6CWorld11ms_aSectorsE_ptr - 0x423658)
423654:  ADD             R0, PC; _ZN6CWorld11ms_aSectorsE_ptr
423656:  LDR             R0, [R0]; CWorld::ms_aSectors ...
423658:  STR             R0, [SP,#0xB8+var_98]
42365A:  LDRD.W          R2, R1, [SP,#0xB8+var_78]; CVector *
42365E:  MOV             R0, R8; this
423660:  BLX             j__ZN8CColLineC2ERK7CVectorS2_; CColLine::CColLine(CVector const&,CVector const&)
423664:  CMP             R6, #0
423666:  MOV.W           R0, #0
42366A:  IT GT
42366C:  MOVGT           R0, R6
42366E:  MOVS            R1, #0x77 ; 'w'
423670:  CMP             R0, #0x77 ; 'w'
423672:  IT GE
423674:  MOVGE           R0, R1
423676:  RSB.W           R0, R0, R0,LSL#4
42367A:  ADD.W           R10, R9, R0,LSL#3
42367E:  LDR             R0, [SP,#0xB8+var_7C]
423680:  CMP             R0, #1
423682:  BNE             loc_42369A
423684:  LDR             R0, [SP,#0xB8+var_88]
423686:  MOV             R1, R8; CPtrList *
423688:  LDR             R2, [R7,#arg_C]; CColLine *
42368A:  MOVS            R3, #0; bool
42368C:  ADD.W           R0, R0, R10,LSL#3; this
423690:  BLX             j__ZN6CWorld31GetIsLineOfSightSectorListClearER8CPtrListRK8CColLinebb; CWorld::GetIsLineOfSightSectorListClear(CPtrList &,CColLine const&,bool,bool)
423694:  CMP             R0, #1
423696:  BNE.W           loc_4249BA
42369A:  AND.W           R0, R5, #0xF0
42369E:  ORR.W           R4, R0, R11
4236A2:  LDR             R0, [SP,#0xB8+var_80]
4236A4:  CMP             R0, #1
4236A6:  BNE             loc_4236C2
4236A8:  ADD.W           R0, R4, R4,LSL#1
4236AC:  LDR             R1, [SP,#0xB8+var_8C]
4236AE:  LDR             R2, [R7,#arg_C]; CColLine *
4236B0:  MOVS            R3, #0; bool
4236B2:  ADD.W           R0, R1, R0,LSL#2; this
4236B6:  MOV             R1, R8; CPtrList *
4236B8:  BLX             j__ZN6CWorld31GetIsLineOfSightSectorListClearER8CPtrListRK8CColLinebb; CWorld::GetIsLineOfSightSectorListClear(CPtrList &,CColLine const&,bool,bool)
4236BC:  CMP             R0, #1
4236BE:  BNE.W           loc_4249BA
4236C2:  LDR             R0, [R7,#arg_0]
4236C4:  CMP             R0, #1
4236C6:  BNE             loc_4236E4
4236C8:  ADD.W           R0, R4, R4,LSL#1
4236CC:  LDR             R1, [SP,#0xB8+var_90]
4236CE:  LDR             R2, [R7,#arg_C]; CColLine *
4236D0:  MOVS            R3, #0; bool
4236D2:  ADD.W           R0, R1, R0,LSL#2
4236D6:  MOV             R1, R8; CPtrList *
4236D8:  ADDS            R0, #4; this
4236DA:  BLX             j__ZN6CWorld31GetIsLineOfSightSectorListClearER8CPtrListRK8CColLinebb; CWorld::GetIsLineOfSightSectorListClear(CPtrList &,CColLine const&,bool,bool)
4236DE:  CMP             R0, #1
4236E0:  BNE.W           loc_4249BA
4236E4:  LDR             R0, [R7,#arg_4]
4236E6:  CMP             R0, #1
4236E8:  BNE             loc_423706
4236EA:  LDR             R1, [SP,#0xB8+var_94]
4236EC:  ADD.W           R0, R4, R4,LSL#1
4236F0:  LDRD.W          R2, R3, [R7,#arg_C]; bool
4236F4:  ADD.W           R0, R1, R0,LSL#2
4236F8:  MOV             R1, R8; CPtrList *
4236FA:  ADDS            R0, #8; this
4236FC:  BLX             j__ZN6CWorld31GetIsLineOfSightSectorListClearER8CPtrListRK8CColLinebb; CWorld::GetIsLineOfSightSectorListClear(CPtrList &,CColLine const&,bool,bool)
423700:  CMP             R0, #1
423702:  BNE.W           loc_4249BA
423706:  LDR             R0, [R7,#arg_8]
423708:  CMP             R0, #1
42370A:  BNE             loc_423724
42370C:  LDR             R0, [SP,#0xB8+var_98]
42370E:  MOV             R1, R8; CPtrList *
423710:  LDR             R2, [R7,#arg_C]; CColLine *
423712:  MOVS            R3, #0; bool
423714:  ADD.W           R0, R0, R10,LSL#3
423718:  ADDS            R0, #4; this
42371A:  BLX             j__ZN6CWorld31GetIsLineOfSightSectorListClearER8CPtrListRK8CColLinebb; CWorld::GetIsLineOfSightSectorListClear(CPtrList &,CColLine const&,bool,bool)
42371E:  CMP             R0, #0
423720:  BEQ.W           loc_4249BA
423724:  LDR             R1, [SP,#0xB8+var_84]
423726:  ADDS            R0, R6, #1
423728:  ADDS            R5, #0x10
42372A:  CMP             R6, R1
42372C:  MOV             R6, R0
42372E:  BLT             loc_42365A
423730:  B               loc_42397E
423732:  ALIGN 4
423734:  DCFS 50.0
423738:  DCFS 60.0
42373C:  CMP             R6, R0
42373E:  STR             R1, [SP,#0xB8+var_88]
423740:  BNE.W           loc_423984
423744:  MOVS            R0, #0
423746:  CMP             R6, #0
423748:  IT GT
42374A:  MOVGT           R0, R6
42374C:  MOVS            R2, #0x77 ; 'w'
42374E:  CMP             R0, #0x77 ; 'w'
423750:  IT GE
423752:  MOVGE           R0, R2
423754:  CMP             R11, R1
423756:  RSB.W           R0, R0, R0,LSL#4
42375A:  MOV.W           R5, R0,LSL#3
42375E:  MOV.W           R0, R6,LSL#4
423762:  UXTB.W          R9, R0
423766:  BGE.W           loc_423B0E
42376A:  LDR.W           R0, =(_ZN6CWorld11ms_aSectorsE_ptr - 0x423774)
42376E:  ADD             R6, SP, #0xB8+var_70
423770:  ADD             R0, PC; _ZN6CWorld11ms_aSectorsE_ptr
423772:  LDR             R0, [R0]; CWorld::ms_aSectors ...
423774:  STR             R0, [SP,#0xB8+var_84]
423776:  LDR.W           R0, =(_ZN6CWorld17ms_aRepeatSectorsE_ptr - 0x42377E)
42377A:  ADD             R0, PC; _ZN6CWorld17ms_aRepeatSectorsE_ptr
42377C:  LDR             R0, [R0]; CWorld::ms_aRepeatSectors ...
42377E:  STR             R0, [SP,#0xB8+var_8C]
423780:  LDR.W           R0, =(_ZN6CWorld17ms_aRepeatSectorsE_ptr - 0x423788)
423784:  ADD             R0, PC; _ZN6CWorld17ms_aRepeatSectorsE_ptr
423786:  LDR             R0, [R0]; CWorld::ms_aRepeatSectors ...
423788:  STR             R0, [SP,#0xB8+var_90]
42378A:  LDR.W           R0, =(_ZN6CWorld17ms_aRepeatSectorsE_ptr - 0x423792)
42378E:  ADD             R0, PC; _ZN6CWorld17ms_aRepeatSectorsE_ptr
423790:  LDR             R0, [R0]; CWorld::ms_aRepeatSectors ...
423792:  STR             R0, [SP,#0xB8+var_94]
423794:  LDR.W           R0, =(_ZN6CWorld11ms_aSectorsE_ptr - 0x42379C)
423798:  ADD             R0, PC; _ZN6CWorld11ms_aSectorsE_ptr
42379A:  LDR.W           R8, [R0]; CWorld::ms_aSectors ...
42379E:  LDRD.W          R2, R1, [SP,#0xB8+var_78]; CVector *
4237A2:  MOV             R0, R6; this
4237A4:  BLX             j__ZN8CColLineC2ERK7CVectorS2_; CColLine::CColLine(CVector const&,CVector const&)
4237A8:  CMP.W           R11, #0
4237AC:  MOV.W           R0, #0
4237B0:  IT GT
4237B2:  MOVGT           R0, R11
4237B4:  MOVS            R1, #0x77 ; 'w'
4237B6:  CMP             R0, #0x77 ; 'w'
4237B8:  IT GE
4237BA:  MOVGE           R0, R1
4237BC:  ADDS            R4, R0, R5
4237BE:  LDR             R0, [SP,#0xB8+var_7C]
4237C0:  CMP             R0, #1
4237C2:  BNE             loc_4237DA
4237C4:  LDR             R0, [SP,#0xB8+var_84]
4237C6:  MOV             R1, R6; CPtrList *
4237C8:  LDR             R2, [R7,#arg_C]; CColLine *
4237CA:  MOVS            R3, #0; bool
4237CC:  ADD.W           R0, R0, R4,LSL#3; this
4237D0:  BLX             j__ZN6CWorld31GetIsLineOfSightSectorListClearER8CPtrListRK8CColLinebb; CWorld::GetIsLineOfSightSectorListClear(CPtrList &,CColLine const&,bool,bool)
4237D4:  CMP             R0, #1
4237D6:  BNE.W           loc_4249BA
4237DA:  AND.W           R0, R11, #0xF
4237DE:  ORR.W           R10, R0, R9
4237E2:  LDR             R0, [SP,#0xB8+var_80]
4237E4:  CMP             R0, #1
4237E6:  BNE             loc_423802
4237E8:  ADD.W           R0, R10, R10,LSL#1
4237EC:  LDR             R1, [SP,#0xB8+var_8C]
4237EE:  LDR             R2, [R7,#arg_C]; CColLine *
4237F0:  MOVS            R3, #0; bool
4237F2:  ADD.W           R0, R1, R0,LSL#2; this
4237F6:  MOV             R1, R6; CPtrList *
4237F8:  BLX             j__ZN6CWorld31GetIsLineOfSightSectorListClearER8CPtrListRK8CColLinebb; CWorld::GetIsLineOfSightSectorListClear(CPtrList &,CColLine const&,bool,bool)
4237FC:  CMP             R0, #1
4237FE:  BNE.W           loc_4249BA
423802:  LDR             R0, [R7,#arg_0]
423804:  CMP             R0, #1
423806:  BNE             loc_423824
423808:  ADD.W           R0, R10, R10,LSL#1
42380C:  LDR             R1, [SP,#0xB8+var_90]
42380E:  LDR             R2, [R7,#arg_C]; CColLine *
423810:  MOVS            R3, #0; bool
423812:  ADD.W           R0, R1, R0,LSL#2
423816:  MOV             R1, R6; CPtrList *
423818:  ADDS            R0, #4; this
42381A:  BLX             j__ZN6CWorld31GetIsLineOfSightSectorListClearER8CPtrListRK8CColLinebb; CWorld::GetIsLineOfSightSectorListClear(CPtrList &,CColLine const&,bool,bool)
42381E:  CMP             R0, #1
423820:  BNE.W           loc_4249BA
423824:  LDR             R0, [R7,#arg_4]
423826:  CMP             R0, #1
423828:  BNE             loc_423846
42382A:  LDR             R1, [SP,#0xB8+var_94]
42382C:  ADD.W           R0, R10, R10,LSL#1
423830:  LDRD.W          R2, R3, [R7,#arg_C]; bool
423834:  ADD.W           R0, R1, R0,LSL#2
423838:  MOV             R1, R6; CPtrList *
42383A:  ADDS            R0, #8; this
42383C:  BLX             j__ZN6CWorld31GetIsLineOfSightSectorListClearER8CPtrListRK8CColLinebb; CWorld::GetIsLineOfSightSectorListClear(CPtrList &,CColLine const&,bool,bool)
423840:  CMP             R0, #1
423842:  BNE.W           loc_4249BA
423846:  LDR             R0, [R7,#arg_8]
423848:  CMP             R0, #1
42384A:  BNE             loc_423862
42384C:  ADD.W           R0, R8, R4,LSL#3
423850:  LDR             R2, [R7,#arg_C]; CColLine *
423852:  ADDS            R0, #4; this
423854:  MOV             R1, R6; CPtrList *
423856:  MOVS            R3, #0; bool
423858:  BLX             j__ZN6CWorld31GetIsLineOfSightSectorListClearER8CPtrListRK8CColLinebb; CWorld::GetIsLineOfSightSectorListClear(CPtrList &,CColLine const&,bool,bool)
42385C:  CMP             R0, #0
42385E:  BEQ.W           loc_4249BA
423862:  LDR             R1, [SP,#0xB8+var_88]
423864:  ADD.W           R0, R11, #1
423868:  MOVS            R4, #1
42386A:  CMP             R11, R1
42386C:  MOV             R11, R0
42386E:  BLT             loc_42379E
423870:  B.W             loc_4249BC
423874:  LDR.W           R0, =(_ZN6CWorld11ms_aSectorsE_ptr - 0x42387E)
423878:  ADD             R4, SP, #0xB8+var_70
42387A:  ADD             R0, PC; _ZN6CWorld11ms_aSectorsE_ptr
42387C:  LDR             R0, [R0]; CWorld::ms_aSectors ...
42387E:  STR             R0, [SP,#0xB8+var_88]
423880:  LDR.W           R0, =(_ZN6CWorld17ms_aRepeatSectorsE_ptr - 0x423888)
423884:  ADD             R0, PC; _ZN6CWorld17ms_aRepeatSectorsE_ptr
423886:  LDR             R0, [R0]; CWorld::ms_aRepeatSectors ...
423888:  STR             R0, [SP,#0xB8+var_8C]
42388A:  LDR.W           R0, =(_ZN6CWorld17ms_aRepeatSectorsE_ptr - 0x423892)
42388E:  ADD             R0, PC; _ZN6CWorld17ms_aRepeatSectorsE_ptr
423890:  LDR             R0, [R0]; CWorld::ms_aRepeatSectors ...
423892:  STR             R0, [SP,#0xB8+var_90]
423894:  LDR.W           R0, =(_ZN6CWorld17ms_aRepeatSectorsE_ptr - 0x42389C)
423898:  ADD             R0, PC; _ZN6CWorld17ms_aRepeatSectorsE_ptr
42389A:  LDR             R0, [R0]; CWorld::ms_aRepeatSectors ...
42389C:  STR             R0, [SP,#0xB8+var_94]
42389E:  LDR.W           R0, =(_ZN6CWorld11ms_aSectorsE_ptr - 0x4238A6)
4238A2:  ADD             R0, PC; _ZN6CWorld11ms_aSectorsE_ptr
4238A4:  LDR             R0, [R0]; CWorld::ms_aSectors ...
4238A6:  STR             R0, [SP,#0xB8+var_98]
4238A8:  LDRD.W          R2, R1, [SP,#0xB8+var_78]; CVector *
4238AC:  MOV             R0, R4; this
4238AE:  BLX             j__ZN8CColLineC2ERK7CVectorS2_; CColLine::CColLine(CVector const&,CVector const&)
4238B2:  CMP             R6, #0
4238B4:  MOV.W           R0, #0
4238B8:  IT GT
4238BA:  MOVGT           R0, R6
4238BC:  MOVS            R1, #0x77 ; 'w'
4238BE:  CMP             R0, #0x77 ; 'w'
4238C0:  IT GE
4238C2:  MOVGE           R0, R1
4238C4:  RSB.W           R0, R0, R0,LSL#4
4238C8:  ADD.W           R10, R9, R0,LSL#3
4238CC:  LDR             R0, [SP,#0xB8+var_7C]
4238CE:  CMP             R0, #1
4238D0:  BNE             loc_4238E8
4238D2:  LDR             R0, [SP,#0xB8+var_88]
4238D4:  MOV             R1, R4; CPtrList *
4238D6:  LDR             R2, [R7,#arg_C]; CColLine *
4238D8:  MOVS            R3, #0; bool
4238DA:  ADD.W           R0, R0, R10,LSL#3; this
4238DE:  BLX             j__ZN6CWorld31GetIsLineOfSightSectorListClearER8CPtrListRK8CColLinebb; CWorld::GetIsLineOfSightSectorListClear(CPtrList &,CColLine const&,bool,bool)
4238E2:  CMP             R0, #1
4238E4:  BNE.W           loc_4249BA
4238E8:  AND.W           R0, R5, #0xF0
4238EC:  ORR.W           R8, R0, R11
4238F0:  LDR             R0, [SP,#0xB8+var_80]
4238F2:  CMP             R0, #1
4238F4:  BNE             loc_423910
4238F6:  ADD.W           R0, R8, R8,LSL#1
4238FA:  LDR             R1, [SP,#0xB8+var_8C]
4238FC:  LDR             R2, [R7,#arg_C]; CColLine *
4238FE:  MOVS            R3, #0; bool
423900:  ADD.W           R0, R1, R0,LSL#2; this
423904:  MOV             R1, R4; CPtrList *
423906:  BLX             j__ZN6CWorld31GetIsLineOfSightSectorListClearER8CPtrListRK8CColLinebb; CWorld::GetIsLineOfSightSectorListClear(CPtrList &,CColLine const&,bool,bool)
42390A:  CMP             R0, #1
42390C:  BNE.W           loc_4249BA
423910:  LDR             R0, [R7,#arg_0]
423912:  CMP             R0, #1
423914:  BNE             loc_423932
423916:  ADD.W           R0, R8, R8,LSL#1
42391A:  LDR             R1, [SP,#0xB8+var_90]
42391C:  LDR             R2, [R7,#arg_C]; CColLine *
42391E:  MOVS            R3, #0; bool
423920:  ADD.W           R0, R1, R0,LSL#2
423924:  MOV             R1, R4; CPtrList *
423926:  ADDS            R0, #4; this
423928:  BLX             j__ZN6CWorld31GetIsLineOfSightSectorListClearER8CPtrListRK8CColLinebb; CWorld::GetIsLineOfSightSectorListClear(CPtrList &,CColLine const&,bool,bool)
42392C:  CMP             R0, #1
42392E:  BNE.W           loc_4249BA
423932:  LDR             R0, [R7,#arg_4]
423934:  CMP             R0, #1
423936:  BNE             loc_423954
423938:  LDR             R1, [SP,#0xB8+var_94]
42393A:  ADD.W           R0, R8, R8,LSL#1
42393E:  LDRD.W          R2, R3, [R7,#arg_C]; bool
423942:  ADD.W           R0, R1, R0,LSL#2
423946:  MOV             R1, R4; CPtrList *
423948:  ADDS            R0, #8; this
42394A:  BLX             j__ZN6CWorld31GetIsLineOfSightSectorListClearER8CPtrListRK8CColLinebb; CWorld::GetIsLineOfSightSectorListClear(CPtrList &,CColLine const&,bool,bool)
42394E:  CMP             R0, #1
423950:  BNE.W           loc_4249BA
423954:  LDR             R0, [R7,#arg_8]
423956:  CMP             R0, #1
423958:  BNE             loc_423972
42395A:  LDR             R0, [SP,#0xB8+var_98]
42395C:  MOV             R1, R4; CPtrList *
42395E:  LDR             R2, [R7,#arg_C]; CColLine *
423960:  MOVS            R3, #0; bool
423962:  ADD.W           R0, R0, R10,LSL#3
423966:  ADDS            R0, #4; this
423968:  BLX             j__ZN6CWorld31GetIsLineOfSightSectorListClearER8CPtrListRK8CColLinebb; CWorld::GetIsLineOfSightSectorListClear(CPtrList &,CColLine const&,bool,bool)
42396C:  CMP             R0, #0
42396E:  BEQ.W           loc_4249BA
423972:  LDR             R1, [SP,#0xB8+var_84]
423974:  SUBS            R0, R6, #1
423976:  SUBS            R5, #0x10
423978:  CMP             R6, R1
42397A:  MOV             R6, R0
42397C:  BGT             loc_4238A8
42397E:  MOVS            R4, #1
423980:  B.W             loc_4249BC
423984:  VSUB.F32        S0, S26, S24
423988:  VSUB.F32        S2, S20, S22
42398C:  VCMPE.F32       S26, S24
423990:  VMRS            APSR_nzcv, FPSCR
423994:  VDIV.F32        S20, S2, S0
423998:  BLE.W           loc_423C18
42399C:  SUB.W           R0, R11, #0x3B ; ';'
4239A0:  VMOV            S0, R0
4239A4:  VCVT.F32.S32    S0, S0
4239A8:  VMUL.F32        S0, S0, S16
4239AC:  VSUB.F32        S0, S0, S24
4239B0:  VMUL.F32        S0, S0, S20
4239B4:  VADD.F32        S0, S22, S0
4239B8:  VDIV.F32        S0, S0, S16
4239BC:  VADD.F32        S0, S0, S18
4239C0:  VMOV            R0, S0; x
4239C4:  BLX             floorf
4239C8:  VMOV            S0, R0
4239CC:  MOV.W           R8, #0
4239D0:  CMP.W           R11, #0
4239D4:  MOV.W           R0, #0x77 ; 'w'
4239D8:  IT GT
4239DA:  MOVGT           R8, R11
4239DC:  VCVT.S32.F32    S0, S0
4239E0:  CMP.W           R8, #0x77 ; 'w'
4239E4:  MOV.W           R5, R6,LSL#4
4239E8:  IT GE
4239EA:  MOVGE           R8, R0
4239EC:  AND.W           R1, R11, #0xF
4239F0:  STR             R1, [SP,#0xB8+var_90]
4239F2:  VMOV            R0, S0
4239F6:  STR             R0, [SP,#0xB8+var_8C]
4239F8:  CMP             R0, R6
4239FA:  BLE.W           loc_423D8A
4239FE:  LDR.W           R0, =(_ZN6CWorld11ms_aSectorsE_ptr - 0x423A0A)
423A02:  ADD.W           R9, SP, #0xB8+var_70
423A06:  ADD             R0, PC; _ZN6CWorld11ms_aSectorsE_ptr
423A08:  LDR             R0, [R0]; CWorld::ms_aSectors ...
423A0A:  STR             R0, [SP,#0xB8+var_94]
423A0C:  LDR.W           R0, =(_ZN6CWorld17ms_aRepeatSectorsE_ptr - 0x423A14)
423A10:  ADD             R0, PC; _ZN6CWorld17ms_aRepeatSectorsE_ptr
423A12:  LDR             R0, [R0]; CWorld::ms_aRepeatSectors ...
423A14:  STR             R0, [SP,#0xB8+var_98]
423A16:  LDR.W           R0, =(_ZN6CWorld17ms_aRepeatSectorsE_ptr - 0x423A1E)
423A1A:  ADD             R0, PC; _ZN6CWorld17ms_aRepeatSectorsE_ptr
423A1C:  LDR             R0, [R0]; CWorld::ms_aRepeatSectors ...
423A1E:  STR             R0, [SP,#0xB8+var_9C]
423A20:  LDR.W           R0, =(_ZN6CWorld17ms_aRepeatSectorsE_ptr - 0x423A28)
423A24:  ADD             R0, PC; _ZN6CWorld17ms_aRepeatSectorsE_ptr
423A26:  LDR             R0, [R0]; CWorld::ms_aRepeatSectors ...
423A28:  STR             R0, [SP,#0xB8+var_A0]
423A2A:  LDR.W           R0, =(_ZN6CWorld11ms_aSectorsE_ptr - 0x423A32)
423A2E:  ADD             R0, PC; _ZN6CWorld11ms_aSectorsE_ptr
423A30:  LDR             R0, [R0]; CWorld::ms_aSectors ...
423A32:  STR             R0, [SP,#0xB8+var_A4]
423A34:  LDRD.W          R2, R1, [SP,#0xB8+var_78]; CVector *
423A38:  MOV             R0, R9; this
423A3A:  BLX             j__ZN8CColLineC2ERK7CVectorS2_; CColLine::CColLine(CVector const&,CVector const&)
423A3E:  CMP             R6, #0
423A40:  MOV.W           R0, #0
423A44:  IT GT
423A46:  MOVGT           R0, R6
423A48:  MOVS            R1, #0x77 ; 'w'
423A4A:  CMP             R0, #0x77 ; 'w'
423A4C:  IT GE
423A4E:  MOVGE           R0, R1
423A50:  RSB.W           R0, R0, R0,LSL#4
423A54:  ADD.W           R10, R8, R0,LSL#3
423A58:  LDR             R0, [SP,#0xB8+var_7C]
423A5A:  CMP             R0, #1
423A5C:  BNE             loc_423A74
423A5E:  LDR             R0, [SP,#0xB8+var_94]
423A60:  MOV             R1, R9; CPtrList *
423A62:  LDR             R2, [R7,#arg_C]; CColLine *
423A64:  MOVS            R3, #0; bool
423A66:  ADD.W           R0, R0, R10,LSL#3; this
423A6A:  BLX             j__ZN6CWorld31GetIsLineOfSightSectorListClearER8CPtrListRK8CColLinebb; CWorld::GetIsLineOfSightSectorListClear(CPtrList &,CColLine const&,bool,bool)
423A6E:  CMP             R0, #1
423A70:  BNE.W           loc_4249BA
423A74:  LDR             R1, [SP,#0xB8+var_90]
423A76:  AND.W           R0, R5, #0xF0
423A7A:  ORR.W           R4, R0, R1
423A7E:  LDR             R0, [SP,#0xB8+var_80]
423A80:  CMP             R0, #1
423A82:  BNE             loc_423A9E
423A84:  ADD.W           R0, R4, R4,LSL#1
423A88:  LDR             R1, [SP,#0xB8+var_98]
423A8A:  LDR             R2, [R7,#arg_C]; CColLine *
423A8C:  MOVS            R3, #0; bool
423A8E:  ADD.W           R0, R1, R0,LSL#2; this
423A92:  MOV             R1, R9; CPtrList *
423A94:  BLX             j__ZN6CWorld31GetIsLineOfSightSectorListClearER8CPtrListRK8CColLinebb; CWorld::GetIsLineOfSightSectorListClear(CPtrList &,CColLine const&,bool,bool)
423A98:  CMP             R0, #1
423A9A:  BNE.W           loc_4249BA
423A9E:  LDR             R0, [R7,#arg_0]
423AA0:  CMP             R0, #1
423AA2:  BNE             loc_423AC0
423AA4:  ADD.W           R0, R4, R4,LSL#1
423AA8:  LDR             R1, [SP,#0xB8+var_9C]
423AAA:  LDR             R2, [R7,#arg_C]; CColLine *
423AAC:  MOVS            R3, #0; bool
423AAE:  ADD.W           R0, R1, R0,LSL#2
423AB2:  MOV             R1, R9; CPtrList *
423AB4:  ADDS            R0, #4; this
423AB6:  BLX             j__ZN6CWorld31GetIsLineOfSightSectorListClearER8CPtrListRK8CColLinebb; CWorld::GetIsLineOfSightSectorListClear(CPtrList &,CColLine const&,bool,bool)
423ABA:  CMP             R0, #1
423ABC:  BNE.W           loc_4249BA
423AC0:  LDR             R0, [R7,#arg_4]
423AC2:  CMP             R0, #1
423AC4:  BNE             loc_423AE2
423AC6:  LDR             R1, [SP,#0xB8+var_A0]
423AC8:  ADD.W           R0, R4, R4,LSL#1
423ACC:  LDRD.W          R2, R3, [R7,#arg_C]; bool
423AD0:  ADD.W           R0, R1, R0,LSL#2
423AD4:  MOV             R1, R9; CPtrList *
423AD6:  ADDS            R0, #8; this
423AD8:  BLX             j__ZN6CWorld31GetIsLineOfSightSectorListClearER8CPtrListRK8CColLinebb; CWorld::GetIsLineOfSightSectorListClear(CPtrList &,CColLine const&,bool,bool)
423ADC:  CMP             R0, #1
423ADE:  BNE.W           loc_4249BA
423AE2:  LDR             R0, [R7,#arg_8]
423AE4:  CMP             R0, #1
423AE6:  BNE             loc_423B00
423AE8:  LDR             R0, [SP,#0xB8+var_A4]
423AEA:  MOV             R1, R9; CPtrList *
423AEC:  LDR             R2, [R7,#arg_C]; CColLine *
423AEE:  MOVS            R3, #0; bool
423AF0:  ADD.W           R0, R0, R10,LSL#3
423AF4:  ADDS            R0, #4; this
423AF6:  BLX             j__ZN6CWorld31GetIsLineOfSightSectorListClearER8CPtrListRK8CColLinebb; CWorld::GetIsLineOfSightSectorListClear(CPtrList &,CColLine const&,bool,bool)
423AFA:  CMP             R0, #0
423AFC:  BEQ.W           loc_4249BA
423B00:  LDR             R2, [SP,#0xB8+var_8C]
423B02:  ADDS            R0, R6, #1
423B04:  ADDS            R5, #0x10
423B06:  CMP             R6, R2
423B08:  MOV             R6, R0
423B0A:  BLT             loc_423A34
423B0C:  B               loc_423E96
423B0E:  LDR.W           R0, =(_ZN6CWorld11ms_aSectorsE_ptr - 0x423B1A)
423B12:  ADD.W           R8, SP, #0xB8+var_70
423B16:  ADD             R0, PC; _ZN6CWorld11ms_aSectorsE_ptr
423B18:  LDR             R0, [R0]; CWorld::ms_aSectors ...
423B1A:  STR             R0, [SP,#0xB8+var_84]
423B1C:  LDR.W           R0, =(_ZN6CWorld17ms_aRepeatSectorsE_ptr - 0x423B24)
423B20:  ADD             R0, PC; _ZN6CWorld17ms_aRepeatSectorsE_ptr
423B22:  LDR             R0, [R0]; CWorld::ms_aRepeatSectors ...
423B24:  STR             R0, [SP,#0xB8+var_8C]
423B26:  LDR.W           R0, =(_ZN6CWorld17ms_aRepeatSectorsE_ptr - 0x423B2E)
423B2A:  ADD             R0, PC; _ZN6CWorld17ms_aRepeatSectorsE_ptr
423B2C:  LDR             R0, [R0]; CWorld::ms_aRepeatSectors ...
423B2E:  STR             R0, [SP,#0xB8+var_90]
423B30:  LDR.W           R0, =(_ZN6CWorld17ms_aRepeatSectorsE_ptr - 0x423B38)
423B34:  ADD             R0, PC; _ZN6CWorld17ms_aRepeatSectorsE_ptr
423B36:  LDR             R0, [R0]; CWorld::ms_aRepeatSectors ...
423B38:  STR             R0, [SP,#0xB8+var_94]
423B3A:  LDR.W           R0, =(_ZN6CWorld11ms_aSectorsE_ptr - 0x423B42)
423B3E:  ADD             R0, PC; _ZN6CWorld11ms_aSectorsE_ptr
423B40:  LDR             R6, [R0]; CWorld::ms_aSectors ...
423B42:  LDRD.W          R2, R1, [SP,#0xB8+var_78]; CVector *
423B46:  MOV             R0, R8; this
423B48:  BLX             j__ZN8CColLineC2ERK7CVectorS2_; CColLine::CColLine(CVector const&,CVector const&)
423B4C:  CMP.W           R11, #0
423B50:  MOV.W           R0, #0
423B54:  IT GT
423B56:  MOVGT           R0, R11
423B58:  MOVS            R1, #0x77 ; 'w'
423B5A:  CMP             R0, #0x77 ; 'w'
423B5C:  IT GE
423B5E:  MOVGE           R0, R1
423B60:  ADDS            R4, R0, R5
423B62:  LDR             R0, [SP,#0xB8+var_7C]
423B64:  CMP             R0, #1
423B66:  BNE             loc_423B7E
423B68:  LDR             R0, [SP,#0xB8+var_84]
423B6A:  MOV             R1, R8; CPtrList *
423B6C:  LDR             R2, [R7,#arg_C]; CColLine *
423B6E:  MOVS            R3, #0; bool
423B70:  ADD.W           R0, R0, R4,LSL#3; this
423B74:  BLX             j__ZN6CWorld31GetIsLineOfSightSectorListClearER8CPtrListRK8CColLinebb; CWorld::GetIsLineOfSightSectorListClear(CPtrList &,CColLine const&,bool,bool)
423B78:  CMP             R0, #1
423B7A:  BNE.W           loc_4249BA
423B7E:  AND.W           R0, R11, #0xF
423B82:  ORR.W           R10, R0, R9
423B86:  LDR             R0, [SP,#0xB8+var_80]
423B88:  CMP             R0, #1
423B8A:  BNE             loc_423BA6
423B8C:  ADD.W           R0, R10, R10,LSL#1
423B90:  LDR             R1, [SP,#0xB8+var_8C]
423B92:  LDR             R2, [R7,#arg_C]; CColLine *
423B94:  MOVS            R3, #0; bool
423B96:  ADD.W           R0, R1, R0,LSL#2; this
423B9A:  MOV             R1, R8; CPtrList *
423B9C:  BLX             j__ZN6CWorld31GetIsLineOfSightSectorListClearER8CPtrListRK8CColLinebb; CWorld::GetIsLineOfSightSectorListClear(CPtrList &,CColLine const&,bool,bool)
423BA0:  CMP             R0, #1
423BA2:  BNE.W           loc_4249BA
423BA6:  LDR             R0, [R7,#arg_0]
423BA8:  CMP             R0, #1
423BAA:  BNE             loc_423BC8
423BAC:  ADD.W           R0, R10, R10,LSL#1
423BB0:  LDR             R1, [SP,#0xB8+var_90]
423BB2:  LDR             R2, [R7,#arg_C]; CColLine *
423BB4:  MOVS            R3, #0; bool
423BB6:  ADD.W           R0, R1, R0,LSL#2
423BBA:  MOV             R1, R8; CPtrList *
423BBC:  ADDS            R0, #4; this
423BBE:  BLX             j__ZN6CWorld31GetIsLineOfSightSectorListClearER8CPtrListRK8CColLinebb; CWorld::GetIsLineOfSightSectorListClear(CPtrList &,CColLine const&,bool,bool)
423BC2:  CMP             R0, #1
423BC4:  BNE.W           loc_4249BA
423BC8:  LDR             R0, [R7,#arg_4]
423BCA:  CMP             R0, #1
423BCC:  BNE             loc_423BEA
423BCE:  LDR             R1, [SP,#0xB8+var_94]
423BD0:  ADD.W           R0, R10, R10,LSL#1
423BD4:  LDRD.W          R2, R3, [R7,#arg_C]; bool
423BD8:  ADD.W           R0, R1, R0,LSL#2
423BDC:  MOV             R1, R8; CPtrList *
423BDE:  ADDS            R0, #8; this
423BE0:  BLX             j__ZN6CWorld31GetIsLineOfSightSectorListClearER8CPtrListRK8CColLinebb; CWorld::GetIsLineOfSightSectorListClear(CPtrList &,CColLine const&,bool,bool)
423BE4:  CMP             R0, #1
423BE6:  BNE.W           loc_4249BA
423BEA:  LDR             R0, [R7,#arg_8]
423BEC:  CMP             R0, #1
423BEE:  BNE             loc_423C06
423BF0:  ADD.W           R0, R6, R4,LSL#3
423BF4:  LDR             R2, [R7,#arg_C]; CColLine *
423BF6:  ADDS            R0, #4; this
423BF8:  MOV             R1, R8; CPtrList *
423BFA:  MOVS            R3, #0; bool
423BFC:  BLX             j__ZN6CWorld31GetIsLineOfSightSectorListClearER8CPtrListRK8CColLinebb; CWorld::GetIsLineOfSightSectorListClear(CPtrList &,CColLine const&,bool,bool)
423C00:  CMP             R0, #0
423C02:  BEQ.W           loc_4249BA
423C06:  LDR             R1, [SP,#0xB8+var_88]
423C08:  SUB.W           R0, R11, #1
423C0C:  MOVS            R4, #1
423C0E:  CMP             R11, R1
423C10:  MOV             R11, R0
423C12:  BGT             loc_423B42
423C14:  B.W             loc_4249BC
423C18:  SUB.W           R0, R11, #0x3C ; '<'
423C1C:  VMOV            S0, R0
423C20:  VCVT.F32.S32    S0, S0
423C24:  VMUL.F32        S0, S0, S16
423C28:  VSUB.F32        S0, S0, S24
423C2C:  VMUL.F32        S0, S0, S20
423C30:  VADD.F32        S0, S22, S0
423C34:  VDIV.F32        S0, S0, S16
423C38:  VADD.F32        S0, S0, S18
423C3C:  VMOV            R0, S0; x
423C40:  BLX             floorf
423C44:  VMOV            S0, R0
423C48:  MOV.W           R8, #0
423C4C:  CMP.W           R11, #0
423C50:  MOV.W           R0, #0x77 ; 'w'
423C54:  IT GT
423C56:  MOVGT           R8, R11
423C58:  VCVT.S32.F32    S0, S0
423C5C:  CMP.W           R8, #0x77 ; 'w'
423C60:  MOV.W           R5, R6,LSL#4
423C64:  IT GE
423C66:  MOVGE           R8, R0
423C68:  AND.W           R1, R11, #0xF
423C6C:  STR             R1, [SP,#0xB8+var_90]
423C6E:  VMOV            R0, S0
423C72:  STR             R0, [SP,#0xB8+var_8C]
423C74:  CMP             R0, R6
423C76:  BLE.W           loc_4242E8
423C7A:  LDR.W           R0, =(_ZN6CWorld11ms_aSectorsE_ptr - 0x423C86)
423C7E:  ADD.W           R9, SP, #0xB8+var_70
423C82:  ADD             R0, PC; _ZN6CWorld11ms_aSectorsE_ptr
423C84:  LDR             R0, [R0]; CWorld::ms_aSectors ...
423C86:  STR             R0, [SP,#0xB8+var_94]
423C88:  LDR.W           R0, =(_ZN6CWorld17ms_aRepeatSectorsE_ptr - 0x423C90)
423C8C:  ADD             R0, PC; _ZN6CWorld17ms_aRepeatSectorsE_ptr
423C8E:  LDR             R0, [R0]; CWorld::ms_aRepeatSectors ...
423C90:  STR             R0, [SP,#0xB8+var_98]
423C92:  LDR.W           R0, =(_ZN6CWorld17ms_aRepeatSectorsE_ptr - 0x423C9A)
423C96:  ADD             R0, PC; _ZN6CWorld17ms_aRepeatSectorsE_ptr
423C98:  LDR             R0, [R0]; CWorld::ms_aRepeatSectors ...
423C9A:  STR             R0, [SP,#0xB8+var_9C]
423C9C:  LDR.W           R0, =(_ZN6CWorld17ms_aRepeatSectorsE_ptr - 0x423CA4)
423CA0:  ADD             R0, PC; _ZN6CWorld17ms_aRepeatSectorsE_ptr
423CA2:  LDR             R0, [R0]; CWorld::ms_aRepeatSectors ...
423CA4:  STR             R0, [SP,#0xB8+var_A0]
423CA6:  LDR.W           R0, =(_ZN6CWorld11ms_aSectorsE_ptr - 0x423CAE)
423CAA:  ADD             R0, PC; _ZN6CWorld11ms_aSectorsE_ptr
423CAC:  LDR             R0, [R0]; CWorld::ms_aSectors ...
423CAE:  STR             R0, [SP,#0xB8+var_A4]
423CB0:  LDRD.W          R2, R1, [SP,#0xB8+var_78]; CVector *
423CB4:  MOV             R0, R9; this
423CB6:  BLX             j__ZN8CColLineC2ERK7CVectorS2_; CColLine::CColLine(CVector const&,CVector const&)
423CBA:  CMP             R6, #0
423CBC:  MOV.W           R0, #0
423CC0:  IT GT
423CC2:  MOVGT           R0, R6
423CC4:  MOVS            R1, #0x77 ; 'w'
423CC6:  CMP             R0, #0x77 ; 'w'
423CC8:  IT GE
423CCA:  MOVGE           R0, R1
423CCC:  RSB.W           R0, R0, R0,LSL#4
423CD0:  ADD.W           R10, R8, R0,LSL#3
423CD4:  LDR             R0, [SP,#0xB8+var_7C]
423CD6:  CMP             R0, #1
423CD8:  BNE             loc_423CF0
423CDA:  LDR             R0, [SP,#0xB8+var_94]
423CDC:  MOV             R1, R9; CPtrList *
423CDE:  LDR             R2, [R7,#arg_C]; CColLine *
423CE0:  MOVS            R3, #0; bool
423CE2:  ADD.W           R0, R0, R10,LSL#3; this
423CE6:  BLX             j__ZN6CWorld31GetIsLineOfSightSectorListClearER8CPtrListRK8CColLinebb; CWorld::GetIsLineOfSightSectorListClear(CPtrList &,CColLine const&,bool,bool)
423CEA:  CMP             R0, #1
423CEC:  BNE.W           loc_4249BA
423CF0:  LDR             R1, [SP,#0xB8+var_90]
423CF2:  AND.W           R0, R5, #0xF0
423CF6:  ORR.W           R4, R0, R1
423CFA:  LDR             R0, [SP,#0xB8+var_80]
423CFC:  CMP             R0, #1
423CFE:  BNE             loc_423D1A
423D00:  ADD.W           R0, R4, R4,LSL#1
423D04:  LDR             R1, [SP,#0xB8+var_98]
423D06:  LDR             R2, [R7,#arg_C]; CColLine *
423D08:  MOVS            R3, #0; bool
423D0A:  ADD.W           R0, R1, R0,LSL#2; this
423D0E:  MOV             R1, R9; CPtrList *
423D10:  BLX             j__ZN6CWorld31GetIsLineOfSightSectorListClearER8CPtrListRK8CColLinebb; CWorld::GetIsLineOfSightSectorListClear(CPtrList &,CColLine const&,bool,bool)
423D14:  CMP             R0, #1
423D16:  BNE.W           loc_4249BA
423D1A:  LDR             R0, [R7,#arg_0]
423D1C:  CMP             R0, #1
423D1E:  BNE             loc_423D3C
423D20:  ADD.W           R0, R4, R4,LSL#1
423D24:  LDR             R1, [SP,#0xB8+var_9C]
423D26:  LDR             R2, [R7,#arg_C]; CColLine *
423D28:  MOVS            R3, #0; bool
423D2A:  ADD.W           R0, R1, R0,LSL#2
423D2E:  MOV             R1, R9; CPtrList *
423D30:  ADDS            R0, #4; this
423D32:  BLX             j__ZN6CWorld31GetIsLineOfSightSectorListClearER8CPtrListRK8CColLinebb; CWorld::GetIsLineOfSightSectorListClear(CPtrList &,CColLine const&,bool,bool)
423D36:  CMP             R0, #1
423D38:  BNE.W           loc_4249BA
423D3C:  LDR             R0, [R7,#arg_4]
423D3E:  CMP             R0, #1
423D40:  BNE             loc_423D5E
423D42:  LDR             R1, [SP,#0xB8+var_A0]
423D44:  ADD.W           R0, R4, R4,LSL#1
423D48:  LDRD.W          R2, R3, [R7,#arg_C]; bool
423D4C:  ADD.W           R0, R1, R0,LSL#2
423D50:  MOV             R1, R9; CPtrList *
423D52:  ADDS            R0, #8; this
423D54:  BLX             j__ZN6CWorld31GetIsLineOfSightSectorListClearER8CPtrListRK8CColLinebb; CWorld::GetIsLineOfSightSectorListClear(CPtrList &,CColLine const&,bool,bool)
423D58:  CMP             R0, #1
423D5A:  BNE.W           loc_4249BA
423D5E:  LDR             R0, [R7,#arg_8]
423D60:  CMP             R0, #1
423D62:  BNE             loc_423D7C
423D64:  LDR             R0, [SP,#0xB8+var_A4]
423D66:  MOV             R1, R9; CPtrList *
423D68:  LDR             R2, [R7,#arg_C]; CColLine *
423D6A:  MOVS            R3, #0; bool
423D6C:  ADD.W           R0, R0, R10,LSL#3
423D70:  ADDS            R0, #4; this
423D72:  BLX             j__ZN6CWorld31GetIsLineOfSightSectorListClearER8CPtrListRK8CColLinebb; CWorld::GetIsLineOfSightSectorListClear(CPtrList &,CColLine const&,bool,bool)
423D76:  CMP             R0, #0
423D78:  BEQ.W           loc_4249BA
423D7C:  LDR             R2, [SP,#0xB8+var_8C]
423D7E:  ADDS            R0, R6, #1
423D80:  ADDS            R5, #0x10
423D82:  CMP             R6, R2
423D84:  MOV             R6, R0
423D86:  BLT             loc_423CB0
423D88:  B               loc_4243F4
423D8A:  LDR.W           R0, =(_ZN6CWorld11ms_aSectorsE_ptr - 0x423D94)
423D8E:  ADD             R4, SP, #0xB8+var_70
423D90:  ADD             R0, PC; _ZN6CWorld11ms_aSectorsE_ptr
423D92:  LDR             R0, [R0]; CWorld::ms_aSectors ...
423D94:  STR             R0, [SP,#0xB8+var_94]
423D96:  LDR.W           R0, =(_ZN6CWorld17ms_aRepeatSectorsE_ptr - 0x423D9E)
423D9A:  ADD             R0, PC; _ZN6CWorld17ms_aRepeatSectorsE_ptr
423D9C:  LDR             R0, [R0]; CWorld::ms_aRepeatSectors ...
423D9E:  STR             R0, [SP,#0xB8+var_98]
423DA0:  LDR.W           R0, =(_ZN6CWorld17ms_aRepeatSectorsE_ptr - 0x423DA8)
423DA4:  ADD             R0, PC; _ZN6CWorld17ms_aRepeatSectorsE_ptr
423DA6:  LDR             R0, [R0]; CWorld::ms_aRepeatSectors ...
423DA8:  STR             R0, [SP,#0xB8+var_9C]
423DAA:  LDR.W           R0, =(_ZN6CWorld17ms_aRepeatSectorsE_ptr - 0x423DB2)
423DAE:  ADD             R0, PC; _ZN6CWorld17ms_aRepeatSectorsE_ptr
423DB0:  LDR             R0, [R0]; CWorld::ms_aRepeatSectors ...
423DB2:  STR             R0, [SP,#0xB8+var_A0]
423DB4:  LDR.W           R0, =(_ZN6CWorld11ms_aSectorsE_ptr - 0x423DBC)
423DB8:  ADD             R0, PC; _ZN6CWorld11ms_aSectorsE_ptr
423DBA:  LDR             R0, [R0]; CWorld::ms_aSectors ...
423DBC:  STR             R0, [SP,#0xB8+var_A4]
423DBE:  LDRD.W          R2, R1, [SP,#0xB8+var_78]; CVector *
423DC2:  MOV             R0, R4; this
423DC4:  BLX             j__ZN8CColLineC2ERK7CVectorS2_; CColLine::CColLine(CVector const&,CVector const&)
423DC8:  CMP             R6, #0
423DCA:  MOV.W           R0, #0
423DCE:  IT GT
423DD0:  MOVGT           R0, R6
423DD2:  MOVS            R1, #0x77 ; 'w'
423DD4:  CMP             R0, #0x77 ; 'w'
423DD6:  IT GE
423DD8:  MOVGE           R0, R1
423DDA:  RSB.W           R0, R0, R0,LSL#4
423DDE:  ADD.W           R10, R8, R0,LSL#3
423DE2:  LDR             R0, [SP,#0xB8+var_7C]
423DE4:  CMP             R0, #1
423DE6:  BNE             loc_423DFE
423DE8:  LDR             R0, [SP,#0xB8+var_94]
423DEA:  MOV             R1, R4; CPtrList *
423DEC:  LDR             R2, [R7,#arg_C]; CColLine *
423DEE:  MOVS            R3, #0; bool
423DF0:  ADD.W           R0, R0, R10,LSL#3; this
423DF4:  BLX             j__ZN6CWorld31GetIsLineOfSightSectorListClearER8CPtrListRK8CColLinebb; CWorld::GetIsLineOfSightSectorListClear(CPtrList &,CColLine const&,bool,bool)
423DF8:  CMP             R0, #1
423DFA:  BNE.W           loc_4249BA
423DFE:  LDR             R1, [SP,#0xB8+var_90]
423E00:  AND.W           R0, R5, #0xF0
423E04:  ORR.W           R9, R0, R1
423E08:  LDR             R0, [SP,#0xB8+var_80]
423E0A:  CMP             R0, #1
423E0C:  BNE             loc_423E28
423E0E:  ADD.W           R0, R9, R9,LSL#1
423E12:  LDR             R1, [SP,#0xB8+var_98]
423E14:  LDR             R2, [R7,#arg_C]; CColLine *
423E16:  MOVS            R3, #0; bool
423E18:  ADD.W           R0, R1, R0,LSL#2; this
423E1C:  MOV             R1, R4; CPtrList *
423E1E:  BLX             j__ZN6CWorld31GetIsLineOfSightSectorListClearER8CPtrListRK8CColLinebb; CWorld::GetIsLineOfSightSectorListClear(CPtrList &,CColLine const&,bool,bool)
423E22:  CMP             R0, #1
423E24:  BNE.W           loc_4249BA
423E28:  LDR             R0, [R7,#arg_0]
423E2A:  CMP             R0, #1
423E2C:  BNE             loc_423E4A
423E2E:  ADD.W           R0, R9, R9,LSL#1
423E32:  LDR             R1, [SP,#0xB8+var_9C]
423E34:  LDR             R2, [R7,#arg_C]; CColLine *
423E36:  MOVS            R3, #0; bool
423E38:  ADD.W           R0, R1, R0,LSL#2
423E3C:  MOV             R1, R4; CPtrList *
423E3E:  ADDS            R0, #4; this
423E40:  BLX             j__ZN6CWorld31GetIsLineOfSightSectorListClearER8CPtrListRK8CColLinebb; CWorld::GetIsLineOfSightSectorListClear(CPtrList &,CColLine const&,bool,bool)
423E44:  CMP             R0, #1
423E46:  BNE.W           loc_4249BA
423E4A:  LDR             R0, [R7,#arg_4]
423E4C:  CMP             R0, #1
423E4E:  BNE             loc_423E6C
423E50:  LDR             R1, [SP,#0xB8+var_A0]
423E52:  ADD.W           R0, R9, R9,LSL#1
423E56:  LDRD.W          R2, R3, [R7,#arg_C]; bool
423E5A:  ADD.W           R0, R1, R0,LSL#2
423E5E:  MOV             R1, R4; CPtrList *
423E60:  ADDS            R0, #8; this
423E62:  BLX             j__ZN6CWorld31GetIsLineOfSightSectorListClearER8CPtrListRK8CColLinebb; CWorld::GetIsLineOfSightSectorListClear(CPtrList &,CColLine const&,bool,bool)
423E66:  CMP             R0, #1
423E68:  BNE.W           loc_4249BA
423E6C:  LDR             R0, [R7,#arg_8]
423E6E:  CMP             R0, #1
423E70:  BNE             loc_423E8A
423E72:  LDR             R0, [SP,#0xB8+var_A4]
423E74:  MOV             R1, R4; CPtrList *
423E76:  LDR             R2, [R7,#arg_C]; CColLine *
423E78:  MOVS            R3, #0; bool
423E7A:  ADD.W           R0, R0, R10,LSL#3
423E7E:  ADDS            R0, #4; this
423E80:  BLX             j__ZN6CWorld31GetIsLineOfSightSectorListClearER8CPtrListRK8CColLinebb; CWorld::GetIsLineOfSightSectorListClear(CPtrList &,CColLine const&,bool,bool)
423E84:  CMP             R0, #0
423E86:  BEQ.W           loc_4249BA
423E8A:  LDR             R2, [SP,#0xB8+var_8C]
423E8C:  SUBS            R0, R6, #1
423E8E:  SUBS            R5, #0x10
423E90:  CMP             R6, R2
423E92:  MOV             R6, R0
423E94:  BGT             loc_423DBE
423E96:  LDR             R1, [SP,#0xB8+var_88]
423E98:  ADD.W           R0, R11, #1
423E9C:  CMP             R0, R1
423E9E:  BGE.W           loc_424136
423EA2:  LDR.W           R1, =(_ZN6CWorld11ms_aSectorsE_ptr - 0x423EB0)
423EA6:  MOVS            R6, #0x77 ; 'w'
423EA8:  ADD.W           R10, SP, #0xB8+var_70
423EAC:  ADD             R1, PC; _ZN6CWorld11ms_aSectorsE_ptr
423EAE:  LDR             R1, [R1]; CWorld::ms_aSectors ...
423EB0:  STR             R1, [SP,#0xB8+var_94]
423EB2:  LDR.W           R1, =(_ZN6CWorld17ms_aRepeatSectorsE_ptr - 0x423EBA)
423EB6:  ADD             R1, PC; _ZN6CWorld17ms_aRepeatSectorsE_ptr
423EB8:  LDR             R1, [R1]; CWorld::ms_aRepeatSectors ...
423EBA:  STR             R1, [SP,#0xB8+var_9C]
423EBC:  LDR.W           R1, =(_ZN6CWorld17ms_aRepeatSectorsE_ptr - 0x423EC4)
423EC0:  ADD             R1, PC; _ZN6CWorld17ms_aRepeatSectorsE_ptr
423EC2:  LDR             R1, [R1]; CWorld::ms_aRepeatSectors ...
423EC4:  STR             R1, [SP,#0xB8+var_A4]
423EC6:  LDR.W           R1, =(_ZN6CWorld17ms_aRepeatSectorsE_ptr - 0x423ECE)
423ECA:  ADD             R1, PC; _ZN6CWorld17ms_aRepeatSectorsE_ptr
423ECC:  LDR             R1, [R1]; CWorld::ms_aRepeatSectors ...
423ECE:  STR             R1, [SP,#0xB8+var_AC]
423ED0:  LDR.W           R1, =(_ZN6CWorld11ms_aSectorsE_ptr - 0x423ED8)
423ED4:  ADD             R1, PC; _ZN6CWorld11ms_aSectorsE_ptr
423ED6:  LDR             R1, [R1]; CWorld::ms_aSectors ...
423ED8:  STR             R1, [SP,#0xB8+var_B4]
423EDA:  LDR.W           R1, =(_ZN6CWorld11ms_aSectorsE_ptr - 0x423EE2)
423EDE:  ADD             R1, PC; _ZN6CWorld11ms_aSectorsE_ptr
423EE0:  LDR             R1, [R1]; CWorld::ms_aSectors ...
423EE2:  STR             R1, [SP,#0xB8+var_98]
423EE4:  LDR.W           R1, =(_ZN6CWorld17ms_aRepeatSectorsE_ptr - 0x423EEC)
423EE8:  ADD             R1, PC; _ZN6CWorld17ms_aRepeatSectorsE_ptr
423EEA:  LDR             R1, [R1]; CWorld::ms_aRepeatSectors ...
423EEC:  STR             R1, [SP,#0xB8+var_A0]
423EEE:  LDR.W           R1, =(_ZN6CWorld17ms_aRepeatSectorsE_ptr - 0x423EF6)
423EF2:  ADD             R1, PC; _ZN6CWorld17ms_aRepeatSectorsE_ptr
423EF4:  LDR             R1, [R1]; CWorld::ms_aRepeatSectors ...
423EF6:  STR             R1, [SP,#0xB8+var_A8]
423EF8:  LDR.W           R1, =(_ZN6CWorld17ms_aRepeatSectorsE_ptr - 0x423F00)
423EFC:  ADD             R1, PC; _ZN6CWorld17ms_aRepeatSectorsE_ptr
423EFE:  LDR             R1, [R1]; CWorld::ms_aRepeatSectors ...
423F00:  STR             R1, [SP,#0xB8+var_B0]
423F02:  LDR.W           R1, =(_ZN6CWorld11ms_aSectorsE_ptr - 0x423F0A)
423F06:  ADD             R1, PC; _ZN6CWorld11ms_aSectorsE_ptr
423F08:  LDR             R1, [R1]; CWorld::ms_aSectors ...
423F0A:  STR             R1, [SP,#0xB8+var_B8]; bool
423F0C:  MOV             R1, R11
423F0E:  MOV             R11, R0
423F10:  SUB.W           R0, R1, #0x3A ; ':'
423F14:  MOV             R5, R2
423F16:  VMOV            S0, R0
423F1A:  VCVT.F32.S32    S0, S0
423F1E:  LDR             R0, [SP,#0xB8+var_74]
423F20:  VLDR            S2, [R0]
423F24:  VLDR            S4, [R0,#4]
423F28:  VMUL.F32        S0, S0, S16
423F2C:  VSUB.F32        S0, S0, S2
423F30:  VMUL.F32        S0, S20, S0
423F34:  VADD.F32        S0, S4, S0
423F38:  VDIV.F32        S0, S0, S16
423F3C:  VADD.F32        S0, S0, S18
423F40:  VMOV            R0, S0; x
423F44:  BLX             floorf
423F48:  VMOV            S0, R0
423F4C:  CMP.W           R11, #0
423F50:  MOV.W           R9, #0
423F54:  MOV.W           R4, R5,LSL#4
423F58:  IT GT
423F5A:  MOVGT           R9, R11
423F5C:  VCVT.S32.F32    S0, S0
423F60:  CMP.W           R9, #0x77 ; 'w'
423F64:  AND.W           R1, R11, #0xF
423F68:  IT GE
423F6A:  MOVGE           R9, R6
423F6C:  STR             R1, [SP,#0xB8+var_90]
423F6E:  VMOV            R0, S0
423F72:  STR             R0, [SP,#0xB8+var_8C]
423F74:  CMP             R5, R0
423F76:  BGE             loc_424052
423F78:  LDRD.W          R2, R1, [SP,#0xB8+var_78]; CVector *
423F7C:  MOV             R0, R10; this
423F7E:  BLX             j__ZN8CColLineC2ERK7CVectorS2_; CColLine::CColLine(CVector const&,CVector const&)
423F82:  CMP             R5, #0
423F84:  MOV.W           R0, #0
423F88:  IT GT
423F8A:  MOVGT           R0, R5
423F8C:  CMP             R0, #0x77 ; 'w'
423F8E:  IT GE
423F90:  MOVGE           R0, R6
423F92:  RSB.W           R0, R0, R0,LSL#4
423F96:  ADD.W           R8, R9, R0,LSL#3
423F9A:  LDR             R0, [SP,#0xB8+var_7C]
423F9C:  CMP             R0, #1
423F9E:  BNE             loc_423FB6
423FA0:  LDR             R0, [SP,#0xB8+var_94]
423FA2:  MOV             R1, R10; CPtrList *
423FA4:  LDR             R2, [R7,#arg_C]; CColLine *
423FA6:  MOVS            R3, #0; bool
423FA8:  ADD.W           R0, R0, R8,LSL#3; this
423FAC:  BLX             j__ZN6CWorld31GetIsLineOfSightSectorListClearER8CPtrListRK8CColLinebb; CWorld::GetIsLineOfSightSectorListClear(CPtrList &,CColLine const&,bool,bool)
423FB0:  CMP             R0, #1
423FB2:  BNE.W           loc_4249BA
423FB6:  LDR             R1, [SP,#0xB8+var_90]
423FB8:  AND.W           R0, R4, #0xF0
423FBC:  ORR.W           R6, R0, R1
423FC0:  LDR             R0, [SP,#0xB8+var_80]
423FC2:  CMP             R0, #1
423FC4:  BNE             loc_423FE0
423FC6:  ADD.W           R0, R6, R6,LSL#1
423FCA:  LDR             R1, [SP,#0xB8+var_9C]
423FCC:  LDR             R2, [R7,#arg_C]; CColLine *
423FCE:  MOVS            R3, #0; bool
423FD0:  ADD.W           R0, R1, R0,LSL#2; this
423FD4:  MOV             R1, R10; CPtrList *
423FD6:  BLX             j__ZN6CWorld31GetIsLineOfSightSectorListClearER8CPtrListRK8CColLinebb; CWorld::GetIsLineOfSightSectorListClear(CPtrList &,CColLine const&,bool,bool)
423FDA:  CMP             R0, #1
423FDC:  BNE.W           loc_4249BA
423FE0:  LDR             R0, [R7,#arg_0]
423FE2:  CMP             R0, #1
423FE4:  BNE             loc_424002
423FE6:  ADD.W           R0, R6, R6,LSL#1
423FEA:  LDR             R1, [SP,#0xB8+var_A4]
423FEC:  LDR             R2, [R7,#arg_C]; CColLine *
423FEE:  MOVS            R3, #0; bool
423FF0:  ADD.W           R0, R1, R0,LSL#2
423FF4:  MOV             R1, R10; CPtrList *
423FF6:  ADDS            R0, #4; this
423FF8:  BLX             j__ZN6CWorld31GetIsLineOfSightSectorListClearER8CPtrListRK8CColLinebb; CWorld::GetIsLineOfSightSectorListClear(CPtrList &,CColLine const&,bool,bool)
423FFC:  CMP             R0, #1
423FFE:  BNE.W           loc_4249BA
424002:  LDR             R0, [R7,#arg_4]
424004:  CMP             R0, #1
424006:  BNE             loc_424024
424008:  LDR             R1, [SP,#0xB8+var_AC]
42400A:  ADD.W           R0, R6, R6,LSL#1
42400E:  LDRD.W          R2, R3, [R7,#arg_C]; bool
424012:  ADD.W           R0, R1, R0,LSL#2
424016:  MOV             R1, R10; CPtrList *
424018:  ADDS            R0, #8; this
42401A:  BLX             j__ZN6CWorld31GetIsLineOfSightSectorListClearER8CPtrListRK8CColLinebb; CWorld::GetIsLineOfSightSectorListClear(CPtrList &,CColLine const&,bool,bool)
42401E:  CMP             R0, #1
424020:  BNE.W           loc_4249BA
424024:  LDR             R0, [R7,#arg_8]
424026:  CMP             R0, #1
424028:  BNE             loc_424042
42402A:  LDR             R0, [SP,#0xB8+var_B4]
42402C:  MOV             R1, R10; CPtrList *
42402E:  LDR             R2, [R7,#arg_C]; CColLine *
424030:  MOVS            R3, #0; bool
424032:  ADD.W           R0, R0, R8,LSL#3
424036:  ADDS            R0, #4; this
424038:  BLX             j__ZN6CWorld31GetIsLineOfSightSectorListClearER8CPtrListRK8CColLinebb; CWorld::GetIsLineOfSightSectorListClear(CPtrList &,CColLine const&,bool,bool)
42403C:  CMP             R0, #1
42403E:  BNE.W           loc_4249BA
424042:  LDR             R2, [SP,#0xB8+var_8C]
424044:  ADDS            R0, R5, #1
424046:  ADDS            R4, #0x10
424048:  MOVS            R6, #0x77 ; 'w'
42404A:  CMP             R5, R2
42404C:  MOV             R5, R0
42404E:  BLT             loc_423F78
424050:  B               loc_42412A
424052:  LDRD.W          R2, R1, [SP,#0xB8+var_78]; CVector *
424056:  MOV             R0, R10; this
424058:  BLX             j__ZN8CColLineC2ERK7CVectorS2_; CColLine::CColLine(CVector const&,CVector const&)
42405C:  CMP             R5, #0
42405E:  MOV.W           R0, #0
424062:  IT GT
424064:  MOVGT           R0, R5
424066:  CMP             R0, #0x77 ; 'w'
424068:  IT GE
42406A:  MOVGE           R0, R6
42406C:  RSB.W           R0, R0, R0,LSL#4
424070:  ADD.W           R8, R9, R0,LSL#3
424074:  LDR             R0, [SP,#0xB8+var_7C]
424076:  CMP             R0, #1
424078:  BNE             loc_424090
42407A:  LDR             R0, [SP,#0xB8+var_98]
42407C:  MOV             R1, R10; CPtrList *
42407E:  LDR             R2, [R7,#arg_C]; CColLine *
424080:  MOVS            R3, #0; bool
424082:  ADD.W           R0, R0, R8,LSL#3; this
424086:  BLX             j__ZN6CWorld31GetIsLineOfSightSectorListClearER8CPtrListRK8CColLinebb; CWorld::GetIsLineOfSightSectorListClear(CPtrList &,CColLine const&,bool,bool)
42408A:  CMP             R0, #1
42408C:  BNE.W           loc_4249BA
424090:  LDR             R1, [SP,#0xB8+var_90]
424092:  AND.W           R0, R4, #0xF0
424096:  ORR.W           R6, R0, R1
42409A:  LDR             R0, [SP,#0xB8+var_80]
42409C:  CMP             R0, #1
42409E:  BNE             loc_4240BA
4240A0:  ADD.W           R0, R6, R6,LSL#1
4240A4:  LDR             R1, [SP,#0xB8+var_A0]
4240A6:  LDR             R2, [R7,#arg_C]; CColLine *
4240A8:  MOVS            R3, #0; bool
4240AA:  ADD.W           R0, R1, R0,LSL#2; this
4240AE:  MOV             R1, R10; CPtrList *
4240B0:  BLX             j__ZN6CWorld31GetIsLineOfSightSectorListClearER8CPtrListRK8CColLinebb; CWorld::GetIsLineOfSightSectorListClear(CPtrList &,CColLine const&,bool,bool)
4240B4:  CMP             R0, #1
4240B6:  BNE.W           loc_4249BA
4240BA:  LDR             R0, [R7,#arg_0]
4240BC:  CMP             R0, #1
4240BE:  BNE             loc_4240DC
4240C0:  ADD.W           R0, R6, R6,LSL#1
4240C4:  LDR             R1, [SP,#0xB8+var_A8]
4240C6:  LDR             R2, [R7,#arg_C]; CColLine *
4240C8:  MOVS            R3, #0; bool
4240CA:  ADD.W           R0, R1, R0,LSL#2
4240CE:  MOV             R1, R10; CPtrList *
4240D0:  ADDS            R0, #4; this
4240D2:  BLX             j__ZN6CWorld31GetIsLineOfSightSectorListClearER8CPtrListRK8CColLinebb; CWorld::GetIsLineOfSightSectorListClear(CPtrList &,CColLine const&,bool,bool)
4240D6:  CMP             R0, #1
4240D8:  BNE.W           loc_4249BA
4240DC:  LDR             R0, [R7,#arg_4]
4240DE:  CMP             R0, #1
4240E0:  BNE             loc_4240FE
4240E2:  LDR             R1, [SP,#0xB8+var_B0]
4240E4:  ADD.W           R0, R6, R6,LSL#1
4240E8:  LDRD.W          R2, R3, [R7,#arg_C]; bool
4240EC:  ADD.W           R0, R1, R0,LSL#2
4240F0:  MOV             R1, R10; CPtrList *
4240F2:  ADDS            R0, #8; this
4240F4:  BLX             j__ZN6CWorld31GetIsLineOfSightSectorListClearER8CPtrListRK8CColLinebb; CWorld::GetIsLineOfSightSectorListClear(CPtrList &,CColLine const&,bool,bool)
4240F8:  CMP             R0, #1
4240FA:  BNE.W           loc_4249BA
4240FE:  LDR             R0, [R7,#arg_8]
424100:  CMP             R0, #1
424102:  BNE             loc_42411C
424104:  LDR             R0, [SP,#0xB8+var_B8]
424106:  MOV             R1, R10; CPtrList *
424108:  LDR             R2, [R7,#arg_C]; CColLine *
42410A:  MOVS            R3, #0; bool
42410C:  ADD.W           R0, R0, R8,LSL#3
424110:  ADDS            R0, #4; this
424112:  BLX             j__ZN6CWorld31GetIsLineOfSightSectorListClearER8CPtrListRK8CColLinebb; CWorld::GetIsLineOfSightSectorListClear(CPtrList &,CColLine const&,bool,bool)
424116:  CMP             R0, #1
424118:  BNE.W           loc_4249BA
42411C:  LDR             R2, [SP,#0xB8+var_8C]
42411E:  SUBS            R0, R5, #1
424120:  SUBS            R4, #0x10
424122:  MOVS            R6, #0x77 ; 'w'
424124:  CMP             R5, R2
424126:  MOV             R5, R0
424128:  BGT             loc_424052
42412A:  LDR             R1, [SP,#0xB8+var_88]
42412C:  ADD.W           R0, R11, #1
424130:  CMP             R0, R1
424132:  BLT.W           loc_423F0C
424136:  MOVS            R5, #0
424138:  CMP             R1, #0
42413A:  IT GT
42413C:  MOVGT           R5, R1
42413E:  MOV.W           R8, #0x77 ; 'w'
424142:  CMP             R5, #0x77 ; 'w'
424144:  AND.W           R9, R1, #0xF
424148:  IT GE
42414A:  MOVGE           R5, R8
42414C:  LDR             R0, [SP,#0xB8+var_84]
42414E:  LSLS            R6, R2, #4
424150:  CMP             R2, R0
424152:  BGE.W           loc_4247BA
424156:  LDR.W           R0, =(_ZN6CWorld11ms_aSectorsE_ptr - 0x42415E)
42415A:  ADD             R0, PC; _ZN6CWorld11ms_aSectorsE_ptr
42415C:  LDR             R0, [R0]; CWorld::ms_aSectors ...
42415E:  STR             R0, [SP,#0xB8+var_88]
424160:  LDR.W           R0, =(_ZN6CWorld17ms_aRepeatSectorsE_ptr - 0x424168)
424164:  ADD             R0, PC; _ZN6CWorld17ms_aRepeatSectorsE_ptr
424166:  LDR             R0, [R0]; CWorld::ms_aRepeatSectors ...
424168:  STR             R0, [SP,#0xB8+var_8C]
42416A:  LDR.W           R0, =(_ZN6CWorld17ms_aRepeatSectorsE_ptr - 0x424172)
42416E:  ADD             R0, PC; _ZN6CWorld17ms_aRepeatSectorsE_ptr
424170:  LDR             R0, [R0]; CWorld::ms_aRepeatSectors ...
424172:  STR             R0, [SP,#0xB8+var_90]
424174:  LDR.W           R0, =(_ZN6CWorld17ms_aRepeatSectorsE_ptr - 0x42417C)
424178:  ADD             R0, PC; _ZN6CWorld17ms_aRepeatSectorsE_ptr
42417A:  LDR             R0, [R0]; CWorld::ms_aRepeatSectors ...
42417C:  STR             R0, [SP,#0xB8+var_94]
42417E:  LDR.W           R0, =(_ZN6CWorld11ms_aSectorsE_ptr - 0x424186)
424182:  ADD             R0, PC; _ZN6CWorld11ms_aSectorsE_ptr
424184:  LDR             R0, [R0]; CWorld::ms_aSectors ...
424186:  STR             R0, [SP,#0xB8+var_98]
424188:  MOV             R4, R2
42418A:  LDR             R1, [SP,#0xB8+var_74]; CVector *
42418C:  LDR             R2, [SP,#0xB8+var_78]; CVector *
42418E:  ADD             R0, SP, #0xB8+var_70; this
424190:  BLX             j__ZN8CColLineC2ERK7CVectorS2_; CColLine::CColLine(CVector const&,CVector const&)
424194:  CMP             R4, #0
424196:  MOV.W           R0, #0
42419A:  IT GT
42419C:  MOVGT           R0, R4
42419E:  MOV             R10, R4
4241A0:  CMP             R0, #0x77 ; 'w'
4241A2:  IT GE
4241A4:  MOVGE           R0, R8
4241A6:  RSB.W           R0, R0, R0,LSL#4
4241AA:  ADD.W           R4, R5, R0,LSL#3
4241AE:  LDR             R0, [SP,#0xB8+var_7C]
4241B0:  CMP             R0, #1
4241B2:  BNE             loc_4241CA
4241B4:  LDR             R0, [SP,#0xB8+var_88]
4241B6:  ADD             R1, SP, #0xB8+var_70; CPtrList *
4241B8:  LDR             R2, [R7,#arg_C]; CColLine *
4241BA:  MOVS            R3, #0; bool
4241BC:  ADD.W           R0, R0, R4,LSL#3; this
4241C0:  BLX             j__ZN6CWorld31GetIsLineOfSightSectorListClearER8CPtrListRK8CColLinebb; CWorld::GetIsLineOfSightSectorListClear(CPtrList &,CColLine const&,bool,bool)
4241C4:  CMP             R0, #1
4241C6:  BNE.W           loc_4249BA
4241CA:  AND.W           R0, R6, #0xF0
4241CE:  ORR.W           R11, R0, R9
4241D2:  LDR             R0, [SP,#0xB8+var_80]
4241D4:  CMP             R0, #1
4241D6:  BNE             loc_4241F2
4241D8:  ADD.W           R0, R11, R11,LSL#1
4241DC:  LDR             R1, [SP,#0xB8+var_8C]
4241DE:  LDR             R2, [R7,#arg_C]; CColLine *
4241E0:  MOVS            R3, #0; bool
4241E2:  ADD.W           R0, R1, R0,LSL#2; this
4241E6:  ADD             R1, SP, #0xB8+var_70; CPtrList *
4241E8:  BLX             j__ZN6CWorld31GetIsLineOfSightSectorListClearER8CPtrListRK8CColLinebb; CWorld::GetIsLineOfSightSectorListClear(CPtrList &,CColLine const&,bool,bool)
4241EC:  CMP             R0, #1
4241EE:  BNE.W           loc_4249BA
4241F2:  LDR             R0, [R7,#arg_0]
4241F4:  CMP             R0, #1
4241F6:  BNE             loc_424214
4241F8:  ADD.W           R0, R11, R11,LSL#1
4241FC:  LDR             R1, [SP,#0xB8+var_90]
4241FE:  LDR             R2, [R7,#arg_C]; CColLine *
424200:  MOVS            R3, #0; bool
424202:  ADD.W           R0, R1, R0,LSL#2
424206:  ADD             R1, SP, #0xB8+var_70; CPtrList *
424208:  ADDS            R0, #4; this
42420A:  BLX             j__ZN6CWorld31GetIsLineOfSightSectorListClearER8CPtrListRK8CColLinebb; CWorld::GetIsLineOfSightSectorListClear(CPtrList &,CColLine const&,bool,bool)
42420E:  CMP             R0, #1
424210:  BNE.W           loc_4249BA
424214:  LDR             R0, [R7,#arg_4]
424216:  CMP             R0, #1
424218:  BNE             loc_424236
42421A:  LDR             R1, [SP,#0xB8+var_94]
42421C:  ADD.W           R0, R11, R11,LSL#1
424220:  LDRD.W          R2, R3, [R7,#arg_C]; bool
424224:  ADD.W           R0, R1, R0,LSL#2
424228:  ADD             R1, SP, #0xB8+var_70; CPtrList *
42422A:  ADDS            R0, #8; this
42422C:  BLX             j__ZN6CWorld31GetIsLineOfSightSectorListClearER8CPtrListRK8CColLinebb; CWorld::GetIsLineOfSightSectorListClear(CPtrList &,CColLine const&,bool,bool)
424230:  CMP             R0, #1
424232:  BNE.W           loc_4249BA
424236:  LDR             R0, [R7,#arg_8]
424238:  CMP             R0, #1
42423A:  BNE             loc_424254
42423C:  LDR             R0, [SP,#0xB8+var_98]
42423E:  ADD             R1, SP, #0xB8+var_70; CPtrList *
424240:  LDR             R2, [R7,#arg_C]; CColLine *
424242:  MOVS            R3, #0; bool
424244:  ADD.W           R0, R0, R4,LSL#3
424248:  ADDS            R0, #4; this
42424A:  BLX             j__ZN6CWorld31GetIsLineOfSightSectorListClearER8CPtrListRK8CColLinebb; CWorld::GetIsLineOfSightSectorListClear(CPtrList &,CColLine const&,bool,bool)
42424E:  CMP             R0, #0
424250:  BEQ.W           loc_4249BA
424254:  ADD.W           R0, R10, #1
424258:  LDR             R1, [SP,#0xB8+var_84]
42425A:  ADDS            R6, #0x10
42425C:  MOVS            R4, #1
42425E:  CMP             R10, R1
424260:  MOV             R2, R0
424262:  BLT             loc_424188
424264:  B               loc_4249BC
424266:  ALIGN 4
424268:  DCD _ZN6CWorld19ms_nCurrentScanCodeE_ptr - 0x42343C
42426C:  DCD _ZN6CWorld19ms_nCurrentScanCodeE_ptr - 0x423458
424270:  DCD _ZN6CWorld11ms_aSectorsE_ptr - 0x42353C
424274:  DCD _ZN6CWorld17ms_aRepeatSectorsE_ptr - 0x42356A
424278:  DCD _ZN6CWorld17ms_aRepeatSectorsE_ptr - 0x423592
42427C:  DCD _ZN6CWorld17ms_aRepeatSectorsE_ptr - 0x4235BC
424280:  DCD _ZN6CWorld11ms_aSectorsE_ptr - 0x4235E4
424284:  DCD _ZN6CWorld11ms_aSectorsE_ptr - 0x423630
424288:  DCD _ZN6CWorld17ms_aRepeatSectorsE_ptr - 0x42363A
42428C:  DCD _ZN6CWorld17ms_aRepeatSectorsE_ptr - 0x423644
424290:  DCD _ZN6CWorld17ms_aRepeatSectorsE_ptr - 0x42364E
424294:  DCD _ZN6CWorld11ms_aSectorsE_ptr - 0x423658
424298:  DCD _ZN6CWorld11ms_aSectorsE_ptr - 0x423774
42429C:  DCD _ZN6CWorld17ms_aRepeatSectorsE_ptr - 0x42377E
4242A0:  DCD _ZN6CWorld17ms_aRepeatSectorsE_ptr - 0x423788
4242A4:  DCD _ZN6CWorld17ms_aRepeatSectorsE_ptr - 0x423792
4242A8:  DCD _ZN6CWorld11ms_aSectorsE_ptr - 0x42379C
4242AC:  DCD _ZN6CWorld11ms_aSectorsE_ptr - 0x42387E
4242B0:  DCD _ZN6CWorld17ms_aRepeatSectorsE_ptr - 0x423888
4242B4:  DCD _ZN6CWorld17ms_aRepeatSectorsE_ptr - 0x423892
4242B8:  DCD _ZN6CWorld17ms_aRepeatSectorsE_ptr - 0x42389C
4242BC:  DCD _ZN6CWorld11ms_aSectorsE_ptr - 0x4238A6
4242C0:  DCD _ZN6CWorld11ms_aSectorsE_ptr - 0x423A0A
4242C4:  DCD _ZN6CWorld17ms_aRepeatSectorsE_ptr - 0x423A14
4242C8:  DCD _ZN6CWorld17ms_aRepeatSectorsE_ptr - 0x423A1E
4242CC:  DCD _ZN6CWorld17ms_aRepeatSectorsE_ptr - 0x423A28
4242D0:  DCD _ZN6CWorld11ms_aSectorsE_ptr - 0x423A32
4242D4:  DCD _ZN6CWorld11ms_aSectorsE_ptr - 0x423B1A
4242D8:  DCD _ZN6CWorld17ms_aRepeatSectorsE_ptr - 0x423B24
4242DC:  DCD _ZN6CWorld17ms_aRepeatSectorsE_ptr - 0x423B2E
4242E0:  DCD _ZN6CWorld17ms_aRepeatSectorsE_ptr - 0x423B38
4242E4:  DCD _ZN6CWorld11ms_aSectorsE_ptr - 0x423B42
4242E8:  LDR.W           R0, =(_ZN6CWorld11ms_aSectorsE_ptr - 0x4242F2)
4242EC:  ADD             R4, SP, #0xB8+var_70
4242EE:  ADD             R0, PC; _ZN6CWorld11ms_aSectorsE_ptr
4242F0:  LDR             R0, [R0]; CWorld::ms_aSectors ...
4242F2:  STR             R0, [SP,#0xB8+var_94]
4242F4:  LDR.W           R0, =(_ZN6CWorld17ms_aRepeatSectorsE_ptr - 0x4242FC)
4242F8:  ADD             R0, PC; _ZN6CWorld17ms_aRepeatSectorsE_ptr
4242FA:  LDR             R0, [R0]; CWorld::ms_aRepeatSectors ...
4242FC:  STR             R0, [SP,#0xB8+var_98]
4242FE:  LDR.W           R0, =(_ZN6CWorld17ms_aRepeatSectorsE_ptr - 0x424306)
424302:  ADD             R0, PC; _ZN6CWorld17ms_aRepeatSectorsE_ptr
424304:  LDR             R0, [R0]; CWorld::ms_aRepeatSectors ...
424306:  STR             R0, [SP,#0xB8+var_9C]
424308:  LDR.W           R0, =(_ZN6CWorld17ms_aRepeatSectorsE_ptr - 0x424310)
42430C:  ADD             R0, PC; _ZN6CWorld17ms_aRepeatSectorsE_ptr
42430E:  LDR             R0, [R0]; CWorld::ms_aRepeatSectors ...
424310:  STR             R0, [SP,#0xB8+var_A0]
424312:  LDR.W           R0, =(_ZN6CWorld11ms_aSectorsE_ptr - 0x42431A)
424316:  ADD             R0, PC; _ZN6CWorld11ms_aSectorsE_ptr
424318:  LDR             R0, [R0]; CWorld::ms_aSectors ...
42431A:  STR             R0, [SP,#0xB8+var_A4]
42431C:  LDRD.W          R2, R1, [SP,#0xB8+var_78]; CVector *
424320:  MOV             R0, R4; this
424322:  BLX             j__ZN8CColLineC2ERK7CVectorS2_; CColLine::CColLine(CVector const&,CVector const&)
424326:  CMP             R6, #0
424328:  MOV.W           R0, #0
42432C:  IT GT
42432E:  MOVGT           R0, R6
424330:  MOVS            R1, #0x77 ; 'w'
424332:  CMP             R0, #0x77 ; 'w'
424334:  IT GE
424336:  MOVGE           R0, R1
424338:  RSB.W           R0, R0, R0,LSL#4
42433C:  ADD.W           R10, R8, R0,LSL#3
424340:  LDR             R0, [SP,#0xB8+var_7C]
424342:  CMP             R0, #1
424344:  BNE             loc_42435C
424346:  LDR             R0, [SP,#0xB8+var_94]
424348:  MOV             R1, R4; CPtrList *
42434A:  LDR             R2, [R7,#arg_C]; CColLine *
42434C:  MOVS            R3, #0; bool
42434E:  ADD.W           R0, R0, R10,LSL#3; this
424352:  BLX             j__ZN6CWorld31GetIsLineOfSightSectorListClearER8CPtrListRK8CColLinebb; CWorld::GetIsLineOfSightSectorListClear(CPtrList &,CColLine const&,bool,bool)
424356:  CMP             R0, #1
424358:  BNE.W           loc_4249BA
42435C:  LDR             R1, [SP,#0xB8+var_90]
42435E:  AND.W           R0, R5, #0xF0
424362:  ORR.W           R9, R0, R1
424366:  LDR             R0, [SP,#0xB8+var_80]
424368:  CMP             R0, #1
42436A:  BNE             loc_424386
42436C:  ADD.W           R0, R9, R9,LSL#1
424370:  LDR             R1, [SP,#0xB8+var_98]
424372:  LDR             R2, [R7,#arg_C]; CColLine *
424374:  MOVS            R3, #0; bool
424376:  ADD.W           R0, R1, R0,LSL#2; this
42437A:  MOV             R1, R4; CPtrList *
42437C:  BLX             j__ZN6CWorld31GetIsLineOfSightSectorListClearER8CPtrListRK8CColLinebb; CWorld::GetIsLineOfSightSectorListClear(CPtrList &,CColLine const&,bool,bool)
424380:  CMP             R0, #1
424382:  BNE.W           loc_4249BA
424386:  LDR             R0, [R7,#arg_0]
424388:  CMP             R0, #1
42438A:  BNE             loc_4243A8
42438C:  ADD.W           R0, R9, R9,LSL#1
424390:  LDR             R1, [SP,#0xB8+var_9C]
424392:  LDR             R2, [R7,#arg_C]; CColLine *
424394:  MOVS            R3, #0; bool
424396:  ADD.W           R0, R1, R0,LSL#2
42439A:  MOV             R1, R4; CPtrList *
42439C:  ADDS            R0, #4; this
42439E:  BLX             j__ZN6CWorld31GetIsLineOfSightSectorListClearER8CPtrListRK8CColLinebb; CWorld::GetIsLineOfSightSectorListClear(CPtrList &,CColLine const&,bool,bool)
4243A2:  CMP             R0, #1
4243A4:  BNE.W           loc_4249BA
4243A8:  LDR             R0, [R7,#arg_4]
4243AA:  CMP             R0, #1
4243AC:  BNE             loc_4243CA
4243AE:  LDR             R1, [SP,#0xB8+var_A0]
4243B0:  ADD.W           R0, R9, R9,LSL#1
4243B4:  LDRD.W          R2, R3, [R7,#arg_C]; bool
4243B8:  ADD.W           R0, R1, R0,LSL#2
4243BC:  MOV             R1, R4; CPtrList *
4243BE:  ADDS            R0, #8; this
4243C0:  BLX             j__ZN6CWorld31GetIsLineOfSightSectorListClearER8CPtrListRK8CColLinebb; CWorld::GetIsLineOfSightSectorListClear(CPtrList &,CColLine const&,bool,bool)
4243C4:  CMP             R0, #1
4243C6:  BNE.W           loc_4249BA
4243CA:  LDR             R0, [R7,#arg_8]
4243CC:  CMP             R0, #1
4243CE:  BNE             loc_4243E8
4243D0:  LDR             R0, [SP,#0xB8+var_A4]
4243D2:  MOV             R1, R4; CPtrList *
4243D4:  LDR             R2, [R7,#arg_C]; CColLine *
4243D6:  MOVS            R3, #0; bool
4243D8:  ADD.W           R0, R0, R10,LSL#3
4243DC:  ADDS            R0, #4; this
4243DE:  BLX             j__ZN6CWorld31GetIsLineOfSightSectorListClearER8CPtrListRK8CColLinebb; CWorld::GetIsLineOfSightSectorListClear(CPtrList &,CColLine const&,bool,bool)
4243E2:  CMP             R0, #0
4243E4:  BEQ.W           loc_4249BA
4243E8:  LDR             R2, [SP,#0xB8+var_8C]
4243EA:  SUBS            R0, R6, #1
4243EC:  SUBS            R5, #0x10
4243EE:  CMP             R6, R2
4243F0:  MOV             R6, R0
4243F2:  BGT             loc_42431C
4243F4:  LDR             R1, [SP,#0xB8+var_88]
4243F6:  SUB.W           R0, R11, #1
4243FA:  CMP             R0, R1
4243FC:  BLE.W           loc_424694
424400:  LDR.W           R1, =(_ZN6CWorld11ms_aSectorsE_ptr - 0x42440E)
424404:  MOVS            R6, #0x77 ; 'w'
424406:  ADD.W           R10, SP, #0xB8+var_70
42440A:  ADD             R1, PC; _ZN6CWorld11ms_aSectorsE_ptr
42440C:  LDR             R1, [R1]; CWorld::ms_aSectors ...
42440E:  STR             R1, [SP,#0xB8+var_94]
424410:  LDR.W           R1, =(_ZN6CWorld17ms_aRepeatSectorsE_ptr - 0x424418)
424414:  ADD             R1, PC; _ZN6CWorld17ms_aRepeatSectorsE_ptr
424416:  LDR             R1, [R1]; CWorld::ms_aRepeatSectors ...
424418:  STR             R1, [SP,#0xB8+var_9C]
42441A:  LDR.W           R1, =(_ZN6CWorld17ms_aRepeatSectorsE_ptr - 0x424422)
42441E:  ADD             R1, PC; _ZN6CWorld17ms_aRepeatSectorsE_ptr
424420:  LDR             R1, [R1]; CWorld::ms_aRepeatSectors ...
424422:  STR             R1, [SP,#0xB8+var_A4]
424424:  LDR.W           R1, =(_ZN6CWorld17ms_aRepeatSectorsE_ptr - 0x42442C)
424428:  ADD             R1, PC; _ZN6CWorld17ms_aRepeatSectorsE_ptr
42442A:  LDR             R1, [R1]; CWorld::ms_aRepeatSectors ...
42442C:  STR             R1, [SP,#0xB8+var_AC]
42442E:  LDR.W           R1, =(_ZN6CWorld11ms_aSectorsE_ptr - 0x424436)
424432:  ADD             R1, PC; _ZN6CWorld11ms_aSectorsE_ptr
424434:  LDR             R1, [R1]; CWorld::ms_aSectors ...
424436:  STR             R1, [SP,#0xB8+var_B4]
424438:  LDR.W           R1, =(_ZN6CWorld11ms_aSectorsE_ptr - 0x424440)
42443C:  ADD             R1, PC; _ZN6CWorld11ms_aSectorsE_ptr
42443E:  LDR             R1, [R1]; CWorld::ms_aSectors ...
424440:  STR             R1, [SP,#0xB8+var_98]
424442:  LDR.W           R1, =(_ZN6CWorld17ms_aRepeatSectorsE_ptr - 0x42444A)
424446:  ADD             R1, PC; _ZN6CWorld17ms_aRepeatSectorsE_ptr
424448:  LDR             R1, [R1]; CWorld::ms_aRepeatSectors ...
42444A:  STR             R1, [SP,#0xB8+var_A0]
42444C:  LDR.W           R1, =(_ZN6CWorld17ms_aRepeatSectorsE_ptr - 0x424454)
424450:  ADD             R1, PC; _ZN6CWorld17ms_aRepeatSectorsE_ptr
424452:  LDR             R1, [R1]; CWorld::ms_aRepeatSectors ...
424454:  STR             R1, [SP,#0xB8+var_A8]
424456:  LDR.W           R1, =(_ZN6CWorld17ms_aRepeatSectorsE_ptr - 0x42445E)
42445A:  ADD             R1, PC; _ZN6CWorld17ms_aRepeatSectorsE_ptr
42445C:  LDR             R1, [R1]; CWorld::ms_aRepeatSectors ...
42445E:  STR             R1, [SP,#0xB8+var_B0]
424460:  LDR.W           R1, =(_ZN6CWorld11ms_aSectorsE_ptr - 0x424468)
424464:  ADD             R1, PC; _ZN6CWorld11ms_aSectorsE_ptr
424466:  LDR             R1, [R1]; CWorld::ms_aSectors ...
424468:  STR             R1, [SP,#0xB8+var_B8]; bool
42446A:  MOV             R1, R11
42446C:  MOV             R11, R0
42446E:  SUB.W           R0, R1, #0x3D ; '='
424472:  MOV             R5, R2
424474:  VMOV            S0, R0
424478:  VCVT.F32.S32    S0, S0
42447C:  LDR             R0, [SP,#0xB8+var_74]
42447E:  VLDR            S2, [R0]
424482:  VLDR            S4, [R0,#4]
424486:  VMUL.F32        S0, S0, S16
42448A:  VSUB.F32        S0, S0, S2
42448E:  VMUL.F32        S0, S20, S0
424492:  VADD.F32        S0, S4, S0
424496:  VDIV.F32        S0, S0, S16
42449A:  VADD.F32        S0, S0, S18
42449E:  VMOV            R0, S0; x
4244A2:  BLX             floorf
4244A6:  VMOV            S0, R0
4244AA:  CMP.W           R11, #0
4244AE:  MOV.W           R9, #0
4244B2:  MOV.W           R4, R5,LSL#4
4244B6:  IT GT
4244B8:  MOVGT           R9, R11
4244BA:  VCVT.S32.F32    S0, S0
4244BE:  CMP.W           R9, #0x77 ; 'w'
4244C2:  AND.W           R1, R11, #0xF
4244C6:  IT GE
4244C8:  MOVGE           R9, R6
4244CA:  STR             R1, [SP,#0xB8+var_90]
4244CC:  VMOV            R0, S0
4244D0:  STR             R0, [SP,#0xB8+var_8C]
4244D2:  CMP             R5, R0
4244D4:  BGE             loc_4245B0
4244D6:  LDRD.W          R2, R1, [SP,#0xB8+var_78]; CVector *
4244DA:  MOV             R0, R10; this
4244DC:  BLX             j__ZN8CColLineC2ERK7CVectorS2_; CColLine::CColLine(CVector const&,CVector const&)
4244E0:  CMP             R5, #0
4244E2:  MOV.W           R0, #0
4244E6:  IT GT
4244E8:  MOVGT           R0, R5
4244EA:  CMP             R0, #0x77 ; 'w'
4244EC:  IT GE
4244EE:  MOVGE           R0, R6
4244F0:  RSB.W           R0, R0, R0,LSL#4
4244F4:  ADD.W           R8, R9, R0,LSL#3
4244F8:  LDR             R0, [SP,#0xB8+var_7C]
4244FA:  CMP             R0, #1
4244FC:  BNE             loc_424514
4244FE:  LDR             R0, [SP,#0xB8+var_94]
424500:  MOV             R1, R10; CPtrList *
424502:  LDR             R2, [R7,#arg_C]; CColLine *
424504:  MOVS            R3, #0; bool
424506:  ADD.W           R0, R0, R8,LSL#3; this
42450A:  BLX             j__ZN6CWorld31GetIsLineOfSightSectorListClearER8CPtrListRK8CColLinebb; CWorld::GetIsLineOfSightSectorListClear(CPtrList &,CColLine const&,bool,bool)
42450E:  CMP             R0, #1
424510:  BNE.W           loc_4249BA
424514:  LDR             R1, [SP,#0xB8+var_90]
424516:  AND.W           R0, R4, #0xF0
42451A:  ORR.W           R6, R0, R1
42451E:  LDR             R0, [SP,#0xB8+var_80]
424520:  CMP             R0, #1
424522:  BNE             loc_42453E
424524:  ADD.W           R0, R6, R6,LSL#1
424528:  LDR             R1, [SP,#0xB8+var_9C]
42452A:  LDR             R2, [R7,#arg_C]; CColLine *
42452C:  MOVS            R3, #0; bool
42452E:  ADD.W           R0, R1, R0,LSL#2; this
424532:  MOV             R1, R10; CPtrList *
424534:  BLX             j__ZN6CWorld31GetIsLineOfSightSectorListClearER8CPtrListRK8CColLinebb; CWorld::GetIsLineOfSightSectorListClear(CPtrList &,CColLine const&,bool,bool)
424538:  CMP             R0, #1
42453A:  BNE.W           loc_4249BA
42453E:  LDR             R0, [R7,#arg_0]
424540:  CMP             R0, #1
424542:  BNE             loc_424560
424544:  ADD.W           R0, R6, R6,LSL#1
424548:  LDR             R1, [SP,#0xB8+var_A4]
42454A:  LDR             R2, [R7,#arg_C]; CColLine *
42454C:  MOVS            R3, #0; bool
42454E:  ADD.W           R0, R1, R0,LSL#2
424552:  MOV             R1, R10; CPtrList *
424554:  ADDS            R0, #4; this
424556:  BLX             j__ZN6CWorld31GetIsLineOfSightSectorListClearER8CPtrListRK8CColLinebb; CWorld::GetIsLineOfSightSectorListClear(CPtrList &,CColLine const&,bool,bool)
42455A:  CMP             R0, #1
42455C:  BNE.W           loc_4249BA
424560:  LDR             R0, [R7,#arg_4]
424562:  CMP             R0, #1
424564:  BNE             loc_424582
424566:  LDR             R1, [SP,#0xB8+var_AC]
424568:  ADD.W           R0, R6, R6,LSL#1
42456C:  LDRD.W          R2, R3, [R7,#arg_C]; bool
424570:  ADD.W           R0, R1, R0,LSL#2
424574:  MOV             R1, R10; CPtrList *
424576:  ADDS            R0, #8; this
424578:  BLX             j__ZN6CWorld31GetIsLineOfSightSectorListClearER8CPtrListRK8CColLinebb; CWorld::GetIsLineOfSightSectorListClear(CPtrList &,CColLine const&,bool,bool)
42457C:  CMP             R0, #1
42457E:  BNE.W           loc_4249BA
424582:  LDR             R0, [R7,#arg_8]
424584:  CMP             R0, #1
424586:  BNE             loc_4245A0
424588:  LDR             R0, [SP,#0xB8+var_B4]
42458A:  MOV             R1, R10; CPtrList *
42458C:  LDR             R2, [R7,#arg_C]; CColLine *
42458E:  MOVS            R3, #0; bool
424590:  ADD.W           R0, R0, R8,LSL#3
424594:  ADDS            R0, #4; this
424596:  BLX             j__ZN6CWorld31GetIsLineOfSightSectorListClearER8CPtrListRK8CColLinebb; CWorld::GetIsLineOfSightSectorListClear(CPtrList &,CColLine const&,bool,bool)
42459A:  CMP             R0, #1
42459C:  BNE.W           loc_4249BA
4245A0:  LDR             R2, [SP,#0xB8+var_8C]
4245A2:  ADDS            R0, R5, #1
4245A4:  ADDS            R4, #0x10
4245A6:  MOVS            R6, #0x77 ; 'w'
4245A8:  CMP             R5, R2
4245AA:  MOV             R5, R0
4245AC:  BLT             loc_4244D6
4245AE:  B               loc_424688
4245B0:  LDRD.W          R2, R1, [SP,#0xB8+var_78]; CVector *
4245B4:  MOV             R0, R10; this
4245B6:  BLX             j__ZN8CColLineC2ERK7CVectorS2_; CColLine::CColLine(CVector const&,CVector const&)
4245BA:  CMP             R5, #0
4245BC:  MOV.W           R0, #0
4245C0:  IT GT
4245C2:  MOVGT           R0, R5
4245C4:  CMP             R0, #0x77 ; 'w'
4245C6:  IT GE
4245C8:  MOVGE           R0, R6
4245CA:  RSB.W           R0, R0, R0,LSL#4
4245CE:  ADD.W           R8, R9, R0,LSL#3
4245D2:  LDR             R0, [SP,#0xB8+var_7C]
4245D4:  CMP             R0, #1
4245D6:  BNE             loc_4245EE
4245D8:  LDR             R0, [SP,#0xB8+var_98]
4245DA:  MOV             R1, R10; CPtrList *
4245DC:  LDR             R2, [R7,#arg_C]; CColLine *
4245DE:  MOVS            R3, #0; bool
4245E0:  ADD.W           R0, R0, R8,LSL#3; this
4245E4:  BLX             j__ZN6CWorld31GetIsLineOfSightSectorListClearER8CPtrListRK8CColLinebb; CWorld::GetIsLineOfSightSectorListClear(CPtrList &,CColLine const&,bool,bool)
4245E8:  CMP             R0, #1
4245EA:  BNE.W           loc_4249BA
4245EE:  LDR             R1, [SP,#0xB8+var_90]
4245F0:  AND.W           R0, R4, #0xF0
4245F4:  ORR.W           R6, R0, R1
4245F8:  LDR             R0, [SP,#0xB8+var_80]
4245FA:  CMP             R0, #1
4245FC:  BNE             loc_424618
4245FE:  ADD.W           R0, R6, R6,LSL#1
424602:  LDR             R1, [SP,#0xB8+var_A0]
424604:  LDR             R2, [R7,#arg_C]; CColLine *
424606:  MOVS            R3, #0; bool
424608:  ADD.W           R0, R1, R0,LSL#2; this
42460C:  MOV             R1, R10; CPtrList *
42460E:  BLX             j__ZN6CWorld31GetIsLineOfSightSectorListClearER8CPtrListRK8CColLinebb; CWorld::GetIsLineOfSightSectorListClear(CPtrList &,CColLine const&,bool,bool)
424612:  CMP             R0, #1
424614:  BNE.W           loc_4249BA
424618:  LDR             R0, [R7,#arg_0]
42461A:  CMP             R0, #1
42461C:  BNE             loc_42463A
42461E:  ADD.W           R0, R6, R6,LSL#1
424622:  LDR             R1, [SP,#0xB8+var_A8]
424624:  LDR             R2, [R7,#arg_C]; CColLine *
424626:  MOVS            R3, #0; bool
424628:  ADD.W           R0, R1, R0,LSL#2
42462C:  MOV             R1, R10; CPtrList *
42462E:  ADDS            R0, #4; this
424630:  BLX             j__ZN6CWorld31GetIsLineOfSightSectorListClearER8CPtrListRK8CColLinebb; CWorld::GetIsLineOfSightSectorListClear(CPtrList &,CColLine const&,bool,bool)
424634:  CMP             R0, #1
424636:  BNE.W           loc_4249BA
42463A:  LDR             R0, [R7,#arg_4]
42463C:  CMP             R0, #1
42463E:  BNE             loc_42465C
424640:  LDR             R1, [SP,#0xB8+var_B0]
424642:  ADD.W           R0, R6, R6,LSL#1
424646:  LDRD.W          R2, R3, [R7,#arg_C]; bool
42464A:  ADD.W           R0, R1, R0,LSL#2
42464E:  MOV             R1, R10; CPtrList *
424650:  ADDS            R0, #8; this
424652:  BLX             j__ZN6CWorld31GetIsLineOfSightSectorListClearER8CPtrListRK8CColLinebb; CWorld::GetIsLineOfSightSectorListClear(CPtrList &,CColLine const&,bool,bool)
424656:  CMP             R0, #1
424658:  BNE.W           loc_4249BA
42465C:  LDR             R0, [R7,#arg_8]
42465E:  CMP             R0, #1
424660:  BNE             loc_42467A
424662:  LDR             R0, [SP,#0xB8+var_B8]
424664:  MOV             R1, R10; CPtrList *
424666:  LDR             R2, [R7,#arg_C]; CColLine *
424668:  MOVS            R3, #0; bool
42466A:  ADD.W           R0, R0, R8,LSL#3
42466E:  ADDS            R0, #4; this
424670:  BLX             j__ZN6CWorld31GetIsLineOfSightSectorListClearER8CPtrListRK8CColLinebb; CWorld::GetIsLineOfSightSectorListClear(CPtrList &,CColLine const&,bool,bool)
424674:  CMP             R0, #1
424676:  BNE.W           loc_4249BA
42467A:  LDR             R2, [SP,#0xB8+var_8C]
42467C:  SUBS            R0, R5, #1
42467E:  SUBS            R4, #0x10
424680:  MOVS            R6, #0x77 ; 'w'
424682:  CMP             R5, R2
424684:  MOV             R5, R0
424686:  BGT             loc_4245B0
424688:  LDR             R1, [SP,#0xB8+var_88]
42468A:  SUB.W           R0, R11, #1
42468E:  CMP             R0, R1
424690:  BGT.W           loc_42446A
424694:  MOVS            R5, #0
424696:  CMP             R1, #0
424698:  IT GT
42469A:  MOVGT           R5, R1
42469C:  MOV.W           R8, #0x77 ; 'w'
4246A0:  CMP             R5, #0x77 ; 'w'
4246A2:  AND.W           R9, R1, #0xF
4246A6:  IT GE
4246A8:  MOVGE           R5, R8
4246AA:  LDR             R0, [SP,#0xB8+var_84]
4246AC:  LSLS            R6, R2, #4
4246AE:  CMP             R2, R0
4246B0:  BGE.W           loc_4248C0
4246B4:  LDR             R0, =(_ZN6CWorld11ms_aSectorsE_ptr - 0x4246BA)
4246B6:  ADD             R0, PC; _ZN6CWorld11ms_aSectorsE_ptr
4246B8:  LDR             R0, [R0]; CWorld::ms_aSectors ...
4246BA:  STR             R0, [SP,#0xB8+var_88]
4246BC:  LDR             R0, =(_ZN6CWorld17ms_aRepeatSectorsE_ptr - 0x4246C2)
4246BE:  ADD             R0, PC; _ZN6CWorld17ms_aRepeatSectorsE_ptr
4246C0:  LDR             R0, [R0]; CWorld::ms_aRepeatSectors ...
4246C2:  STR             R0, [SP,#0xB8+var_8C]
4246C4:  LDR             R0, =(_ZN6CWorld17ms_aRepeatSectorsE_ptr - 0x4246CA)
4246C6:  ADD             R0, PC; _ZN6CWorld17ms_aRepeatSectorsE_ptr
4246C8:  LDR             R0, [R0]; CWorld::ms_aRepeatSectors ...
4246CA:  STR             R0, [SP,#0xB8+var_90]
4246CC:  LDR             R0, =(_ZN6CWorld17ms_aRepeatSectorsE_ptr - 0x4246D2)
4246CE:  ADD             R0, PC; _ZN6CWorld17ms_aRepeatSectorsE_ptr
4246D0:  LDR             R0, [R0]; CWorld::ms_aRepeatSectors ...
4246D2:  STR             R0, [SP,#0xB8+var_94]
4246D4:  LDR             R0, =(_ZN6CWorld11ms_aSectorsE_ptr - 0x4246DA)
4246D6:  ADD             R0, PC; _ZN6CWorld11ms_aSectorsE_ptr
4246D8:  LDR             R0, [R0]; CWorld::ms_aSectors ...
4246DA:  STR             R0, [SP,#0xB8+var_98]
4246DC:  MOV             R4, R2
4246DE:  LDR             R1, [SP,#0xB8+var_74]; CVector *
4246E0:  LDR             R2, [SP,#0xB8+var_78]; CVector *
4246E2:  ADD             R0, SP, #0xB8+var_70; this
4246E4:  BLX             j__ZN8CColLineC2ERK7CVectorS2_; CColLine::CColLine(CVector const&,CVector const&)
4246E8:  CMP             R4, #0
4246EA:  MOV.W           R0, #0
4246EE:  IT GT
4246F0:  MOVGT           R0, R4
4246F2:  MOV             R10, R4
4246F4:  CMP             R0, #0x77 ; 'w'
4246F6:  IT GE
4246F8:  MOVGE           R0, R8
4246FA:  RSB.W           R0, R0, R0,LSL#4
4246FE:  ADD.W           R4, R5, R0,LSL#3
424702:  LDR             R0, [SP,#0xB8+var_7C]
424704:  CMP             R0, #1
424706:  BNE             loc_42471E
424708:  LDR             R0, [SP,#0xB8+var_88]
42470A:  ADD             R1, SP, #0xB8+var_70; CPtrList *
42470C:  LDR             R2, [R7,#arg_C]; CColLine *
42470E:  MOVS            R3, #0; bool
424710:  ADD.W           R0, R0, R4,LSL#3; this
424714:  BLX             j__ZN6CWorld31GetIsLineOfSightSectorListClearER8CPtrListRK8CColLinebb; CWorld::GetIsLineOfSightSectorListClear(CPtrList &,CColLine const&,bool,bool)
424718:  CMP             R0, #1
42471A:  BNE.W           loc_4249BA
42471E:  AND.W           R0, R6, #0xF0
424722:  ORR.W           R11, R0, R9
424726:  LDR             R0, [SP,#0xB8+var_80]
424728:  CMP             R0, #1
42472A:  BNE             loc_424746
42472C:  ADD.W           R0, R11, R11,LSL#1
424730:  LDR             R1, [SP,#0xB8+var_8C]
424732:  LDR             R2, [R7,#arg_C]; CColLine *
424734:  MOVS            R3, #0; bool
424736:  ADD.W           R0, R1, R0,LSL#2; this
42473A:  ADD             R1, SP, #0xB8+var_70; CPtrList *
42473C:  BLX             j__ZN6CWorld31GetIsLineOfSightSectorListClearER8CPtrListRK8CColLinebb; CWorld::GetIsLineOfSightSectorListClear(CPtrList &,CColLine const&,bool,bool)
424740:  CMP             R0, #1
424742:  BNE.W           loc_4249BA
424746:  LDR             R0, [R7,#arg_0]
424748:  CMP             R0, #1
42474A:  BNE             loc_424768
42474C:  ADD.W           R0, R11, R11,LSL#1
424750:  LDR             R1, [SP,#0xB8+var_90]
424752:  LDR             R2, [R7,#arg_C]; CColLine *
424754:  MOVS            R3, #0; bool
424756:  ADD.W           R0, R1, R0,LSL#2
42475A:  ADD             R1, SP, #0xB8+var_70; CPtrList *
42475C:  ADDS            R0, #4; this
42475E:  BLX             j__ZN6CWorld31GetIsLineOfSightSectorListClearER8CPtrListRK8CColLinebb; CWorld::GetIsLineOfSightSectorListClear(CPtrList &,CColLine const&,bool,bool)
424762:  CMP             R0, #1
424764:  BNE.W           loc_4249BA
424768:  LDR             R0, [R7,#arg_4]
42476A:  CMP             R0, #1
42476C:  BNE             loc_42478A
42476E:  LDR             R1, [SP,#0xB8+var_94]
424770:  ADD.W           R0, R11, R11,LSL#1
424774:  LDRD.W          R2, R3, [R7,#arg_C]; bool
424778:  ADD.W           R0, R1, R0,LSL#2
42477C:  ADD             R1, SP, #0xB8+var_70; CPtrList *
42477E:  ADDS            R0, #8; this
424780:  BLX             j__ZN6CWorld31GetIsLineOfSightSectorListClearER8CPtrListRK8CColLinebb; CWorld::GetIsLineOfSightSectorListClear(CPtrList &,CColLine const&,bool,bool)
424784:  CMP             R0, #1
424786:  BNE.W           loc_4249BA
42478A:  LDR             R0, [R7,#arg_8]
42478C:  CMP             R0, #1
42478E:  BNE             loc_4247A8
424790:  LDR             R0, [SP,#0xB8+var_98]
424792:  ADD             R1, SP, #0xB8+var_70; CPtrList *
424794:  LDR             R2, [R7,#arg_C]; CColLine *
424796:  MOVS            R3, #0; bool
424798:  ADD.W           R0, R0, R4,LSL#3
42479C:  ADDS            R0, #4; this
42479E:  BLX             j__ZN6CWorld31GetIsLineOfSightSectorListClearER8CPtrListRK8CColLinebb; CWorld::GetIsLineOfSightSectorListClear(CPtrList &,CColLine const&,bool,bool)
4247A2:  CMP             R0, #0
4247A4:  BEQ.W           loc_4249BA
4247A8:  ADD.W           R0, R10, #1
4247AC:  LDR             R1, [SP,#0xB8+var_84]
4247AE:  ADDS            R6, #0x10
4247B0:  MOVS            R4, #1
4247B2:  CMP             R10, R1
4247B4:  MOV             R2, R0
4247B6:  BLT             loc_4246DC
4247B8:  B               loc_4249BC
4247BA:  LDR             R0, =(_ZN6CWorld11ms_aSectorsE_ptr - 0x4247C0)
4247BC:  ADD             R0, PC; _ZN6CWorld11ms_aSectorsE_ptr
4247BE:  LDR             R0, [R0]; CWorld::ms_aSectors ...
4247C0:  STR             R0, [SP,#0xB8+var_88]
4247C2:  LDR             R0, =(_ZN6CWorld17ms_aRepeatSectorsE_ptr - 0x4247C8)
4247C4:  ADD             R0, PC; _ZN6CWorld17ms_aRepeatSectorsE_ptr
4247C6:  LDR             R0, [R0]; CWorld::ms_aRepeatSectors ...
4247C8:  STR             R0, [SP,#0xB8+var_8C]
4247CA:  LDR             R0, =(_ZN6CWorld17ms_aRepeatSectorsE_ptr - 0x4247D0)
4247CC:  ADD             R0, PC; _ZN6CWorld17ms_aRepeatSectorsE_ptr
4247CE:  LDR             R0, [R0]; CWorld::ms_aRepeatSectors ...
4247D0:  STR             R0, [SP,#0xB8+var_90]
4247D2:  LDR             R0, =(_ZN6CWorld17ms_aRepeatSectorsE_ptr - 0x4247D8)
4247D4:  ADD             R0, PC; _ZN6CWorld17ms_aRepeatSectorsE_ptr
4247D6:  LDR             R0, [R0]; CWorld::ms_aRepeatSectors ...
4247D8:  STR             R0, [SP,#0xB8+var_94]
4247DA:  LDR             R0, =(_ZN6CWorld11ms_aSectorsE_ptr - 0x4247E0)
4247DC:  ADD             R0, PC; _ZN6CWorld11ms_aSectorsE_ptr
4247DE:  LDR             R0, [R0]; CWorld::ms_aSectors ...
4247E0:  STR             R0, [SP,#0xB8+var_98]
4247E2:  MOV             R4, R2
4247E4:  LDR             R1, [SP,#0xB8+var_74]; CVector *
4247E6:  LDR             R2, [SP,#0xB8+var_78]; CVector *
4247E8:  ADD             R0, SP, #0xB8+var_70; this
4247EA:  BLX             j__ZN8CColLineC2ERK7CVectorS2_; CColLine::CColLine(CVector const&,CVector const&)
4247EE:  CMP             R4, #0
4247F0:  MOV.W           R0, #0
4247F4:  IT GT
4247F6:  MOVGT           R0, R4
4247F8:  MOV             R11, R4
4247FA:  CMP             R0, #0x77 ; 'w'
4247FC:  IT GE
4247FE:  MOVGE           R0, R8
424800:  RSB.W           R0, R0, R0,LSL#4
424804:  ADD.W           R4, R5, R0,LSL#3
424808:  LDR             R0, [SP,#0xB8+var_7C]
42480A:  CMP             R0, #1
42480C:  BNE             loc_424824
42480E:  LDR             R0, [SP,#0xB8+var_88]
424810:  ADD             R1, SP, #0xB8+var_70; CPtrList *
424812:  LDR             R2, [R7,#arg_C]; CColLine *
424814:  MOVS            R3, #0; bool
424816:  ADD.W           R0, R0, R4,LSL#3; this
42481A:  BLX             j__ZN6CWorld31GetIsLineOfSightSectorListClearER8CPtrListRK8CColLinebb; CWorld::GetIsLineOfSightSectorListClear(CPtrList &,CColLine const&,bool,bool)
42481E:  CMP             R0, #1
424820:  BNE.W           loc_4249BA
424824:  AND.W           R0, R6, #0xF0
424828:  ORR.W           R10, R0, R9
42482C:  LDR             R0, [SP,#0xB8+var_80]
42482E:  CMP             R0, #1
424830:  BNE             loc_42484C
424832:  ADD.W           R0, R10, R10,LSL#1
424836:  LDR             R1, [SP,#0xB8+var_8C]
424838:  LDR             R2, [R7,#arg_C]; CColLine *
42483A:  MOVS            R3, #0; bool
42483C:  ADD.W           R0, R1, R0,LSL#2; this
424840:  ADD             R1, SP, #0xB8+var_70; CPtrList *
424842:  BLX             j__ZN6CWorld31GetIsLineOfSightSectorListClearER8CPtrListRK8CColLinebb; CWorld::GetIsLineOfSightSectorListClear(CPtrList &,CColLine const&,bool,bool)
424846:  CMP             R0, #1
424848:  BNE.W           loc_4249BA
42484C:  LDR             R0, [R7,#arg_0]
42484E:  CMP             R0, #1
424850:  BNE             loc_42486E
424852:  ADD.W           R0, R10, R10,LSL#1
424856:  LDR             R1, [SP,#0xB8+var_90]
424858:  LDR             R2, [R7,#arg_C]; CColLine *
42485A:  MOVS            R3, #0; bool
42485C:  ADD.W           R0, R1, R0,LSL#2
424860:  ADD             R1, SP, #0xB8+var_70; CPtrList *
424862:  ADDS            R0, #4; this
424864:  BLX             j__ZN6CWorld31GetIsLineOfSightSectorListClearER8CPtrListRK8CColLinebb; CWorld::GetIsLineOfSightSectorListClear(CPtrList &,CColLine const&,bool,bool)
424868:  CMP             R0, #1
42486A:  BNE.W           loc_4249BA
42486E:  LDR             R0, [R7,#arg_4]
424870:  CMP             R0, #1
424872:  BNE             loc_424890
424874:  LDR             R1, [SP,#0xB8+var_94]
424876:  ADD.W           R0, R10, R10,LSL#1
42487A:  LDRD.W          R2, R3, [R7,#arg_C]; bool
42487E:  ADD.W           R0, R1, R0,LSL#2
424882:  ADD             R1, SP, #0xB8+var_70; CPtrList *
424884:  ADDS            R0, #8; this
424886:  BLX             j__ZN6CWorld31GetIsLineOfSightSectorListClearER8CPtrListRK8CColLinebb; CWorld::GetIsLineOfSightSectorListClear(CPtrList &,CColLine const&,bool,bool)
42488A:  CMP             R0, #1
42488C:  BNE.W           loc_4249BA
424890:  LDR             R0, [R7,#arg_8]
424892:  CMP             R0, #1
424894:  BNE             loc_4248AE
424896:  LDR             R0, [SP,#0xB8+var_98]
424898:  ADD             R1, SP, #0xB8+var_70; CPtrList *
42489A:  LDR             R2, [R7,#arg_C]; CColLine *
42489C:  MOVS            R3, #0; bool
42489E:  ADD.W           R0, R0, R4,LSL#3
4248A2:  ADDS            R0, #4; this
4248A4:  BLX             j__ZN6CWorld31GetIsLineOfSightSectorListClearER8CPtrListRK8CColLinebb; CWorld::GetIsLineOfSightSectorListClear(CPtrList &,CColLine const&,bool,bool)
4248A8:  CMP             R0, #0
4248AA:  BEQ.W           loc_4249BA
4248AE:  SUB.W           R0, R11, #1
4248B2:  LDR             R1, [SP,#0xB8+var_84]
4248B4:  SUBS            R6, #0x10
4248B6:  MOVS            R4, #1
4248B8:  CMP             R11, R1
4248BA:  MOV             R2, R0
4248BC:  BGT             loc_4247E2
4248BE:  B               loc_4249BC
4248C0:  LDR             R0, =(_ZN6CWorld11ms_aSectorsE_ptr - 0x4248C6)
4248C2:  ADD             R0, PC; _ZN6CWorld11ms_aSectorsE_ptr
4248C4:  LDR             R0, [R0]; CWorld::ms_aSectors ...
4248C6:  STR             R0, [SP,#0xB8+var_88]
4248C8:  LDR             R0, =(_ZN6CWorld17ms_aRepeatSectorsE_ptr - 0x4248CE)
4248CA:  ADD             R0, PC; _ZN6CWorld17ms_aRepeatSectorsE_ptr
4248CC:  LDR             R0, [R0]; CWorld::ms_aRepeatSectors ...
4248CE:  STR             R0, [SP,#0xB8+var_8C]
4248D0:  LDR             R0, =(_ZN6CWorld17ms_aRepeatSectorsE_ptr - 0x4248D6)
4248D2:  ADD             R0, PC; _ZN6CWorld17ms_aRepeatSectorsE_ptr
4248D4:  LDR             R0, [R0]; CWorld::ms_aRepeatSectors ...
4248D6:  STR             R0, [SP,#0xB8+var_90]
4248D8:  LDR             R0, =(_ZN6CWorld17ms_aRepeatSectorsE_ptr - 0x4248DE)
4248DA:  ADD             R0, PC; _ZN6CWorld17ms_aRepeatSectorsE_ptr
4248DC:  LDR             R0, [R0]; CWorld::ms_aRepeatSectors ...
4248DE:  STR             R0, [SP,#0xB8+var_94]
4248E0:  LDR             R0, =(_ZN6CWorld11ms_aSectorsE_ptr - 0x4248E6)
4248E2:  ADD             R0, PC; _ZN6CWorld11ms_aSectorsE_ptr
4248E4:  LDR             R0, [R0]; CWorld::ms_aSectors ...
4248E6:  STR             R0, [SP,#0xB8+var_98]
4248E8:  MOV             R4, R2
4248EA:  LDR             R1, [SP,#0xB8+var_74]; CVector *
4248EC:  LDR             R2, [SP,#0xB8+var_78]; CVector *
4248EE:  ADD             R0, SP, #0xB8+var_70; this
4248F0:  BLX             j__ZN8CColLineC2ERK7CVectorS2_; CColLine::CColLine(CVector const&,CVector const&)
4248F4:  CMP             R4, #0
4248F6:  MOV.W           R0, #0
4248FA:  IT GT
4248FC:  MOVGT           R0, R4
4248FE:  MOV             R11, R4
424900:  CMP             R0, #0x77 ; 'w'
424902:  IT GE
424904:  MOVGE           R0, R8
424906:  RSB.W           R0, R0, R0,LSL#4
42490A:  ADD.W           R4, R5, R0,LSL#3
42490E:  LDR             R0, [SP,#0xB8+var_7C]
424910:  CMP             R0, #1
424912:  BNE             loc_424928
424914:  LDR             R0, [SP,#0xB8+var_88]
424916:  ADD             R1, SP, #0xB8+var_70; CPtrList *
424918:  LDR             R2, [R7,#arg_C]; CColLine *
42491A:  MOVS            R3, #0; bool
42491C:  ADD.W           R0, R0, R4,LSL#3; this
424920:  BLX             j__ZN6CWorld31GetIsLineOfSightSectorListClearER8CPtrListRK8CColLinebb; CWorld::GetIsLineOfSightSectorListClear(CPtrList &,CColLine const&,bool,bool)
424924:  CMP             R0, #1
424926:  BNE             loc_4249BA
424928:  AND.W           R0, R6, #0xF0
42492C:  ORR.W           R10, R0, R9
424930:  LDR             R0, [SP,#0xB8+var_80]
424932:  CMP             R0, #1
424934:  BNE             loc_42494E
424936:  ADD.W           R0, R10, R10,LSL#1
42493A:  LDR             R1, [SP,#0xB8+var_8C]
42493C:  LDR             R2, [R7,#arg_C]; CColLine *
42493E:  MOVS            R3, #0; bool
424940:  ADD.W           R0, R1, R0,LSL#2; this
424944:  ADD             R1, SP, #0xB8+var_70; CPtrList *
424946:  BLX             j__ZN6CWorld31GetIsLineOfSightSectorListClearER8CPtrListRK8CColLinebb; CWorld::GetIsLineOfSightSectorListClear(CPtrList &,CColLine const&,bool,bool)
42494A:  CMP             R0, #1
42494C:  BNE             loc_4249BA
42494E:  LDR             R0, [R7,#arg_0]
424950:  CMP             R0, #1
424952:  BNE             loc_42496E
424954:  ADD.W           R0, R10, R10,LSL#1
424958:  LDR             R1, [SP,#0xB8+var_90]
42495A:  LDR             R2, [R7,#arg_C]; CColLine *
42495C:  MOVS            R3, #0; bool
42495E:  ADD.W           R0, R1, R0,LSL#2
424962:  ADD             R1, SP, #0xB8+var_70; CPtrList *
424964:  ADDS            R0, #4; this
424966:  BLX             j__ZN6CWorld31GetIsLineOfSightSectorListClearER8CPtrListRK8CColLinebb; CWorld::GetIsLineOfSightSectorListClear(CPtrList &,CColLine const&,bool,bool)
42496A:  CMP             R0, #1
42496C:  BNE             loc_4249BA
42496E:  LDR             R0, [R7,#arg_4]
424970:  CMP             R0, #1
424972:  BNE             loc_42498E
424974:  LDR             R1, [SP,#0xB8+var_94]
424976:  ADD.W           R0, R10, R10,LSL#1
42497A:  LDRD.W          R2, R3, [R7,#arg_C]; bool
42497E:  ADD.W           R0, R1, R0,LSL#2
424982:  ADD             R1, SP, #0xB8+var_70; CPtrList *
424984:  ADDS            R0, #8; this
424986:  BLX             j__ZN6CWorld31GetIsLineOfSightSectorListClearER8CPtrListRK8CColLinebb; CWorld::GetIsLineOfSightSectorListClear(CPtrList &,CColLine const&,bool,bool)
42498A:  CMP             R0, #1
42498C:  BNE             loc_4249BA
42498E:  LDR             R0, [R7,#arg_8]
424990:  CMP             R0, #1
424992:  BNE             loc_4249A8
424994:  LDR             R0, [SP,#0xB8+var_98]
424996:  ADD             R1, SP, #0xB8+var_70; CPtrList *
424998:  LDR             R2, [R7,#arg_C]; CColLine *
42499A:  MOVS            R3, #0; bool
42499C:  ADD.W           R0, R0, R4,LSL#3
4249A0:  ADDS            R0, #4; this
4249A2:  BLX             j__ZN6CWorld31GetIsLineOfSightSectorListClearER8CPtrListRK8CColLinebb; CWorld::GetIsLineOfSightSectorListClear(CPtrList &,CColLine const&,bool,bool)
4249A6:  CBZ             R0, loc_4249BA
4249A8:  SUB.W           R0, R11, #1
4249AC:  LDR             R1, [SP,#0xB8+var_84]
4249AE:  SUBS            R6, #0x10
4249B0:  MOVS            R4, #1
4249B2:  CMP             R11, R1
4249B4:  MOV             R2, R0
4249B6:  BGT             loc_4248E8
4249B8:  B               loc_4249BC
4249BA:  MOVS            R4, #0
4249BC:  MOV             R0, R4
4249BE:  ADD             SP, SP, #0x68 ; 'h'
4249C0:  VPOP            {D8-D13}
4249C4:  ADD             SP, SP, #4
4249C6:  POP.W           {R8-R11}
4249CA:  POP             {R4-R7,PC}
