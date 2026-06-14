; =========================================================
; Game Engine Function: _ZN19CTaskComplexPartner17CreateNextSubTaskEP4CPed
; Address            : 0x534364 - 0x534776
; =========================================================

534364:  PUSH            {R4-R7,LR}
534366:  ADD             R7, SP, #0xC
534368:  PUSH.W          {R8}
53436C:  SUB             SP, SP, #0x10
53436E:  MOV             R4, R0
534370:  MOV             R5, R1
534372:  LDR             R0, [R4,#0x38]
534374:  CBZ             R0, def_5343A0; jumptable 005343A0 default case
534376:  LDR.W           R0, [R0,#0x440]
53437A:  LDR             R1, [R4,#0x34]; int
53437C:  ADDS            R0, #4; this
53437E:  BLX             j__ZNK12CTaskManager20FindActiveTaskByTypeEi; CTaskManager::FindActiveTaskByType(int)
534382:  CMP             R0, #0
534384:  BEQ             def_5343A0; jumptable 005343A0 default case
534386:  LDR             R0, [R0,#0x38]
534388:  CMP             R0, R5
53438A:  BEQ             loc_534396
53438C:  MOVS            R0, #0; jumptable 005343A0 default case
53438E:  ADD             SP, SP, #0x10
534390:  POP.W           {R8}
534394:  POP             {R4-R7,PC}
534396:  LDRB.W          R0, [R4,#0x59]
53439A:  SUBS            R0, #1; switch 6 cases
53439C:  CMP             R0, #5
53439E:  BHI             def_5343A0; jumptable 005343A0 default case
5343A0:  TBB.W           [PC,R0]; switch jump
5343A4:  DCB 3; jump table for switch statement
5343A5:  DCB 0x23
5343A6:  DCB 0x50
5343A7:  DCB 0x68
5343A8:  DCB 0x8E
5343A9:  DCB 0xA6
5343AA:  LDR             R0, [R4,#8]; jumptable 005343A0 case 1
5343AC:  LDR             R1, [R0]
5343AE:  LDR             R1, [R1,#0x14]
5343B0:  BLX             R1
5343B2:  CMP             R0, #0xCB
5343B4:  BNE             def_5343A0; jumptable 005343A0 default case
5343B6:  LDRB.W          R0, [R4,#0x58]
5343BA:  CBZ             R0, loc_5343E6
5343BC:  ADD.W           R2, R4, #0x40 ; '@'; CVector *
5343C0:  ADD.W           R3, R4, #0x4C ; 'L'; CVector *
5343C4:  MOV             R0, R4; this
5343C6:  MOV             R1, R5; CPed *
5343C8:  BLX             j__ZN19CTaskComplexPartner19CalcTargetPositionsEP4CPedP7CVectorS3_; CTaskComplexPartner::CalcTargetPositions(CPed *,CVector *,CVector *)
5343CC:  LDRD.W          R1, R0, [R4,#0x34]; int
5343D0:  LDR.W           R0, [R0,#0x440]
5343D4:  ADDS            R0, #4; this
5343D6:  BLX             j__ZNK12CTaskManager20FindActiveTaskByTypeEi; CTaskManager::FindActiveTaskByType(int)
5343DA:  VLDR            D16, [R4,#0x4C]
5343DE:  LDR             R1, [R4,#0x54]
5343E0:  STR             R1, [R0,#0x48]
5343E2:  VSTR            D16, [R0,#0x40]
5343E6:  MOVS            R0, #2
5343E8:  B               loc_53461A
5343EA:  LDR             R0, [R4,#8]; jumptable 005343A0 case 2
5343EC:  LDR             R1, [R0]
5343EE:  LDR             R1, [R1,#0x14]
5343F0:  BLX             R1
5343F2:  CMP             R0, #0xCB
5343F4:  BNE             def_5343A0; jumptable 005343A0 default case
5343F6:  VLDR            S0, [R4,#0x40]
5343FA:  VCMP.F32        S0, #0.0
5343FE:  VMRS            APSR_nzcv, FPSCR
534402:  ITTT EQ
534404:  VLDREQ          S0, [R4,#0x44]
534408:  VCMPEQ.F32      S0, #0.0
53440C:  VMRSEQ          APSR_nzcv, FPSCR
534410:  BEQ.W           loc_53461E
534414:  MOVS            R6, #0
534416:  MOVS            R0, #3
534418:  STRH.W          R6, [R4,#0x70]
53441C:  ADD.W           R5, R4, #0x40 ; '@'
534420:  STRB.W          R0, [R4,#0x59]
534424:  MOVS            R0, #word_28; this
534426:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
53442A:  MOVW            R3, #0xCCCD
53442E:  MOVS            R1, #1
534430:  STRD.W          R6, R6, [SP,#0x20+var_20]; float
534434:  MOVT            R3, #0x3DCC; float
534438:  STR             R1, [SP,#0x20+var_18]; bool
53443A:  MOVS            R1, #4; int
53443C:  MOV             R2, R5; CVector *
53443E:  BLX             j__ZN34CTaskComplexGoToPointAndStandStillC2EiRK7CVectorffbb; CTaskComplexGoToPointAndStandStill::CTaskComplexGoToPointAndStandStill(int,CVector const&,float,float,bool,bool)
534442:  B               loc_53438E
534444:  LDR             R0, [R4,#8]; jumptable 005343A0 case 3
534446:  LDR             R1, [R0]
534448:  LDR             R1, [R1,#0x14]
53444A:  BLX             R1
53444C:  MOVW            R1, #0x387; unsigned int
534450:  CMP             R0, R1
534452:  BNE.W           loc_534554
534456:  MOVS            R0, #word_28; this
534458:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
53445C:  LDR             R1, =(_ZN25CTaskSimpleAchieveHeading25ms_fHeadingChangeRateFracE_ptr - 0x534464)
53445E:  LDR             R2, =(_ZN25CTaskSimpleAchieveHeading20ms_fHeadingToleranceE_ptr - 0x534466)
534460:  ADD             R1, PC; _ZN25CTaskSimpleAchieveHeading25ms_fHeadingChangeRateFracE_ptr
534462:  ADD             R2, PC; _ZN25CTaskSimpleAchieveHeading20ms_fHeadingToleranceE_ptr
534464:  LDR             R3, [R1]; CTaskSimpleAchieveHeading::ms_fHeadingChangeRateFrac ...
534466:  LDR             R6, [R2]; CTaskSimpleAchieveHeading::ms_fHeadingTolerance ...
534468:  LDR             R1, [R4,#0x38]; CEntity *
53446A:  LDR             R2, [R3]; float
53446C:  LDR             R3, [R6]; float
53446E:  BLX             j__ZN35CTaskComplexTurnToFaceEntityOrCoordC2EP7CEntityff; CTaskComplexTurnToFaceEntityOrCoord::CTaskComplexTurnToFaceEntityOrCoord(CEntity *,float,float)
534472:  B               loc_53438E
534474:  LDRD.W          R1, R0, [R4,#0x34]; jumptable 005343A0 case 4
534478:  LDR.W           R0, [R0,#0x440]
53447C:  ADDS            R0, #4; this
53447E:  BLX             j__ZNK12CTaskManager20FindActiveTaskByTypeEi; CTaskManager::FindActiveTaskByType(int)
534482:  CMP             R0, #0
534484:  BEQ             loc_53451C
534486:  LDRSB.W         R0, [R0,#0x59]
53448A:  ORR.W           R0, R0, #1
53448E:  CMP             R0, #5
534490:  BNE             loc_53451C
534492:  LDRB.W          R0, [R4,#0x5A]
534496:  CMP             R0, #0xFF
534498:  ITT EQ
53449A:  MOVEQ           R0, #0
53449C:  STRBEQ.W        R0, [R4,#0x5A]
5344A0:  LDRD.W          R1, R0, [R4,#0x34]; int
5344A4:  LDR.W           R0, [R0,#0x440]
5344A8:  ADDS            R0, #4; this
5344AA:  BLX             j__ZNK12CTaskManager20FindActiveTaskByTypeEi; CTaskManager::FindActiveTaskByType(int)
5344AE:  LDRB.W          R1, [R0,#0x5A]
5344B2:  CMP             R1, #0xFF
5344B4:  ITT EQ
5344B6:  MOVEQ           R1, #1
5344B8:  STRBEQ.W        R1, [R0,#0x5A]
5344BC:  MOVS            R0, #5
5344BE:  B               loc_53461A
5344C0:  LDRB.W          R0, [R4,#0x5D]; jumptable 005343A0 case 5
5344C4:  CMP             R0, #0
5344C6:  BEQ             loc_534568
5344C8:  LDRB.W          R0, [R4,#0x5A]
5344CC:  CMP             R0, #1
5344CE:  BNE             loc_5345BA
5344D0:  LDRD.W          R1, R0, [R4,#0x34]; int
5344D4:  LDR.W           R0, [R0,#0x440]
5344D8:  ADDS            R0, #4; this
5344DA:  BLX             j__ZNK12CTaskManager20FindActiveTaskByTypeEi; CTaskManager::FindActiveTaskByType(int)
5344DE:  CMP             R0, #0
5344E0:  BEQ.W           loc_53461E
5344E4:  LDRB.W          R0, [R0,#0x59]
5344E8:  CMP             R0, #6
5344EA:  BEQ.W           loc_534618
5344EE:  B               loc_53461E
5344F0:  LDRB.W          R0, [R4,#0x6E]; jumptable 005343A0 case 6
5344F4:  CMP             R0, #0
5344F6:  BEQ.W           def_5343A0; jumptable 005343A0 default case
5344FA:  LDRB.W          R0, [R4,#0x5B]
5344FE:  CMP             R0, #0
534500:  BEQ.W           def_5343A0; jumptable 005343A0 default case
534504:  LDR             R1, [R4]
534506:  SUBS            R0, #1
534508:  STRB.W          R0, [R4,#0x5B]
53450C:  MOV             R0, R4
53450E:  LDR             R1, [R1,#0x3C]
534510:  ADD             SP, SP, #0x10
534512:  POP.W           {R8}
534516:  POP.W           {R4-R7,LR}
53451A:  BX              R1; float
53451C:  LDRB.W          R0, [R4,#0x5A]
534520:  CMP             R0, #0xFF
534522:  ITT EQ
534524:  MOVEQ           R0, #1
534526:  STRBEQ.W        R0, [R4,#0x5A]
53452A:  LDRD.W          R1, R0, [R4,#0x34]; int
53452E:  LDR.W           R0, [R0,#0x440]
534532:  ADDS            R0, #4; this
534534:  BLX             j__ZNK12CTaskManager20FindActiveTaskByTypeEi; CTaskManager::FindActiveTaskByType(int)
534538:  LDRB.W          R1, [R0,#0x5A]
53453C:  CMP             R1, #0xFF
53453E:  ITT EQ
534540:  MOVEQ           R1, #0
534542:  STRBEQ.W        R1, [R0,#0x5A]
534546:  VLDR            D16, [R4,#0x4C]
53454A:  LDR             R1, [R4,#0x54]
53454C:  STR             R1, [R0,#0x48]
53454E:  VSTR            D16, [R0,#0x40]
534552:  B               loc_53461E
534554:  LDR             R0, [R4,#8]
534556:  LDR             R1, [R0]
534558:  LDR             R1, [R1,#0x14]
53455A:  BLX             R1
53455C:  CMP.W           R0, #0x398
534560:  BNE.W           def_5343A0; jumptable 005343A0 default case
534564:  MOVS            R0, #4
534566:  B               loc_53461A
534568:  LDRD.W          R1, R0, [R4,#0x34]; int
53456C:  LDR.W           R0, [R0,#0x440]
534570:  ADDS            R0, #4; this
534572:  BLX             j__ZNK12CTaskManager20FindActiveTaskByTypeEi; CTaskManager::FindActiveTaskByType(int)
534576:  CMP             R0, #0
534578:  BEQ             loc_53461E
53457A:  LDRSB.W         R0, [R0,#0x59]
53457E:  CMP             R0, #5
534580:  BLT             loc_53461E
534582:  LDR.W           R0, [R5,#0x440]
534586:  LDR             R6, [R0,#0x14]
534588:  CMP             R6, #0
53458A:  BEQ             loc_534618
53458C:  LDR             R0, [R6]
53458E:  LDR             R1, [R0,#0x14]
534590:  MOV             R0, R6
534592:  BLX             R1
534594:  CMP.W           R0, #0x390
534598:  BNE             loc_534618
53459A:  LDR             R0, [R6]
53459C:  LDR             R1, [R0,#0x34]
53459E:  MOV             R0, R6
5345A0:  BLX             R1
5345A2:  CBNZ            R0, loc_534618
5345A4:  LDR             R0, [R5,#0x14]
5345A6:  CMP             R0, #0
5345A8:  BEQ.W           loc_5346EA
5345AC:  VLDR            S2, [R0,#0x10]
5345B0:  VLDR            S0, [R0,#0x14]
5345B4:  VNEG.F32        S2, S2
5345B8:  B               loc_534702
5345BA:  LDR             R1, [R4,#0x38]; unsigned int
5345BC:  LDR             R0, [R5,#0x14]
5345BE:  VLDR            S1, =0.99
5345C2:  LDR             R2, [R1,#0x14]
5345C4:  ADD.W           R3, R0, #0x30 ; '0'
5345C8:  CMP             R0, #0
5345CA:  IT EQ
5345CC:  ADDEQ           R3, R5, #4
5345CE:  ADD.W           R6, R2, #0x30 ; '0'
5345D2:  CMP             R2, #0
5345D4:  VLDR            S0, [R3]
5345D8:  VLDR            S2, [R3,#4]
5345DC:  IT EQ
5345DE:  ADDEQ           R6, R1, #4
5345E0:  VLDR            S4, [R6]
5345E4:  VLDR            S6, [R6,#4]
5345E8:  VSUB.F32        S10, S0, S4
5345EC:  VSUB.F32        S8, S2, S6
5345F0:  VMUL.F32        S14, S10, S10
5345F4:  VMUL.F32        S12, S8, S8
5345F8:  VADD.F32        S14, S14, S12
5345FC:  VSQRT.F32       S12, S14
534600:  VCMPE.F32       S12, S1
534604:  VMRS            APSR_nzcv, FPSCR
534608:  BLE             loc_534636
53460A:  VLDR            S1, =1.01
53460E:  VCMPE.F32       S12, S1
534612:  VMRS            APSR_nzcv, FPSCR
534616:  BGE             loc_534636
534618:  MOVS            R0, #6
53461A:  STRB.W          R0, [R4,#0x59]
53461E:  MOVS            R0, #dword_20; this
534620:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
534624:  MOV.W           R1, #0x41000000
534628:  MOVS            R2, #0; bool
53462A:  STR             R1, [SP,#0x20+var_20]; float
53462C:  MOVS            R1, #0x32 ; '2'; int
53462E:  MOVS            R3, #0; bool
534630:  BLX             j__ZN21CTaskSimpleStandStillC2Eibbf; CTaskSimpleStandStill::CTaskSimpleStandStill(int,bool,bool,float)
534634:  B               loc_53438E
534636:  VCMPE.F32       S14, #0.0
53463A:  VMRS            APSR_nzcv, FPSCR
53463E:  BLE             loc_534652
534640:  VMOV.F32        S14, #1.0
534644:  VDIV.F32        S12, S14, S12
534648:  VMUL.F32        S8, S8, S12
53464C:  VMUL.F32        S10, S10, S12
534650:  B               loc_534656
534652:  VMOV.F32        S10, #1.0
534656:  VADD.F32        S6, S6, S8
53465A:  VADD.F32        S4, S4, S10
53465E:  VSUB.F32        S2, S6, S2
534662:  VSUB.F32        S0, S4, S0
534666:  VMUL.F32        S4, S2, S2
53466A:  VMUL.F32        S6, S0, S0
53466E:  VADD.F32        S8, S6, S4
534672:  VLDR            S4, =0.02
534676:  VSQRT.F32       S6, S8
53467A:  VCMPE.F32       S6, S4
53467E:  VMRS            APSR_nzcv, FPSCR
534682:  BLE             loc_5346B0
534684:  VCMPE.F32       S8, #0.0
534688:  VMRS            APSR_nzcv, FPSCR
53468C:  BLE             loc_5346A8
53468E:  VMOV.F32        S8, #1.0
534692:  VDIV.F32        S6, S8, S6
534696:  VMUL.F32        S0, S0, S6
53469A:  VLDR            S8, =0.02
53469E:  VMUL.F32        S2, S2, S6
5346A2:  VMUL.F32        S0, S0, S8
5346A6:  B               loc_5346AC
5346A8:  VMOV.F32        S0, S4
5346AC:  VMUL.F32        S2, S2, S4
5346B0:  VLDR            S8, [R0,#0x10]
5346B4:  VLDR            S10, [R0,#0x14]
5346B8:  VLDR            S4, [R0]
5346BC:  VMUL.F32        S8, S0, S8
5346C0:  VLDR            S6, [R0,#4]
5346C4:  VMUL.F32        S10, S2, S10
5346C8:  VMUL.F32        S0, S0, S4
5346CC:  ADD.W           R0, R5, #0x4E8
5346D0:  VMUL.F32        S2, S2, S6
5346D4:  VADD.F32        S4, S8, S10
5346D8:  VADD.F32        S0, S0, S2
5346DC:  VSTR            S4, [R0]
5346E0:  ADDW            R0, R5, #0x4E4
5346E4:  VSTR            S0, [R0]
5346E8:  B               loc_53461E
5346EA:  LDR             R6, [R5,#0x10]
5346EC:  MOV             R0, R6; x
5346EE:  BLX             sinf
5346F2:  MOV             R8, R0
5346F4:  MOV             R0, R6; x
5346F6:  BLX             cosf
5346FA:  VMOV            S0, R0
5346FE:  VMOV            S2, R8
534702:  VMOV            R1, S0
534706:  VMOV            R0, S2; this
53470A:  EOR.W           R1, R1, #0x80000000; float
53470E:  BLX             j__ZN8CGeneral24GetNodeHeadingFromVectorEff; CGeneral::GetNodeHeadingFromVector(float,float)
534712:  MOV             R8, R0
534714:  MOVS            R0, #dword_38; this
534716:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
53471A:  MOV             R6, R0
53471C:  LDR             R0, =(_ZN18CTaskComplexWander16ms_fTargetRadiusE_ptr - 0x534728)
53471E:  UXTB.W          R2, R8; unsigned __int8
534722:  MOVS            R1, #4; int
534724:  ADD             R0, PC; _ZN18CTaskComplexWander16ms_fTargetRadiusE_ptr
534726:  MOVS            R3, #1; bool
534728:  LDR             R0, [R0]; CTaskComplexWander::ms_fTargetRadius ...
53472A:  VLDR            S0, [R0]
53472E:  MOV             R0, R6; this
534730:  VSTR            S0, [SP,#0x20+var_20]
534734:  BLX             j__ZN18CTaskComplexWanderC2Eihbf; CTaskComplexWander::CTaskComplexWander(int,uchar,bool,float)
534738:  LDR             R0, =(_ZN26CTaskComplexWanderStandard16ms_iScanFreeTimeE_ptr - 0x534744)
53473A:  MOVS            R3, #0
53473C:  LDR             R1, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x534746)
53473E:  LDR             R2, =(_ZTV26CTaskComplexWanderStandard_ptr - 0x53474A)
534740:  ADD             R0, PC; _ZN26CTaskComplexWanderStandard16ms_iScanFreeTimeE_ptr
534742:  ADD             R1, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
534744:  STRH            R3, [R6,#0x30]
534746:  ADD             R2, PC; _ZTV26CTaskComplexWanderStandard_ptr
534748:  LDR             R0, [R0]; CTaskComplexWanderStandard::ms_iScanFreeTime ...
53474A:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds ...
53474C:  LDR             R2, [R2]; `vtable for'CTaskComplexWanderStandard ...
53474E:  STR             R3, [R6,#0x34]
534750:  STRD.W          R3, R3, [R6,#0x28]
534754:  ADDS            R2, #8
534756:  STR             R2, [R6]
534758:  LDR             R0, [R0]; CTaskComplexWanderStandard::ms_iScanFreeTime
53475A:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds
53475C:  ADD             R1, R0; int
53475E:  MOV             R0, R6; this
534760:  BLX             j__ZN26CTaskComplexWanderStandard15SetNextScanTimeEi; CTaskComplexWanderStandard::SetNextScanTime(int)
534764:  LDR.W           R0, [R5,#0x440]
534768:  MOV             R1, R6; CTask *
53476A:  MOVS            R2, #4; int
53476C:  MOVS            R3, #0; bool
53476E:  ADDS            R0, #4; this
534770:  BLX             j__ZN12CTaskManager7SetTaskEP5CTaskib; CTaskManager::SetTask(CTask *,int,bool)
534774:  B               loc_534618
