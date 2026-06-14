; =========================================================
; Game Engine Function: _ZN20CPedGeometryAnalyser18ComputeClearTargetERK4CPedRK7CVectorRS3_
; Address            : 0x4B1434 - 0x4B17EC
; =========================================================

4B1434:  PUSH            {R4-R7,LR}
4B1436:  ADD             R7, SP, #0xC
4B1438:  PUSH.W          {R8-R11}
4B143C:  SUB             SP, SP, #4
4B143E:  VPUSH           {D8}
4B1442:  SUB             SP, SP, #0x60; float *
4B1444:  VLDR            D16, [R1]
4B1448:  MOV             R4, R2
4B144A:  MOV             R11, R0
4B144C:  LDR             R0, [R1,#8]
4B144E:  STR             R0, [R4,#8]
4B1450:  VMOV.F32        S16, #25.0
4B1454:  VSTR            D16, [R4]
4B1458:  ADDS            R6, R4, #4
4B145A:  LDR.W           R0, [R11,#0x14]
4B145E:  MOV.W           R8, #0
4B1462:  LDR.W           R1, [R11,#0x440]
4B1466:  ADD.W           R10, R0, #0x30 ; '0'
4B146A:  CMP             R0, #0
4B146C:  LDR             R0, =(_ZN20CPedGeometryAnalyser20ms_fPedNominalRadiusE_ptr - 0x4B147C)
4B146E:  ADD.W           R9, R1, #0xE0
4B1472:  IT EQ
4B1474:  ADDEQ.W         R10, R11, #4
4B1478:  ADD             R0, PC; _ZN20CPedGeometryAnalyser20ms_fPedNominalRadiusE_ptr
4B147A:  LDR             R0, [R0]; CPedGeometryAnalyser::ms_fPedNominalRadius ...
4B147C:  STR             R0, [SP,#0x88+var_68]
4B147E:  LDR.W           R5, [R9,R8,LSL#2]
4B1482:  CMP             R5, #0
4B1484:  BEQ             loc_4B156A
4B1486:  LDR             R0, [R5,#0x14]
4B1488:  VLDR            S0, [R4]
4B148C:  ADD.W           R1, R0, #0x30 ; '0'
4B1490:  CMP             R0, #0
4B1492:  IT EQ
4B1494:  ADDEQ           R1, R5, #4
4B1496:  VLDR            D16, [R6]
4B149A:  VLDR            S2, [R1]
4B149E:  VLDR            D17, [R1,#4]
4B14A2:  VSUB.F32        S0, S2, S0
4B14A6:  VSUB.F32        D16, D17, D16
4B14AA:  VMUL.F32        D1, D16, D16
4B14AE:  VMUL.F32        S0, S0, S0
4B14B2:  VADD.F32        S0, S0, S2
4B14B6:  VADD.F32        S0, S0, S3
4B14BA:  VCMPE.F32       S0, S16
4B14BE:  VMRS            APSR_nzcv, FPSCR
4B14C2:  BGE             loc_4B156A
4B14C4:  MOV             R0, R11; this
4B14C6:  MOV             R1, R4; CPed *
4B14C8:  MOV             R2, R5; CVector *
4B14CA:  BLX             j__ZN20CPedGeometryAnalyser21LiesInsideBoundingBoxERK4CPedRK7CVectorR7CEntity; CPedGeometryAnalyser::LiesInsideBoundingBox(CPed const&,CVector const&,CEntity &)
4B14CE:  CMP             R0, #1
4B14D0:  BNE             loc_4B156A
4B14D2:  ADD             R3, SP, #0x88+var_64; CEntity *
4B14D4:  MOV             R0, R11; this
4B14D6:  MOV             R1, R4; CPed *
4B14D8:  MOV             R2, R5; CVector *
4B14DA:  BLX             j__ZN20CPedGeometryAnalyser21GetIsLineOfSightClearERK4CPedRK7CVectorR7CEntityRf; CPedGeometryAnalyser::GetIsLineOfSightClear(CPed const&,CVector const&,CEntity &,float &)
4B14DE:  CMP             R0, #0
4B14E0:  BNE             loc_4B156A
4B14E2:  VLDR            S0, [R10]
4B14E6:  ADD             R0, SP, #0x88+var_54; this
4B14E8:  VLDR            S2, [R4]
4B14EC:  VLDR            S4, [R4,#4]
4B14F0:  VSUB.F32        S0, S2, S0
4B14F4:  VLDR            S6, [R4,#8]
4B14F8:  VSTR            S0, [SP,#0x88+var_54]
4B14FC:  VLDR            S0, [R10,#4]
4B1500:  VSUB.F32        S0, S4, S0
4B1504:  VSTR            S0, [SP,#0x88+var_50]
4B1508:  VLDR            S0, [R10,#8]
4B150C:  VSUB.F32        S0, S6, S0
4B1510:  VSTR            S0, [SP,#0x88+var_4C]
4B1514:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
4B1518:  LDR             R0, [SP,#0x88+var_68]
4B151A:  VLDR            S2, [SP,#0x88+var_64]
4B151E:  VLDR            S4, [SP,#0x88+var_50]
4B1522:  VLDR            S0, [R0]
4B1526:  VLDR            S6, [SP,#0x88+var_4C]
4B152A:  VADD.F32        S0, S2, S0
4B152E:  VLDR            S2, [SP,#0x88+var_54]
4B1532:  VMUL.F32        S2, S2, S0
4B1536:  VMUL.F32        S4, S0, S4
4B153A:  VMUL.F32        S0, S0, S6
4B153E:  VSTR            S2, [SP,#0x88+var_54]
4B1542:  VSTR            S4, [SP,#0x88+var_50]
4B1546:  VLDR            S6, [R4]
4B154A:  VLDR            S8, [R4,#4]
4B154E:  VLDR            S10, [R4,#8]
4B1552:  VSUB.F32        S2, S6, S2
4B1556:  VSUB.F32        S4, S8, S4
4B155A:  VSUB.F32        S0, S10, S0
4B155E:  VSTR            S2, [R4]
4B1562:  VSTR            S4, [R4,#4]
4B1566:  VSTR            S0, [R4,#8]
4B156A:  ADD.W           R8, R8, #1
4B156E:  CMP.W           R8, #0x10
4B1572:  BNE.W           loc_4B147E
4B1576:  LDR.W           R0, [R11,#0x440]
4B157A:  MOV.W           R8, #0
4B157E:  ADD.W           R9, R0, #0x130
4B1582:  LDR             R0, =(_ZN20CPedGeometryAnalyser20ms_fPedNominalRadiusE_ptr - 0x4B1588)
4B1584:  ADD             R0, PC; _ZN20CPedGeometryAnalyser20ms_fPedNominalRadiusE_ptr
4B1586:  LDR             R0, [R0]; CPedGeometryAnalyser::ms_fPedNominalRadius ...
4B1588:  STR             R0, [SP,#0x88+var_68]
4B158A:  LDR.W           R5, [R9,R8,LSL#2]
4B158E:  CMP             R5, #0
4B1590:  BEQ             loc_4B1676
4B1592:  LDR             R0, [R5,#0x14]
4B1594:  VLDR            S0, [R4]
4B1598:  ADD.W           R1, R0, #0x30 ; '0'
4B159C:  CMP             R0, #0
4B159E:  IT EQ
4B15A0:  ADDEQ           R1, R5, #4
4B15A2:  VLDR            D16, [R6]
4B15A6:  VLDR            S2, [R1]
4B15AA:  VLDR            D17, [R1,#4]
4B15AE:  VSUB.F32        S0, S2, S0
4B15B2:  VSUB.F32        D16, D17, D16
4B15B6:  VMUL.F32        D1, D16, D16
4B15BA:  VMUL.F32        S0, S0, S0
4B15BE:  VADD.F32        S0, S0, S2
4B15C2:  VADD.F32        S0, S0, S3
4B15C6:  VCMPE.F32       S0, S16
4B15CA:  VMRS            APSR_nzcv, FPSCR
4B15CE:  BGE             loc_4B1676
4B15D0:  MOV             R0, R11; this
4B15D2:  MOV             R1, R4; CPed *
4B15D4:  MOV             R2, R5; CVector *
4B15D6:  BLX             j__ZN20CPedGeometryAnalyser21LiesInsideBoundingBoxERK4CPedRK7CVectorR7CEntity; CPedGeometryAnalyser::LiesInsideBoundingBox(CPed const&,CVector const&,CEntity &)
4B15DA:  CMP             R0, #1
4B15DC:  BNE             loc_4B1676
4B15DE:  ADD             R3, SP, #0x88+var_64; CEntity *
4B15E0:  MOV             R0, R11; this
4B15E2:  MOV             R1, R4; CPed *
4B15E4:  MOV             R2, R5; CVector *
4B15E6:  BLX             j__ZN20CPedGeometryAnalyser21GetIsLineOfSightClearERK4CPedRK7CVectorR7CEntityRf; CPedGeometryAnalyser::GetIsLineOfSightClear(CPed const&,CVector const&,CEntity &,float &)
4B15EA:  CMP             R0, #0
4B15EC:  BNE             loc_4B1676
4B15EE:  VLDR            S0, [R10]
4B15F2:  ADD             R0, SP, #0x88+var_54; this
4B15F4:  VLDR            S2, [R4]
4B15F8:  VLDR            S4, [R4,#4]
4B15FC:  VSUB.F32        S0, S2, S0
4B1600:  VLDR            S6, [R4,#8]
4B1604:  VSTR            S0, [SP,#0x88+var_54]
4B1608:  VLDR            S0, [R10,#4]
4B160C:  VSUB.F32        S0, S4, S0
4B1610:  VSTR            S0, [SP,#0x88+var_50]
4B1614:  VLDR            S0, [R10,#8]
4B1618:  VSUB.F32        S0, S6, S0
4B161C:  VSTR            S0, [SP,#0x88+var_4C]
4B1620:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
4B1624:  LDR             R0, [SP,#0x88+var_68]
4B1626:  VLDR            S2, [SP,#0x88+var_64]
4B162A:  VLDR            S4, [SP,#0x88+var_50]
4B162E:  VLDR            S0, [R0]
4B1632:  VLDR            S6, [SP,#0x88+var_4C]
4B1636:  VADD.F32        S0, S2, S0
4B163A:  VLDR            S2, [SP,#0x88+var_54]
4B163E:  VMUL.F32        S2, S2, S0
4B1642:  VMUL.F32        S4, S0, S4
4B1646:  VMUL.F32        S0, S0, S6
4B164A:  VSTR            S2, [SP,#0x88+var_54]
4B164E:  VSTR            S4, [SP,#0x88+var_50]
4B1652:  VLDR            S6, [R4]
4B1656:  VLDR            S8, [R4,#4]
4B165A:  VLDR            S10, [R4,#8]
4B165E:  VSUB.F32        S2, S6, S2
4B1662:  VSUB.F32        S4, S8, S4
4B1666:  VSUB.F32        S0, S10, S0
4B166A:  VSTR            S2, [R4]
4B166E:  VSTR            S4, [R4,#4]
4B1672:  VSTR            S0, [R4,#8]
4B1676:  ADD.W           R8, R8, #1
4B167A:  CMP.W           R8, #0x10
4B167E:  BNE.W           loc_4B158A
4B1682:  VLDR            S0, [R4]
4B1686:  ADD             R0, SP, #0x88+var_64; this
4B1688:  VLDR            S6, [R10]
4B168C:  VLDR            S2, [R4,#4]
4B1690:  VSUB.F32        S0, S6, S0
4B1694:  VLDR            S4, [R4,#8]
4B1698:  VSTR            S0, [SP,#0x88+var_64]
4B169C:  VLDR            S0, [R10,#4]
4B16A0:  VSUB.F32        S0, S0, S2
4B16A4:  VSTR            S0, [SP,#0x88+var_60]
4B16A8:  VLDR            S0, [R10,#8]
4B16AC:  VSUB.F32        S0, S0, S4
4B16B0:  VSTR            S0, [SP,#0x88+var_5C]
4B16B4:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
4B16B8:  LDR             R0, =(_ZN20CPedGeometryAnalyser20ms_fPedNominalRadiusE_ptr - 0x4B16C6)
4B16BA:  VMOV.F32        S0, #5.0
4B16BE:  VLDR            S4, [SP,#0x88+var_64]
4B16C2:  ADD             R0, PC; _ZN20CPedGeometryAnalyser20ms_fPedNominalRadiusE_ptr
4B16C4:  VLDR            S6, [SP,#0x88+var_60]
4B16C8:  VLDR            S8, [SP,#0x88+var_5C]
4B16CC:  LDR             R0, [R0]; CPedGeometryAnalyser::ms_fPedNominalRadius ...
4B16CE:  VLDR            S2, [R0]
4B16D2:  VDIV.F32        S0, S0, S2
4B16D6:  VMUL.F32        S4, S2, S4
4B16DA:  VMUL.F32        S6, S2, S6
4B16DE:  VMUL.F32        S2, S2, S8
4B16E2:  VSTR            S4, [SP,#0x88+var_64]
4B16E6:  VCVT.S32.F32    S0, S0
4B16EA:  VSTR            S6, [SP,#0x88+var_60]
4B16EE:  VSTR            S2, [SP,#0x88+var_5C]
4B16F2:  VMOV            R11, S0
4B16F6:  CMP.W           R11, #0
4B16FA:  BLT             loc_4B17DE
4B16FC:  LDR             R0, =(_ZN6CWorld27ms_iProcessLineNumCrossingsE_ptr - 0x4B170C)
4B16FE:  MOV.W           R6, #0xFFFFFFFF
4B1702:  MOVS            R5, #0
4B1704:  MOV.W           R8, #1
4B1708:  ADD             R0, PC; _ZN6CWorld27ms_iProcessLineNumCrossingsE_ptr
4B170A:  LDR.W           R9, [R0]; CWorld::ms_iProcessLineNumCrossings ...
4B170E:  VLDR            S0, [R4]
4B1712:  VLDR            S6, [R10]
4B1716:  VLDR            S2, [R4,#4]
4B171A:  VLDR            S8, [R10,#4]
4B171E:  VSUB.F32        S0, S6, S0
4B1722:  VLDR            S4, [R4,#8]
4B1726:  VSUB.F32        S2, S8, S2
4B172A:  VLDR            S10, [R10,#8]
4B172E:  VSUB.F32        S4, S10, S4
4B1732:  VMUL.F32        S8, S0, S0
4B1736:  VMUL.F32        S6, S2, S2
4B173A:  VMUL.F32        S10, S4, S4
4B173E:  VADD.F32        S6, S8, S6
4B1742:  VADD.F32        S6, S6, S10
4B1746:  VCMPE.F32       S6, S16
4B174A:  VMRS            APSR_nzcv, FPSCR
4B174E:  BGE             loc_4B17DE
4B1750:  VLDR            S6, [SP,#0x88+var_64]
4B1754:  VLDR            S8, [SP,#0x88+var_60]
4B1758:  VMUL.F32        S0, S0, S6
4B175C:  VLDR            S10, [SP,#0x88+var_5C]
4B1760:  VMUL.F32        S2, S2, S8
4B1764:  VMUL.F32        S4, S4, S10
4B1768:  VADD.F32        S0, S0, S2
4B176C:  VADD.F32        S0, S0, S4
4B1770:  VCMPE.F32       S0, #0.0
4B1774:  VMRS            APSR_nzcv, FPSCR
4B1778:  BLT             loc_4B17DE
4B177A:  ADD             R2, SP, #0x88+var_54
4B177C:  ADD             R3, SP, #0x88+var_58
4B177E:  MOV             R0, R10
4B1780:  MOV             R1, R4
4B1782:  STRD.W          R8, R5, [SP,#0x88+var_88]
4B1786:  STRD.W          R5, R5, [SP,#0x88+var_80]
4B178A:  STRD.W          R8, R5, [SP,#0x88+var_78]
4B178E:  STRD.W          R5, R5, [SP,#0x88+var_70]
4B1792:  BLX             j__ZN6CWorld18ProcessLineOfSightERK7CVectorS2_R9CColPointRP7CEntitybbbbbbbb; CWorld::ProcessLineOfSight(CVector const&,CVector const&,CColPoint &,CEntity *&,bool,bool,bool,bool,bool,bool,bool,bool)
4B1796:  LDR.W           R0, [R9]; CWorld::ms_iProcessLineNumCrossings
4B179A:  ADD.W           R1, R0, R0,LSR#31
4B179E:  BIC.W           R1, R1, #1
4B17A2:  SUBS            R0, R0, R1
4B17A4:  CMP             R0, #1
4B17A6:  BNE             loc_4B17DE
4B17A8:  VLDR            S0, [SP,#0x88+var_64]
4B17AC:  ADDS            R6, #1
4B17AE:  VLDR            S2, [R4]
4B17B2:  CMP             R6, R11
4B17B4:  VLDR            S4, [R4,#4]
4B17B8:  VADD.F32        S0, S0, S2
4B17BC:  VLDR            S2, [SP,#0x88+var_60]
4B17C0:  VLDR            S6, [R4,#8]
4B17C4:  VADD.F32        S2, S2, S4
4B17C8:  VLDR            S4, [SP,#0x88+var_5C]
4B17CC:  VADD.F32        S4, S4, S6
4B17D0:  VSTR            S0, [R4]
4B17D4:  VSTR            S2, [R4,#4]
4B17D8:  VSTR            S4, [R4,#8]
4B17DC:  BLT             loc_4B170E
4B17DE:  ADD             SP, SP, #0x60 ; '`'
4B17E0:  VPOP            {D8}
4B17E4:  ADD             SP, SP, #4
4B17E6:  POP.W           {R8-R11}
4B17EA:  POP             {R4-R7,PC}
