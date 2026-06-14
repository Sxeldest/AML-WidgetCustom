; =========================================================
; Game Engine Function: _ZN9CPhysical22ProcessShiftSectorListEii
; Address            : 0x401494 - 0x401942
; =========================================================

401494:  PUSH            {R4-R7,LR}
401496:  ADD             R7, SP, #0xC
401498:  PUSH.W          {R8-R11}
40149C:  SUB             SP, SP, #4
40149E:  VPUSH           {D8-D14}
4014A2:  SUB.W           SP, SP, #0x5C0
4014A6:  MOV             R4, R0
4014A8:  LDR.W           R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x4014B4)
4014AC:  MOVS            R5, #0
4014AE:  MOV             R6, R1
4014B0:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
4014B2:  STRB.W          R5, [SP,#0x618+var_5D9]
4014B6:  STRB.W          R5, [SP,#0x618+var_5DA]
4014BA:  MOV             R8, R2
4014BC:  STRB.W          R5, [SP,#0x618+var_5DB]
4014C0:  STRB.W          R5, [SP,#0x618+var_5DC]
4014C4:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
4014C6:  LDRSH.W         R1, [R4,#0x26]
4014CA:  LDR.W           R0, [R0,R1,LSL#2]
4014CE:  ADD             R1, SP, #0x618+var_5E8; CVector *
4014D0:  LDR             R0, [R0,#0x2C]
4014D2:  VLDR            S22, [R0,#0x24]
4014D6:  MOV             R0, R4; this
4014D8:  BLX             j__ZNK7CEntity14GetBoundCentreER7CVector; CEntity::GetBoundCentre(CVector &)
4014DC:  CMP             R6, #0
4014DE:  MOV.W           R1, #0
4014E2:  IT GT
4014E4:  MOVGT           R1, R6
4014E6:  MOVS            R2, #0x77 ; 'w'
4014E8:  CMP             R1, #0x77 ; 'w'
4014EA:  MOV.W           R3, #0
4014EE:  IT GE
4014F0:  MOVGE           R1, R2
4014F2:  CMP.W           R8, #0
4014F6:  IT GT
4014F8:  MOVGT           R3, R8
4014FA:  LDR.W           R0, =(_ZN6CWorld17ms_aRepeatSectorsE_ptr - 0x40150C)
4014FE:  CMP             R3, #0x77 ; 'w'
401500:  VLDR            S26, =0.0
401504:  IT GE
401506:  MOVGE           R3, R2
401508:  ADD             R0, PC; _ZN6CWorld17ms_aRepeatSectorsE_ptr
40150A:  RSB.W           R2, R3, R3,LSL#4
40150E:  LDR.W           R3, =(_ZN6CWorld11ms_aSectorsE_ptr - 0x40151C)
401512:  LDR             R0, [R0]; CWorld::ms_aRepeatSectors ...
401514:  VMOV.F32        S16, S26
401518:  ADD             R3, PC; _ZN6CWorld11ms_aSectorsE_ptr
40151A:  ADD.W           R1, R1, R2,LSL#3
40151E:  VMOV.F32        S18, S26
401522:  VLDR            S28, =0.1
401526:  LDR             R3, [R3]; CWorld::ms_aSectors ...
401528:  VMOV.F32        S24, S26
40152C:  VMOV            D10, D13
401530:  MOV.W           R11, #4
401534:  ADD.W           R1, R3, R1,LSL#3
401538:  STR             R1, [SP,#0x618+var_5F8]
40153A:  AND.W           R1, R6, #0xF
40153E:  MOV.W           R10, #0
401542:  BFI.W           R1, R8, #4, #4
401546:  ADD.W           R1, R1, R1,LSL#1
40154A:  ADD.W           R0, R0, R1,LSL#2
40154E:  ADD.W           R1, R0, #8
401552:  STRD.W          R1, R0, [SP,#0x618+var_600]
401556:  ADDS            R0, #4
401558:  STR             R0, [SP,#0x618+var_604]
40155A:  ADD             R0, SP, #0x618+var_5D8
40155C:  ADDS            R0, #0x14
40155E:  STR             R0, [SP,#0x618+var_608]
401560:  ADD.W           R0, R4, #0x1C
401564:  STR             R0, [SP,#0x618+var_5EC]
401566:  LDR.W           R0, =(_ZN6CWorld19ms_nCurrentScanCodeE_ptr - 0x40156E)
40156A:  ADD             R0, PC; _ZN6CWorld19ms_nCurrentScanCodeE_ptr
40156C:  LDR.W           R8, [R0]; CWorld::ms_nCurrentScanCode ...
401570:  LDR.W           R0, =(_ZN6CWorld19ms_nCurrentScanCodeE_ptr - 0x401578)
401574:  ADD             R0, PC; _ZN6CWorld19ms_nCurrentScanCodeE_ptr
401576:  LDR             R0, [R0]; CWorld::ms_nCurrentScanCode ...
401578:  STR             R0, [SP,#0x618+var_5F4]
40157A:  MOVS            R0, #0
40157C:  STR             R0, [SP,#0x618+var_5F0]
40157E:  CMP.W           R11, #4
401582:  BLS.W           loc_4017BE
401586:  B               def_4017BE; jumptable 004017BE default case
401588:  ADD.W           R10, R10, #4
40158C:  CMP.W           R11, #4; switch 5 cases
401590:  BLS.W           loc_4017BE
401594:  LDR.W           R9, [R10]; jumptable 004017BE default case
401598:  SUB.W           R11, R11, #1
40159C:  B               loc_4017B4
40159E:  LDRD.W          R6, R9, [R9]
4015A2:  STRB.W          R5, [SP,#0x618+var_5DA]
4015A6:  STRB.W          R5, [SP,#0x618+var_5D9]
4015AA:  LDRB.W          R0, [R6,#0x3A]
4015AE:  AND.W           R0, R0, #7
4015B2:  CMP             R0, #1
4015B4:  BEQ             loc_4015E2
4015B6:  CMP             R0, #4
4015B8:  BNE             loc_4015C2
4015BA:  LDRB.W          R1, [R6,#0x44]
4015BE:  LSLS            R1, R1, #0x1D
4015C0:  BMI             loc_4015E2
4015C2:  LDRB.W          R1, [R4,#0x3A]
4015C6:  AND.W           R1, R1, #7
4015CA:  CMP             R1, #3
4015CC:  IT EQ
4015CE:  CMPEQ           R0, #4
4015D0:  BNE             loc_4015EA
4015D2:  LDR             R0, [R6,#0x1C]
4015D4:  TST.W           R0, #0x40004
4015D8:  BEQ             loc_4015EA
4015DA:  LDRB.W          R0, [R6,#0x144]
4015DE:  LSLS            R0, R0, #0x19
4015E0:  BMI             loc_4015EA
4015E2:  MOVS            R0, #1
4015E4:  CMP             R6, R4
4015E6:  BNE             loc_4015F2
4015E8:  B               loc_4017B4
4015EA:  MOVS            R0, #0
4015EC:  CMP             R6, R4
4015EE:  BEQ.W           loc_4017B4
4015F2:  LDRH            R1, [R6,#0x30]
4015F4:  LDRH.W          R2, [R8]; CWorld::ms_nCurrentScanCode
4015F8:  CMP             R1, R2
4015FA:  ITT NE
4015FC:  LDRBNE          R1, [R6,#0x1C]
4015FE:  MOVSNE.W        R1, R1,LSL#31
401602:  BEQ.W           loc_4017B4
401606:  LDR             R1, [SP,#0x618+var_5EC]
401608:  LDRB            R1, [R1,#1]
40160A:  LSLS            R1, R1, #0x1B
40160C:  MOV.W           R1, #0
401610:  IT PL
401612:  MOVPL           R1, #1
401614:  ORRS            R0, R1
401616:  BEQ.W           loc_4017B4
40161A:  VMOV            R2, S22; float
40161E:  ADD             R1, SP, #0x618+var_5E8; CVector *
401620:  MOV             R0, R6; this
401622:  BLX             j__ZNK7CEntity13GetIsTouchingERK7CVectorf; CEntity::GetIsTouching(CVector const&,float)
401626:  CMP             R0, #1
401628:  BNE.W           loc_4017B4
40162C:  LDRB.W          R0, [R6,#0x3A]
401630:  AND.W           R0, R0, #7
401634:  CMP             R0, #1
401636:  BNE             loc_401690
401638:  STRB.W          R5, [SP,#0x618+var_5DA]
40163C:  LDR             R0, [R4,#0x44]
40163E:  TST.W           R0, #4
401642:  BEQ             loc_401658
401644:  LDRB.W          R1, [R4,#0x3A]
401648:  AND.W           R1, R1, #7
40164C:  CMP             R1, #2
40164E:  BNE             loc_401688
401650:  LDR.W           R1, [R4,#0x5A4]
401654:  CMP             R1, #6
401656:  BEQ             loc_401688
401658:  LDR.W           R1, [R4,#0x100]
40165C:  CBZ             R1, loc_401676
40165E:  LDRB.W          R2, [R1,#0x3A]
401662:  AND.W           R2, R2, #7
401666:  SUBS            R2, #2
401668:  UXTB            R2, R2
40166A:  CMP             R2, #2
40166C:  BHI             loc_401676
40166E:  LDRB.W          R1, [R1,#0x44]
401672:  LSLS            R1, R1, #0x1D
401674:  BMI             loc_401688
401676:  LDR.W           R1, [R4,#0x12C]
40167A:  CMP             R1, R6
40167C:  ITT NE
40167E:  ANDNE.W         R1, R0, #0x82
401682:  CMPNE           R1, #0x80
401684:  BNE.W           loc_401790
401688:  MOVS            R0, #1
40168A:  STRB.W          R0, [SP,#0x618+var_5D9]
40168E:  B               loc_4016B2
401690:  LDR             R0, [R4]
401692:  ADD.W           R3, SP, #0x618+var_5D9
401696:  MOV             R1, R6
401698:  MOVS            R2, #1
40169A:  LDR.W           R12, [R0,#0x40]
40169E:  ADD.W           R0, SP, #0x618+var_5DA
4016A2:  STR             R0, [SP,#0x618+var_618]
4016A4:  ADD             R0, SP, #0x618+var_5DC
4016A6:  STR             R0, [SP,#0x618+var_614]
4016A8:  ADD.W           R0, SP, #0x618+var_5DB
4016AC:  STR             R0, [SP,#0x618+var_610]
4016AE:  MOV             R0, R4
4016B0:  BLX             R12
4016B2:  LDRB.W          R0, [R4,#0x3A]
4016B6:  AND.W           R0, R0, #7
4016BA:  CMP             R0, #3
4016BC:  ITTT EQ
4016BE:  LDREQ           R0, [R4,#0x44]
4016C0:  ORREQ.W         R0, R0, #0x1000
4016C4:  STREQ           R0, [R4,#0x44]
4016C6:  LDRB.W          R0, [SP,#0x618+var_5DA]
4016CA:  LDRB.W          R1, [SP,#0x618+var_5D9]
4016CE:  ORRS            R0, R1
4016D0:  LSLS            R0, R0, #0x18
4016D2:  BNE             loc_4017B4
4016D4:  LDR             R0, [SP,#0x618+var_5F4]
4016D6:  ADD             R2, SP, #0x618+var_5D8
4016D8:  MOV             R1, R6
4016DA:  LDRH            R0, [R0]
4016DC:  STRH            R0, [R6,#0x30]
4016DE:  LDR             R0, [R4]
4016E0:  LDR             R3, [R0,#0x5C]
4016E2:  MOV             R0, R4
4016E4:  BLX             R3
4016E6:  CMP             R0, #0
4016E8:  BLE             loc_4017B4
4016EA:  LDR             R1, [SP,#0x618+var_608]
4016EC:  VLDR            S0, [R1,#0x14]
4016F0:  VCMPE.F32       S0, #0.0
4016F4:  VMRS            APSR_nzcv, FPSCR
4016F8:  BLE             loc_401788
4016FA:  LDRB            R2, [R1,#0x10]
4016FC:  SUBS            R2, #0xD
4016FE:  UXTB            R2, R2
401700:  CMP             R2, #4
401702:  BCC             loc_401788
401704:  LDRB.W          R2, [R4,#0x3A]
401708:  LDR             R3, [SP,#0x618+var_5F0]
40170A:  AND.W           R2, R2, #7
40170E:  CMP             R2, #3
401710:  ADD.W           R3, R3, #1
401714:  STR             R3, [SP,#0x618+var_5F0]
401716:  BEQ             loc_40173C
401718:  CMP             R2, #2
40171A:  BNE             loc_401762
40171C:  LDRB.W          R2, [R6,#0x3A]
401720:  AND.W           R2, R2, #7
401724:  CMP             R2, #3
401726:  BNE             loc_401762
401728:  VLDR            S2, [R1,#4]
40172C:  VCMPE.F32       S2, #0.0
401730:  VMRS            APSR_nzcv, FPSCR
401734:  BGE             loc_401762
401736:  VMUL.F32        S2, S2, S26
40173A:  B               loc_401766
40173C:  LDRB.W          R2, [R6,#0x3A]
401740:  AND.W           R2, R2, #7
401744:  CMP             R2, #4
401746:  BNE             loc_401762
401748:  LDRB.W          R2, [R6,#0x44]
40174C:  LSLS            R2, R2, #0x1A
40174E:  BPL             loc_401762
401750:  VLDR            S2, [R1,#4]
401754:  VABS.F32        S2, S2
401758:  VCMPE.F32       S2, S28
40175C:  VMRS            APSR_nzcv, FPSCR
401760:  BGT             loc_401788
401762:  VLDR            S2, [R1,#4]
401766:  VCMPE.F32       S0, S24
40176A:  VLDR            S4, [R1,#-4]
40176E:  VMRS            APSR_nzcv, FPSCR
401772:  VADD.F32        S20, S20, S2
401776:  VLDR            S6, [R1]
40177A:  VADD.F32        S16, S16, S4
40177E:  VADD.F32        S18, S18, S6
401782:  IT GT
401784:  VMOVGT.F32      S24, S0
401788:  ADDS            R1, #0x2C ; ','
40178A:  SUBS            R0, #1
40178C:  BNE             loc_4016EC
40178E:  B               loc_4017B4
401790:  LSLS            R0, R0, #7
401792:  BPL.W           loc_4016B2
401796:  LDRB.W          R0, [R4,#0x3A]
40179A:  MOVS            R1, #8
40179C:  ORR.W           R0, R1, R0,LSR#3
4017A0:  CMP             R0, #8
4017A2:  BEQ.W           loc_4016B2
4017A6:  MOV             R0, R6; this
4017A8:  BLX             j__ZN7CEntity24DoesNotCollideWithFlyersEv; CEntity::DoesNotCollideWithFlyers(void)
4017AC:  CMP             R0, #1
4017AE:  BEQ.W           loc_401688
4017B2:  B               loc_4016B2
4017B4:  CMP.W           R9, #0
4017B8:  BNE.W           loc_40159E
4017BC:  B               loc_401588
4017BE:  TBB.W           [PC,R11]; switch jump
4017C2:  DCB 0xF; jump table for switch statement
4017C3:  DCB 0xC
4017C4:  DCB 9
4017C5:  DCB 6
4017C6:  DCB 3
4017C7:  ALIGN 2
4017C8:  LDR.W           R10, [SP,#0x618+var_600]; jumptable 004017BE case 4
4017CC:  B               def_4017BE; jumptable 004017BE default case
4017CE:  LDR.W           R10, [SP,#0x618+var_604]; jumptable 004017BE case 3
4017D2:  B               def_4017BE; jumptable 004017BE default case
4017D4:  LDR.W           R10, [SP,#0x618+var_5FC]; jumptable 004017BE case 2
4017D8:  B               def_4017BE; jumptable 004017BE default case
4017DA:  LDR.W           R10, [SP,#0x618+var_5F8]; jumptable 004017BE case 1
4017DE:  B               def_4017BE; jumptable 004017BE default case
4017E0:  LDR             R0, [SP,#0x618+var_5F0]; jumptable 004017BE case 0
4017E2:  CBZ             R0, loc_40182E
4017E4:  VMUL.F32        S0, S18, S18
4017E8:  VMUL.F32        S2, S16, S16
4017EC:  VMUL.F32        S4, S20, S20
4017F0:  VADD.F32        S0, S2, S0
4017F4:  VMOV.F32        S2, #1.0
4017F8:  VADD.F32        S0, S0, S4
4017FC:  VSQRT.F32       S0, S0
401800:  VCMPE.F32       S0, S2
401804:  VMRS            APSR_nzcv, FPSCR
401808:  BLE             loc_40181A
40180A:  VDIV.F32        S0, S2, S0
40180E:  VMUL.F32        S20, S20, S0
401812:  VMUL.F32        S18, S18, S0
401816:  VMUL.F32        S16, S16, S0
40181A:  VMOV.F32        S0, #-0.5
40181E:  VCMPE.F32       S20, S0
401822:  VMRS            APSR_nzcv, FPSCR
401826:  BGE             loc_401832
401828:  VMOV.F32        S4, #0.75
40182C:  B               loc_401870
40182E:  MOVS            R0, #0
401830:  B               loc_401932
401832:  LDRB.W          R0, [R4,#0x3A]
401836:  AND.W           R0, R0, #7
40183A:  CMP             R0, #3
40183C:  BNE             loc_40186C
40183E:  VMOV.F32        S0, #1.5
401842:  VLDR            S2, =0.005
401846:  VLDR            S4, =0.3
40184A:  VMUL.F32        S0, S24, S0
40184E:  VMAX.F32        D16, D0, D1
401852:  VMIN.F32        D2, D16, D2
401856:  VMUL.F32        S0, S4, S20
40185A:  VMUL.F32        S2, S4, S18
40185E:  VMUL.F32        S4, S4, S16
401862:  B               loc_401888
401864:  DCFS 0.0
401868:  DCFS 0.1
40186C:  VMOV.F32        S4, #1.5
401870:  VMUL.F32        S0, S24, S20
401874:  VMUL.F32        S2, S24, S18
401878:  VMUL.F32        S6, S24, S16
40187C:  VMUL.F32        S0, S0, S4
401880:  VMUL.F32        S2, S2, S4
401884:  VMUL.F32        S4, S6, S4
401888:  LDR             R1, [R4,#0x14]
40188A:  ADD.W           R0, R1, #0x30 ; '0'
40188E:  CMP             R1, #0
401890:  MOV             R2, R0
401892:  IT EQ
401894:  ADDEQ           R2, R4, #4
401896:  CMP             R1, #0
401898:  VLDR            S6, [R2]
40189C:  VLDR            S8, [R2,#4]
4018A0:  VLDR            S10, [R2,#8]
4018A4:  VADD.F32        S4, S4, S6
4018A8:  VADD.F32        S2, S2, S8
4018AC:  VADD.F32        S0, S0, S10
4018B0:  BEQ             loc_4018C2
4018B2:  VSTR            S4, [R0]
4018B6:  LDR             R0, [R4,#0x14]
4018B8:  VSTR            S2, [R0,#0x34]
4018BC:  LDR             R0, [R4,#0x14]
4018BE:  ADDS            R0, #0x38 ; '8'
4018C0:  B               loc_4018CE
4018C2:  ADD.W           R0, R4, #0xC
4018C6:  VSTR            S4, [R4,#4]
4018CA:  VSTR            S2, [R4,#8]
4018CE:  VSTR            S0, [R0]
4018D2:  LDRB.W          R0, [R4,#0x3A]
4018D6:  AND.W           R0, R0, #7
4018DA:  CMP             R0, #2
4018DC:  BNE             loc_401930
4018DE:  VLDR            S2, =0.0
4018E2:  LDR             R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x4018F0)
4018E4:  VMAX.F32        D1, D10, D1
4018E8:  VLDR            S0, =0.008
4018EC:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
4018EE:  VLDR            S8, [R4,#0x4C]
4018F2:  VMUL.F32        S4, S16, S0
4018F6:  VLDR            S10, [R4,#0x50]
4018FA:  VMUL.F32        S6, S18, S0
4018FE:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
401900:  VMUL.F32        S0, S2, S0
401904:  VLDR            S2, [R0]
401908:  VMUL.F32        S4, S4, S2
40190C:  VMUL.F32        S6, S6, S2
401910:  VMUL.F32        S0, S0, S2
401914:  VLDR            S2, [R4,#0x48]
401918:  VADD.F32        S2, S4, S2
40191C:  VADD.F32        S4, S6, S8
401920:  VADD.F32        S0, S0, S10
401924:  VSTR            S2, [R4,#0x48]
401928:  VSTR            S4, [R4,#0x4C]
40192C:  VSTR            S0, [R4,#0x50]
401930:  MOVS            R0, #1
401932:  ADD.W           SP, SP, #0x5C0
401936:  VPOP            {D8-D14}
40193A:  ADD             SP, SP, #4
40193C:  POP.W           {R8-R11}
401940:  POP             {R4-R7,PC}
