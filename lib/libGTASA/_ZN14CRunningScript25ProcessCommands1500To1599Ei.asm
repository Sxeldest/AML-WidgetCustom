; =========================================================
; Game Engine Function: _ZN14CRunningScript25ProcessCommands1500To1599Ei
; Address            : 0x3553EC - 0x357242
; =========================================================

3553EC:  PUSH            {R4-R7,LR}
3553EE:  ADD             R7, SP, #0xC
3553F0:  PUSH.W          {R8-R11}
3553F4:  SUB             SP, SP, #4
3553F6:  VPUSH           {D8-D9}
3553FA:  SUB             SP, SP, #0x198; float
3553FC:  MOV             R4, R0
3553FE:  LDR.W           R0, =(__stack_chk_guard_ptr - 0x355406)
355402:  ADD             R0, PC; __stack_chk_guard_ptr
355404:  LDR             R0, [R0]; __stack_chk_guard
355406:  LDR             R0, [R0]
355408:  STR             R0, [SP,#0x1C8+var_34]
35540A:  SUBW            R0, R1, #0x5DC; switch 94 cases
35540E:  CMP             R0, #0x5D ; ']'
355410:  BHI.W           def_355416; jumptable 00355416 default case
355414:  MOVS            R5, #0
355416:  TBH.W           [PC,R0,LSL#1]; switch jump
35541A:  DCW 0x66; jump table for switch statement
35541C:  DCW 0x88
35541E:  DCW 0xAE
355420:  DCW 0xE59
355422:  DCW 0xE59
355424:  DCW 0xE59
355426:  DCW 0xF1
355428:  DCW 0xE59
35542A:  DCW 0xE59
35542C:  DCW 0xE59
35542E:  DCW 0xE59
355430:  DCW 0xE59
355432:  DCW 0xE59
355434:  DCW 0x112
355436:  DCW 0xE59
355438:  DCW 0x116
35543A:  DCW 0x135
35543C:  DCW 0x158
35543E:  DCW 0x177
355440:  DCW 0xE59
355442:  DCW 0xE59
355444:  DCW 0x196
355446:  DCW 0x1B5
355448:  DCW 0x1D4
35544A:  DCW 0x1F3
35544C:  DCW 0x212
35544E:  DCW 0x5E
355450:  DCW 0x5E
355452:  DCW 0x5E
355454:  DCW 0x5E
355456:  DCW 0x5E
355458:  DCW 0x5E
35545A:  DCW 0x5E
35545C:  DCW 0x5E
35545E:  DCW 0x5E
355460:  DCW 0x5E
355462:  DCW 0x5E
355464:  DCW 0x5E
355466:  DCW 0x230
355468:  DCW 0x25A
35546A:  DCW 0x283
35546C:  DCW 0x2B3
35546E:  DCW 0x2C5
355470:  DCW 0x2ED
355472:  DCW 0xE59
355474:  DCW 0xE59
355476:  DCW 0x2F5
355478:  DCW 0x32B
35547A:  DCW 0xE59
35547C:  DCW 0x34A
35547E:  DCW 0x377
355480:  DCW 0x396
355482:  DCW 0xE59
355484:  DCW 0x3BA
355486:  DCW 0x3D9
355488:  DCW 0x3F8
35548A:  DCW 0x417
35548C:  DCW 0x436
35548E:  DCW 0x46B
355490:  DCW 0xE59
355492:  DCW 0x489
355494:  DCW 0x4A8
355496:  DCW 0x4C7
355498:  DCW 0x4E6
35549A:  DCW 0xE59
35549C:  DCW 0x50C
35549E:  DCW 0x5A8
3554A0:  DCW 0xE59
3554A2:  DCW 0xE59
3554A4:  DCW 0x5C9
3554A6:  DCW 0x5F6
3554A8:  DCW 0x617
3554AA:  DCW 0x628
3554AC:  DCW 0x634
3554AE:  DCW 0x64C
3554B0:  DCW 0x65F
3554B2:  DCW 0x670
3554B4:  DCW 0x67C
3554B6:  DCW 0x694
3554B8:  DCW 0xE59
3554BA:  DCW 0xE59
3554BC:  DCW 0xE59; int
3554BE:  DCW 0x6A6
3554C0:  DCW 0x6C2
3554C2:  DCW 0x705
3554C4:  DCW 0x72A
3554C6:  DCW 0x81D
3554C8:  DCW 0x853
3554CA:  DCW 0x878
3554CC:  DCW 0x897
3554CE:  DCW 0x8B7
3554D0:  DCW 0x8BD
3554D2:  DCW 0x8E2
3554D4:  DCW 0x903
3554D6:  MOV             R0, R4; jumptable 00355416 cases 1526-1537
3554D8:  BLX             j__ZN14CRunningScript28CharInAngledAreaCheckCommandEi; CRunningScript::CharInAngledAreaCheckCommand(int)
3554DC:  B.W             loc_3570CA
3554E0:  MOVS            R5, #0xFF; jumptable 00355416 default case
3554E2:  B.W             loc_3570CC; jumptable 00355416 cases 1503-1505,1507-1512,1514,1519,1520,1544,1545,1548,1552,1559,1564,1567,1568,1579-1581
3554E6:  MOV             R0, R4; jumptable 00355416 case 1500
3554E8:  MOVS            R1, #6; __int16
3554EA:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
3554EE:  LDR.W           R0, =(ScriptParams_ptr - 0x3554F6)
3554F2:  ADD             R0, PC; ScriptParams_ptr
3554F4:  LDR             R0, [R0]; ScriptParams
3554F6:  ADD.W           R9, R0, #8
3554FA:  LDRD.W          R8, R1, [R0]; unsigned int
3554FE:  LDM.W           R9, {R2,R3,R9}
355502:  LDR             R6, [R0,#(dword_81A91C - 0x81A908)]
355504:  ADD             R0, SP, #0x1C8+var_138
355506:  STM             R0!, {R1-R3}
355508:  MOVS            R0, #dword_44; this
35550A:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
35550E:  ADD             R1, SP, #0x1C8+var_138; CVector *
355510:  MOVS            R2, #1; bool
355512:  MOV             R3, R9; float
355514:  MOV             R5, R0
355516:  STR             R6, [SP,#0x1C8+var_1C8]; int
355518:  BLX             j__ZN26CTaskComplexSmartFleePointC2ERK7CVectorbfi; CTaskComplexSmartFleePoint::CTaskComplexSmartFleePoint(CVector const&,bool,float,int)
35551C:  MOV             R0, R4
35551E:  MOV             R1, R8
355520:  MOV             R2, R5
355522:  MOVW            R3, #0x5DC
355526:  B.W             loc_356DD0
35552A:  MOV             R0, R4; jumptable 00355416 case 1501
35552C:  MOVS            R1, #4; __int16
35552E:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
355532:  LDR.W           R0, =(ScriptParams_ptr - 0x35553A)
355536:  ADD             R0, PC; ScriptParams_ptr
355538:  LDR             R0, [R0]; ScriptParams
35553A:  VLDR            S0, [R0,#8]
35553E:  VCVT.F32.S32    S16, S0
355542:  LDR.W           R9, [R0,#(dword_81A914 - 0x81A908)]
355546:  LDRD.W          R8, R0, [R0]
35554A:  CMP             R0, #0
35554C:  BLT.W           loc_356662
355550:  LDR.W           R1, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x35555C)
355554:  UXTB            R3, R0
355556:  LSRS            R0, R0, #8
355558:  ADD             R1, PC; _ZN6CPools11ms_pPedPoolE_ptr
35555A:  LDR             R1, [R1]; CPools::ms_pPedPool ...
35555C:  LDR             R1, [R1]; CPools::ms_pPedPool
35555E:  LDR             R2, [R1,#4]
355560:  LDRB            R2, [R2,R0]
355562:  CMP             R2, R3
355564:  BNE.W           loc_356662
355568:  MOVW            R2, #0x7CC
35556C:  LDR             R1, [R1]
35556E:  MLA.W           R6, R0, R2, R1
355572:  B.W             loc_356664
355576:  MOV             R0, R4; jumptable 00355416 case 1502
355578:  MOVS            R1, #1; __int16
35557A:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
35557E:  LDR.W           R0, =(ScriptParams_ptr - 0x355586)
355582:  ADD             R0, PC; ScriptParams_ptr
355584:  LDR             R0, [R0]; ScriptParams
355586:  LDR.W           R8, [R0]
35558A:  MOVS            R0, #dword_38; this
35558C:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
355590:  MOV             R6, R0
355592:  BLX             rand
355596:  UXTH            R0, R0
355598:  VLDR            S2, =0.000015259
35559C:  VMOV            S0, R0
3555A0:  LDR.W           R0, =(_ZN18CTaskComplexWander16ms_fTargetRadiusE_ptr - 0x3555B2)
3555A4:  VMOV.F32        S4, #8.0
3555A8:  MOVS            R1, #4; int
3555AA:  VCVT.F32.S32    S0, S0
3555AE:  ADD             R0, PC; _ZN18CTaskComplexWander16ms_fTargetRadiusE_ptr
3555B0:  MOVS            R3, #1; bool
3555B2:  LDR             R0, [R0]; CTaskComplexWander::ms_fTargetRadius ...
3555B4:  VMUL.F32        S0, S0, S2
3555B8:  VLDR            S2, [R0]
3555BC:  VMUL.F32        S0, S0, S4
3555C0:  VCVT.S32.F32    S0, S0
3555C4:  VSTR            S2, [SP,#0x1C8+var_1C8]
3555C8:  VMOV            R0, S0
3555CC:  UXTB            R2, R0; unsigned __int8
3555CE:  MOV             R0, R6; this
3555D0:  BLX             j__ZN18CTaskComplexWanderC2Eihbf; CTaskComplexWander::CTaskComplexWander(int,uchar,bool,float)
3555D4:  LDR.W           R0, =(_ZTV26CTaskComplexWanderStandard_ptr - 0x3555E2)
3555D8:  MOVS            R5, #0
3555DA:  STRH            R5, [R6,#0x30]
3555DC:  MOV             R1, R8; int
3555DE:  ADD             R0, PC; _ZTV26CTaskComplexWanderStandard_ptr
3555E0:  STR             R5, [R6,#0x34]
3555E2:  STRD.W          R5, R5, [R6,#0x28]
3555E6:  MOV             R2, R6; CTask *
3555E8:  LDR             R0, [R0]; `vtable for'CTaskComplexWanderStandard ...
3555EA:  MOVW            R3, #0x5DE; int
3555EE:  ADDS            R0, #8
3555F0:  STR             R0, [R6]
3555F2:  MOV             R0, R4; this
3555F4:  BLX             j__ZN14CRunningScript19GivePedScriptedTaskEiP5CTaski; CRunningScript::GivePedScriptedTask(int,CTask *,int)
3555F8:  B.W             loc_3570CC; jumptable 00355416 cases 1503-1505,1507-1512,1514,1519,1520,1544,1545,1548,1552,1559,1564,1567,1568,1579-1581
3555FC:  MOV             R0, R4; jumptable 00355416 case 1506
3555FE:  MOVS            R1, #2; __int16
355600:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
355604:  LDR.W           R0, =(ScriptParams_ptr - 0x35560E)
355608:  MOVS            R5, #0
35560A:  ADD             R0, PC; ScriptParams_ptr
35560C:  LDR             R0, [R0]; ScriptParams
35560E:  LDRD.W          R8, R0, [R0]
355612:  CMP             R0, #0
355614:  BLT.W           loc_3566A4
355618:  LDR.W           R1, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x355624)
35561C:  UXTB            R3, R0
35561E:  LSRS            R0, R0, #8
355620:  ADD             R1, PC; _ZN6CPools11ms_pPedPoolE_ptr
355622:  LDR             R1, [R1]; CPools::ms_pPedPool ...
355624:  LDR             R1, [R1]; CPools::ms_pPedPool
355626:  LDR             R2, [R1,#4]
355628:  LDRB            R2, [R2,R0]
35562A:  CMP             R2, R3
35562C:  BNE.W           loc_3566A4
355630:  MOVW            R2, #0x7CC
355634:  LDR             R1, [R1]
355636:  MLA.W           R9, R0, R2, R1
35563A:  B.W             loc_3566A8
35563E:  MOV             R0, R4; jumptable 00355416 case 1513
355640:  MOVS            R1, #2
355642:  B.W             loc_35658C
355646:  MOV             R0, R4; jumptable 00355416 case 1515
355648:  MOVS            R1, #2; __int16
35564A:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
35564E:  LDR.W           R0, =(ScriptParams_ptr - 0x355656)
355652:  ADD             R0, PC; ScriptParams_ptr
355654:  LDR             R0, [R0]; ScriptParams
355656:  LDR             R1, [R0]
355658:  CMP             R1, #0
35565A:  BLT.W           loc_3566D8
35565E:  LDR.W           R0, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x35566A)
355662:  UXTB            R3, R1
355664:  LSRS            R1, R1, #8
355666:  ADD             R0, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
355668:  LDR             R0, [R0]; CPools::ms_pVehiclePool ...
35566A:  LDR             R0, [R0]; CPools::ms_pVehiclePool
35566C:  LDR             R2, [R0,#4]
35566E:  LDRB            R2, [R2,R1]
355670:  CMP             R2, R3
355672:  BNE.W           loc_3566D8
355676:  MOVW            R2, #0xA2C
35567A:  LDR             R0, [R0]
35567C:  MLA.W           R0, R1, R2, R0
355680:  B.W             loc_3566DA
355684:  MOV             R0, R4; jumptable 00355416 case 1516
355686:  MOVS            R1, #1; __int16
355688:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
35568C:  LDR.W           R0, =(ScriptParams_ptr - 0x355694)
355690:  ADD             R0, PC; ScriptParams_ptr
355692:  LDR             R0, [R0]; ScriptParams
355694:  LDR             R1, [R0]
355696:  CMP             R1, #0
355698:  BLT.W           loc_3570CA
35569C:  LDR.W           R0, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x3556A8)
3556A0:  UXTB            R3, R1
3556A2:  LSRS            R1, R1, #8; CVehicle *
3556A4:  ADD             R0, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
3556A6:  LDR             R0, [R0]; CPools::ms_pVehiclePool ...
3556A8:  LDR             R0, [R0]; CPools::ms_pVehiclePool
3556AA:  LDR             R2, [R0,#4]
3556AC:  LDRB            R2, [R2,R1]
3556AE:  CMP             R2, R3
3556B0:  BNE.W           loc_3570CA
3556B4:  MOVW            R2, #0xA2C
3556B8:  LDR             R0, [R0]
3556BA:  MLA.W           R0, R1, R2, R0; this
3556BE:  CMP             R0, #0
3556C0:  IT NE
3556C2:  BLXNE           j__ZN17CVehicleRecording23StopPlaybackRecordedCarEP8CVehicle; CVehicleRecording::StopPlaybackRecordedCar(CVehicle *)
3556C6:  B.W             loc_3570CA
3556CA:  MOV             R0, R4; jumptable 00355416 case 1517
3556CC:  MOVS            R1, #1; __int16
3556CE:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
3556D2:  LDR.W           R0, =(ScriptParams_ptr - 0x3556DA)
3556D6:  ADD             R0, PC; ScriptParams_ptr
3556D8:  LDR             R0, [R0]; ScriptParams
3556DA:  LDR             R1, [R0]; CVehicle *
3556DC:  CMP             R1, #0
3556DE:  BLT.W           loc_3566F2
3556E2:  LDR.W           R0, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x3556EE)
3556E6:  UXTB            R3, R1
3556E8:  LSRS            R1, R1, #8
3556EA:  ADD             R0, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
3556EC:  LDR             R0, [R0]; CPools::ms_pVehiclePool ...
3556EE:  LDR             R0, [R0]; CPools::ms_pVehiclePool
3556F0:  LDR             R2, [R0,#4]
3556F2:  LDRB            R2, [R2,R1]
3556F4:  CMP             R2, R3
3556F6:  BNE.W           loc_3566F2
3556FA:  MOVW            R2, #0xA2C
3556FE:  LDR             R0, [R0]
355700:  MLA.W           R0, R1, R2, R0
355704:  B.W             loc_3566F4
355708:  MOV             R0, R4; jumptable 00355416 case 1518
35570A:  MOVS            R1, #1; __int16
35570C:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
355710:  LDR.W           R0, =(ScriptParams_ptr - 0x355718)
355714:  ADD             R0, PC; ScriptParams_ptr
355716:  LDR             R0, [R0]; ScriptParams
355718:  LDR             R1, [R0]; CVehicle *
35571A:  CMP             R1, #0
35571C:  BLT.W           loc_3566FC
355720:  LDR.W           R0, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x35572C)
355724:  UXTB            R3, R1
355726:  LSRS            R1, R1, #8
355728:  ADD             R0, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
35572A:  LDR             R0, [R0]; CPools::ms_pVehiclePool ...
35572C:  LDR             R0, [R0]; CPools::ms_pVehiclePool
35572E:  LDR             R2, [R0,#4]
355730:  LDRB            R2, [R2,R1]
355732:  CMP             R2, R3
355734:  BNE.W           loc_3566FC
355738:  MOVW            R2, #0xA2C
35573C:  LDR             R0, [R0]
35573E:  MLA.W           R0, R1, R2, R0
355742:  B.W             loc_3566FE
355746:  MOV             R0, R4; jumptable 00355416 case 1521
355748:  MOVS            R1, #2; __int16
35574A:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
35574E:  LDR.W           R0, =(ScriptParams_ptr - 0x35575A)
355752:  LDR.W           R1, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x35575C)
355756:  ADD             R0, PC; ScriptParams_ptr
355758:  ADD             R1, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
35575A:  LDR             R0, [R0]; ScriptParams
35575C:  LDR             R2, [R1]; CPools::ms_pVehiclePool ...
35575E:  LDR             R1, [R0]
355760:  LDR             R0, [R2]; CPools::ms_pVehiclePool
355762:  CMP             R1, #0
355764:  BLT.W           loc_356706
355768:  LDR             R2, [R0,#4]
35576A:  UXTB            R3, R1
35576C:  LSRS            R1, R1, #8
35576E:  LDRB            R2, [R2,R1]
355770:  CMP             R2, R3
355772:  BNE.W           loc_356706
355776:  MOVW            R2, #0xA2C
35577A:  LDR             R3, [R0]
35577C:  MLA.W           R4, R1, R2, R3
355780:  B.W             loc_356708
355784:  MOV             R0, R4; jumptable 00355416 case 1522
355786:  MOVS            R1, #2; __int16
355788:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
35578C:  LDR.W           R0, =(ScriptParams_ptr - 0x355798)
355790:  LDR.W           R1, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x35579A)
355794:  ADD             R0, PC; ScriptParams_ptr
355796:  ADD             R1, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
355798:  LDR             R0, [R0]; ScriptParams
35579A:  LDR             R2, [R1]; CPools::ms_pVehiclePool ...
35579C:  LDR             R1, [R0]
35579E:  LDR             R0, [R2]; CPools::ms_pVehiclePool
3557A0:  CMP             R1, #0
3557A2:  BLT.W           loc_356732
3557A6:  LDR             R2, [R0,#4]
3557A8:  UXTB            R3, R1
3557AA:  LSRS            R1, R1, #8
3557AC:  LDRB            R2, [R2,R1]
3557AE:  CMP             R2, R3
3557B0:  BNE.W           loc_356732
3557B4:  MOVW            R2, #0xA2C
3557B8:  LDR             R3, [R0]
3557BA:  MLA.W           R4, R1, R2, R3
3557BE:  B.W             loc_356734
3557C2:  MOV             R0, R4; jumptable 00355416 case 1523
3557C4:  MOVS            R1, #2; __int16
3557C6:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
3557CA:  LDR.W           R0, =(ScriptParams_ptr - 0x3557D6)
3557CE:  LDR.W           R1, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x3557D8)
3557D2:  ADD             R0, PC; ScriptParams_ptr
3557D4:  ADD             R1, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
3557D6:  LDR             R0, [R0]; ScriptParams
3557D8:  LDR             R2, [R1]; CPools::ms_pVehiclePool ...
3557DA:  LDR             R1, [R0]
3557DC:  LDR             R0, [R2]; CPools::ms_pVehiclePool
3557DE:  CMP             R1, #0
3557E0:  BLT.W           loc_35675E
3557E4:  LDR             R2, [R0,#4]
3557E6:  UXTB            R3, R1
3557E8:  LSRS            R1, R1, #8
3557EA:  LDRB            R2, [R2,R1]
3557EC:  CMP             R2, R3
3557EE:  BNE.W           loc_35675E
3557F2:  MOVW            R2, #0xA2C
3557F6:  LDR             R3, [R0]
3557F8:  MLA.W           R4, R1, R2, R3
3557FC:  B.W             loc_356760
355800:  MOV             R0, R4; jumptable 00355416 case 1524
355802:  MOVS            R1, #2; __int16
355804:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
355808:  LDR.W           R0, =(ScriptParams_ptr - 0x355814)
35580C:  LDR.W           R1, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x355816)
355810:  ADD             R0, PC; ScriptParams_ptr
355812:  ADD             R1, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
355814:  LDR             R0, [R0]; ScriptParams
355816:  LDR             R2, [R1]; CPools::ms_pVehiclePool ...
355818:  LDR             R1, [R0]
35581A:  LDR             R0, [R2]; CPools::ms_pVehiclePool
35581C:  CMP             R1, #0
35581E:  BLT.W           loc_35678A
355822:  LDR             R2, [R0,#4]
355824:  UXTB            R3, R1
355826:  LSRS            R1, R1, #8
355828:  LDRB            R2, [R2,R1]
35582A:  CMP             R2, R3
35582C:  BNE.W           loc_35678A
355830:  MOVW            R2, #0xA2C
355834:  LDR             R3, [R0]
355836:  MLA.W           R4, R1, R2, R3
35583A:  B.W             loc_35678C
35583E:  MOV             R0, R4; jumptable 00355416 case 1525
355840:  MOVS            R1, #6; __int16
355842:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
355846:  LDR.W           R0, =(ScriptParams_ptr - 0x35584E)
35584A:  ADD             R0, PC; ScriptParams_ptr
35584C:  LDR             R0, [R0]; ScriptParams
35584E:  ADD.W           R9, R0, #8
355852:  LDRD.W          R8, R1, [R0]; unsigned int
355856:  LDM.W           R9, {R2,R3,R9}
35585A:  LDR             R6, [R0,#(dword_81A91C - 0x81A908)]
35585C:  ADD             R0, SP, #0x1C8+var_138
35585E:  STM             R0!, {R1-R3}
355860:  ADDS            R0, R6, #2
355862:  BEQ.W           loc_356D7E
355866:  ADDS            R0, R6, #1
355868:  BNE.W           loc_356D82
35586C:  LDR.W           R0, =(_ZN27CTaskComplexFollowNodeRoute15ms_iDefaultTimeE_ptr - 0x355874)
355870:  ADD             R0, PC; _ZN27CTaskComplexFollowNodeRoute15ms_iDefaultTimeE_ptr
355872:  LDR             R0, [R0]; CTaskComplexFollowNodeRoute::ms_iDefaultTime ...
355874:  LDR             R6, [R0]; CTaskComplexFollowNodeRoute::ms_iDefaultTime
355876:  B.W             loc_356D82
35587A:  MOV             R0, R4; jumptable 00355416 case 1538
35587C:  MOVS            R1, #1; __int16
35587E:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
355882:  LDR.W           R0, =(ScriptParams_ptr - 0x355892)
355886:  MOVW            R2, #0x7CC
35588A:  LDR.W           R1, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x355894)
35588E:  ADD             R0, PC; ScriptParams_ptr
355890:  ADD             R1, PC; _ZN6CPools11ms_pPedPoolE_ptr
355892:  LDR             R0, [R0]; ScriptParams
355894:  LDR             R1, [R1]; CPools::ms_pPedPool ...
355896:  LDR             R0, [R0]
355898:  LDR             R1, [R1]; CPools::ms_pPedPool
35589A:  LSRS            R0, R0, #8
35589C:  LDR             R1, [R1]
35589E:  MLA.W           R0, R0, R2, R1
3558A2:  LDRB.W          R1, [R0,#0x485]
3558A6:  LSLS            R1, R1, #0x1F
3558A8:  BEQ.W           loc_35665E
3558AC:  LDR.W           R0, [R0,#0x590]
3558B0:  CMP             R0, #0
3558B2:  BEQ.W           loc_35665E
3558B6:  LDRSH.W         R0, [R0,#0x26]
3558BA:  CMP.W           R0, #0x1B6
3558BE:  IT NE
3558C0:  CMPNE.W         R0, #0x1A4
3558C4:  BNE.W           loc_35665E
3558C8:  MOVS            R1, #1
3558CA:  B.W             loc_35683A
3558CE:  MOV             R0, R4; jumptable 00355416 case 1539
3558D0:  MOVS            R1, #6; __int16
3558D2:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
3558D6:  LDR.W           R0, =(ScriptParams_ptr - 0x3558E2)
3558DA:  ADD.W           R12, SP, #0x1C8+var_138
3558DE:  ADD             R0, PC; ScriptParams_ptr
3558E0:  LDR             R0, [R0]; ScriptParams
3558E2:  ADD.W           R9, R0, #8
3558E6:  LDRD.W          R8, R1, [R0]; unsigned int
3558EA:  LDM.W           R9, {R2,R3,R9}
3558EE:  LDR             R0, [R0,#(dword_81A91C - 0x81A908)]
3558F0:  STM.W           R12, {R1-R3}
3558F4:  CMP             R0, #0
3558F6:  BLT.W           loc_3567B6
3558FA:  LDR.W           R1, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x355906)
3558FE:  UXTB            R3, R0
355900:  LSRS            R0, R0, #8
355902:  ADD             R1, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
355904:  LDR             R1, [R1]; CPools::ms_pVehiclePool ...
355906:  LDR             R1, [R1]; CPools::ms_pVehiclePool
355908:  LDR             R2, [R1,#4]
35590A:  LDRB            R2, [R2,R0]
35590C:  CMP             R2, R3
35590E:  BNE.W           loc_3567B6
355912:  MOVW            R2, #0xA2C
355916:  LDR             R1, [R1]
355918:  MLA.W           R5, R0, R2, R1
35591C:  B.W             loc_3567B8
355920:  MOV             R0, R4; jumptable 00355416 case 1540
355922:  MOVS            R1, #2; __int16
355924:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
355928:  LDR.W           R0, =(ScriptParams_ptr - 0x355930)
35592C:  ADD             R0, PC; ScriptParams_ptr
35592E:  LDR             R1, [R0]; ScriptParams
355930:  LDRD.W          R0, R1, [R1]; float
355934:  BLX             j__ZN8CGeneral11GetATanOfXYEff; CGeneral::GetATanOfXY(float,float)
355938:  VLDR            S0, =180.0
35593C:  VMOV            S2, R0
355940:  VMUL.F32        S0, S2, S0
355944:  VLDR            S2, =3.1416
355948:  VDIV.F32        S0, S0, S2
35594C:  VLDR            S2, =-90.0
355950:  VADD.F32        S0, S0, S2
355954:  VCMPE.F32       S0, #0.0
355958:  VMRS            APSR_nzcv, FPSCR
35595C:  BGE             loc_355970
35595E:  VLDR            S2, =360.0
355962:  VADD.F32        S0, S0, S2
355966:  VCMPE.F32       S0, #0.0
35596A:  VMRS            APSR_nzcv, FPSCR
35596E:  BLT             loc_355962
355970:  LDR.W           R0, =(ScriptParams_ptr - 0x355978)
355974:  ADD             R0, PC; ScriptParams_ptr
355976:  LDR             R0, [R0]; ScriptParams
355978:  VSTR            S0, [R0]
35597C:  B.W             loc_3570C2
355980:  MOV             R0, R4; jumptable 00355416 case 1541
355982:  MOVW            R1, #0x605; int
355986:  BLX             j__ZN14CRunningScript21PlayAnimScriptCommandEi; CRunningScript::PlayAnimScriptCommand(int)
35598A:  B.W             loc_3570CA
35598E:  ALIGN 0x10
355990:  DCFS 0.000015259
355994:  DCFS 180.0
355998:  DCFS 3.1416
35599C:  DCFS -90.0
3559A0:  DCFS 360.0
3559A4:  MOV             R0, R4; jumptable 00355416 case 1542
3559A6:  MOVS            R1, #4; __int16
3559A8:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
3559AC:  LDR.W           R0, =(ScriptParams_ptr - 0x3559B4)
3559B0:  ADD             R0, PC; ScriptParams_ptr
3559B2:  LDR             R0, [R0]; ScriptParams
3559B4:  VLDR            S0, [R0]
3559B8:  VLDR            S4, [R0,#8]
3559BC:  VLDR            S2, [R0,#4]
3559C0:  VLDR            S6, [R0,#0xC]
3559C4:  VMIN.F32        D4, D0, D2
3559C8:  VMAX.F32        D0, D0, D2
3559CC:  LDR.W           R0, =(ThePaths_ptr - 0x3559D8)
3559D0:  VMIN.F32        D2, D1, D3
3559D4:  ADD             R0, PC; ThePaths_ptr
3559D6:  VMOV            R1, S8; float
3559DA:  LDR             R0, [R0]; ThePaths ; this
3559DC:  VMOV            R2, S0; float
3559E0:  VMOV            R3, S4; float
3559E4:  VMAX.F32        D0, D1, D3
3559E8:  VSTR            S0, [SP,#0x1C8+var_1C8]
3559EC:  BLX             j__ZN9CPathFind29MakeRequestForNodesToBeLoadedEffff; CPathFind::MakeRequestForNodesToBeLoaded(float,float,float,float)
3559F0:  B.W             loc_3570CA
3559F4:  LDR.W           R0, =(ThePaths_ptr - 0x3559FC); jumptable 00355416 case 1543
3559F8:  ADD             R0, PC; ThePaths_ptr
3559FA:  LDR             R0, [R0]; ThePaths ; this
3559FC:  BLX             j__ZN9CPathFind21ReleaseRequestedNodesEv; CPathFind::ReleaseRequestedNodes(void)
355A00:  B.W             loc_3570CA
355A04:  MOV             R0, R4; jumptable 00355416 case 1546
355A06:  MOVS            R1, #1; __int16
355A08:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
355A0C:  LDR.W           R0, =(ScriptParams_ptr - 0x355A16)
355A10:  ADD             R5, SP, #0x1C8+var_138
355A12:  ADD             R0, PC; ScriptParams_ptr
355A14:  MOV             R1, R5; int
355A16:  LDR             R6, [R0]; ScriptParams
355A18:  LDR             R0, [R6]; this
355A1A:  BLX             j__ZN29CDecisionMakerTypesFileLoader12GetPedDMNameEiPc; CDecisionMakerTypesFileLoader::GetPedDMName(int,char *)
355A1E:  MOV             R0, R4; this
355A20:  BLX             j__ZN14CRunningScript39CollectNextParameterWithoutIncreasingPCEv; CRunningScript::CollectNextParameterWithoutIncreasingPC(void)
355A24:  MOVS            R1, #7; int
355A26:  BLX             j__ZN11CTheScripts25GetActualScriptThingIndexEih; CTheScripts::GetActualScriptThingIndex(int,uchar)
355A2A:  LDRB.W          R2, [R4,#0xE6]; unsigned __int8
355A2E:  MOV             R0, R5; this
355A30:  MOVS            R1, #0; char *
355A32:  MOV.W           R3, #0xFFFFFFFF; unsigned __int8
355A36:  BLX             j__ZN29CDecisionMakerTypesFileLoader17LoadDecisionMakerEPKchhi; CDecisionMakerTypesFileLoader::LoadDecisionMaker(char const*,uchar,uchar,int)
355A3A:  MOVS            R1, #7; int
355A3C:  BLX             j__ZN11CTheScripts28GetNewUniqueScriptThingIndexEih; CTheScripts::GetNewUniqueScriptThingIndex(int,uchar)
355A40:  STR             R0, [R6]
355A42:  MOV             R0, R4; this
355A44:  MOVS            R1, #1; __int16
355A46:  BLX             j__ZN14CRunningScript15StoreParametersEs; CRunningScript::StoreParameters(short)
355A4A:  LDRB.W          R0, [R4,#0xE6]
355A4E:  CMP             R0, #0
355A50:  BEQ.W           loc_3570CA
355A54:  LDR.W           R0, =(ScriptParams_ptr - 0x355A60)
355A58:  LDR.W           R1, =(_ZN11CTheScripts14MissionCleanUpE_ptr - 0x355A62)
355A5C:  ADD             R0, PC; ScriptParams_ptr
355A5E:  ADD             R1, PC; _ZN11CTheScripts14MissionCleanUpE_ptr
355A60:  LDR             R2, [R0]; ScriptParams
355A62:  LDR             R0, [R1]; this
355A64:  LDR             R1, [R2]; int
355A66:  MOVS            R2, #9; unsigned __int8
355A68:  BLX             j__ZN15CMissionCleanup15AddEntityToListEih; CMissionCleanup::AddEntityToList(int,uchar)
355A6C:  B.W             loc_3570CA
355A70:  MOV             R0, R4; jumptable 00355416 case 1547
355A72:  MOVS            R1, #2; __int16
355A74:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
355A78:  LDR.W           R0, =(ScriptParams_ptr - 0x355A80)
355A7C:  ADD             R0, PC; ScriptParams_ptr
355A7E:  LDR             R0, [R0]; ScriptParams
355A80:  LDR             R1, [R0]
355A82:  CMP             R1, #0
355A84:  BLT.W           loc_3567EE
355A88:  LDR.W           R0, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x355A94)
355A8C:  UXTB            R3, R1
355A8E:  LSRS            R1, R1, #8
355A90:  ADD             R0, PC; _ZN6CPools11ms_pPedPoolE_ptr
355A92:  LDR             R0, [R0]; CPools::ms_pPedPool ...
355A94:  LDR             R0, [R0]; CPools::ms_pPedPool
355A96:  LDR             R2, [R0,#4]
355A98:  LDRB            R2, [R2,R1]
355A9A:  CMP             R2, R3
355A9C:  BNE.W           loc_3567EE
355AA0:  MOVW            R2, #0x7CC
355AA4:  LDR             R0, [R0]
355AA6:  MLA.W           R4, R1, R2, R0
355AAA:  B.W             loc_3567F0
355AAE:  MOV             R0, R4; jumptable 00355416 case 1549
355AB0:  MOVS            R1, #5; __int16
355AB2:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
355AB6:  LDR.W           R0, =(ScriptParams_ptr - 0x355ABE)
355ABA:  ADD             R0, PC; ScriptParams_ptr
355ABC:  LDR             R4, [R0]; ScriptParams
355ABE:  LDRB            R0, [R4,#(dword_81A918 - 0x81A908)]
355AC0:  LDRB            R1, [R4,#(dword_81A90C - 0x81A908)]; unsigned __int8
355AC2:  LDRB            R2, [R4,#(dword_81A910 - 0x81A908)]; unsigned __int8
355AC4:  LDRB            R3, [R4,#(dword_81A914 - 0x81A908)]; unsigned __int8
355AC6:  STR             R0, [SP,#0x1C8+var_1C8]; unsigned __int8
355AC8:  ADD             R0, SP, #0x1C8+var_138; this
355ACA:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
355ACE:  LDR.W           R0, =(_ZN11CTheScripts31NumberOfIntroTextLinesThisFrameE_ptr - 0x355ADC)
355AD2:  MOVS            R5, #0
355AD4:  LDR.W           R6, =(_ZN11CTheScripts14IntroTextLinesE_ptr - 0x355AE2)
355AD8:  ADD             R0, PC; _ZN11CTheScripts31NumberOfIntroTextLinesThisFrameE_ptr
355ADA:  LDRB.W          R1, [SP,#0x1C8+var_138]
355ADE:  ADD             R6, PC; _ZN11CTheScripts14IntroTextLinesE_ptr
355AE0:  LDRB.W          R2, [SP,#0x1C8+var_138+3]
355AE4:  LDR             R0, [R0]; CTheScripts::NumberOfIntroTextLinesThisFrame ...
355AE6:  LDR             R6, [R6]; CTheScripts::IntroTextLines ...
355AE8:  LDRH.W          R3, [SP,#0x1C8+var_138+1]
355AEC:  LDRH            R0, [R0]; CTheScripts::NumberOfIntroTextLinesThisFrame
355AEE:  ADD.W           R0, R0, R0,LSL#4
355AF2:  ADD.W           R0, R6, R0,LSL#2
355AF6:  STRB.W          R2, [R0,#0x20]
355AFA:  STRH            R3, [R0,#0x1E]
355AFC:  STRB            R1, [R0,#0x1D]
355AFE:  LDR             R1, [R4]
355B00:  STRB.W          R1, [R0,#0x21]
355B04:  B.W             loc_3570CC; jumptable 00355416 cases 1503-1505,1507-1512,1514,1519,1520,1544,1545,1548,1552,1559,1564,1567,1568,1579-1581
355B08:  MOV             R0, R4; jumptable 00355416 case 1550
355B0A:  MOVS            R1, #1; __int16
355B0C:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
355B10:  LDR.W           R0, =(ScriptParams_ptr - 0x355B18)
355B14:  ADD             R0, PC; ScriptParams_ptr
355B16:  LDR             R0, [R0]; ScriptParams
355B18:  LDR             R1, [R0]; CVehicle *
355B1A:  CMP             R1, #0
355B1C:  BLT.W           loc_356812
355B20:  LDR.W           R0, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x355B2C)
355B24:  UXTB            R3, R1
355B26:  LSRS            R1, R1, #8
355B28:  ADD             R0, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
355B2A:  LDR             R0, [R0]; CPools::ms_pVehiclePool ...
355B2C:  LDR             R0, [R0]; CPools::ms_pVehiclePool
355B2E:  LDR             R2, [R0,#4]
355B30:  LDRB            R2, [R2,R1]
355B32:  CMP             R2, R3
355B34:  BNE.W           loc_356812
355B38:  MOVW            R2, #0xA2C
355B3C:  LDR             R0, [R0]
355B3E:  MLA.W           R0, R1, R2, R0
355B42:  B.W             loc_356814
355B46:  MOV             R0, R4; jumptable 00355416 case 1551
355B48:  MOVS            R1, #2; __int16
355B4A:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
355B4E:  LDR.W           R0, =(ScriptParams_ptr - 0x355B56)
355B52:  ADD             R0, PC; ScriptParams_ptr
355B54:  LDR             R1, [R0]; ScriptParams
355B56:  LDR             R0, [R1]
355B58:  VLDR            S0, [R1,#4]
355B5C:  ADDS            R1, R0, #1
355B5E:  BEQ.W           loc_356CD4
355B62:  CMP             R0, #0
355B64:  BLT.W           loc_356C6E
355B68:  LDR.W           R1, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x355B74)
355B6C:  UXTB            R3, R0
355B6E:  LSRS            R0, R0, #8
355B70:  ADD             R1, PC; _ZN6CPools11ms_pPedPoolE_ptr
355B72:  LDR             R1, [R1]; CPools::ms_pPedPool ...
355B74:  LDR             R1, [R1]; CPools::ms_pPedPool
355B76:  LDR             R2, [R1,#4]
355B78:  LDRB            R2, [R2,R0]
355B7A:  CMP             R2, R3
355B7C:  BNE.W           loc_356C6E
355B80:  MOVW            R2, #0x7CC
355B84:  LDR             R1, [R1]
355B86:  MLA.W           R5, R0, R2, R1
355B8A:  B.W             loc_356C70
355B8E:  MOV             R0, R4; jumptable 00355416 case 1553
355B90:  MOVS            R1, #1; __int16
355B92:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
355B96:  LDR.W           R0, =(ScriptParams_ptr - 0x355B9E)
355B9A:  ADD             R0, PC; ScriptParams_ptr
355B9C:  LDR             R0, [R0]; ScriptParams
355B9E:  LDR             R1, [R0]
355BA0:  CMP             R1, #0
355BA2:  BLT.W           loc_35681C
355BA6:  LDR.W           R0, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x355BB2)
355BAA:  UXTB            R3, R1
355BAC:  LSRS            R1, R1, #8
355BAE:  ADD             R0, PC; _ZN6CPools11ms_pPedPoolE_ptr
355BB0:  LDR             R0, [R0]; CPools::ms_pPedPool ...
355BB2:  LDR             R0, [R0]; CPools::ms_pPedPool
355BB4:  LDR             R2, [R0,#4]
355BB6:  LDRB            R2, [R2,R1]
355BB8:  CMP             R2, R3
355BBA:  BNE.W           loc_35681C
355BBE:  MOVW            R2, #0x7CC
355BC2:  LDR             R0, [R0]
355BC4:  MLA.W           R6, R1, R2, R0
355BC8:  B.W             loc_35681E
355BCC:  MOV             R0, R4; jumptable 00355416 case 1554
355BCE:  MOVS            R1, #1; __int16
355BD0:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
355BD4:  LDR.W           R0, =(ScriptParams_ptr - 0x355BDC)
355BD8:  ADD             R0, PC; ScriptParams_ptr
355BDA:  LDR             R0, [R0]; ScriptParams
355BDC:  LDR             R1, [R0]
355BDE:  CMP             R1, #0
355BE0:  BLT.W           loc_356844
355BE4:  LDR.W           R0, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x355BF0)
355BE8:  UXTB            R3, R1
355BEA:  LSRS            R1, R1, #8
355BEC:  ADD             R0, PC; _ZN6CPools11ms_pPedPoolE_ptr
355BEE:  LDR             R0, [R0]; CPools::ms_pPedPool ...
355BF0:  LDR             R0, [R0]; CPools::ms_pPedPool
355BF2:  LDR             R2, [R0,#4]
355BF4:  LDRB            R2, [R2,R1]
355BF6:  CMP             R2, R3
355BF8:  BNE.W           loc_356844
355BFC:  MOVW            R2, #0x7CC
355C00:  LDR             R0, [R0]
355C02:  MLA.W           R6, R1, R2, R0
355C06:  B.W             loc_356846
355C0A:  MOV             R0, R4; jumptable 00355416 case 1555
355C0C:  MOVS            R1, #1; __int16
355C0E:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
355C12:  LDR.W           R0, =(ScriptParams_ptr - 0x355C1A)
355C16:  ADD             R0, PC; ScriptParams_ptr
355C18:  LDR             R0, [R0]; ScriptParams
355C1A:  LDR             R1, [R0]
355C1C:  CMP             R1, #0
355C1E:  BLT.W           loc_356888
355C22:  LDR.W           R0, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x355C2E)
355C26:  UXTB            R3, R1
355C28:  LSRS            R1, R1, #8
355C2A:  ADD             R0, PC; _ZN6CPools11ms_pPedPoolE_ptr
355C2C:  LDR             R0, [R0]; CPools::ms_pPedPool ...
355C2E:  LDR             R0, [R0]; CPools::ms_pPedPool
355C30:  LDR             R2, [R0,#4]
355C32:  LDRB            R2, [R2,R1]
355C34:  CMP             R2, R3
355C36:  BNE.W           loc_356888
355C3A:  MOVW            R2, #0x7CC
355C3E:  LDR             R0, [R0]
355C40:  MLA.W           R6, R1, R2, R0
355C44:  B.W             loc_35688A
355C48:  MOV             R0, R4; jumptable 00355416 case 1556
355C4A:  MOVS            R1, #1; __int16
355C4C:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
355C50:  LDR.W           R0, =(ScriptParams_ptr - 0x355C58)
355C54:  ADD             R0, PC; ScriptParams_ptr
355C56:  LDR             R0, [R0]; ScriptParams
355C58:  LDR             R1, [R0]
355C5A:  CMP             R1, #0
355C5C:  BLT.W           loc_3568B8
355C60:  LDR.W           R0, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x355C6C)
355C64:  UXTB            R3, R1
355C66:  LSRS            R1, R1, #8
355C68:  ADD             R0, PC; _ZN6CPools11ms_pPedPoolE_ptr
355C6A:  LDR             R0, [R0]; CPools::ms_pPedPool ...
355C6C:  LDR             R0, [R0]; CPools::ms_pPedPool
355C6E:  LDR             R2, [R0,#4]
355C70:  LDRB            R2, [R2,R1]
355C72:  CMP             R2, R3
355C74:  BNE.W           loc_3568B8
355C78:  MOVW            R2, #0x7CC
355C7C:  LDR             R0, [R0]
355C7E:  MLA.W           R6, R1, R2, R0
355C82:  B.W             loc_3568BA
355C86:  MOV             R0, R4; jumptable 00355416 case 1557
355C88:  BLX             j__ZN14CRunningScript39CollectNextParameterWithoutIncreasingPCEv; CRunningScript::CollectNextParameterWithoutIncreasingPC(void)
355C8C:  MOVS            R1, #4; int
355C8E:  BLX             j__ZN11CTheScripts25GetActualScriptThingIndexEih; CTheScripts::GetActualScriptThingIndex(int,uchar)
355C92:  LDRB.W          R0, [R4,#0xE6]; this
355C96:  BLX             j__ZN14CTaskSequences16GetAvailableSlotEh; CTaskSequences::GetAvailableSlot(uchar)
355C9A:  MOV             R5, R0
355C9C:  CMP             R5, #0x3F ; '?'
355C9E:  BHI.W           loc_356C4E
355CA2:  LDR.W           R0, =(_ZN14CTaskSequences12ms_bIsOpenedE_ptr - 0x355CB0)
355CA6:  MOVS            R2, #1
355CA8:  LDR.W           R1, =(_ZN14CTaskSequences15ms_taskSequenceE_ptr - 0x355CB2)
355CAC:  ADD             R0, PC; _ZN14CTaskSequences12ms_bIsOpenedE_ptr
355CAE:  ADD             R1, PC; _ZN14CTaskSequences15ms_taskSequenceE_ptr
355CB0:  LDR             R0, [R0]; CTaskSequences::ms_bIsOpened ...
355CB2:  LDR             R1, [R1]; CTaskSequences::ms_taskSequence ...
355CB4:  STRB            R2, [R0,R5]
355CB6:  ADD.W           R0, R1, R5,LSL#6; this
355CBA:  BLX             j__ZN20CTaskComplexSequence5FlushEv; CTaskComplexSequence::Flush(void)
355CBE:  LDR.W           R0, =(_ZN14CTaskSequences18ms_iActiveSequenceE_ptr - 0x355CC8)
355CC2:  MOVS            R1, #4; int
355CC4:  ADD             R0, PC; _ZN14CTaskSequences18ms_iActiveSequenceE_ptr
355CC6:  LDR             R0, [R0]; CTaskSequences::ms_iActiveSequence ...
355CC8:  STR             R5, [R0]; CTaskSequences::ms_iActiveSequence
355CCA:  MOV             R0, R5; this
355CCC:  BLX             j__ZN11CTheScripts28GetNewUniqueScriptThingIndexEih; CTheScripts::GetNewUniqueScriptThingIndex(int,uchar)
355CD0:  MOV             R1, R0
355CD2:  LDR.W           R0, =(ScriptParams_ptr - 0x355CDA)
355CD6:  ADD             R0, PC; ScriptParams_ptr
355CD8:  LDR             R0, [R0]; ScriptParams
355CDA:  STR             R1, [R0]
355CDC:  LDRB.W          R0, [R4,#0xE6]
355CE0:  CMP             R0, #0
355CE2:  BEQ.W           loc_3570C2
355CE6:  LDR.W           R0, =(_ZN11CTheScripts14MissionCleanUpE_ptr - 0x355CF0)
355CEA:  MOVS            R2, #8
355CEC:  ADD             R0, PC; _ZN11CTheScripts14MissionCleanUpE_ptr
355CEE:  B               loc_355F60
355CF0:  MOV             R0, R4; jumptable 00355416 case 1558
355CF2:  MOVS            R1, #1; __int16
355CF4:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
355CF8:  LDR.W           R0, =(ScriptParams_ptr - 0x355D02)
355CFC:  MOVS            R1, #4; int
355CFE:  ADD             R0, PC; ScriptParams_ptr
355D00:  LDR             R0, [R0]; ScriptParams
355D02:  LDR             R0, [R0]; this
355D04:  BLX             j__ZN11CTheScripts25GetActualScriptThingIndexEih; CTheScripts::GetActualScriptThingIndex(int,uchar)
355D08:  MOVS            R5, #0
355D0A:  CMP             R0, #0x3F ; '?'
355D0C:  BHI.W           loc_3570CC; jumptable 00355416 cases 1503-1505,1507-1512,1514,1519,1520,1544,1545,1548,1552,1559,1564,1567,1568,1579-1581
355D10:  LDR.W           R1, =(_ZN14CTaskSequences12ms_bIsOpenedE_ptr - 0x355D1C)
355D14:  LDR.W           R2, =(_ZN14CTaskSequences18ms_iActiveSequenceE_ptr - 0x355D1E)
355D18:  ADD             R1, PC; _ZN14CTaskSequences12ms_bIsOpenedE_ptr
355D1A:  ADD             R2, PC; _ZN14CTaskSequences18ms_iActiveSequenceE_ptr
355D1C:  LDR             R1, [R1]; CTaskSequences::ms_bIsOpened ...
355D1E:  LDR             R2, [R2]; CTaskSequences::ms_iActiveSequence ...
355D20:  STRB            R5, [R1,R0]
355D22:  MOV.W           R0, #0xFFFFFFFF
355D26:  STR             R0, [R2]; CTaskSequences::ms_iActiveSequence
355D28:  B.W             loc_3570CC; jumptable 00355416 cases 1503-1505,1507-1512,1514,1519,1520,1544,1545,1548,1552,1559,1564,1567,1568,1579-1581
355D2C:  MOV             R0, R4; jumptable 00355416 case 1560
355D2E:  MOVS            R1, #2; __int16
355D30:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
355D34:  LDR.W           R0, =(ScriptParams_ptr - 0x355D3E)
355D38:  MOVS            R1, #4; int
355D3A:  ADD             R0, PC; ScriptParams_ptr
355D3C:  LDR             R0, [R0]; ScriptParams
355D3E:  LDRD.W          R8, R0, [R0]; this
355D42:  BLX             j__ZN11CTheScripts25GetActualScriptThingIndexEih; CTheScripts::GetActualScriptThingIndex(int,uchar)
355D46:  MOV             R6, R0
355D48:  CMP             R6, #0x3F ; '?'
355D4A:  BHI.W           loc_3570CA
355D4E:  MOVS            R0, #dword_1C; this
355D50:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
355D54:  MOV             R1, R6; int
355D56:  MOV             R5, R0
355D58:  BLX             j__ZN23CTaskComplexUseSequenceC2Ei; CTaskComplexUseSequence::CTaskComplexUseSequence(int)
355D5C:  MOV             R0, R4
355D5E:  MOV             R1, R8
355D60:  MOV             R2, R5
355D62:  MOV.W           R3, #0x618
355D66:  B.W             loc_356DD0
355D6A:  MOV             R0, R4; jumptable 00355416 case 1561
355D6C:  MOVS            R1, #2; __int16
355D6E:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
355D72:  LDR.W           R0, =(ScriptParams_ptr - 0x355D7A)
355D76:  ADD             R0, PC; ScriptParams_ptr
355D78:  LDR             R0, [R0]; ScriptParams
355D7A:  LDR             R1, [R0]
355D7C:  CMP             R1, #0
355D7E:  BLT.W           loc_356902
355D82:  LDR.W           R0, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x355D8E)
355D86:  UXTB            R3, R1
355D88:  LSRS            R1, R1, #8
355D8A:  ADD             R0, PC; _ZN6CPools11ms_pPedPoolE_ptr
355D8C:  LDR             R0, [R0]; CPools::ms_pPedPool ...
355D8E:  LDR             R0, [R0]; CPools::ms_pPedPool
355D90:  LDR             R2, [R0,#4]
355D92:  LDRB            R2, [R2,R1]
355D94:  CMP             R2, R3
355D96:  BNE.W           loc_356902
355D9A:  MOVW            R2, #0x7CC
355D9E:  LDR             R0, [R0]
355DA0:  MLA.W           R0, R1, R2, R0
355DA4:  B.W             loc_356904
355DA8:  MOV             R0, R4; jumptable 00355416 case 1562
355DAA:  MOVS            R1, #1; __int16
355DAC:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
355DB0:  LDR.W           R0, =(ScriptParams_ptr - 0x355DB8)
355DB4:  ADD             R0, PC; ScriptParams_ptr
355DB6:  LDR             R0, [R0]; ScriptParams
355DB8:  LDR             R1, [R0]
355DBA:  CMP             R1, #0
355DBC:  BLT.W           loc_35692A
355DC0:  LDR.W           R0, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x355DCC)
355DC4:  UXTB            R3, R1
355DC6:  LSRS            R1, R1, #8
355DC8:  ADD             R0, PC; _ZN6CPools11ms_pPedPoolE_ptr
355DCA:  LDR             R0, [R0]; CPools::ms_pPedPool ...
355DCC:  LDR             R0, [R0]; CPools::ms_pPedPool
355DCE:  LDR             R2, [R0,#4]
355DD0:  LDRB            R2, [R2,R1]
355DD2:  CMP             R2, R3
355DD4:  BNE.W           loc_35692A
355DD8:  MOVW            R2, #0x7CC
355DDC:  LDR             R0, [R0]
355DDE:  MLA.W           R6, R1, R2, R0
355DE2:  B.W             loc_35692C
355DE6:  MOV             R0, R4; jumptable 00355416 case 1563
355DE8:  MOVS            R1, #1; __int16
355DEA:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
355DEE:  LDR.W           R0, =(ScriptParams_ptr - 0x355DF8)
355DF2:  MOVS            R1, #4; int
355DF4:  ADD             R0, PC; ScriptParams_ptr
355DF6:  LDR             R0, [R0]; ScriptParams
355DF8:  LDR             R5, [R0]
355DFA:  MOV             R0, R5; this
355DFC:  BLX             j__ZN11CTheScripts25GetActualScriptThingIndexEih; CTheScripts::GetActualScriptThingIndex(int,uchar)
355E00:  MOV             R6, R0
355E02:  CMP             R6, #0x3F ; '?'
355E04:  BHI.W           loc_356E1C
355E08:  LDR.W           R1, =(_ZN14CTaskSequences15ms_taskSequenceE_ptr - 0x355E14)
355E0C:  LDR.W           R0, =(_ZN14CTaskSequences12ms_bIsOpenedE_ptr - 0x355E16)
355E10:  ADD             R1, PC; _ZN14CTaskSequences15ms_taskSequenceE_ptr
355E12:  ADD             R0, PC; _ZN14CTaskSequences12ms_bIsOpenedE_ptr
355E14:  LDR             R1, [R1]; CTaskSequences::ms_taskSequence ...
355E16:  LDR             R2, [R0]; CTaskSequences::ms_bIsOpened ...
355E18:  MOVS            R0, #0
355E1A:  ADD.W           R1, R1, R6,LSL#6
355E1E:  STRB            R0, [R2,R6]
355E20:  LDR             R2, [R1,#0x3C]
355E22:  ADDS            R1, #0x38 ; '8'
355E24:  CMP             R2, #0
355E26:  BEQ.W           loc_356DFC
355E2A:  MOVS            R0, #1
355E2C:  STRB            R0, [R1]
355E2E:  B.W             loc_356E0E
355E32:  MOV             R0, R4; jumptable 00355416 case 1565
355E34:  MOVS            R1, #6; __int16
355E36:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
355E3A:  MOV             R0, R4; this
355E3C:  BLX             j__ZN14CRunningScript39CollectNextParameterWithoutIncreasingPCEv; CRunningScript::CollectNextParameterWithoutIncreasingPC(void)
355E40:  MOVS            R1, #6; int
355E42:  BLX             j__ZN11CTheScripts25GetActualScriptThingIndexEih; CTheScripts::GetActualScriptThingIndex(int,uchar)
355E46:  MOVS            R0, #0xBF800000; this
355E4C:  BLX             j__ZN18CScripted2dEffects19AddScripted2DEffectEf; CScripted2dEffects::AddScripted2DEffect(float)
355E50:  MOV             R5, R0
355E52:  LDR.W           R0, =(ScriptParams_ptr - 0x355E5C)
355E56:  MOVS            R1, #4; int
355E58:  ADD             R0, PC; ScriptParams_ptr
355E5A:  LDR             R0, [R0]; ScriptParams
355E5C:  LDR             R0, [R0,#(dword_81A91C - 0x81A908)]; this
355E5E:  BLX             j__ZN11CTheScripts25GetActualScriptThingIndexEih; CTheScripts::GetActualScriptThingIndex(int,uchar)
355E62:  MOV             R8, R0
355E64:  ORR.W           R0, R8, R5
355E68:  CMP             R0, #0x3F ; '?'
355E6A:  BHI.W           loc_356C56
355E6E:  LDR.W           R0, =(ScriptParams_ptr - 0x355E7E)
355E72:  MOV.W           R11, #0
355E76:  VLDR            S16, =3.1416
355E7A:  ADD             R0, PC; ScriptParams_ptr
355E7C:  VLDR            S18, =180.0
355E80:  LDR.W           R9, [R0]; ScriptParams
355E84:  LDRD.W          R10, R0, [R9]
355E88:  VLDR            S0, [R9,#0xC]
355E8C:  STR             R0, [SP,#0x1C8+var_1AC]
355E8E:  VMUL.F32        S0, S0, S16
355E92:  LDR.W           R0, [R9,#(dword_81A910 - 0x81A908)]
355E96:  STR             R0, [SP,#0x1C8+var_1B0]
355E98:  STR.W           R11, [SP,#0x1C8+var_130]
355E9C:  VDIV.F32        S0, S0, S18
355EA0:  VMOV            R6, S0
355EA4:  MOV             R0, R6; x
355EA6:  BLX             sinf
355EAA:  EOR.W           R0, R0, #0x80000000
355EAE:  STR             R0, [SP,#0x1C8+var_138]
355EB0:  MOV             R0, R6; x
355EB2:  BLX             cosf
355EB6:  STR             R0, [SP,#0x1C8+var_138+4]
355EB8:  ADD             R0, SP, #0x1C8+var_138; this
355EBA:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
355EBE:  VLDR            S0, [R9,#0x10]
355EC2:  STR.W           R11, [SP,#0x1C8+var_1A0]
355EC6:  VMUL.F32        S0, S0, S16
355ECA:  VDIV.F32        S0, S0, S18
355ECE:  VMOV            R6, S0
355ED2:  MOV             R0, R6; x
355ED4:  BLX             sinf
355ED8:  EOR.W           R0, R0, #0x80000000
355EDC:  STR             R0, [SP,#0x1C8+var_1A8]
355EDE:  MOV             R0, R6; x
355EE0:  BLX             cosf
355EE4:  STR             R0, [SP,#0x1C8+var_1A8+4]
355EE6:  ADD             R0, SP, #0x1C8+var_1A8; this
355EE8:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
355EEC:  LDR.W           R0, =(_ZN18CScripted2dEffects24ms_effectSequenceTaskIDsE_ptr - 0x355EF8)
355EF0:  LDR.W           R1, =(_ZN18CScripted2dEffects10ms_effectsE_ptr - 0x355EFE)
355EF4:  ADD             R0, PC; _ZN18CScripted2dEffects24ms_effectSequenceTaskIDsE_ptr
355EF6:  VLDR            D16, [SP,#0x1C8+var_138]
355EFA:  ADD             R1, PC; _ZN18CScripted2dEffects10ms_effectsE_ptr
355EFC:  LDR             R0, [R0]; CScripted2dEffects::ms_effectSequenceTaskIDs ...
355EFE:  LDR             R1, [R1]; CScripted2dEffects::ms_effects ...
355F00:  STR.W           R8, [R0,R5,LSL#2]
355F04:  LSLS            R0, R5, #6
355F06:  STR.W           R10, [R1,R0]
355F0A:  ADD.W           R0, R1, R5,LSL#6
355F0E:  MOVS            R1, #3
355F10:  STRB            R1, [R0,#0xC]
355F12:  LDR             R1, [SP,#0x1C8+var_1AC]
355F14:  STR             R1, [R0,#4]
355F16:  LDR             R1, [SP,#0x1C8+var_1B0]
355F18:  STR             R1, [R0,#8]
355F1A:  LDR             R1, [SP,#0x1C8+var_130]
355F1C:  STR             R1, [R0,#0x18]
355F1E:  VSTR            D16, [R0,#0x10]
355F22:  VLDR            D16, [SP,#0x1C8+var_138]
355F26:  LDR             R1, [SP,#0x1C8+var_130]
355F28:  STR             R1, [R0,#0x24]
355F2A:  VSTR            D16, [R0,#0x1C]
355F2E:  LDR             R1, [SP,#0x1C8+var_1A0]
355F30:  VLDR            D16, [SP,#0x1C8+var_1A8]
355F34:  STR             R1, [R0,#0x30]
355F36:  MOVS            R1, #7
355F38:  VSTR            D16, [R0,#0x28]
355F3C:  STRB.W          R1, [R0,#0x34]
355F40:  MOV             R0, R5; this
355F42:  MOVS            R1, #6; int
355F44:  BLX             j__ZN11CTheScripts28GetNewUniqueScriptThingIndexEih; CTheScripts::GetNewUniqueScriptThingIndex(int,uchar)
355F48:  MOV             R1, R0; int
355F4A:  STR.W           R1, [R9]
355F4E:  LDRB.W          R0, [R4,#0xE6]
355F52:  CMP             R0, #0
355F54:  BEQ.W           loc_3570C2
355F58:  LDR.W           R0, =(_ZN11CTheScripts14MissionCleanUpE_ptr - 0x355F62)
355F5C:  MOVS            R2, #7; unsigned __int8
355F5E:  ADD             R0, PC; _ZN11CTheScripts14MissionCleanUpE_ptr
355F60:  LDR             R0, [R0]; this
355F62:  BLX             j__ZN15CMissionCleanup15AddEntityToListEih; CMissionCleanup::AddEntityToList(int,uchar)
355F66:  B.W             loc_3570C2
355F6A:  MOV             R0, R4; jumptable 00355416 case 1566
355F6C:  MOVS            R1, #1; __int16
355F6E:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
355F72:  LDR.W           R0, =(ScriptParams_ptr - 0x355F7C)
355F76:  MOVS            R1, #6; int
355F78:  ADD             R0, PC; ScriptParams_ptr
355F7A:  LDR             R0, [R0]; ScriptParams
355F7C:  LDR             R5, [R0]
355F7E:  MOV             R0, R5; this
355F80:  BLX             j__ZN11CTheScripts25GetActualScriptThingIndexEih; CTheScripts::GetActualScriptThingIndex(int,uchar)
355F84:  CMP             R0, #0x3F ; '?'
355F86:  BHI             loc_355F94
355F88:  LDR.W           R1, =(_ZN18CScripted2dEffects12ms_activatedE_ptr - 0x355F92)
355F8C:  MOVS            R2, #0
355F8E:  ADD             R1, PC; _ZN18CScripted2dEffects12ms_activatedE_ptr
355F90:  LDR             R1, [R1]; CScripted2dEffects::ms_activated ...
355F92:  STRB            R2, [R1,R0]
355F94:  LDRB.W          R0, [R4,#0xE6]
355F98:  CMP             R0, #0
355F9A:  BEQ.W           loc_3570CA
355F9E:  LDR.W           R0, =(_ZN11CTheScripts14MissionCleanUpE_ptr - 0x355FAA)
355FA2:  MOV             R1, R5
355FA4:  MOVS            R2, #7
355FA6:  ADD             R0, PC; _ZN11CTheScripts14MissionCleanUpE_ptr
355FA8:  B.W             loc_356E30
355FAC:  MOV             R0, R4; jumptable 00355416 case 1569
355FAE:  MOVS            R1, #4; __int16
355FB0:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
355FB4:  LDR.W           R0, =(ScriptParams_ptr - 0x355FBE)
355FB8:  MOVS            R1, #6; int
355FBA:  ADD             R0, PC; ScriptParams_ptr
355FBC:  LDR             R0, [R0]; ScriptParams
355FBE:  LDR             R0, [R0,#(dword_81A910 - 0x81A908)]; this
355FC0:  BLX             j__ZN11CTheScripts25GetActualScriptThingIndexEih; CTheScripts::GetActualScriptThingIndex(int,uchar)
355FC4:  MOV             R6, R0
355FC6:  CMP             R6, #0x3F ; '?'
355FC8:  BHI.W           loc_356C5E
355FCC:  LDR.W           R0, =(ScriptParams_ptr - 0x355FD4)
355FD0:  ADD             R0, PC; ScriptParams_ptr
355FD2:  LDR             R5, [R0]; ScriptParams
355FD4:  MOV             R0, R4; this
355FD6:  MOV             R2, R5
355FD8:  LDR.W           R1, [R2],#4; int *
355FDC:  BLX             j__ZN14CRunningScript46GetCorrectPedModelIndexForEmergencyServiceTypeEiPi; CRunningScript::GetCorrectPedModelIndexForEmergencyServiceType(int,int *)
355FE0:  LDR             R0, [R5]
355FE2:  CMP             R0, #6
355FE4:  BNE.W           loc_356DD6
355FE8:  MOVW            R0, #(elf_hash_bucket+0x6D0); this
355FEC:  BLX             j__ZN4CPednwEj; CPed::operator new(uint)
355FF0:  MOV             R9, R0
355FF2:  LDR.W           R0, =(ScriptParams_ptr - 0x355FFA)
355FF6:  ADD             R0, PC; ScriptParams_ptr
355FF8:  LDR             R0, [R0]; ScriptParams
355FFA:  LDR             R1, [R0,#(dword_81A90C - 0x81A908)]
355FFC:  MOV             R0, R9
355FFE:  BLX             j__ZN7CCopPedC2E8eCopType; CCopPed::CCopPed(eCopType)
356002:  B.W             loc_356E4A
356006:  MOV             R0, R4; jumptable 00355416 case 1570
356008:  MOVS            R1, #2; __int16
35600A:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
35600E:  LDR.W           R0, =(ScriptParams_ptr - 0x356018)
356012:  MOVS            R5, #0
356014:  ADD             R0, PC; ScriptParams_ptr
356016:  LDR             R0, [R0]; ScriptParams
356018:  LDRD.W          R8, R0, [R0]
35601C:  CMP             R0, #0
35601E:  BLT.W           loc_356960
356022:  LDR.W           R1, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x35602E)
356026:  UXTB            R3, R0
356028:  LSRS            R0, R0, #8
35602A:  ADD             R1, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
35602C:  LDR             R1, [R1]; CPools::ms_pVehiclePool ...
35602E:  LDR             R1, [R1]; CPools::ms_pVehiclePool
356030:  LDR             R2, [R1,#4]
356032:  LDRB            R2, [R2,R0]
356034:  CMP             R2, R3
356036:  BNE.W           loc_356960
35603A:  MOVW            R2, #0xA2C
35603E:  LDR             R1, [R1]
356040:  MLA.W           R9, R0, R2, R1
356044:  B.W             loc_356964
356048:  MOV             R0, R4; jumptable 00355416 case 1571
35604A:  MOVS            R1, #2; __int16
35604C:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
356050:  LDR             R0, =(ScriptParams_ptr - 0x356056)
356052:  ADD             R0, PC; ScriptParams_ptr
356054:  LDR             R4, [R0]; ScriptParams
356056:  VLDR            S0, [R4,#4]
35605A:  VCVT.F32.S32    S0, S0
35605E:  LDRH            R0, [R4]; this
356060:  VMOV            R1, S0; unsigned __int16
356064:  BLX             j__ZN6CStats13IncrementStatEtf; CStats::IncrementStat(ushort,float)
356068:  B               loc_356132
35606A:  MOV             R0, R4; jumptable 00355416 case 1572
35606C:  MOVS            R1, #2; __int16
35606E:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
356072:  LDR             R0, =(ScriptParams_ptr - 0x356078)
356074:  ADD             R0, PC; ScriptParams_ptr
356076:  LDR             R4, [R0]; ScriptParams
356078:  LDR             R1, [R4,#(dword_81A90C - 0x81A908)]; unsigned __int16
35607A:  LDRH            R0, [R4]; this
35607C:  BLX             j__ZN6CStats13IncrementStatEtf; CStats::IncrementStat(ushort,float)
356080:  B               loc_356158
356082:  MOV             R0, R4; jumptable 00355416 case 1573
356084:  MOVS            R1, #2; __int16
356086:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
35608A:  LDR             R0, =(ScriptParams_ptr - 0x356090)
35608C:  ADD             R0, PC; ScriptParams_ptr
35608E:  LDR             R4, [R0]; ScriptParams
356090:  VLDR            S0, [R4,#4]
356094:  VCVT.F32.S32    S0, S0
356098:  LDRH            R0, [R4]; this
35609A:  VMOV            R1, S0; unsigned __int16
35609E:  BLX             j__ZN6CStats13DecrementStatEtf; CStats::DecrementStat(ushort,float)
3560A2:  VLDR            S0, [R4,#4]
3560A6:  VCVT.F32.S32    S0, S0
3560AA:  LDR             R1, [R4]
3560AC:  VMOV            R2, S0
3560B0:  B               loc_3560CC
3560B2:  MOV             R0, R4; jumptable 00355416 case 1574
3560B4:  MOVS            R1, #2; __int16
3560B6:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
3560BA:  LDR             R0, =(ScriptParams_ptr - 0x3560C0)
3560BC:  ADD             R0, PC; ScriptParams_ptr
3560BE:  LDR             R4, [R0]; ScriptParams
3560C0:  LDR             R1, [R4,#(dword_81A90C - 0x81A908)]; unsigned __int16
3560C2:  LDRH            R0, [R4]; this
3560C4:  BLX             j__ZN6CStats13DecrementStatEtf; CStats::DecrementStat(ushort,float)
3560C8:  LDRD.W          R1, R2, [R4]; unsigned int
3560CC:  MOVS            R0, #0; this
3560CE:  MOVS            R5, #0
3560D0:  BLX             j__ZN6CStats30DisplayScriptStatUpdateMessageEhjf; CStats::DisplayScriptStatUpdateMessage(uchar,uint,float)
3560D4:  B.W             loc_3570CC; jumptable 00355416 cases 1503-1505,1507-1512,1514,1519,1520,1544,1545,1548,1552,1559,1564,1567,1568,1579-1581
3560D8:  MOV             R0, R4; jumptable 00355416 case 1575
3560DA:  MOVS            R1, #2; __int16
3560DC:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
3560E0:  LDR             R0, =(ScriptParams_ptr - 0x3560E6)
3560E2:  ADD             R0, PC; ScriptParams_ptr
3560E4:  LDR             R4, [R0]; ScriptParams
3560E6:  VLDR            S0, [R4,#4]
3560EA:  VCVT.F32.S32    S0, S0
3560EE:  LDRH            R0, [R4]; this
3560F0:  VMOV            R1, S0; unsigned __int16
3560F4:  BLX             j__ZN6CStats16SetNewRecordStatEtf; CStats::SetNewRecordStat(ushort,float)
3560F8:  B               loc_356132
3560FA:  MOV             R0, R4; jumptable 00355416 case 1576
3560FC:  MOVS            R1, #2; __int16
3560FE:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
356102:  LDR             R0, =(ScriptParams_ptr - 0x356108)
356104:  ADD             R0, PC; ScriptParams_ptr
356106:  LDR             R4, [R0]; ScriptParams
356108:  LDR             R1, [R4,#(dword_81A90C - 0x81A908)]; unsigned __int16
35610A:  LDRH            R0, [R4]; this
35610C:  BLX             j__ZN6CStats16SetNewRecordStatEtf; CStats::SetNewRecordStat(ushort,float)
356110:  B               loc_356158
356112:  MOV             R0, R4; jumptable 00355416 case 1577
356114:  MOVS            R1, #2; __int16
356116:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
35611A:  LDR             R0, =(ScriptParams_ptr - 0x356120)
35611C:  ADD             R0, PC; ScriptParams_ptr
35611E:  LDR             R4, [R0]; ScriptParams
356120:  VLDR            S0, [R4,#4]
356124:  VCVT.F32.S32    S0, S0
356128:  LDRH            R0, [R4]
35612A:  VMOV            R1, S0
35612E:  NOP
356130:  NOP
356132:  VLDR            S0, [R4,#4]
356136:  VCVT.F32.S32    S0, S0
35613A:  LDR             R1, [R4]
35613C:  VMOV            R2, S0
356140:  B               loc_35615C
356142:  MOV             R0, R4; jumptable 00355416 case 1578
356144:  MOVS            R1, #2; __int16
356146:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
35614A:  LDR             R0, =(ScriptParams_ptr - 0x356150)
35614C:  ADD             R0, PC; ScriptParams_ptr
35614E:  LDR             R4, [R0]; ScriptParams
356150:  LDR             R1, [R4,#(dword_81A90C - 0x81A908)]
356152:  LDRH            R0, [R4]
356154:  NOP
356156:  NOP
356158:  LDRD.W          R1, R2, [R4]; unsigned int
35615C:  MOVS            R0, #(stderr+1); this
35615E:  BLX             j__ZN6CStats30DisplayScriptStatUpdateMessageEhjf; CStats::DisplayScriptStatUpdateMessage(uchar,uint,float)
356162:  B.W             loc_3570CA
356166:  MOV             R0, R4; jumptable 00355416 case 1582
356168:  MOVS            R1, #2; __int16
35616A:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
35616E:  LDR             R0, =(ScriptParams_ptr - 0x356174)
356170:  ADD             R0, PC; ScriptParams_ptr
356172:  LDR             R0, [R0]; ScriptParams
356174:  LDR             R0, [R0]
356176:  CMP             R0, #0
356178:  BLT.W           loc_35698A
35617C:  LDR             R1, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x356186)
35617E:  UXTB            R3, R0
356180:  LSRS            R0, R0, #8
356182:  ADD             R1, PC; _ZN6CPools11ms_pPedPoolE_ptr
356184:  LDR             R1, [R1]; CPools::ms_pPedPool ...
356186:  LDR             R1, [R1]; CPools::ms_pPedPool
356188:  LDR             R2, [R1,#4]
35618A:  LDRB            R2, [R2,R0]
35618C:  CMP             R2, R3
35618E:  BNE.W           loc_35698A
356192:  MOVW            R2, #0x7CC
356196:  LDR             R1, [R1]
356198:  MLA.W           R0, R0, R2, R1
35619C:  B               loc_35698C
35619E:  MOV             R0, R4; jumptable 00355416 case 1583
3561A0:  MOVS            R1, #1; __int16
3561A2:  MOV.W           R9, #1
3561A6:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
3561AA:  LDR             R0, =(ScriptParams_ptr - 0x3561B0)
3561AC:  ADD             R0, PC; ScriptParams_ptr
3561AE:  LDR.W           R10, [R0]; ScriptParams
3561B2:  MOV             R0, R4; this
3561B4:  LDR.W           R8, [R10]
3561B8:  BLX             j__ZN14CRunningScript39CollectNextParameterWithoutIncreasingPCEv; CRunningScript::CollectNextParameterWithoutIncreasingPC(void)
3561BC:  MOVS            R1, #8; int
3561BE:  BLX             j__ZN11CTheScripts25GetActualScriptThingIndexEih; CTheScripts::GetActualScriptThingIndex(int,uchar)
3561C2:  LDR             R0, =(_ZN10CPedGroups9ms_groupsE_ptr - 0x3561C8)
3561C4:  ADD             R0, PC; _ZN10CPedGroups9ms_groupsE_ptr ; this
3561C6:  LDR             R5, [R0]; CPedGroups::ms_groups ...
3561C8:  BLX             j__ZN10CPedGroups8AddGroupEv; CPedGroups::AddGroup(void)
3561CC:  MOV             R6, R0
3561CE:  MOV.W           R0, #0x2D4
3561D2:  MLA.W           R5, R6, R0, R5
3561D6:  MOV             R1, R8; int
3561D8:  ADD.W           R0, R5, #0x30 ; '0'; this
3561DC:  BLX             j__ZN21CPedGroupIntelligence27SetDefaultTaskAllocatorTypeEi; CPedGroupIntelligence::SetDefaultTaskAllocatorType(int)
3561E0:  MOV             R0, R6; this
3561E2:  MOVS            R1, #8; int
3561E4:  STRB.W          R9, [R5,#0x2D0]
3561E8:  BLX             j__ZN11CTheScripts28GetNewUniqueScriptThingIndexEih; CTheScripts::GetNewUniqueScriptThingIndex(int,uchar)
3561EC:  STR.W           R0, [R10]
3561F0:  MOV             R0, R4; this
3561F2:  MOVS            R1, #1; __int16
3561F4:  BLX             j__ZN14CRunningScript15StoreParametersEs; CRunningScript::StoreParameters(short)
3561F8:  LDRB.W          R0, [R4,#0xE6]
3561FC:  CMP             R0, #0
3561FE:  BEQ.W           loc_3570CA
356202:  LDR             R0, =(ScriptParams_ptr - 0x35620A)
356204:  LDR             R1, =(_ZN11CTheScripts14MissionCleanUpE_ptr - 0x35620C)
356206:  ADD             R0, PC; ScriptParams_ptr
356208:  ADD             R1, PC; _ZN11CTheScripts14MissionCleanUpE_ptr
35620A:  LDR             R2, [R0]; ScriptParams
35620C:  LDR             R0, [R1]; this
35620E:  LDR             R1, [R2]; int
356210:  MOVS            R2, #5; unsigned __int8
356212:  BLX             j__ZN15CMissionCleanup15AddEntityToListEih; CMissionCleanup::AddEntityToList(int,uchar)
356216:  B.W             loc_3570CA
35621A:  ALIGN 4
35621C:  DCFS 3.1416
356220:  DCFS 180.0
356224:  MOV             R0, R4; jumptable 00355416 case 1584
356226:  MOVS            R1, #2; __int16
356228:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
35622C:  LDR             R0, =(ScriptParams_ptr - 0x356234)
35622E:  MOVS            R1, #8; int
356230:  ADD             R0, PC; ScriptParams_ptr
356232:  LDR             R5, [R0]; ScriptParams
356234:  LDR             R0, [R5]; this
356236:  BLX             j__ZN11CTheScripts25GetActualScriptThingIndexEih; CTheScripts::GetActualScriptThingIndex(int,uchar)
35623A:  MOV             R4, R0
35623C:  LDR             R0, [R5,#(dword_81A90C - 0x81A908)]
35623E:  CMP             R0, #0
356240:  BLT.W           loc_3569A4
356244:  LDR             R1, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x35624E)
356246:  UXTB            R3, R0
356248:  LSRS            R0, R0, #8
35624A:  ADD             R1, PC; _ZN6CPools11ms_pPedPoolE_ptr
35624C:  LDR             R1, [R1]; CPools::ms_pPedPool ...
35624E:  LDR             R1, [R1]; CPools::ms_pPedPool
356250:  LDR             R2, [R1,#4]
356252:  LDRB            R2, [R2,R0]
356254:  CMP             R2, R3
356256:  BNE.W           loc_3569A4
35625A:  MOVW            R2, #0x7CC
35625E:  LDR             R1, [R1]
356260:  MLA.W           R5, R0, R2, R1
356264:  CMP             R4, #7
356266:  BLS.W           loc_3569AC
35626A:  B.W             loc_3570CA
35626E:  MOV             R0, R4; jumptable 00355416 case 1585
356270:  MOVS            R1, #2; __int16
356272:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
356276:  LDR             R0, =(ScriptParams_ptr - 0x35627E)
356278:  MOVS            R1, #8; int
35627A:  ADD             R0, PC; ScriptParams_ptr
35627C:  LDR             R4, [R0]; ScriptParams
35627E:  LDR             R0, [R4]; this
356280:  BLX             j__ZN11CTheScripts25GetActualScriptThingIndexEih; CTheScripts::GetActualScriptThingIndex(int,uchar)
356284:  MOV             R5, R0
356286:  LDR             R0, [R4,#(dword_81A90C - 0x81A908)]
356288:  CMP             R0, #0
35628A:  BLT.W           loc_356A0A
35628E:  LDR             R1, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x356298)
356290:  UXTB            R3, R0
356292:  LSRS            R0, R0, #8
356294:  ADD             R1, PC; _ZN6CPools11ms_pPedPoolE_ptr
356296:  LDR             R1, [R1]; CPools::ms_pPedPool ...
356298:  LDR             R1, [R1]; CPools::ms_pPedPool
35629A:  LDR             R2, [R1,#4]
35629C:  LDRB            R2, [R2,R0]
35629E:  CMP             R2, R3
3562A0:  BNE.W           loc_356A0A
3562A4:  MOVW            R2, #0x7CC
3562A8:  LDR             R1, [R1]
3562AA:  MLA.W           R9, R0, R2, R1
3562AE:  CMP             R5, #7
3562B0:  BLS.W           loc_356A14
3562B4:  B.W             loc_3570CA
3562B8:  DCD __stack_chk_guard_ptr - 0x355406
3562BC:  DCD ScriptParams_ptr - 0x3554F6
3562C0:  DCD ScriptParams_ptr - 0x35553A
3562C4:  DCD _ZN6CPools11ms_pPedPoolE_ptr - 0x35555C
3562C8:  DCD ScriptParams_ptr - 0x355586
3562CC:  DCD _ZN18CTaskComplexWander16ms_fTargetRadiusE_ptr - 0x3555B2
3562D0:  DCD _ZTV26CTaskComplexWanderStandard_ptr - 0x3555E2
3562D4:  DCD ScriptParams_ptr - 0x35560E
3562D8:  DCD _ZN6CPools11ms_pPedPoolE_ptr - 0x355624
3562DC:  DCD ScriptParams_ptr - 0x355656
3562E0:  DCD _ZN6CPools15ms_pVehiclePoolE_ptr - 0x35566A
3562E4:  DCD ScriptParams_ptr - 0x355694
3562E8:  DCD _ZN6CPools15ms_pVehiclePoolE_ptr - 0x3556A8
3562EC:  DCD ScriptParams_ptr - 0x3556DA
3562F0:  DCD _ZN6CPools15ms_pVehiclePoolE_ptr - 0x3556EE
3562F4:  DCD ScriptParams_ptr - 0x355718
3562F8:  DCD _ZN6CPools15ms_pVehiclePoolE_ptr - 0x35572C
3562FC:  DCD ScriptParams_ptr - 0x35575A
356300:  DCD _ZN6CPools15ms_pVehiclePoolE_ptr - 0x35575C
356304:  DCD ScriptParams_ptr - 0x355798
356308:  DCD _ZN6CPools15ms_pVehiclePoolE_ptr - 0x35579A
35630C:  DCD ScriptParams_ptr - 0x3557D6
356310:  DCD _ZN6CPools15ms_pVehiclePoolE_ptr - 0x3557D8
356314:  DCD ScriptParams_ptr - 0x355814
356318:  DCD _ZN6CPools15ms_pVehiclePoolE_ptr - 0x355816
35631C:  DCD ScriptParams_ptr - 0x35584E
356320:  DCD _ZN27CTaskComplexFollowNodeRoute15ms_iDefaultTimeE_ptr - 0x355874
356324:  DCD ScriptParams_ptr - 0x355892
356328:  DCD _ZN6CPools11ms_pPedPoolE_ptr - 0x355894
35632C:  DCD ScriptParams_ptr - 0x3558E2
356330:  DCD _ZN6CPools15ms_pVehiclePoolE_ptr - 0x355906
356334:  DCD ScriptParams_ptr - 0x355930
356338:  DCD ScriptParams_ptr - 0x355978
35633C:  DCD ScriptParams_ptr - 0x3559B4
356340:  DCD ThePaths_ptr - 0x3559D8
356344:  DCD ThePaths_ptr - 0x3559FC
356348:  DCD ScriptParams_ptr - 0x355A16
35634C:  DCD ScriptParams_ptr - 0x355A60
356350:  DCD _ZN11CTheScripts14MissionCleanUpE_ptr - 0x355A62
356354:  DCD ScriptParams_ptr - 0x355A80
356358:  DCD _ZN6CPools11ms_pPedPoolE_ptr - 0x355A94
35635C:  DCD ScriptParams_ptr - 0x355ABE
356360:  DCD _ZN11CTheScripts31NumberOfIntroTextLinesThisFrameE_ptr - 0x355ADC
356364:  DCD _ZN11CTheScripts14IntroTextLinesE_ptr - 0x355AE2
356368:  DCD ScriptParams_ptr - 0x355B18
35636C:  DCD _ZN6CPools15ms_pVehiclePoolE_ptr - 0x355B2C
356370:  DCD ScriptParams_ptr - 0x355B56
356374:  DCD _ZN6CPools11ms_pPedPoolE_ptr - 0x355B74
356378:  DCD ScriptParams_ptr - 0x355B9E
35637C:  DCD _ZN6CPools11ms_pPedPoolE_ptr - 0x355BB2
356380:  DCD ScriptParams_ptr - 0x355BDC
356384:  DCD _ZN6CPools11ms_pPedPoolE_ptr - 0x355BF0
356388:  DCD ScriptParams_ptr - 0x355C1A
35638C:  DCD _ZN6CPools11ms_pPedPoolE_ptr - 0x355C2E
356390:  DCD ScriptParams_ptr - 0x355C58
356394:  DCD _ZN6CPools11ms_pPedPoolE_ptr - 0x355C6C
356398:  DCD _ZN14CTaskSequences12ms_bIsOpenedE_ptr - 0x355CB0
35639C:  DCD _ZN14CTaskSequences15ms_taskSequenceE_ptr - 0x355CB2
3563A0:  DCD _ZN14CTaskSequences18ms_iActiveSequenceE_ptr - 0x355CC8
3563A4:  DCD ScriptParams_ptr - 0x355CDA
3563A8:  DCD _ZN11CTheScripts14MissionCleanUpE_ptr - 0x355CF0
3563AC:  DCD ScriptParams_ptr - 0x355D02
3563B0:  DCD _ZN14CTaskSequences12ms_bIsOpenedE_ptr - 0x355D1C
3563B4:  DCD _ZN14CTaskSequences18ms_iActiveSequenceE_ptr - 0x355D1E
3563B8:  DCD ScriptParams_ptr - 0x355D3E
3563BC:  DCD ScriptParams_ptr - 0x355D7A
3563C0:  DCD _ZN6CPools11ms_pPedPoolE_ptr - 0x355D8E
3563C4:  DCD ScriptParams_ptr - 0x355DB8
3563C8:  DCD _ZN6CPools11ms_pPedPoolE_ptr - 0x355DCC
3563CC:  DCD ScriptParams_ptr - 0x355DF8
3563D0:  DCD _ZN14CTaskSequences15ms_taskSequenceE_ptr - 0x355E14
3563D4:  DCD _ZN14CTaskSequences12ms_bIsOpenedE_ptr - 0x355E16
3563D8:  DCD ScriptParams_ptr - 0x355E5C
3563DC:  DCD ScriptParams_ptr - 0x355E7E
3563E0:  DCD _ZN18CScripted2dEffects24ms_effectSequenceTaskIDsE_ptr - 0x355EF8
3563E4:  DCD _ZN18CScripted2dEffects10ms_effectsE_ptr - 0x355EFE
3563E8:  DCD _ZN11CTheScripts14MissionCleanUpE_ptr - 0x355F62
3563EC:  DCD ScriptParams_ptr - 0x355F7C
3563F0:  DCD _ZN18CScripted2dEffects12ms_activatedE_ptr - 0x355F92
3563F4:  DCD _ZN11CTheScripts14MissionCleanUpE_ptr - 0x355FAA
3563F8:  DCD ScriptParams_ptr - 0x355FBE
3563FC:  DCD ScriptParams_ptr - 0x355FD4
356400:  DCD ScriptParams_ptr - 0x355FFA
356404:  DCD ScriptParams_ptr - 0x356018
356408:  DCD _ZN6CPools15ms_pVehiclePoolE_ptr - 0x35602E
35640C:  DCD ScriptParams_ptr - 0x356056
356410:  DCD ScriptParams_ptr - 0x356078
356414:  DCD ScriptParams_ptr - 0x356090
356418:  DCD ScriptParams_ptr - 0x3560C0
35641C:  DCD ScriptParams_ptr - 0x3560E6
356420:  DCD ScriptParams_ptr - 0x356108
356424:  DCD ScriptParams_ptr - 0x356120
356428:  DCD ScriptParams_ptr - 0x356150
35642C:  DCD ScriptParams_ptr - 0x356174
356430:  DCD _ZN6CPools11ms_pPedPoolE_ptr - 0x356186
356434:  DCD ScriptParams_ptr - 0x3561B0
356438:  DCD _ZN10CPedGroups9ms_groupsE_ptr - 0x3561C8
35643C:  DCD ScriptParams_ptr - 0x35620A
356440:  DCD _ZN11CTheScripts14MissionCleanUpE_ptr - 0x35620C
356444:  DCD ScriptParams_ptr - 0x356234
356448:  DCD _ZN6CPools11ms_pPedPoolE_ptr - 0x35624E
35644C:  DCD ScriptParams_ptr - 0x35627E
356450:  DCD _ZN6CPools11ms_pPedPoolE_ptr - 0x356298
356454:  MOV             R0, R4; jumptable 00355416 case 1586
356456:  MOVS            R1, #1; __int16
356458:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
35645C:  LDR.W           R0, =(ScriptParams_ptr - 0x356466)
356460:  MOVS            R1, #8; int
356462:  ADD             R0, PC; ScriptParams_ptr
356464:  LDR             R0, [R0]; ScriptParams
356466:  LDR             R5, [R0]
356468:  MOV             R0, R5; this
35646A:  BLX             j__ZN11CTheScripts25GetActualScriptThingIndexEih; CTheScripts::GetActualScriptThingIndex(int,uchar)
35646E:  MOV             R6, R0
356470:  CMP             R6, #7
356472:  BHI.W           loc_356CB8
356476:  LDR.W           R0, =(_ZN10CPedGroups15ms_activeGroupsE_ptr - 0x35647E)
35647A:  ADD             R0, PC; _ZN10CPedGroups15ms_activeGroupsE_ptr
35647C:  LDR             R0, [R0]; CPedGroups::ms_activeGroups ...
35647E:  LDRB            R0, [R0,R6]
356480:  CMP             R0, #0
356482:  BEQ.W           loc_356CB2
356486:  LDR.W           R0, =(_ZN10CPedGroups9ms_groupsE_ptr - 0x356492)
35648A:  MOV.W           R1, #0x2D4
35648E:  ADD             R0, PC; _ZN10CPedGroups9ms_groupsE_ptr
356490:  LDR             R0, [R0]; CPedGroups::ms_groups ...
356492:  MLA.W           R0, R6, R1, R0
356496:  ADD.W           R8, R0, #8
35649A:  MOV             R0, R8; this
35649C:  BLX             j__ZNK19CPedGroupMembership9GetLeaderEv; CPedGroupMembership::GetLeader(void)
3564A0:  CMP             R0, #0
3564A2:  BEQ.W           loc_356CB2
3564A6:  MOV             R0, R8; this
3564A8:  BLX             j__ZNK19CPedGroupMembership9GetLeaderEv; CPedGroupMembership::GetLeader(void)
3564AC:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
3564B0:  CMP             R0, #1
3564B2:  BNE.W           loc_356CB2
3564B6:  MOV             R0, R6; this
3564B8:  BLX             j__ZN10CPedGroups27RemoveAllFollowersFromGroupEi; CPedGroups::RemoveAllFollowersFromGroup(int)
3564BC:  B.W             loc_3570CA
3564C0:  MOV             R0, R4; jumptable 00355416 case 1587
3564C2:  MOVS            R1, #1; __int16
3564C4:  MOV.W           R9, #1
3564C8:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
3564CC:  LDR.W           R0, =(ScriptParams_ptr - 0x3564D4)
3564D0:  ADD             R0, PC; ScriptParams_ptr
3564D2:  LDR             R0, [R0]; ScriptParams
3564D4:  LDR.W           R8, [R0]
3564D8:  MOVS            R0, #dword_14; this
3564DA:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
3564DE:  MOV             R6, R0
3564E0:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
3564E4:  LDR.W           R0, =(_ZTV23CTaskComplexLeaveAnyCar_ptr - 0x3564F2)
3564E8:  MOVS            R5, #0
3564EA:  STR             R5, [R6,#0xC]
3564EC:  MOV             R1, R8; int
3564EE:  ADD             R0, PC; _ZTV23CTaskComplexLeaveAnyCar_ptr
3564F0:  MOV             R2, R6; CTask *
3564F2:  MOVW            R3, #0x633; int
3564F6:  LDR             R0, [R0]; `vtable for'CTaskComplexLeaveAnyCar ...
3564F8:  ADDS            R0, #8
3564FA:  STR             R0, [R6]
3564FC:  MOV             R0, R4; this
3564FE:  STRH.W          R9, [R6,#0x10]
356502:  BLX             j__ZN14CRunningScript19GivePedScriptedTaskEiP5CTaski; CRunningScript::GivePedScriptedTask(int,CTask *,int)
356506:  B.W             loc_3570CC; jumptable 00355416 cases 1503-1505,1507-1512,1514,1519,1520,1544,1545,1548,1552,1559,1564,1567,1568,1579-1581
35650A:  MOV             R0, R4; jumptable 00355416 case 1588
35650C:  MOVS            R1, #5; __int16
35650E:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
356512:  LDR.W           R0, =(ScriptParams_ptr - 0x35651A)
356516:  ADD             R0, PC; ScriptParams_ptr
356518:  LDR             R0, [R0]; ScriptParams
35651A:  LDRD.W          R8, R0, [R0]
35651E:  CMP             R0, #0
356520:  BLT.W           loc_356AE2
356524:  LDR.W           R1, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x356530)
356528:  UXTB            R3, R0
35652A:  LSRS            R0, R0, #8
35652C:  ADD             R1, PC; _ZN6CPools11ms_pPedPoolE_ptr
35652E:  LDR             R1, [R1]; CPools::ms_pPedPool ...
356530:  LDR             R1, [R1]; CPools::ms_pPedPool
356532:  LDR             R2, [R1,#4]
356534:  LDRB            R2, [R2,R0]
356536:  CMP             R2, R3
356538:  BNE.W           loc_356AE2
35653C:  MOVW            R2, #0x7CC
356540:  LDR             R1, [R1]
356542:  MLA.W           R6, R0, R2, R1
356546:  B               loc_356AE4
356548:  MOV             R0, R4; jumptable 00355416 case 1589
35654A:  MOVS            R1, #3; __int16
35654C:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
356550:  LDR.W           R0, =(ScriptParams_ptr - 0x35655A)
356554:  MOVS            R5, #0
356556:  ADD             R0, PC; ScriptParams_ptr
356558:  LDR             R0, [R0]; ScriptParams
35655A:  LDRD.W          R8, R0, [R0]
35655E:  CMP             R0, #0
356560:  BLT.W           loc_356B1A
356564:  LDR.W           R1, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x356570)
356568:  UXTB            R3, R0
35656A:  LSRS            R0, R0, #8
35656C:  ADD             R1, PC; _ZN6CPools11ms_pPedPoolE_ptr
35656E:  LDR             R1, [R1]; CPools::ms_pPedPool ...
356570:  LDR             R1, [R1]; CPools::ms_pPedPool
356572:  LDR             R2, [R1,#4]
356574:  LDRB            R2, [R2,R0]
356576:  CMP             R2, R3
356578:  BNE.W           loc_356B1A
35657C:  MOVW            R2, #0x7CC
356580:  LDR             R1, [R1]
356582:  MLA.W           R9, R0, R2, R1
356586:  B               loc_356B1E
356588:  MOV             R0, R4; jumptable 00355416 case 1590
35658A:  MOVS            R1, #9; __int16
35658C:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
356590:  B.W             loc_3570CA
356594:  MOV             R0, R4; jumptable 00355416 case 1591
356596:  MOVS            R1, #8; __int16
356598:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
35659C:  LDR.W           R0, =(ScriptParams_ptr - 0x3565A6)
3565A0:  MOVS            R5, #0
3565A2:  ADD             R0, PC; ScriptParams_ptr
3565A4:  LDR             R1, [R0]; ScriptParams
3565A6:  LDR             R0, [R1,#(dword_81A924 - 0x81A908)]
3565A8:  LDR.W           R8, [R1]
3565AC:  VLDR            S16, [R1,#0x14]
3565B0:  CMP             R0, #0
3565B2:  VLDR            S18, [R1,#0x18]
3565B6:  BLT.W           loc_356B54
3565BA:  LDR.W           R1, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x3565C6)
3565BE:  UXTB            R3, R0
3565C0:  LSRS            R0, R0, #8
3565C2:  ADD             R1, PC; _ZN6CPools11ms_pPedPoolE_ptr
3565C4:  LDR             R1, [R1]; CPools::ms_pPedPool ...
3565C6:  LDR             R1, [R1]; CPools::ms_pPedPool
3565C8:  LDR             R2, [R1,#4]
3565CA:  LDRB            R2, [R2,R0]
3565CC:  CMP             R2, R3
3565CE:  BNE.W           loc_356B54
3565D2:  MOVW            R2, #0x7CC
3565D6:  LDR             R1, [R1]
3565D8:  MLA.W           R9, R0, R2, R1
3565DC:  B               loc_356B58
3565DE:  MOV             R0, R4; jumptable 00355416 case 1592
3565E0:  MOVS            R1, #2; __int16
3565E2:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
3565E6:  LDR.W           R0, =(ScriptParams_ptr - 0x3565EE)
3565EA:  ADD             R0, PC; ScriptParams_ptr
3565EC:  LDR             R0, [R0]; ScriptParams
3565EE:  LDR             R0, [R0]
3565F0:  ADDS            R1, R0, #1; unsigned int
3565F2:  BEQ.W           loc_356D1C
3565F6:  CMP             R0, #0
3565F8:  BLT.W           loc_356C8A
3565FC:  LDR.W           R1, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x356608)
356600:  UXTB            R3, R0
356602:  LSRS            R0, R0, #8
356604:  ADD             R1, PC; _ZN6CPools11ms_pPedPoolE_ptr
356606:  LDR             R1, [R1]; CPools::ms_pPedPool ...
356608:  LDR             R1, [R1]; CPools::ms_pPedPool
35660A:  LDR             R2, [R1,#4]
35660C:  LDRB            R2, [R2,R0]
35660E:  CMP             R2, R3
356610:  BNE.W           loc_356C8A
356614:  MOVW            R2, #0x7CC
356618:  LDR             R1, [R1]
35661A:  MLA.W           R4, R0, R2, R1
35661E:  B               loc_356C8C
356620:  MOV             R0, R4; jumptable 00355416 case 1593
356622:  MOVS            R1, #2; __int16
356624:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
356628:  LDR.W           R0, =(ScriptParams_ptr - 0x356630)
35662C:  ADD             R0, PC; ScriptParams_ptr
35662E:  LDR             R0, [R0]; ScriptParams
356630:  LDRD.W          R8, R0, [R0]
356634:  CMP             R0, #0
356636:  BLT.W           loc_356B98
35663A:  LDR.W           R1, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x356646)
35663E:  UXTB            R3, R0
356640:  LSRS            R0, R0, #8
356642:  ADD             R1, PC; _ZN6CPools11ms_pPedPoolE_ptr
356644:  LDR             R1, [R1]; CPools::ms_pPedPool ...
356646:  LDR             R1, [R1]; CPools::ms_pPedPool
356648:  LDR             R2, [R1,#4]
35664A:  LDRB            R2, [R2,R0]
35664C:  CMP             R2, R3
35664E:  BNE.W           loc_356B98
356652:  MOVW            R2, #0x7CC
356656:  LDR             R1, [R1]
356658:  MLA.W           R6, R0, R2, R1
35665C:  B               loc_356B9A
35665E:  MOVS            R1, #0
356660:  B               loc_35683A
356662:  MOVS            R6, #0
356664:  MOVS            R0, #dword_40; this
356666:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
35666A:  VMOV            R3, S16; float
35666E:  LDR.W           R1, =(_ZN27CTaskComplexSmartFleeEntity24ms_iEntityPosCheckPeriodE_ptr - 0x35667C)
356672:  MOV             R5, R0
356674:  LDR.W           R0, =(_ZN27CTaskComplexSmartFleeEntity28ms_fEntityPosChangeThresholdE_ptr - 0x356680)
356678:  ADD             R1, PC; _ZN27CTaskComplexSmartFleeEntity24ms_iEntityPosCheckPeriodE_ptr
35667A:  MOVS            R2, #1; bool
35667C:  ADD             R0, PC; _ZN27CTaskComplexSmartFleeEntity28ms_fEntityPosChangeThresholdE_ptr
35667E:  LDR             R1, [R1]; CTaskComplexSmartFleeEntity::ms_iEntityPosCheckPeriod ...
356680:  LDR             R0, [R0]; CTaskComplexSmartFleeEntity::ms_fEntityPosChangeThreshold ...
356682:  VLDR            S0, [R0]
356686:  LDR             R0, [R1]; CTaskComplexSmartFleeEntity::ms_iEntityPosCheckPeriod
356688:  MOV             R1, R6; CEntity *
35668A:  STRD.W          R9, R0, [SP,#0x1C8+var_1C8]; int
35668E:  MOV             R0, R5; this
356690:  VSTR            S0, [SP,#0x1C8+var_1C0]
356694:  BLX             j__ZN27CTaskComplexSmartFleeEntityC2EP7CEntitybfiif; CTaskComplexSmartFleeEntity::CTaskComplexSmartFleeEntity(CEntity *,bool,float,int,int,float)
356698:  MOV             R0, R4
35669A:  MOV             R1, R8
35669C:  MOV             R2, R5
35669E:  MOVW            R3, #0x5DD
3566A2:  B               loc_356DD0
3566A4:  MOV.W           R9, #0
3566A8:  MOVS            R0, #dword_38; this
3566AA:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
3566AE:  MOV             R6, R0
3566B0:  MOVS            R0, #1
3566B2:  STRD.W          R5, R5, [SP,#0x1C8+var_1C8]; unsigned int
3566B6:  MOV             R1, R9; CPed *
3566B8:  STR             R0, [SP,#0x1C8+var_1C0]; int
3566BA:  MOV             R0, R6; this
3566BC:  MOV.W           R2, #0xFFFFFFFF; int
3566C0:  MOVS            R3, #0; unsigned int
3566C2:  BLX             j__ZN25CTaskComplexKillPedOnFootC2EP4CPedijjji; CTaskComplexKillPedOnFoot::CTaskComplexKillPedOnFoot(CPed *,int,uint,uint,uint,int)
3566C6:  MOV             R0, R4; this
3566C8:  MOV             R1, R8; int
3566CA:  MOV             R2, R6; CTask *
3566CC:  MOVW            R3, #0x5E2; int
3566D0:  BLX             j__ZN14CRunningScript19GivePedScriptedTaskEiP5CTaski; CRunningScript::GivePedScriptedTask(int,CTask *,int)
3566D4:  B.W             loc_3570CC; jumptable 00355416 cases 1503-1505,1507-1512,1514,1519,1520,1544,1545,1548,1552,1559,1564,1567,1568,1579-1581
3566D8:  MOVS            R0, #0; this
3566DA:  LDR.W           R1, =(ScriptParams_ptr - 0x3566E8)
3566DE:  MOVS            R2, #0; unsigned int
3566E0:  MOVS            R3, #0; bool
3566E2:  MOVS            R5, #0
3566E4:  ADD             R1, PC; ScriptParams_ptr
3566E6:  LDR             R1, [R1]; ScriptParams
3566E8:  LDR             R1, [R1,#(dword_81A90C - 0x81A908)]; CVehicle *
3566EA:  BLX             j__ZN17CVehicleRecording24StartPlaybackRecordedCarEP8CVehiclejbb; CVehicleRecording::StartPlaybackRecordedCar(CVehicle *,uint,bool,bool)
3566EE:  B.W             loc_3570CC; jumptable 00355416 cases 1503-1505,1507-1512,1514,1519,1520,1544,1545,1548,1552,1559,1564,1567,1568,1579-1581
3566F2:  MOVS            R0, #0; this
3566F4:  BLX             j__ZN17CVehicleRecording24PausePlaybackRecordedCarEP8CVehicle; CVehicleRecording::PausePlaybackRecordedCar(CVehicle *)
3566F8:  B.W             loc_3570CA
3566FC:  MOVS            R0, #0; this
3566FE:  BLX             j__ZN17CVehicleRecording26UnpausePlaybackRecordedCarEP8CVehicle; CVehicleRecording::UnpausePlaybackRecordedCar(CVehicle *)
356702:  B.W             loc_3570CA
356706:  MOVS            R4, #0
356708:  LDR.W           R1, =(ScriptParams_ptr - 0x356710)
35670C:  ADD             R1, PC; ScriptParams_ptr
35670E:  LDR             R1, [R1]; ScriptParams
356710:  LDR             R1, [R1,#(dword_81A90C - 0x81A908)]
356712:  CMP             R1, #0
356714:  BLT.W           loc_356BCA
356718:  LDR             R2, [R0,#4]
35671A:  UXTB            R3, R1
35671C:  LSRS            R1, R1, #8
35671E:  LDRB            R2, [R2,R1]
356720:  CMP             R2, R3
356722:  BNE.W           loc_356BCA
356726:  MOVW            R2, #0xA2C
35672A:  LDR             R0, [R0]
35672C:  MLA.W           R0, R1, R2, R0
356730:  B               loc_356BCC
356732:  MOVS            R4, #0
356734:  LDR.W           R1, =(ScriptParams_ptr - 0x35673C)
356738:  ADD             R1, PC; ScriptParams_ptr
35673A:  LDR             R1, [R1]; ScriptParams
35673C:  LDR             R1, [R1,#(dword_81A90C - 0x81A908)]
35673E:  CMP             R1, #0
356740:  BLT.W           loc_356BEA
356744:  LDR             R2, [R0,#4]
356746:  UXTB            R3, R1
356748:  LSRS            R1, R1, #8
35674A:  LDRB            R2, [R2,R1]
35674C:  CMP             R2, R3
35674E:  BNE.W           loc_356BEA
356752:  MOVW            R2, #0xA2C
356756:  LDR             R0, [R0]
356758:  MLA.W           R0, R1, R2, R0
35675C:  B               loc_356BEC
35675E:  MOVS            R4, #0
356760:  LDR.W           R1, =(ScriptParams_ptr - 0x356768)
356764:  ADD             R1, PC; ScriptParams_ptr
356766:  LDR             R1, [R1]; ScriptParams
356768:  LDR             R1, [R1,#(dword_81A90C - 0x81A908)]
35676A:  CMP             R1, #0
35676C:  BLT.W           loc_356C0A
356770:  LDR             R2, [R0,#4]
356772:  UXTB            R3, R1
356774:  LSRS            R1, R1, #8
356776:  LDRB            R2, [R2,R1]
356778:  CMP             R2, R3
35677A:  BNE.W           loc_356C0A
35677E:  MOVW            R2, #0xA2C
356782:  LDR             R0, [R0]
356784:  MLA.W           R0, R1, R2, R0
356788:  B               loc_356C0C
35678A:  MOVS            R4, #0
35678C:  LDR.W           R1, =(ScriptParams_ptr - 0x356794)
356790:  ADD             R1, PC; ScriptParams_ptr
356792:  LDR             R1, [R1]; ScriptParams
356794:  LDR             R1, [R1,#(dword_81A90C - 0x81A908)]
356796:  CMP             R1, #0
356798:  BLT.W           loc_356C2A
35679C:  LDR             R2, [R0,#4]
35679E:  UXTB            R3, R1
3567A0:  LSRS            R1, R1, #8
3567A2:  LDRB            R2, [R2,R1]
3567A4:  CMP             R2, R3
3567A6:  BNE.W           loc_356C2A
3567AA:  MOVW            R2, #0xA2C
3567AE:  LDR             R0, [R0]
3567B0:  MLA.W           R0, R1, R2, R0
3567B4:  B               loc_356C2C
3567B6:  MOVS            R5, #0
3567B8:  MOVS            R0, #dword_34; this
3567BA:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
3567BE:  MOV             R6, R0
3567C0:  LDR.W           R0, =(_ZN29CTaskComplexGoToPointAnyMeans16ms_fTargetRadiusE_ptr - 0x3567CE)
3567C4:  MOV.W           R1, #0xFFFFFFFF
3567C8:  ADD             R2, SP, #0x1C8+var_138; CVector *
3567CA:  ADD             R0, PC; _ZN29CTaskComplexGoToPointAnyMeans16ms_fTargetRadiusE_ptr
3567CC:  STR             R1, [SP,#0x1C8+var_1C4]; int
3567CE:  MOV             R1, R9; int
3567D0:  MOV             R3, R5; CVehicle *
3567D2:  LDR             R0, [R0]; CTaskComplexGoToPointAnyMeans::ms_fTargetRadius ...
3567D4:  VLDR            S0, [R0]
3567D8:  MOV             R0, R6; this
3567DA:  VSTR            S0, [SP,#0x1C8+var_1C8]
3567DE:  BLX             j__ZN29CTaskComplexGoToPointAnyMeansC2EiRK7CVectorP8CVehiclefi; CTaskComplexGoToPointAnyMeans::CTaskComplexGoToPointAnyMeans(int,CVector const&,CVehicle *,float,int)
3567E2:  MOV             R0, R4
3567E4:  MOV             R1, R8
3567E6:  MOV             R2, R6
3567E8:  MOVW            R3, #0x603
3567EC:  B               loc_356DD0
3567EE:  MOVS            R4, #0
3567F0:  LDR.W           R0, =(ScriptParams_ptr - 0x3567F8)
3567F4:  ADD             R0, PC; ScriptParams_ptr
3567F6:  LDR             R0, [R0]; ScriptParams
3567F8:  LDR             R0, [R0,#(dword_81A90C - 0x81A908)]; this
3567FA:  ADDS            R1, R0, #1
3567FC:  BEQ.W           loc_356D58
356800:  MOVS            R1, #7; int
356802:  BLX             j__ZN11CTheScripts25GetActualScriptThingIndexEih; CTheScripts::GetActualScriptThingIndex(int,uchar)
356806:  MOV             R1, R0
356808:  ADDS            R0, R1, #1
35680A:  BNE.W           loc_356D5C
35680E:  B.W             loc_3570CA
356812:  MOVS            R0, #0; this
356814:  BLX             j__ZN17CVehicleRecording23IsPlaybackGoingOnForCarEP8CVehicle; CVehicleRecording::IsPlaybackGoingOnForCar(CVehicle *)
356818:  MOV             R1, R0
35681A:  B               loc_35683A
35681C:  MOVS            R6, #0
35681E:  ADD             R5, SP, #0x1C8+var_138
356820:  MOV             R0, R4; this
356822:  MOVS            R2, #0x18; unsigned __int8
356824:  MOV             R1, R5; char *
356826:  BLX             j__ZN14CRunningScript23ReadTextLabelFromScriptEPch; CRunningScript::ReadTextLabelFromScript(char *,uchar)
35682A:  LDR             R0, [R6,#0x18]; int
35682C:  MOV             R1, R5; this
35682E:  BLX             j__Z30RpAnimBlendClumpGetAssociationP7RpClumpPKc; RpAnimBlendClumpGetAssociation(RpClump *,char const*)
356832:  MOV             R1, R0
356834:  CMP             R1, #0
356836:  IT NE
356838:  MOVNE           R1, #1; unsigned __int8
35683A:  MOV             R0, R4; this
35683C:  BLX             j__ZN14CRunningScript17UpdateCompareFlagEh; CRunningScript::UpdateCompareFlag(uchar)
356840:  B.W             loc_3570CA
356844:  MOVS            R6, #0
356846:  ADD             R5, SP, #0x1C8+var_138
356848:  MOV             R0, R4; this
35684A:  MOVS            R2, #0x18; unsigned __int8
35684C:  MOV             R1, R5; char *
35684E:  BLX             j__ZN14CRunningScript23ReadTextLabelFromScriptEPch; CRunningScript::ReadTextLabelFromScript(char *,uchar)
356852:  LDR             R0, [R6,#0x18]; int
356854:  MOV             R1, R5; this
356856:  BLX             j__Z30RpAnimBlendClumpGetAssociationP7RpClumpPKc; RpAnimBlendClumpGetAssociation(RpClump *,char const*)
35685A:  MOV             R5, R0
35685C:  MOV             R0, R4; this
35685E:  MOVS            R1, #1; __int16
356860:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
356864:  CMP             R5, #0
356866:  BEQ.W           loc_3570CA
35686A:  LDR.W           R0, =(ScriptParams_ptr - 0x356872)
35686E:  ADD             R0, PC; ScriptParams_ptr
356870:  LDR             R1, [R0]; ScriptParams
356872:  LDRH            R0, [R5,#0x2E]
356874:  LDR             R1, [R1]
356876:  CMP             R1, #0
356878:  ITE NE
35687A:  ORRNE.W         R0, R0, #1
35687E:  BICEQ.W         R0, R0, #1
356882:  STRH            R0, [R5,#0x2E]
356884:  B.W             loc_3570CA
356888:  MOVS            R6, #0
35688A:  ADD             R5, SP, #0x1C8+var_138
35688C:  MOV             R0, R4; this
35688E:  MOVS            R2, #0x18; unsigned __int8
356890:  MOV             R1, R5; char *
356892:  BLX             j__ZN14CRunningScript23ReadTextLabelFromScriptEPch; CRunningScript::ReadTextLabelFromScript(char *,uchar)
356896:  LDR             R0, [R6,#0x18]; int
356898:  MOV             R1, R5; this
35689A:  BLX             j__Z30RpAnimBlendClumpGetAssociationP7RpClumpPKc; RpAnimBlendClumpGetAssociation(RpClump *,char const*)
35689E:  CMP             R0, #0
3568A0:  BEQ.W           loc_356D66
3568A4:  LDR             R1, [R0,#0x14]
3568A6:  VLDR            S0, [R0,#0x20]
3568AA:  VLDR            S2, [R1,#0x10]
3568AE:  VDIV.F32        S0, S0, S2
3568B2:  VMOV            R0, S0
3568B6:  B               loc_356D68
3568B8:  MOVS            R6, #0
3568BA:  ADD             R5, SP, #0x1C8+var_138
3568BC:  MOV             R0, R4; this
3568BE:  MOVS            R2, #0x18; unsigned __int8
3568C0:  MOV             R1, R5; char *
3568C2:  BLX             j__ZN14CRunningScript23ReadTextLabelFromScriptEPch; CRunningScript::ReadTextLabelFromScript(char *,uchar)
3568C6:  LDR             R0, [R6,#0x18]; int
3568C8:  MOV             R1, R5; this
3568CA:  BLX             j__Z30RpAnimBlendClumpGetAssociationP7RpClumpPKc; RpAnimBlendClumpGetAssociation(RpClump *,char const*)
3568CE:  MOV             R5, R0
3568D0:  MOV             R0, R4; this
3568D2:  MOVS            R1, #1; __int16
3568D4:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
3568D8:  CMP             R5, #0
3568DA:  BEQ.W           loc_3570CA
3568DE:  LDR.W           R0, =(ScriptParams_ptr - 0x3568E8)
3568E2:  LDR             R1, [R5,#0x14]
3568E4:  ADD             R0, PC; ScriptParams_ptr
3568E6:  LDR             R0, [R0]; ScriptParams
3568E8:  VLDR            S0, [R1,#0x10]
3568EC:  VLDR            S2, [R0]
3568F0:  MOV             R0, R5; this
3568F2:  VMUL.F32        S0, S2, S0
3568F6:  VMOV            R1, S0; float
3568FA:  BLX             j__ZN21CAnimBlendAssociation14SetCurrentTimeEf; CAnimBlendAssociation::SetCurrentTime(float)
3568FE:  B.W             loc_3570CA
356902:  MOVS            R0, #0
356904:  LDR.W           R1, =(ScriptParams_ptr - 0x356912)
356908:  MOVS            R5, #0
35690A:  LDR.W           R2, [R0,#0x1C]!
35690E:  ADD             R1, PC; ScriptParams_ptr
356910:  LDR             R3, [R1]; ScriptParams
356912:  LDR             R1, [R0,#4]
356914:  LDR             R3, [R3,#(dword_81A90C - 0x81A908)]
356916:  CMP             R3, #0
356918:  ITE NE
35691A:  ORRNE.W         R2, R2, #1
35691E:  BICEQ.W         R2, R2, #1
356922:  STRD.W          R2, R1, [R0]
356926:  B.W             loc_3570CC; jumptable 00355416 cases 1503-1505,1507-1512,1514,1519,1520,1544,1545,1548,1552,1559,1564,1567,1568,1579-1581
35692A:  MOVS            R6, #0
35692C:  ADD             R5, SP, #0x1C8+var_138
35692E:  MOV             R0, R4; this
356930:  MOVS            R2, #0x18; unsigned __int8
356932:  MOV             R1, R5; char *
356934:  BLX             j__ZN14CRunningScript23ReadTextLabelFromScriptEPch; CRunningScript::ReadTextLabelFromScript(char *,uchar)
356938:  LDR             R0, [R6,#0x18]; int
35693A:  MOV             R1, R5; this
35693C:  BLX             j__Z30RpAnimBlendClumpGetAssociationP7RpClumpPKc; RpAnimBlendClumpGetAssociation(RpClump *,char const*)
356940:  CMP             R0, #0
356942:  BEQ.W           loc_356D70
356946:  LDR             R0, [R0,#0x14]
356948:  VLDR            S0, =1000.0
35694C:  LDR.W           R1, =(ScriptParams_ptr - 0x356958)
356950:  VLDR            S2, [R0,#0x10]
356954:  ADD             R1, PC; ScriptParams_ptr
356956:  VMUL.F32        S0, S2, S0
35695A:  VMOV            R0, S0
35695E:  B               loc_356D78
356960:  MOV.W           R9, #0
356964:  MOVS            R0, #dword_34; this
356966:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
35696A:  MOV             R1, R9; CVehicle *
35696C:  MOVS            R2, #0; int
35696E:  MOVS            R3, #0; int
356970:  MOV             R6, R0
356972:  STRD.W          R5, R5, [SP,#0x1C8+var_1C8]; bool
356976:  BLX             j__ZN20CTaskComplexLeaveCarC2EP8CVehicleiibb_0; CTaskComplexLeaveCar::CTaskComplexLeaveCar(CVehicle *,int,int,bool,bool)
35697A:  MOV             R0, R4; this
35697C:  MOV             R1, R8; int
35697E:  MOV             R2, R6; CTask *
356980:  MOVW            R3, #0x622; int
356984:  BLX             j__ZN14CRunningScript19GivePedScriptedTaskEiP5CTaski; CRunningScript::GivePedScriptedTask(int,CTask *,int)
356988:  B               loc_3570CC; jumptable 00355416 cases 1503-1505,1507-1512,1514,1519,1520,1544,1545,1548,1552,1559,1564,1567,1568,1579-1581
35698A:  MOVS            R0, #0; this
35698C:  LDR.W           R1, =(ScriptParams_ptr - 0x356994)
356990:  ADD             R1, PC; ScriptParams_ptr
356992:  LDR             R5, [R1]; ScriptParams
356994:  LDR             R1, [R5,#(dword_81A90C - 0x81A908)]; CPed *
356996:  BLX             j__ZN22CPedScriptedTaskRecord9GetStatusEPK4CPedi; CPedScriptedTaskRecord::GetStatus(CPed const*,int)
35699A:  ADDS            R1, R0, #1
35699C:  IT EQ
35699E:  MOVEQ           R0, #7
3569A0:  STR             R0, [R5]
3569A2:  B               loc_3570C2
3569A4:  MOVS            R5, #0
3569A6:  CMP             R4, #7
3569A8:  BHI.W           loc_3570CA
3569AC:  MOV             R0, R5; this
3569AE:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
3569B2:  CBNZ            R0, loc_3569E8
3569B4:  MOVS            R0, #word_28; this
3569B6:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
3569BA:  MOV             R1, R4; int
3569BC:  MOVS            R2, #1; bool
3569BE:  MOV             R6, R0
3569C0:  BLX             j__ZN21CTaskComplexBeInGroupC2Eib; CTaskComplexBeInGroup::CTaskComplexBeInGroup(int,bool)
3569C4:  ADD.W           R8, SP, #0x1C8+var_138
3569C8:  MOVS            R1, #3; int
3569CA:  MOV             R2, R6; CTask *
3569CC:  MOVS            R3, #0; bool
3569CE:  MOV             R0, R8; this
3569D0:  BLX             j__ZN19CEventScriptCommandC2EiP5CTaskb; CEventScriptCommand::CEventScriptCommand(int,CTask *,bool)
3569D4:  LDR.W           R0, [R5,#0x440]
3569D8:  MOV             R1, R8; CEvent *
3569DA:  MOVS            R2, #0; bool
3569DC:  ADDS            R0, #0x68 ; 'h'; this
3569DE:  BLX             j__ZN11CEventGroup3AddER6CEventb; CEventGroup::Add(CEvent &,bool)
3569E2:  MOV             R0, R8; this
3569E4:  BLX             j__ZN19CEventScriptCommandD2Ev; CEventScriptCommand::~CEventScriptCommand()
3569E8:  LDR.W           R0, =(_ZN10CPedGroups9ms_groupsE_ptr - 0x3569F4)
3569EC:  MOV.W           R1, #0x2D4
3569F0:  ADD             R0, PC; _ZN10CPedGroups9ms_groupsE_ptr
3569F2:  LDR             R0, [R0]; CPedGroups::ms_groups ...
3569F4:  MLA.W           R4, R4, R1, R0
3569F8:  MOV             R1, R5; CPed *
3569FA:  ADD.W           R0, R4, #8; this
3569FE:  BLX             j__ZN19CPedGroupMembership9SetLeaderEP4CPed; CPedGroupMembership::SetLeader(CPed *)
356A02:  MOV             R0, R4; this
356A04:  BLX             j__ZN9CPedGroup7ProcessEv; CPedGroup::Process(void)
356A08:  B               loc_3570CA
356A0A:  MOV.W           R9, #0
356A0E:  CMP             R5, #7
356A10:  BHI.W           loc_3570CA
356A14:  MOVS            R0, #word_28; this
356A16:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
356A1A:  MOV             R1, R5; int
356A1C:  MOVS            R2, #0; bool
356A1E:  MOV             R4, R0
356A20:  BLX             j__ZN21CTaskComplexBeInGroupC2Eib; CTaskComplexBeInGroup::CTaskComplexBeInGroup(int,bool)
356A24:  ADD             R6, SP, #0x1C8+var_150
356A26:  MOVS            R1, #3; int
356A28:  MOV             R2, R4; CTask *
356A2A:  MOVS            R3, #0; bool
356A2C:  MOV             R0, R6; this
356A2E:  BLX             j__ZN19CEventScriptCommandC2EiP5CTaskb; CEventScriptCommand::CEventScriptCommand(int,CTask *,bool)
356A32:  LDR.W           R0, [R9,#0x440]
356A36:  MOV             R1, R6; CEvent *
356A38:  MOVS            R2, #0; bool
356A3A:  ADDS            R0, #0x68 ; 'h'; this
356A3C:  BLX             j__ZN11CEventGroup3AddER6CEventb; CEventGroup::Add(CEvent &,bool)
356A40:  LDR.W           R0, =(_ZN10CPedGroups9ms_groupsE_ptr - 0x356A4C)
356A44:  MOV.W           R1, #0x2D4
356A48:  ADD             R0, PC; _ZN10CPedGroups9ms_groupsE_ptr
356A4A:  LDR             R0, [R0]; CPedGroups::ms_groups ...
356A4C:  MLA.W           R10, R5, R1, R0
356A50:  ADD.W           R4, R10, #8
356A54:  MOV             R0, R4; this
356A56:  BLX             j__ZNK19CPedGroupMembership27CountMembersExcludingLeaderEv; CPedGroupMembership::CountMembersExcludingLeader(void)
356A5A:  CMP             R0, #7
356A5C:  BLT             loc_356A7C
356A5E:  MOV             R0, R4; this
356A60:  BLX             j__ZNK19CPedGroupMembership9GetLeaderEv; CPedGroupMembership::GetLeader(void)
356A64:  CBZ             R0, loc_356A7C
356A66:  MOV             R0, R4; this
356A68:  BLX             j__ZNK19CPedGroupMembership9GetLeaderEv; CPedGroupMembership::GetLeader(void)
356A6C:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
356A70:  CMP             R0, #1
356A72:  BNE             loc_356A7C
356A74:  MOV             R0, R4; this
356A76:  MOVS            R1, #1; int
356A78:  BLX             j__ZN19CPedGroupMembership16RemoveNFollowersEi; CPedGroupMembership::RemoveNFollowers(int)
356A7C:  MOV             R0, R4; this
356A7E:  MOV             R1, R9; CPed *
356A80:  BLX             j__ZN19CPedGroupMembership11AddFollowerEP4CPed; CPedGroupMembership::AddFollower(CPed *)
356A84:  MOV             R0, R10; this
356A86:  BLX             j__ZN9CPedGroup7ProcessEv; CPedGroup::Process(void)
356A8A:  MOV             R0, R4; this
356A8C:  BLX             j__ZNK19CPedGroupMembership9GetLeaderEv; CPedGroupMembership::GetLeader(void)
356A90:  MOV             R4, R0
356A92:  CMP             R4, #0
356A94:  BEQ.W           loc_35723A
356A98:  LDRB.W          R0, [R4,#0x485]
356A9C:  LSLS            R0, R0, #0x1F
356A9E:  ITT NE
356AA0:  LDRNE.W         R6, [R4,#0x590]
356AA4:  CMPNE           R6, #0
356AA6:  BNE             loc_356AC0
356AA8:  LDR.W           R0, [R4,#0x440]; this
356AAC:  MOVW            R1, #0x2BD; int
356AB0:  BLX             j__ZNK16CPedIntelligence14FindTaskByTypeEi; CPedIntelligence::FindTaskByType(int)
356AB4:  CMP             R0, #0
356AB6:  ITT NE
356AB8:  LDRNE           R6, [R0,#0xC]
356ABA:  CMPNE           R6, #0
356ABC:  BEQ.W           loc_35723A
356AC0:  LDRB.W          R0, [R6,#0x48C]
356AC4:  CMP             R0, #0
356AC6:  BEQ.W           loc_35723A
356ACA:  MOVS            R1, #0
356ACC:  ADD.W           R2, R6, R1,LSL#2
356AD0:  LDR.W           R2, [R2,#0x468]
356AD4:  CMP             R2, #0
356AD6:  BEQ.W           loc_3570F0
356ADA:  ADDS            R1, #1
356ADC:  CMP             R1, R0
356ADE:  BLT             loc_356ACC
356AE0:  B               loc_35723A
356AE2:  MOVS            R6, #0
356AE4:  MOVS            R0, #dword_38; this
356AE6:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
356AEA:  MOV             R5, R0
356AEC:  LDR.W           R0, =(ScriptParams_ptr - 0x356AF6)
356AF0:  MOVS            R2, #1
356AF2:  ADD             R0, PC; ScriptParams_ptr
356AF4:  LDR             R0, [R0]; ScriptParams
356AF6:  LDRD.W          R3, R1, [R0,#(dword_81A910 - 0x81A908)]; unsigned int
356AFA:  LDR             R0, [R0,#(dword_81A918 - 0x81A908)]
356AFC:  STRD.W          R1, R0, [SP,#0x1C8+var_1C8]; unsigned int
356B00:  MOV             R0, R5; this
356B02:  STR             R2, [SP,#0x1C8+var_1C0]; int
356B04:  MOV             R1, R6; CPed *
356B06:  MOV.W           R2, #0xFFFFFFFF; int
356B0A:  BLX             j__ZN25CTaskComplexKillPedOnFootC2EP4CPedijjji; CTaskComplexKillPedOnFoot::CTaskComplexKillPedOnFoot(CPed *,int,uint,uint,uint,int)
356B0E:  MOV             R0, R4
356B10:  MOV             R1, R8
356B12:  MOV             R2, R5
356B14:  MOVW            R3, #0x634
356B18:  B               loc_356DD0
356B1A:  MOV.W           R9, #0
356B1E:  MOVS            R0, #off_3C; this
356B20:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
356B24:  MOV             R6, R0
356B26:  LDR.W           R0, =(ScriptParams_ptr - 0x356B32)
356B2A:  MOVS            R1, #1
356B2C:  MOVS            R2, #0; CVector *
356B2E:  ADD             R0, PC; ScriptParams_ptr
356B30:  MOVS            R3, #0; CVector *
356B32:  LDR             R0, [R0]; ScriptParams
356B34:  LDR             R0, [R0,#(dword_81A910 - 0x81A908)]
356B36:  STRD.W          R5, R1, [SP,#0x1C8+var_1C8]; signed __int8
356B3A:  MOV             R1, R9; CEntity *
356B3C:  STR             R0, [SP,#0x1C8+var_1C0]; int
356B3E:  MOV             R0, R6; this
356B40:  BLX             j__ZN21CTaskSimpleGunControlC2EP7CEntityPK7CVectorS4_asi; CTaskSimpleGunControl::CTaskSimpleGunControl(CEntity *,CVector const*,CVector const*,signed char,short,int)
356B44:  MOV             R0, R4; this
356B46:  MOV             R1, R8; int
356B48:  MOV             R2, R6; CTask *
356B4A:  MOVW            R3, #0x635; int
356B4E:  BLX             j__ZN14CRunningScript19GivePedScriptedTaskEiP5CTaski; CRunningScript::GivePedScriptedTask(int,CTask *,int)
356B52:  B               loc_3570CC; jumptable 00355416 cases 1503-1505,1507-1512,1514,1519,1520,1544,1545,1548,1552,1559,1564,1567,1568,1579-1581
356B54:  MOV.W           R9, #0
356B58:  LDR.W           R0, =(ScriptParams_ptr - 0x356B62)
356B5C:  ADD             R3, SP, #0x1C8+var_1A8
356B5E:  ADD             R0, PC; ScriptParams_ptr
356B60:  LDR             R6, [R0]; ScriptParams
356B62:  ADDS            R2, R6, #4
356B64:  LDM             R2, {R0-R2}; unsigned int
356B66:  STM             R3!, {R0-R2}
356B68:  MOVS            R0, #dword_38; this
356B6A:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
356B6E:  LDR             R1, [R6,#(dword_81A918 - 0x81A908)]
356B70:  ADD             R2, SP, #0x1C8+var_1A8
356B72:  MOV             R3, R9
356B74:  VSTR            S16, [SP,#0x1C8+var_1BC]
356B78:  VSTR            S18, [SP,#0x1C8+var_1B8]
356B7C:  MOV             R10, R0
356B7E:  STRD.W          R5, R5, [SP,#0x1C8+var_1C8]
356B82:  STR             R5, [SP,#0x1C8+var_1C0]
356B84:  BLX             j__ZN29CTaskComplexGoToPointShootingC2EiRK7CVectorP7CEntityS0_ff; CTaskComplexGoToPointShooting::CTaskComplexGoToPointShooting(int,CVector const&,CEntity *,CVector,float,float)
356B88:  MOV             R0, R4; this
356B8A:  MOV             R1, R8; int
356B8C:  MOV             R2, R10; CTask *
356B8E:  MOVW            R3, #0x637; int
356B92:  BLX             j__ZN14CRunningScript19GivePedScriptedTaskEiP5CTaski; CRunningScript::GivePedScriptedTask(int,CTask *,int)
356B96:  B               loc_3570CC; jumptable 00355416 cases 1503-1505,1507-1512,1514,1519,1520,1544,1545,1548,1552,1559,1564,1567,1568,1579-1581
356B98:  MOVS            R6, #0
356B9A:  MOVS            R0, #word_28; this
356B9C:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
356BA0:  LDR.W           R1, =(_ZN25CTaskSimpleAchieveHeading20ms_fHeadingToleranceE_ptr - 0x356BAE)
356BA4:  MOV             R5, R0
356BA6:  LDR.W           R0, =(_ZN25CTaskSimpleAchieveHeading25ms_fHeadingChangeRateFracE_ptr - 0x356BB0)
356BAA:  ADD             R1, PC; _ZN25CTaskSimpleAchieveHeading20ms_fHeadingToleranceE_ptr
356BAC:  ADD             R0, PC; _ZN25CTaskSimpleAchieveHeading25ms_fHeadingChangeRateFracE_ptr
356BAE:  LDR             R1, [R1]; CTaskSimpleAchieveHeading::ms_fHeadingTolerance ...
356BB0:  LDR             R0, [R0]; CTaskSimpleAchieveHeading::ms_fHeadingChangeRateFrac ...
356BB2:  LDR             R3, [R1]; float
356BB4:  MOV             R1, R6; CEntity *
356BB6:  LDR             R2, [R0]; float
356BB8:  MOV             R0, R5; this
356BBA:  BLX             j__ZN35CTaskComplexTurnToFaceEntityOrCoordC2EP7CEntityff; CTaskComplexTurnToFaceEntityOrCoord::CTaskComplexTurnToFaceEntityOrCoord(CEntity *,float,float)
356BBE:  MOV             R0, R4
356BC0:  MOV             R1, R8
356BC2:  MOV             R2, R5
356BC4:  MOVW            R3, #0x639
356BC8:  B               loc_356DD0
356BCA:  MOVS            R0, #0; this
356BCC:  ADD.W           R1, R4, #0x420; CEntity **
356BD0:  STR.W           R0, [R4,#0x420]
356BD4:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
356BD8:  LDRB.W          R0, [R4,#0x3BE]
356BDC:  SUBS            R0, #0x39 ; '9'
356BDE:  UXTB            R0, R0
356BE0:  CMP             R0, #2
356BE2:  BCC.W           loc_3570CA
356BE6:  MOVS            R0, #0x1D
356BE8:  B               loc_356C48
356BEA:  MOVS            R0, #0; this
356BEC:  ADD.W           R1, R4, #0x420; CEntity **
356BF0:  STR.W           R0, [R4,#0x420]
356BF4:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
356BF8:  LDRB.W          R0, [R4,#0x3BE]
356BFC:  SUBS            R0, #0x39 ; '9'
356BFE:  UXTB            R0, R0
356C00:  CMP             R0, #2
356C02:  BCC.W           loc_3570CA
356C06:  MOVS            R0, #0x1E
356C08:  B               loc_356C48
356C0A:  MOVS            R0, #0; this
356C0C:  ADD.W           R1, R4, #0x420; CEntity **
356C10:  STR.W           R0, [R4,#0x420]
356C14:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
356C18:  LDRB.W          R0, [R4,#0x3BE]
356C1C:  SUBS            R0, #0x39 ; '9'
356C1E:  UXTB            R0, R0
356C20:  CMP             R0, #2
356C22:  BCC.W           loc_3570CA
356C26:  MOVS            R0, #0x1F
356C28:  B               loc_356C48
356C2A:  MOVS            R0, #0; this
356C2C:  ADD.W           R1, R4, #0x420; CEntity **
356C30:  STR.W           R0, [R4,#0x420]
356C34:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
356C38:  LDRB.W          R0, [R4,#0x3BE]
356C3C:  SUBS            R0, #0x39 ; '9'
356C3E:  UXTB            R0, R0
356C40:  CMP             R0, #2
356C42:  BCC.W           loc_3570CA
356C46:  MOVS            R0, #0x20 ; ' '
356C48:  STRB.W          R0, [R4,#0x3BE]
356C4C:  B               loc_3570CA
356C4E:  LDR.W           R0, =(ScriptParams_ptr - 0x356C56)
356C52:  ADD             R0, PC; ScriptParams_ptr
356C54:  B               loc_356C64
356C56:  LDR.W           R0, =(ScriptParams_ptr - 0x356C5E)
356C5A:  ADD             R0, PC; ScriptParams_ptr
356C5C:  B               loc_356C64
356C5E:  LDR.W           R0, =(ScriptParams_ptr - 0x356C66)
356C62:  ADD             R0, PC; ScriptParams_ptr
356C64:  LDR             R0, [R0]; ScriptParams
356C66:  MOV.W           R1, #0xFFFFFFFF
356C6A:  STR             R1, [R0]
356C6C:  B               loc_3570C2
356C6E:  MOVS            R5, #0
356C70:  VMOV            R4, S0
356C74:  LDR.W           R0, [R5,#0x440]; this
356C78:  MOV             R1, R4; float
356C7A:  BLX             j__ZN16CPedIntelligence14SetSeeingRangeEf; CPedIntelligence::SetSeeingRange(float)
356C7E:  LDR.W           R0, [R5,#0x440]; this
356C82:  MOV             R1, R4; float
356C84:  BLX             j__ZN16CPedIntelligence15SetHearingRangeEf; CPedIntelligence::SetHearingRange(float)
356C88:  B               loc_3570CA
356C8A:  MOVS            R4, #0
356C8C:  LDR.W           R0, =(ScriptParams_ptr - 0x356C96)
356C90:  ADD             R5, SP, #0x1C8+var_138
356C92:  ADD             R0, PC; ScriptParams_ptr
356C94:  LDR             R0, [R0]; ScriptParams
356C96:  LDR             R1, [R0,#(dword_81A90C - 0x81A908)]
356C98:  MOV             R0, R5; this
356C9A:  CMP             R1, #0
356C9C:  IT NE
356C9E:  MOVNE           R1, #1; bool
356CA0:  BLX             j__ZN29CTaskSimpleSetStayInSamePlaceC2Eb; CTaskSimpleSetStayInSamePlace::CTaskSimpleSetStayInSamePlace(bool)
356CA4:  MOV             R1, R4; CPed *
356CA6:  BLX             j__ZN29CTaskSimpleSetStayInSamePlace10ProcessPedEP4CPed; CTaskSimpleSetStayInSamePlace::ProcessPed(CPed *)
356CAA:  MOV             R0, R5; this
356CAC:  BLX             j__ZN29CTaskSimpleSetStayInSamePlaceD2Ev; CTaskSimpleSetStayInSamePlace::~CTaskSimpleSetStayInSamePlace()
356CB0:  B               loc_3570CA
356CB2:  MOV             R0, R6; this
356CB4:  BLX             j__ZN10CPedGroups11RemoveGroupEi; CPedGroups::RemoveGroup(int)
356CB8:  LDRB.W          R0, [R4,#0xE6]
356CBC:  CMP             R0, #0
356CBE:  BEQ.W           loc_3570CA
356CC2:  LDR.W           R0, =(_ZN11CTheScripts14MissionCleanUpE_ptr - 0x356CCE)
356CC6:  MOV             R1, R5
356CC8:  MOVS            R2, #5
356CCA:  ADD             R0, PC; _ZN11CTheScripts14MissionCleanUpE_ptr
356CCC:  B               loc_356E30
356CCE:  ALIGN 0x10
356CD0:  DCFS 1000.0
356CD4:  LDR.W           R0, =(_ZN6CWorld23ms_listMovingEntityPtrsE_ptr - 0x356CDC)
356CD8:  ADD             R0, PC; _ZN6CWorld23ms_listMovingEntityPtrsE_ptr
356CDA:  LDR             R0, [R0]; CWorld::ms_listMovingEntityPtrs ...
356CDC:  LDR             R6, [R0]; CWorld::ms_listMovingEntityPtrs
356CDE:  CMP             R6, #0
356CE0:  BEQ.W           loc_3570CA
356CE4:  VMOV            R4, S0
356CE8:  LDRD.W          R5, R6, [R6]
356CEC:  LDRB.W          R0, [R5,#0x3A]
356CF0:  AND.W           R0, R0, #7
356CF4:  CMP             R0, #3
356CF6:  ITT EQ
356CF8:  LDRBEQ.W        R0, [R5,#0x448]
356CFC:  CMPEQ           R0, #2
356CFE:  BNE             loc_356D14
356D00:  LDR.W           R0, [R5,#0x440]; this
356D04:  MOV             R1, R4; float
356D06:  BLX             j__ZN16CPedIntelligence14SetSeeingRangeEf; CPedIntelligence::SetSeeingRange(float)
356D0A:  LDR.W           R0, [R5,#0x440]; this
356D0E:  MOV             R1, R4; float
356D10:  BLX             j__ZN16CPedIntelligence15SetHearingRangeEf; CPedIntelligence::SetHearingRange(float)
356D14:  MOVS            R5, #0
356D16:  CMP             R6, #0
356D18:  BNE             loc_356CE8
356D1A:  B               loc_3570CC; jumptable 00355416 cases 1503-1505,1507-1512,1514,1519,1520,1544,1545,1548,1552,1559,1564,1567,1568,1579-1581
356D1C:  MOVS            R0, #(byte_9+3); this
356D1E:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
356D22:  MOV             R4, R0
356D24:  LDR.W           R0, =(ScriptParams_ptr - 0x356D2C)
356D28:  ADD             R0, PC; ScriptParams_ptr
356D2A:  LDR             R0, [R0]; ScriptParams
356D2C:  LDR             R1, [R0,#(dword_81A90C - 0x81A908)]
356D2E:  MOV             R0, R4; this
356D30:  CMP             R1, #0
356D32:  IT NE
356D34:  MOVNE           R1, #1; bool
356D36:  BLX             j__ZN29CTaskSimpleSetStayInSamePlaceC2Eb; CTaskSimpleSetStayInSamePlace::CTaskSimpleSetStayInSamePlace(bool)
356D3A:  LDR.W           R0, =(_ZN14CTaskSequences18ms_iActiveSequenceE_ptr - 0x356D46)
356D3E:  LDR.W           R1, =(_ZN14CTaskSequences15ms_taskSequenceE_ptr - 0x356D48)
356D42:  ADD             R0, PC; _ZN14CTaskSequences18ms_iActiveSequenceE_ptr
356D44:  ADD             R1, PC; _ZN14CTaskSequences15ms_taskSequenceE_ptr
356D46:  LDR             R0, [R0]; CTaskSequences::ms_iActiveSequence ...
356D48:  LDR             R1, [R1]; CTaskSequences::ms_taskSequence ...
356D4A:  LDR             R0, [R0]; CTaskSequences::ms_iActiveSequence
356D4C:  ADD.W           R0, R1, R0,LSL#6; this
356D50:  MOV             R1, R4; CTask *
356D52:  BLX             j__ZN20CTaskComplexSequence7AddTaskEP5CTask; CTaskComplexSequence::AddTask(CTask *)
356D56:  B               loc_3570CA
356D58:  MOV.W           R1, #0xFFFFFFFF; int
356D5C:  LDR.W           R0, [R4,#0x440]; this
356D60:  BLX             j__ZN16CPedIntelligence23SetPedDecisionMakerTypeEi; CPedIntelligence::SetPedDecisionMakerType(int)
356D64:  B               loc_3570CA
356D66:  MOVS            R0, #0
356D68:  LDR.W           R1, =(ScriptParams_ptr - 0x356D70)
356D6C:  ADD             R1, PC; ScriptParams_ptr
356D6E:  B               loc_356D78
356D70:  LDR.W           R1, =(ScriptParams_ptr - 0x356D7A)
356D74:  MOVS            R0, #0
356D76:  ADD             R1, PC; ScriptParams_ptr
356D78:  LDR             R1, [R1]; ScriptParams
356D7A:  STR             R0, [R1]
356D7C:  B               loc_3570C2
356D7E:  MOV.W           R6, #0xFFFFFFFF
356D82:  MOVS            R0, #dword_60; this
356D84:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
356D88:  MOV             R5, R0
356D8A:  LDR.W           R0, =(_ZN27CTaskComplexFollowNodeRoute16ms_fTargetRadiusE_ptr - 0x356D9A)
356D8E:  LDR.W           R1, =(_ZN27CTaskComplexFollowNodeRoute20ms_fSlowDownDistanceE_ptr - 0x356D9C)
356D92:  LDR.W           R2, =(_ZN27CTaskComplexFollowNodeRoute35ms_fFollowNodeThresholdHeightChangeE_ptr - 0x356D9E)
356D96:  ADD             R0, PC; _ZN27CTaskComplexFollowNodeRoute16ms_fTargetRadiusE_ptr
356D98:  ADD             R1, PC; _ZN27CTaskComplexFollowNodeRoute20ms_fSlowDownDistanceE_ptr
356D9A:  ADD             R2, PC; _ZN27CTaskComplexFollowNodeRoute35ms_fFollowNodeThresholdHeightChangeE_ptr
356D9C:  LDR             R0, [R0]; CTaskComplexFollowNodeRoute::ms_fTargetRadius ...
356D9E:  LDR             R1, [R1]; CTaskComplexFollowNodeRoute::ms_fSlowDownDistance ...
356DA0:  LDR             R2, [R2]; CTaskComplexFollowNodeRoute::ms_fFollowNodeThresholdHeightChange ...
356DA2:  LDR             R3, [R0]; float
356DA4:  MOVS            R0, #1
356DA6:  VLDR            S0, [R1]
356DAA:  MOV             R1, R9; int
356DAC:  VLDR            S2, [R2]
356DB0:  ADD             R2, SP, #0x1C8+var_138; CVector *
356DB2:  STR             R0, [SP,#0x1C8+var_1B8]; bool
356DB4:  STRD.W          R0, R6, [SP,#0x1C8+var_1C0]; bool
356DB8:  MOV             R0, R5; this
356DBA:  VSTR            S0, [SP,#0x1C8+var_1C8]
356DBE:  VSTR            S2, [SP,#0x1C8+var_1C4]
356DC2:  BLX             j__ZN27CTaskComplexFollowNodeRouteC2EiRK7CVectorfffbib; CTaskComplexFollowNodeRoute::CTaskComplexFollowNodeRoute(int,CVector const&,float,float,float,bool,int,bool)
356DC6:  MOV             R0, R4; this
356DC8:  MOV             R1, R8; int
356DCA:  MOV             R2, R5; CTask *
356DCC:  MOVW            R3, #0x5F5; int
356DD0:  BLX             j__ZN14CRunningScript19GivePedScriptedTaskEiP5CTaski; CRunningScript::GivePedScriptedTask(int,CTask *,int)
356DD4:  B               loc_3570CA
356DD6:  ORR.W           R5, R0, #1
356DDA:  MOVW            R0, #(elf_hash_bucket+0x6A8); this
356DDE:  BLX             j__ZN4CPednwEj; CPed::operator new(uint)
356DE2:  MOV             R9, R0
356DE4:  CMP             R5, #0x13
356DE6:  BNE             loc_356E38
356DE8:  LDR.W           R0, =(ScriptParams_ptr - 0x356DF0)
356DEC:  ADD             R0, PC; ScriptParams_ptr
356DEE:  LDR             R0, [R0]; ScriptParams
356DF0:  LDRD.W          R1, R2, [R0]; unsigned int
356DF4:  MOV             R0, R9; this
356DF6:  BLX             j__ZN13CEmergencyPedC2Ejj; CEmergencyPed::CEmergencyPed(uint,uint)
356DFA:  B               loc_356E4A
356DFC:  LDR.W           R2, =(_ZN14CTaskSequences15ms_taskSequenceE_ptr - 0x356E06)
356E00:  STRB            R0, [R1]
356E02:  ADD             R2, PC; _ZN14CTaskSequences15ms_taskSequenceE_ptr
356E04:  LDR             R2, [R2]; CTaskSequences::ms_taskSequence ...
356E06:  ADD.W           R0, R2, R6,LSL#6; this
356E0A:  BLX             j__ZN20CTaskComplexSequence5FlushEv; CTaskComplexSequence::Flush(void)
356E0E:  LDR.W           R0, =(_ZN11CTheScripts23ScriptSequenceTaskArrayE_ptr - 0x356E18)
356E12:  MOVS            R1, #0
356E14:  ADD             R0, PC; _ZN11CTheScripts23ScriptSequenceTaskArrayE_ptr
356E16:  LDR             R0, [R0]; CTheScripts::ScriptSequenceTaskArray ...
356E18:  STRB.W          R1, [R0,R6,LSL#2]
356E1C:  LDRB.W          R0, [R4,#0xE6]
356E20:  CMP             R0, #0
356E22:  BEQ.W           loc_3570CA
356E26:  LDR.W           R0, =(_ZN11CTheScripts14MissionCleanUpE_ptr - 0x356E32)
356E2A:  MOV             R1, R5; int
356E2C:  MOVS            R2, #8; unsigned __int8
356E2E:  ADD             R0, PC; _ZN11CTheScripts14MissionCleanUpE_ptr
356E30:  LDR             R0, [R0]; this
356E32:  BLX             j__ZN15CMissionCleanup20RemoveEntityFromListEih; CMissionCleanup::RemoveEntityFromList(int,uchar)
356E36:  B               loc_3570CA
356E38:  LDR.W           R0, =(ScriptParams_ptr - 0x356E40)
356E3C:  ADD             R0, PC; ScriptParams_ptr
356E3E:  LDR             R0, [R0]; ScriptParams
356E40:  LDRD.W          R1, R2, [R0]
356E44:  MOV             R0, R9
356E46:  BLX             j__ZN12CCivilianPedC2E8ePedTypej; CCivilianPed::CCivilianPed(ePedType,uint)
356E4A:  MOV             R0, R9; this
356E4C:  MOVS            R1, #2; unsigned __int8
356E4E:  BLX             j__ZN4CPed16SetCharCreatedByEh; CPed::SetCharCreatedBy(uchar)
356E52:  LDR.W           R0, =(_ZN18CScripted2dEffects10ms_effectsE_ptr - 0x356E66)
356E56:  MOVW            R3, #0xD70A
356E5A:  LDR.W           R1, [R9,#0x484]
356E5E:  MOVT            R3, #0x3C23; CPed *
356E62:  ADD             R0, PC; _ZN18CScripted2dEffects10ms_effectsE_ptr
356E64:  MOV             R2, R9; CEntity *
356E66:  BIC.W           R1, R1, #0x80000000
356E6A:  STR.W           R1, [R9,#0x484]
356E6E:  LDR             R0, [R0]; CScripted2dEffects::ms_effects ...
356E70:  MOVS            R1, #0; C2dEffect *
356E72:  ADD.W           R8, R0, R6,LSL#6
356E76:  MOV             R0, R8; this
356E78:  BLX             j__ZN22CPedAttractorPedPlacer16PlacePedAtEffectERK9C2dEffectP7CEntityP4CPedf; CPedAttractorPedPlacer::PlacePedAtEffect(C2dEffect const&,CEntity *,CPed *,float)
356E7C:  LDR.W           R0, [R9,#0x14]
356E80:  ADD.W           R1, R0, #0x30 ; '0'
356E84:  CMP             R0, #0
356E86:  IT EQ
356E88:  ADDEQ.W         R1, R9, #4
356E8C:  LDR             R0, [R1,#8]
356E8E:  VLDR            D16, [R1]
356E92:  MOV             R1, R9; CVector *
356E94:  STR             R0, [SP,#0x1C8+var_1A0]
356E96:  ADD             R0, SP, #0x1C8+var_1A8; this
356E98:  VSTR            D16, [SP,#0x1C8+var_1A8]
356E9C:  BLX             j__ZN11CTheScripts26ClearSpaceForMissionEntityERK7CVectorP7CEntity; CTheScripts::ClearSpaceForMissionEntity(CVector const&,CEntity *)
356EA0:  LDRB.W          R0, [R4,#0xE6]
356EA4:  CMP             R0, #0
356EA6:  ITTT NE
356EA8:  LDRNE.W         R0, [R9,#0x1C]
356EAC:  ORRNE.W         R0, R0, #0x40000
356EB0:  STRNE.W         R0, [R9,#0x1C]
356EB4:  MOV             R0, R9; this
356EB6:  BLX             j__ZN6CWorld3AddEP7CEntity; CWorld::Add(CEntity *)
356EBA:  LDR.W           R0, =(ScriptParams_ptr - 0x356EC2)
356EBE:  ADD             R0, PC; ScriptParams_ptr
356EC0:  LDR             R0, [R0]; ScriptParams
356EC2:  LDR             R0, [R0,#(dword_81A914 - 0x81A908)]
356EC4:  SUBW            R0, R0, #0x5BA; switch 39 cases
356EC8:  CMP             R0, #0x26 ; '&'
356ECA:  BHI             def_356ECC; jumptable 00356ECC default case, cases 1467-1501
356ECC:  TBB.W           [PC,R0]; switch jump
356ED0:  DCB 0x14; jump table for switch statement
356ED1:  DCB 0x24
356ED2:  DCB 0x24
356ED3:  DCB 0x24
356ED4:  DCB 0x24
356ED5:  DCB 0x24
356ED6:  DCB 0x24
356ED7:  DCB 0x24
356ED8:  DCB 0x24
356ED9:  DCB 0x24
356EDA:  DCB 0x24
356EDB:  DCB 0x24
356EDC:  DCB 0x24
356EDD:  DCB 0x24
356EDE:  DCB 0x24
356EDF:  DCB 0x24
356EE0:  DCB 0x24
356EE1:  DCB 0x24
356EE2:  DCB 0x24
356EE3:  DCB 0x24
356EE4:  DCB 0x24
356EE5:  DCB 0x24
356EE6:  DCB 0x24
356EE7:  DCB 0x24
356EE8:  DCB 0x24
356EE9:  DCB 0x24
356EEA:  DCB 0x24
356EEB:  DCB 0x24
356EEC:  DCB 0x24
356EED:  DCB 0x24
356EEE:  DCB 0x24
356EEF:  DCB 0x24
356EF0:  DCB 0x24
356EF1:  DCB 0x24
356EF2:  DCB 0x24
356EF3:  DCB 0x24
356EF4:  DCB 0x4D
356EF5:  DCB 0xAC
356EF6:  DCB 0x76
356EF7:  ALIGN 2
356EF8:  MOVS            R0, #dword_20; jumptable 00356ECC case 1466
356EFA:  LDR.W           R5, [R9,#0x440]
356EFE:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
356F02:  MOV             R6, R0
356F04:  MOV.W           R0, #0x41000000
356F08:  STR             R0, [SP,#0x1C8+var_1C8]; float
356F0A:  MOV             R0, R6; this
356F0C:  MOVS            R1, #0; int
356F0E:  MOVS            R2, #1; bool
356F10:  MOVS            R3, #0; bool
356F12:  BLX             j__ZN21CTaskSimpleStandStillC2Eibbf; CTaskSimpleStandStill::CTaskSimpleStandStill(int,bool,bool,float)
356F16:  B               loc_35701C
356F18:  MOVS            R0, #dword_38; jumptable 00356ECC default case, cases 1467-1501
356F1A:  LDR.W           R5, [R9,#0x440]
356F1E:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
356F22:  MOV             R6, R0
356F24:  BLX             rand
356F28:  UXTH            R0, R0
356F2A:  VLDR            S2, =0.000015259
356F2E:  VMOV            S0, R0
356F32:  LDR             R0, =(_ZN18CTaskComplexWander16ms_fTargetRadiusE_ptr - 0x356F42)
356F34:  VMOV.F32        S4, #8.0
356F38:  MOVS            R1, #4; int
356F3A:  VCVT.F32.S32    S0, S0
356F3E:  ADD             R0, PC; _ZN18CTaskComplexWander16ms_fTargetRadiusE_ptr
356F40:  MOVS            R3, #1; bool
356F42:  LDR             R0, [R0]; CTaskComplexWander::ms_fTargetRadius ...
356F44:  VMUL.F32        S0, S0, S2
356F48:  VLDR            S2, [R0]
356F4C:  VMUL.F32        S0, S0, S4
356F50:  VCVT.S32.F32    S0, S0
356F54:  VSTR            S2, [SP,#0x1C8+var_1C8]
356F58:  VMOV            R0, S0
356F5C:  UXTB            R2, R0; unsigned __int8
356F5E:  MOV             R0, R6; this
356F60:  BLX             j__ZN18CTaskComplexWanderC2Eihbf; CTaskComplexWander::CTaskComplexWander(int,uchar,bool,float)
356F64:  LDR             R0, =(_ZTV26CTaskComplexWanderStandard_ptr - 0x356F6A)
356F66:  ADD             R0, PC; _ZTV26CTaskComplexWanderStandard_ptr
356F68:  B               loc_35700C
356F6A:  MOVS            R0, #dword_38; jumptable 00356ECC case 1502
356F6C:  LDR.W           R5, [R9,#0x440]
356F70:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
356F74:  MOV             R6, R0
356F76:  BLX             rand
356F7A:  UXTH            R0, R0
356F7C:  VLDR            S2, =0.000015259
356F80:  VMOV            S0, R0
356F84:  LDR             R0, =(_ZN18CTaskComplexWander16ms_fTargetRadiusE_ptr - 0x356F94)
356F86:  VMOV.F32        S4, #8.0
356F8A:  MOVS            R1, #4; int
356F8C:  VCVT.F32.S32    S0, S0
356F90:  ADD             R0, PC; _ZN18CTaskComplexWander16ms_fTargetRadiusE_ptr
356F92:  MOVS            R3, #1; bool
356F94:  LDR             R0, [R0]; CTaskComplexWander::ms_fTargetRadius ...
356F96:  VMUL.F32        S0, S0, S2
356F9A:  VLDR            S2, [R0]
356F9E:  VMUL.F32        S0, S0, S4
356FA2:  VCVT.S32.F32    S0, S0
356FA6:  VSTR            S2, [SP,#0x1C8+var_1C8]
356FAA:  VMOV            R0, S0
356FAE:  UXTB            R2, R0; unsigned __int8
356FB0:  MOV             R0, R6; this
356FB2:  BLX             j__ZN18CTaskComplexWanderC2Eihbf; CTaskComplexWander::CTaskComplexWander(int,uchar,bool,float)
356FB6:  LDR             R0, =(_ZTV26CTaskComplexWanderStandard_ptr - 0x356FBC)
356FB8:  ADD             R0, PC; _ZTV26CTaskComplexWanderStandard_ptr
356FBA:  B               loc_35700C
356FBC:  MOVS            R0, #dword_38; jumptable 00356ECC case 1504
356FBE:  LDR.W           R5, [R9,#0x440]
356FC2:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
356FC6:  MOV             R6, R0
356FC8:  BLX             rand
356FCC:  UXTH            R0, R0
356FCE:  VLDR            S2, =0.000015259
356FD2:  VMOV            S0, R0
356FD6:  LDR             R0, =(_ZN18CTaskComplexWander16ms_fTargetRadiusE_ptr - 0x356FE6)
356FD8:  VMOV.F32        S4, #8.0
356FDC:  MOVS            R1, #4; int
356FDE:  VCVT.F32.S32    S0, S0
356FE2:  ADD             R0, PC; _ZN18CTaskComplexWander16ms_fTargetRadiusE_ptr
356FE4:  MOVS            R3, #1; bool
356FE6:  LDR             R0, [R0]; CTaskComplexWander::ms_fTargetRadius ...
356FE8:  VMUL.F32        S0, S0, S2
356FEC:  VLDR            S2, [R0]
356FF0:  VMUL.F32        S0, S0, S4
356FF4:  VCVT.S32.F32    S0, S0
356FF8:  VSTR            S2, [SP,#0x1C8+var_1C8]
356FFC:  VMOV            R0, S0
357000:  UXTB            R2, R0; unsigned __int8
357002:  MOV             R0, R6; this
357004:  BLX             j__ZN18CTaskComplexWanderC2Eihbf; CTaskComplexWander::CTaskComplexWander(int,uchar,bool,float)
357008:  LDR             R0, =(_ZTV26CTaskComplexWanderCriminal_ptr - 0x35700E)
35700A:  ADD             R0, PC; _ZTV26CTaskComplexWanderCriminal_ptr
35700C:  LDR             R0, [R0]; `vtable for'CTaskComplexWanderStandard
35700E:  MOVS            R1, #0
357010:  STRH            R1, [R6,#0x30]
357012:  STR             R1, [R6,#0x34]
357014:  ADDS            R0, #8
357016:  STR             R1, [R6,#0x28]
357018:  STR             R1, [R6,#0x2C]
35701A:  STR             R0, [R6]
35701C:  ADDS            R0, R5, #4; this
35701E:  MOV             R1, R6; CTask *
357020:  MOVS            R2, #4; int
357022:  MOVS            R3, #0; bool
357024:  BLX             j__ZN12CTaskManager7SetTaskEP5CTaskib; CTaskManager::SetTask(CTask *,int,bool)
357028:  MOVS            R0, #dword_24; jumptable 00356ECC case 1503
35702A:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
35702E:  MOV             R1, R8
357030:  MOVS            R2, #0
357032:  MOV             R6, R0
357034:  BLX             j__ZN21CTaskComplexUseEffectC2EP9C2dEffectP7CEntity; CTaskComplexUseEffect::CTaskComplexUseEffect(C2dEffect *,CEntity *)
357038:  ADD             R5, SP, #0x1C8+var_138
35703A:  MOVS            R1, #3; int
35703C:  MOV             R2, R6; CTask *
35703E:  MOVS            R3, #0; bool
357040:  MOV             R0, R5; this
357042:  BLX             j__ZN19CEventScriptCommandC2EiP5CTaskb; CEventScriptCommand::CEventScriptCommand(int,CTask *,bool)
357046:  LDR.W           R0, [R9,#0x440]
35704A:  MOV             R1, R5; CEvent *
35704C:  MOVS            R2, #0; bool
35704E:  ADDS            R0, #0x68 ; 'h'; this
357050:  BLX             j__ZN11CEventGroup3AddER6CEventb; CEventGroup::Add(CEvent &,bool)
357054:  MOV             R5, R0
357056:  LDR             R0, =(_ZN22CPedScriptedTaskRecord16ms_scriptedTasksE_ptr - 0x35705C)
357058:  ADD             R0, PC; _ZN22CPedScriptedTaskRecord16ms_scriptedTasksE_ptr ; this
35705A:  LDR             R6, [R0]; CPedScriptedTaskRecord::ms_scriptedTasks ...
35705C:  BLX             j__ZN22CPedScriptedTaskRecord13GetVacantSlotEv; CPedScriptedTaskRecord::GetVacantSlot(void)
357060:  ADD.W           R0, R0, R0,LSL#2
357064:  MOV             R1, R9; CPed *
357066:  MOVW            R2, #0x621; int
35706A:  MOV             R3, R5; CEventScriptCommand *
35706C:  ADD.W           R0, R6, R0,LSL#2; this
357070:  BLX             j__ZN26CPedScriptedTaskRecordData3SetEP4CPediPK19CEventScriptCommand; CPedScriptedTaskRecordData::Set(CPed *,int,CEventScriptCommand const*)
357074:  LDR             R1, =(_ZN11CPopulation20ms_nTotalMissionPedsE_ptr - 0x35707C)
357076:  LDR             R0, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x35707E)
357078:  ADD             R1, PC; _ZN11CPopulation20ms_nTotalMissionPedsE_ptr
35707A:  ADD             R0, PC; _ZN6CPools11ms_pPedPoolE_ptr
35707C:  LDR             R1, [R1]; CPopulation::ms_nTotalMissionPeds ...
35707E:  LDR             R0, [R0]; CPools::ms_pPedPool ...
357080:  LDR             R2, [R1]; CPopulation::ms_nTotalMissionPeds
357082:  LDR             R0, [R0]; CPools::ms_pPedPool
357084:  ADDS            R2, #1
357086:  STR             R2, [R1]; CPopulation::ms_nTotalMissionPeds
357088:  LDRD.W          R1, R0, [R0]
35708C:  MOV             R2, #0xBED87F3B
357094:  SUB.W           R1, R9, R1
357098:  ASRS            R1, R1, #2
35709A:  MULS            R1, R2
35709C:  LDR             R2, =(ScriptParams_ptr - 0x3570A2)
35709E:  ADD             R2, PC; ScriptParams_ptr
3570A0:  LDR             R2, [R2]; ScriptParams
3570A2:  LDRB            R0, [R0,R1]
3570A4:  ORR.W           R1, R0, R1,LSL#8; int
3570A8:  STR             R1, [R2]
3570AA:  LDRB.W          R0, [R4,#0xE6]
3570AE:  CBZ             R0, loc_3570BC
3570B0:  LDR             R0, =(_ZN11CTheScripts14MissionCleanUpE_ptr - 0x3570B8)
3570B2:  MOVS            R2, #2; unsigned __int8
3570B4:  ADD             R0, PC; _ZN11CTheScripts14MissionCleanUpE_ptr
3570B6:  LDR             R0, [R0]; this
3570B8:  BLX             j__ZN15CMissionCleanup15AddEntityToListEih; CMissionCleanup::AddEntityToList(int,uchar)
3570BC:  ADD             R0, SP, #0x1C8+var_138; this
3570BE:  BLX             j__ZN19CEventScriptCommandD2Ev; CEventScriptCommand::~CEventScriptCommand()
3570C2:  MOV             R0, R4; this
3570C4:  MOVS            R1, #1; __int16
3570C6:  BLX             j__ZN14CRunningScript15StoreParametersEs; CRunningScript::StoreParameters(short)
3570CA:  MOVS            R5, #0
3570CC:  LDR             R0, =(__stack_chk_guard_ptr - 0x3570D4); jumptable 00355416 cases 1503-1505,1507-1512,1514,1519,1520,1544,1545,1548,1552,1559,1564,1567,1568,1579-1581
3570CE:  LDR             R1, [SP,#0x1C8+var_34]
3570D0:  ADD             R0, PC; __stack_chk_guard_ptr
3570D2:  LDR             R0, [R0]; __stack_chk_guard
3570D4:  LDR             R0, [R0]
3570D6:  SUBS            R0, R0, R1
3570D8:  ITTTT EQ
3570DA:  SXTBEQ          R0, R5
3570DC:  ADDEQ           SP, SP, #0x198
3570DE:  VPOPEQ          {D8-D9}
3570E2:  ADDEQ           SP, SP, #4
3570E4:  ITT EQ
3570E6:  POPEQ.W         {R8-R11}
3570EA:  POPEQ           {R4-R7,PC}
3570EC:  BLX             __stack_chk_fail
3570F0:  ADD.W           R11, SP, #0x1C8+var_164
3570F4:  MOV             R0, R11; this
3570F6:  BLX             j__ZN22CEventEditableResponseC2Ev; CEventEditableResponse::CEventEditableResponse(void)
3570FA:  LDR             R0, =(_ZTV30CEventLeaderEnteredCarAsDriver_ptr - 0x357106)
3570FC:  ADD.W           R8, R11, #0x10
357100:  STR             R6, [SP,#0x1C8+var_154]
357102:  ADD             R0, PC; _ZTV30CEventLeaderEnteredCarAsDriver_ptr
357104:  MOV             R1, R8; CEntity **
357106:  LDR             R0, [R0]; `vtable for'CEventLeaderEnteredCarAsDriver ...
357108:  ADDS            R0, #8
35710A:  STR             R0, [SP,#0x1C8+var_164]
35710C:  MOV             R0, R6; this
35710E:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
357112:  MOV             R0, R11; this
357114:  MOV             R1, R10; CPedGroup *
357116:  BLX             j__ZN22CEventEditableResponse23ComputeResponseTaskTypeEP9CPedGroup; CEventEditableResponse::ComputeResponseTaskType(CPedGroup *)
35711A:  LDRSH.W         R0, [SP,#0x1C8+var_15A]
35711E:  MOVW            R1, #0x5E9; unsigned int
357122:  CMP             R0, R1
357124:  BEQ             loc_3571D4
357126:  CMP.W           R0, #0x5E8
35712A:  BNE             loc_35721E
35712C:  ADD             R4, SP, #0x1C8+var_138
35712E:  MOV             R1, R6; CVehicle *
357130:  MOVS            R2, #0; int
357132:  MOVS            R3, #1; bool
357134:  MOV             R0, R4; this
357136:  BLX             j__ZN31CTaskComplexEnterCarAsPassengerC2EP8CVehicleib; CTaskComplexEnterCarAsPassenger::CTaskComplexEnterCarAsPassenger(CVehicle *,int,bool)
35713A:  LDR             R0, =(_ZN10CPedGroups9ms_groupsE_ptr - 0x357146)
35713C:  MOV.W           R1, #0x2D4
357140:  MOV             R2, R4; CTask *
357142:  ADD             R0, PC; _ZN10CPedGroups9ms_groupsE_ptr
357144:  LDR             R0, [R0]; CPedGroups::ms_groups ...
357146:  MLA.W           R0, R5, R1, R0
35714A:  MOV             R1, R9; CPed *
35714C:  ADD.W           R5, R0, #0x30 ; '0'
357150:  MOV             R0, R5; this
357152:  BLX             j__ZN21CPedGroupIntelligence20SetScriptCommandTaskEP4CPedRK5CTask; CPedGroupIntelligence::SetScriptCommandTask(CPed *,CTask const&)
357156:  LDR.W           R0, [R9,#0x48C]
35715A:  TST.W           R0, #0x2000000
35715E:  BNE             loc_3571CC
357160:  LDR.W           R3, [R9,#0x488]
357164:  ADDW            R1, R9, #0x484
357168:  LDR.W           R12, [R9,#0x490]
35716C:  ADD.W           R10, SP, #0x1C8+var_1A8
357170:  LDR.W           R2, [R9,#0x484]
357174:  MOV.W           R4, #0x2000000
357178:  ORRS            R0, R4
35717A:  STRD.W          R2, R3, [R1]
35717E:  STRD.W          R0, R12, [R1,#8]
357182:  MOV             R0, R10; this
357184:  BLX             j__ZN20CTaskComplexSequenceC2Ev; CTaskComplexSequence::CTaskComplexSequence(void)
357188:  MOVS            R0, #dword_60; this
35718A:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
35718E:  MOV             R1, R6; CVehicle *
357190:  MOVS            R2, #0; CTaskUtilityLineUpPedWithCar *
357192:  MOVS            R3, #1; bool
357194:  MOV             R4, R0
357196:  BLX             j__ZN19CTaskSimpleCarDriveC2EP8CVehicleP28CTaskUtilityLineUpPedWithCarb; CTaskSimpleCarDrive::CTaskSimpleCarDrive(CVehicle *,CTaskUtilityLineUpPedWithCar *,bool)
35719A:  MOV             R0, R10; this
35719C:  MOV             R1, R4; CTask *
35719E:  BLX             j__ZN20CTaskComplexSequence7AddTaskEP5CTask; CTaskComplexSequence::AddTask(CTask *)
3571A2:  MOV             R0, R5; this
3571A4:  MOV             R1, R9; CPed *
3571A6:  BLX             j__ZNK21CPedGroupIntelligence14GetTaskDefaultEP4CPed; CPedGroupIntelligence::GetTaskDefault(CPed *)
3571AA:  CBZ             R0, loc_3571BA
3571AC:  LDR             R1, [R0]
3571AE:  LDR             R1, [R1,#8]
3571B0:  BLX             R1
3571B2:  MOV             R1, R0; CTask *
3571B4:  ADD             R0, SP, #0x1C8+var_1A8; this
3571B6:  BLX             j__ZN20CTaskComplexSequence7AddTaskEP5CTask; CTaskComplexSequence::AddTask(CTask *)
3571BA:  ADD             R4, SP, #0x1C8+var_1A8
3571BC:  MOV             R0, R5; this
3571BE:  MOV             R1, R9; CPed *
3571C0:  MOV             R2, R4; CTask *
3571C2:  BLX             j__ZN21CPedGroupIntelligence14SetDefaultTaskEP4CPedRK5CTask; CPedGroupIntelligence::SetDefaultTask(CPed *,CTask const&)
3571C6:  MOV             R0, R4; this
3571C8:  BLX             j__ZN20CTaskComplexSequenceD2Ev; CTaskComplexSequence::~CTaskComplexSequence()
3571CC:  ADD             R0, SP, #0x1C8+var_138; this
3571CE:  BLX             j__ZN31CTaskComplexEnterCarAsPassengerD2Ev_0; CTaskComplexEnterCarAsPassenger::~CTaskComplexEnterCarAsPassenger()
3571D2:  B               loc_35721E
3571D4:  MOVS            R0, #dword_14; this
3571D6:  BLX             j__ZN6CEventnwEj; CEvent::operator new(uint)
3571DA:  MOV             R9, R0
3571DC:  BLX             j__ZN22CEventEditableResponseC2Ev; CEventEditableResponse::CEventEditableResponse(void)
3571E0:  LDR             R0, =(_ZTV30CEventLeaderEnteredCarAsDriver_ptr - 0x3571E8)
3571E2:  MOV             R1, R9
3571E4:  ADD             R0, PC; _ZTV30CEventLeaderEnteredCarAsDriver_ptr
3571E6:  LDR             R0, [R0]; `vtable for'CEventLeaderEnteredCarAsDriver ...
3571E8:  ADDS            R0, #8
3571EA:  STR.W           R0, [R1],#0x10; CEntity **
3571EE:  MOV             R0, R6; this
3571F0:  STR             R6, [R1]
3571F2:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
3571F6:  ADD             R6, SP, #0x1C8+var_138
3571F8:  MOV             R1, R4; CPed *
3571FA:  MOV             R2, R9; CEvent *
3571FC:  MOV             R0, R6; this
3571FE:  BLX             j__ZN16CEventGroupEventC2EP4CPedP6CEvent; CEventGroupEvent::CEventGroupEvent(CPed *,CEvent *)
357202:  LDR             R0, =(_ZN10CPedGroups9ms_groupsE_ptr - 0x35720C)
357204:  MOV.W           R1, #0x2D4
357208:  ADD             R0, PC; _ZN10CPedGroups9ms_groupsE_ptr
35720A:  LDR             R0, [R0]; CPedGroups::ms_groups ...
35720C:  MLA.W           R0, R5, R1, R0
357210:  MOV             R1, R6; CEvent *
357212:  ADDS            R0, #0x30 ; '0'; this
357214:  BLX             j__ZN21CPedGroupIntelligence8AddEventER6CEvent; CPedGroupIntelligence::AddEvent(CEvent &)
357218:  MOV             R0, R6; this
35721A:  BLX             j__ZN16CEventGroupEventD2Ev; CEventGroupEvent::~CEventGroupEvent()
35721E:  LDR             R0, =(_ZTV30CEventLeaderEnteredCarAsDriver_ptr - 0x357224)
357220:  ADD             R0, PC; _ZTV30CEventLeaderEnteredCarAsDriver_ptr
357222:  LDR             R1, [R0]; `vtable for'CEventLeaderEnteredCarAsDriver ...
357224:  LDR             R0, [SP,#0x1C8+var_154]; this
357226:  ADDS            R1, #8
357228:  STR             R1, [SP,#0x1C8+var_164]
35722A:  CMP             R0, #0
35722C:  ITT NE
35722E:  MOVNE           R1, R8; CEntity **
357230:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
357234:  ADD             R0, SP, #0x1C8+var_164; this
357236:  BLX             j__ZN6CEventD2Ev_0; CEvent::~CEvent()
35723A:  ADD             R0, SP, #0x1C8+var_150; this
35723C:  BLX             j__ZN19CEventScriptCommandD2Ev; CEventScriptCommand::~CEventScriptCommand()
357240:  B               loc_3570CA
