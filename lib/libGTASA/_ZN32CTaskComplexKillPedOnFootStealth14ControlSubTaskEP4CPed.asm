; =========================================================
; Game Engine Function: _ZN32CTaskComplexKillPedOnFootStealth14ControlSubTaskEP4CPed
; Address            : 0x4E14E0 - 0x4E17B4
; =========================================================

4E14E0:  PUSH            {R4-R7,LR}
4E14E2:  ADD             R7, SP, #0xC
4E14E4:  PUSH.W          {R8}
4E14E8:  VPUSH           {D8-D13}
4E14EC:  SUB             SP, SP, #0x18
4E14EE:  MOV             R5, R0
4E14F0:  MOV             R4, R1
4E14F2:  LDR             R1, [R5,#0x10]; CPed *
4E14F4:  CMP             R1, #0
4E14F6:  BEQ             loc_4E15E0
4E14F8:  MOV             R0, R4; this
4E14FA:  MOVS            R2, #(stderr+1); CPed *
4E14FC:  BLX             j__ZN20CPedGeometryAnalyser15CanPedTargetPedER4CPedS1_b; CPedGeometryAnalyser::CanPedTargetPed(CPed &,CPed &,bool)
4E1500:  LDR             R1, [R5,#0x44]
4E1502:  ADDS            R2, R1, #1
4E1504:  BEQ             loc_4E15F6
4E1506:  CMP             R0, #1
4E1508:  BNE.W           loc_4E162A
4E150C:  LDR             R0, [R5,#0x10]
4E150E:  LDR             R1, [R4,#0x14]
4E1510:  LDR             R2, [R0,#0x14]
4E1512:  ADD.W           R3, R1, #0x30 ; '0'
4E1516:  CMP             R1, #0
4E1518:  IT EQ
4E151A:  ADDEQ           R3, R4, #4
4E151C:  ADD.W           R1, R2, #0x30 ; '0'
4E1520:  CMP             R2, #0
4E1522:  VLDR            S0, [R3]
4E1526:  VLDR            S2, [R3,#4]
4E152A:  VLDR            S4, [R3,#8]
4E152E:  IT EQ
4E1530:  ADDEQ           R1, R0, #4
4E1532:  VLDR            S6, [R1]
4E1536:  ADD             R0, SP, #0x58+var_4C; this
4E1538:  VSUB.F32        S0, S6, S0
4E153C:  VSTR            S0, [SP,#0x58+var_4C]
4E1540:  VLDR            S0, [R1,#4]
4E1544:  VSUB.F32        S0, S0, S2
4E1548:  VSTR            S0, [SP,#0x58+var_48]
4E154C:  VLDR            S0, [R1,#8]
4E1550:  VSUB.F32        S0, S0, S4
4E1554:  VSTR            S0, [SP,#0x58+var_44]
4E1558:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
4E155C:  LDR             R0, [R4,#0x14]
4E155E:  MOVS            R2, #1; bool
4E1560:  LDR             R1, [R5,#0x10]; CEntity *
4E1562:  VLDR            S16, [SP,#0x58+var_4C]
4E1566:  VLDR            S22, [R0,#0x10]
4E156A:  VLDR            S26, [R0,#0x14]
4E156E:  VLDR            S24, [R0,#0x18]
4E1572:  LDR.W           R0, [R4,#0x440]; this
4E1576:  VLDR            S20, [SP,#0x58+var_48]
4E157A:  VLDR            S18, [SP,#0x58+var_44]
4E157E:  BLX             j__ZNK16CPedIntelligence22CanSeeEntityWithLightsEPK7CEntityb; CPedIntelligence::CanSeeEntityWithLights(CEntity const*,bool)
4E1582:  VMOV            S0, R0
4E1586:  VCMPE.F32       S0, #0.0
4E158A:  VMRS            APSR_nzcv, FPSCR
4E158E:  BLE.W           loc_4E16A0
4E1592:  VMUL.F32        S0, S26, S20
4E1596:  LDR             R0, =(_ZN23CPedAcquaintanceScanner23ms_fThresholdDotProductE_ptr - 0x4E15A4)
4E1598:  VMUL.F32        S2, S22, S16
4E159C:  VMUL.F32        S4, S24, S18
4E15A0:  ADD             R0, PC; _ZN23CPedAcquaintanceScanner23ms_fThresholdDotProductE_ptr
4E15A2:  LDR             R0, [R0]; CPedAcquaintanceScanner::ms_fThresholdDotProduct ...
4E15A4:  VADD.F32        S0, S2, S0
4E15A8:  VLDR            S2, [R0]
4E15AC:  VADD.F32        S0, S0, S4
4E15B0:  VCMPE.F32       S0, S2
4E15B4:  VMRS            APSR_nzcv, FPSCR
4E15B8:  BLE             loc_4E16A0
4E15BA:  LDR             R0, [R5,#0x10]
4E15BC:  MOV.W           R1, #0xFFFFFFFF
4E15C0:  STR             R1, [R5,#0x44]
4E15C2:  LDR             R2, [R0,#0x14]
4E15C4:  ADD.W           R3, R2, #0x30 ; '0'
4E15C8:  CMP             R2, #0
4E15CA:  IT EQ
4E15CC:  ADDEQ           R3, R0, #4
4E15CE:  VLDR            D16, [R3]
4E15D2:  LDR             R0, [R3,#8]
4E15D4:  STR             R0, [R5,#0x40]
4E15D6:  VSTR            D16, [R5,#0x38]
4E15DA:  ADDS            R0, R1, #1
4E15DC:  BNE             loc_4E162A
4E15DE:  B               loc_4E16A6
4E15E0:  MOV             R0, R5; this
4E15E2:  MOV             R1, R4; CPed *
4E15E4:  ADD             SP, SP, #0x18
4E15E6:  VPOP            {D8-D13}
4E15EA:  POP.W           {R8}
4E15EE:  POP.W           {R4-R7,LR}
4E15F2:  B.W             _ZN25CTaskComplexKillPedOnFoot14ControlSubTaskEP4CPed; CTaskComplexKillPedOnFoot::ControlSubTask(CPed *)
4E15F6:  CMP             R0, #1
4E15F8:  BNE             loc_4E161C
4E15FA:  LDR             R0, [R5,#0x10]
4E15FC:  MOV.W           R1, #0xFFFFFFFF
4E1600:  STR             R1, [R5,#0x44]
4E1602:  LDR             R1, [R0,#0x14]
4E1604:  ADD.W           R2, R1, #0x30 ; '0'
4E1608:  CMP             R1, #0
4E160A:  IT EQ
4E160C:  ADDEQ           R2, R0, #4
4E160E:  VLDR            D16, [R2]
4E1612:  LDR             R0, [R2,#8]
4E1614:  STR             R0, [R5,#0x40]
4E1616:  VSTR            D16, [R5,#0x38]
4E161A:  B               loc_4E16A6
4E161C:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x4E1622)
4E161E:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
4E1620:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
4E1622:  LDR             R1, [R0]; CTimer::m_snTimeInMilliseconds
4E1624:  STR             R1, [R5,#0x44]
4E1626:  ADDS            R0, R1, #1
4E1628:  BEQ             loc_4E16A6
4E162A:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x4E1630)
4E162C:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
4E162E:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
4E1630:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
4E1632:  SUBS            R0, R0, R1
4E1634:  MOVW            R1, #0x1389
4E1638:  CMP             R0, R1
4E163A:  BLT.W           loc_4E17A4
4E163E:  MOVS            R0, #0
4E1640:  MOVS            R1, #0xCE; unsigned __int16
4E1642:  STRD.W          R0, R0, [SP,#0x58+var_58]; unsigned __int8
4E1646:  MOVS            R2, #0; unsigned int
4E1648:  STR             R0, [SP,#0x58+var_50]; unsigned __int8
4E164A:  MOV             R0, R4; this
4E164C:  MOV.W           R3, #0x3F800000; float
4E1650:  BLX             j__ZN4CPed3SayEtjfhhh; CPed::Say(ushort,uint,float,uchar,uchar,uchar)
4E1654:  VLDR            S16, =-9999.9
4E1658:  VLDR            S0, [R5,#0x40]
4E165C:  VCMPE.F32       S0, S16
4E1660:  VMRS            APSR_nzcv, FPSCR
4E1664:  BLE             loc_4E16E8
4E1666:  LDR             R0, [R5,#8]
4E1668:  CBZ             R0, loc_4E16E4
4E166A:  LDR             R1, [R0]
4E166C:  LDR             R1, [R1,#0x14]
4E166E:  BLX             R1
4E1670:  MOVW            R1, #0x3A7
4E1674:  CMP             R0, R1
4E1676:  BEQ             loc_4E16E4
4E1678:  LDR             R0, [R5,#8]
4E167A:  MOVS            R2, #1
4E167C:  MOVS            R3, #0
4E167E:  LDR             R1, [R0]
4E1680:  LDR             R6, [R1,#0x1C]
4E1682:  MOV             R1, R4
4E1684:  BLX             R6
4E1686:  CMP             R0, #1
4E1688:  BNE             loc_4E16E4
4E168A:  MOVS            R0, #dword_1C; this
4E168C:  ADD.W           R4, R5, #0x38 ; '8'
4E1690:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4E1694:  LDR             R2, [R5,#0x10]; CEntity *
4E1696:  MOV             R1, R4; CVector *
4E1698:  MOV             R6, R0
4E169A:  BLX             j__ZN34CTaskComplexInvestigateDisturbanceC2ERK7CVectorP7CEntity; CTaskComplexInvestigateDisturbance::CTaskComplexInvestigateDisturbance(CVector const&,CEntity *)
4E169E:  B               loc_4E17A6
4E16A0:  LDR             R1, [R5,#0x44]
4E16A2:  ADDS            R0, R1, #1
4E16A4:  BNE             loc_4E162A
4E16A6:  LDR             R0, [R5,#8]
4E16A8:  CMP             R0, #0
4E16AA:  BEQ             loc_4E17A4
4E16AC:  LDR             R1, [R0]
4E16AE:  LDR             R1, [R1,#0x14]
4E16B0:  BLX             R1
4E16B2:  MOVW            R1, #0x3A7
4E16B6:  CMP             R0, R1
4E16B8:  BEQ             loc_4E16C6
4E16BA:  LDR             R0, [R5,#8]
4E16BC:  LDR             R1, [R0]
4E16BE:  LDR             R1, [R1,#0x14]
4E16C0:  BLX             R1
4E16C2:  CMP             R0, #0xF4
4E16C4:  BNE             loc_4E17A4
4E16C6:  LDR             R0, [R5,#8]
4E16C8:  MOVS            R2, #1
4E16CA:  MOVS            R3, #0
4E16CC:  LDR             R1, [R0]
4E16CE:  LDR             R6, [R1,#0x1C]
4E16D0:  MOV             R1, R4
4E16D2:  BLX             R6
4E16D4:  CMP             R0, #1
4E16D6:  BNE             loc_4E17A4
4E16D8:  MOV             R0, R5; this
4E16DA:  MOV             R1, R4; CPed *
4E16DC:  BLX             j__ZN25CTaskComplexKillPedOnFoot18CreateFirstSubTaskEP4CPed; CTaskComplexKillPedOnFoot::CreateFirstSubTask(CPed *)
4E16E0:  MOV             R6, R0
4E16E2:  B               loc_4E17A6
4E16E4:  VLDR            S0, [R5,#0x40]
4E16E8:  VCMPE.F32       S0, S16
4E16EC:  VMRS            APSR_nzcv, FPSCR
4E16F0:  BGT             loc_4E17A4
4E16F2:  LDR             R0, [R5,#8]
4E16F4:  CMP             R0, #0
4E16F6:  BEQ             loc_4E17A4
4E16F8:  LDR             R1, [R0]
4E16FA:  LDR             R1, [R1,#0x14]
4E16FC:  BLX             R1
4E16FE:  CMP             R0, #0xF4
4E1700:  BEQ             loc_4E17A4
4E1702:  LDR             R0, [R5,#8]
4E1704:  MOVS            R2, #1
4E1706:  MOVS            R3, #0
4E1708:  MOV.W           R8, #0
4E170C:  LDR             R1, [R0]
4E170E:  LDR             R6, [R1,#0x1C]
4E1710:  MOV             R1, R4
4E1712:  BLX             R6
4E1714:  CMP             R0, #1
4E1716:  BNE             loc_4E17A4
4E1718:  MOVS            R0, #dword_40; this
4E171A:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4E171E:  MOV             R6, R0
4E1720:  BLX             j__ZN20CTaskComplexSequenceC2Ev; CTaskComplexSequence::CTaskComplexSequence(void)
4E1724:  MOVS            R0, #dword_20; this
4E1726:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4E172A:  MOV             R5, R0
4E172C:  MOV.W           R0, #0x41000000
4E1730:  STR             R0, [SP,#0x58+var_58]; float
4E1732:  MOV             R0, R5; this
4E1734:  MOV.W           R1, #0x3E8; int
4E1738:  MOVS            R2, #0; bool
4E173A:  MOVS            R3, #0; bool
4E173C:  BLX             j__ZN21CTaskSimpleStandStillC2Eibbf; CTaskSimpleStandStill::CTaskSimpleStandStill(int,bool,bool,float)
4E1740:  MOV             R0, R6; this
4E1742:  MOV             R1, R5; CTask *
4E1744:  BLX             j__ZN20CTaskComplexSequence7AddTaskEP5CTask; CTaskComplexSequence::AddTask(CTask *)
4E1748:  MOVS            R0, #dword_20; this
4E174A:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4E174E:  LDR.W           R1, [R4,#0x4E0]
4E1752:  MOVS            R2, #4
4E1754:  MOV.W           R3, #0x40800000
4E1758:  MOV             R5, R0
4E175A:  STR.W           R8, [SP,#0x58+var_58]
4E175E:  BLX             j__ZN18CTaskSimpleRunAnimC2E12AssocGroupId11AnimationIdfb; CTaskSimpleRunAnim::CTaskSimpleRunAnim(AssocGroupId,AnimationId,float,bool)
4E1762:  MOV             R0, R6; this
4E1764:  MOV             R1, R5; CTask *
4E1766:  BLX             j__ZN20CTaskComplexSequence7AddTaskEP5CTask; CTaskComplexSequence::AddTask(CTask *)
4E176A:  MOVS            R0, #dword_20; this
4E176C:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4E1770:  MOV             R4, R0
4E1772:  LDR             R0, =(aScratchhead - 0x4E177E); "ScratchHead"
4E1774:  MOVW            R1, #0x1A5
4E1778:  MOVS            R2, #0x87
4E177A:  ADD             R0, PC; "ScratchHead"
4E177C:  MOV.W           R3, #0x40800000
4E1780:  STRD.W          R1, R0, [SP,#0x58+var_58]
4E1784:  MOV             R0, R4
4E1786:  MOVS            R1, #0
4E1788:  STR.W           R8, [SP,#0x58+var_50]
4E178C:  BLX             j__ZN18CTaskSimpleRunAnimC2E12AssocGroupId11AnimationIdfiPKcb_0; CTaskSimpleRunAnim::CTaskSimpleRunAnim(AssocGroupId,AnimationId,float,int,char const*,bool)
4E1790:  LDR             R0, =(_ZTV22CTaskSimpleScratchHead_ptr - 0x4E1798)
4E1792:  MOV             R1, R4; CTask *
4E1794:  ADD             R0, PC; _ZTV22CTaskSimpleScratchHead_ptr
4E1796:  LDR             R0, [R0]; `vtable for'CTaskSimpleScratchHead ...
4E1798:  ADDS            R0, #8
4E179A:  STR             R0, [R4]
4E179C:  MOV             R0, R6; this
4E179E:  BLX             j__ZN20CTaskComplexSequence7AddTaskEP5CTask; CTaskComplexSequence::AddTask(CTask *)
4E17A2:  B               loc_4E17A6
4E17A4:  LDR             R6, [R5,#8]
4E17A6:  MOV             R0, R6
4E17A8:  ADD             SP, SP, #0x18
4E17AA:  VPOP            {D8-D13}
4E17AE:  POP.W           {R8}
4E17B2:  POP             {R4-R7,PC}
