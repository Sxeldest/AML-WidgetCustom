; =========================================================
; Game Engine Function: _ZN4CPed20CalculateNewVelocityEv
; Address            : 0x4A12F4 - 0x4A1830
; =========================================================

4A12F4:  PUSH            {R4-R7,LR}
4A12F6:  ADD             R7, SP, #0xC
4A12F8:  PUSH.W          {R11}
4A12FC:  VPUSH           {D8-D12}
4A1300:  MOV             R4, R0
4A1302:  LDRB.W          R0, [R4,#0x485]
4A1306:  TST.W           R0, #6
4A130A:  BNE.W           loc_4A1526
4A130E:  LDR.W           R0, [R4,#0x44C]
4A1312:  SUBS            R0, #0x36 ; '6'
4A1314:  CMP             R0, #9
4A1316:  BHI             loc_4A1328
4A1318:  MOVS            R1, #1
4A131A:  LSL.W           R0, R1, R0
4A131E:  MOVW            R1, #0x203
4A1322:  TST             R0, R1
4A1324:  BNE.W           loc_4A1526
4A1328:  ADDW            R0, R4, #0x564
4A132C:  VLDR            S20, =3.1416
4A1330:  VLDR            S2, =180.0
4A1334:  VLDR            S0, [R0]
4A1338:  LDR.W           R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x4A1348)
4A133C:  VMUL.F32        S0, S0, S20
4A1340:  LDR.W           R5, [R4,#0x560]
4A1344:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
4A1346:  LDR             R1, [R0]; float
4A1348:  LDR.W           R0, [R4,#0x55C]; this
4A134C:  VLDR            S18, [R1]
4A1350:  VDIV.F32        S16, S0, S2
4A1354:  BLX             j__ZN8CGeneral16LimitRadianAngleEf; CGeneral::LimitRadianAngle(float)
4A1358:  STR.W           R0, [R4,#0x55C]
4A135C:  MOV             R0, R5; this
4A135E:  ADDW            R6, R4, #0x55C
4A1362:  BLX             j__ZN8CGeneral16LimitRadianAngleEf; CGeneral::LimitRadianAngle(float)
4A1366:  VLDR            S0, [R6]
4A136A:  VMOV            S4, R0
4A136E:  VADD.F32        S2, S0, S20
4A1372:  VCMPE.F32       S2, S4
4A1376:  VMRS            APSR_nzcv, FPSCR
4A137A:  BGE             loc_4A1382
4A137C:  VLDR            S2, =-6.2832
4A1380:  B               loc_4A1398
4A1382:  VLDR            S2, =-3.1416
4A1386:  VADD.F32        S2, S0, S2
4A138A:  VCMPE.F32       S2, S4
4A138E:  VMRS            APSR_nzcv, FPSCR
4A1392:  BLE             loc_4A139C
4A1394:  VLDR            S2, =6.2832
4A1398:  VADD.F32        S4, S4, S2
4A139C:  VMUL.F32        S2, S18, S16
4A13A0:  LDR.W           R0, [R4,#0x59C]
4A13A4:  VSUB.F32        S16, S4, S0
4A13A8:  CMP             R0, #1
4A13AA:  BHI             loc_4A13BE
4A13AC:  MOV.W           R1, #0x3F800000
4A13B0:  VMOV.F32        S4, #1.0
4A13B4:  STR.W           R1, [R4,#0x568]
4A13B8:  ADD.W           R1, R4, #0x568
4A13BC:  B               loc_4A1412
4A13BE:  VCMPE.F32       S16, #0.0
4A13C2:  VMRS            APSR_nzcv, FPSCR
4A13C6:  BLT             loc_4A13E8
4A13C8:  ADD.W           R1, R4, #0x568
4A13CC:  VLDR            S4, [R1]
4A13D0:  VCMPE.F32       S4, #0.0
4A13D4:  VMRS            APSR_nzcv, FPSCR
4A13D8:  BGE             loc_4A13E8
4A13DA:  MOVW            R2, #0xCCCD
4A13DE:  VLDR            S4, =0.1
4A13E2:  MOVT            R2, #0x3DCC
4A13E6:  B               loc_4A1410
4A13E8:  ADD.W           R1, R4, #0x568
4A13EC:  VCMPE.F32       S16, #0.0
4A13F0:  VMRS            APSR_nzcv, FPSCR
4A13F4:  VLDR            S4, [R1]
4A13F8:  BGE             loc_4A1412
4A13FA:  VCMPE.F32       S4, #0.0
4A13FE:  VMRS            APSR_nzcv, FPSCR
4A1402:  BLE             loc_4A1412
4A1404:  MOVW            R2, #0xCCCD
4A1408:  VLDR            S4, =-0.1
4A140C:  MOVT            R2, #0xBDCC
4A1410:  STR             R2, [R1]
4A1412:  VABS.F32        S6, S4
4A1416:  VMUL.F32        S6, S2, S6
4A141A:  VCMPE.F32       S16, S6
4A141E:  VMRS            APSR_nzcv, FPSCR
4A1422:  BLE             loc_4A1450
4A1424:  VADD.F32        S0, S6, S0
4A1428:  LDR.W           R2, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x4A1434)
4A142C:  VLDR            S2, =0.1
4A1430:  ADD             R2, PC; _ZN6CTimer12ms_fTimeStepE_ptr
4A1432:  LDR             R2, [R2]; CTimer::ms_fTimeStep ...
4A1434:  VSTR            S0, [R6]
4A1438:  VLDR            S0, [R2]
4A143C:  MOVS            R2, #1
4A143E:  VMUL.F32        S0, S0, S2
4A1442:  VMOV.F32        S2, #1.0
4A1446:  VADD.F32        S0, S4, S0
4A144A:  VMIN.F32        D0, D0, D1
4A144E:  B               loc_4A14D2
4A1450:  VNEG.F32        S8, S6
4A1454:  VCMPE.F32       S16, S8
4A1458:  VMRS            APSR_nzcv, FPSCR
4A145C:  BGE             loc_4A148A
4A145E:  VSUB.F32        S0, S0, S6
4A1462:  LDR.W           R2, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x4A146E)
4A1466:  VLDR            S2, =-0.1
4A146A:  ADD             R2, PC; _ZN6CTimer12ms_fTimeStepE_ptr
4A146C:  LDR             R2, [R2]; CTimer::ms_fTimeStep ...
4A146E:  VSTR            S0, [R6]
4A1472:  VLDR            S0, [R2]
4A1476:  MOVS            R2, #1
4A1478:  VMUL.F32        S0, S0, S2
4A147C:  VMOV.F32        S2, #-1.0
4A1480:  VADD.F32        S0, S4, S0
4A1484:  VMAX.F32        D0, D0, D1
4A1488:  B               loc_4A14D2
4A148A:  VLDR            S6, =0.1
4A148E:  VABS.F32        S8, S16
4A1492:  VMUL.F32        S10, S2, S6
4A1496:  VCMPE.F32       S8, S10
4A149A:  VMRS            APSR_nzcv, FPSCR
4A149E:  BLE             loc_4A14C0
4A14A0:  CMP             R0, #2
4A14A2:  BCC             loc_4A14C0
4A14A4:  VMOV.F32        S2, #0.5
4A14A8:  MOVS            R2, #0
4A14AA:  VMUL.F32        S6, S16, S2
4A14AE:  VMUL.F32        S2, S4, S2
4A14B2:  VADD.F32        S0, S6, S0
4A14B6:  VSTR            S0, [R6]
4A14BA:  VSTR            S2, [R1]
4A14BE:  B               loc_4A14E0
4A14C0:  VDIV.F32        S2, S8, S2
4A14C4:  MOVS            R2, #0
4A14C6:  VADD.F32        S0, S16, S0
4A14CA:  VSTR            S0, [R6]
4A14CE:  VMAX.F32        D0, D1, D3
4A14D2:  CMP             R0, #1
4A14D4:  VSTR            S0, [R1]
4A14D8:  BHI             loc_4A14E0
4A14DA:  ADD.W           R5, R4, #0x450
4A14DE:  B               loc_4A1512
4A14E0:  LDR.W           R0, [R4,#0x450]
4A14E4:  ADD.W           R5, R4, #0x450
4A14E8:  CMP             R0, #1
4A14EA:  BNE             loc_4A14F2
4A14EC:  CMP             R2, #1
4A14EE:  BEQ             loc_4A14FA
4A14F0:  B               loc_4A1512
4A14F2:  CBNZ            R0, loc_4A1512
4A14F4:  EORS.W          R0, R2, #1
4A14F8:  BNE             loc_4A1512
4A14FA:  LDR.W           R0, [R4,#0x440]; this
4A14FE:  BLX             j__ZNK16CPedIntelligence13GetTaskUseGunEv; CPedIntelligence::GetTaskUseGun(void)
4A1502:  CBNZ            R0, loc_4A1512
4A1504:  LDR.W           R0, [R4,#0x440]; this
4A1508:  BLX             j__ZNK16CPedIntelligence15GetTaskFightingEv; CPedIntelligence::GetTaskFighting(void)
4A150C:  CMP             R0, #0
4A150E:  BEQ.W           loc_4A1820
4A1512:  LDR             R0, [R5]
4A1514:  BIC.W           R0, R0, #1
4A1518:  CMP             R0, #2
4A151A:  BNE             loc_4A1520
4A151C:  MOVS            R0, #1
4A151E:  STR             R0, [R5]
4A1520:  MOVS            R0, #0
4A1522:  STR.W           R0, [R4,#0x530]
4A1526:  LDR             R0, [R4,#0x14]
4A1528:  ADD.W           R1, R4, #0x580
4A152C:  VLDR            S0, [R1]
4A1530:  VLDR            S4, [R0,#4]
4A1534:  VLDR            S2, [R0]
4A1538:  VLDR            S6, [R0,#8]
4A153C:  VMUL.F32        S4, S0, S4
4A1540:  VLDR            S10, [R0,#0x14]
4A1544:  VLDR            S8, [R0,#0x10]
4A1548:  VLDR            S12, [R0,#0x18]
4A154C:  ADDW            R0, R4, #0x57C
4A1550:  VMUL.F32        S0, S0, S10
4A1554:  VLDR            S14, [R0]
4A1558:  ADDW            R0, R4, #0x584
4A155C:  VMUL.F32        S2, S14, S2
4A1560:  VLDR            S10, [R0]
4A1564:  VMUL.F32        S8, S14, S8
4A1568:  LDRB.W          R0, [R4,#0x534]
4A156C:  VMUL.F32        S6, S10, S6
4A1570:  LSLS            R0, R0, #0x1C
4A1572:  VADD.F32        S2, S2, S4
4A1576:  VMUL.F32        S4, S10, S12
4A157A:  VADD.F32        S0, S8, S0
4A157E:  VADD.F32        S16, S2, S6
4A1582:  VADD.F32        S18, S0, S4
4A1586:  BMI             loc_4A15DA
4A1588:  LDR.W           R0, [R4,#0x450]
4A158C:  CMP             R0, #4
4A158E:  BLT.W           loc_4A172A
4A1592:  LDR.W           R0, [R4,#0x59C]
4A1596:  CMP             R0, #2
4A1598:  BCC.W           loc_4A172A
4A159C:  ADDW            R5, R4, #0x52C
4A15A0:  VLDR            S2, =0.02
4A15A4:  VLDR            S20, [R5]
4A15A8:  VABS.F32        S0, S20
4A15AC:  VCMPE.F32       S0, S2
4A15B0:  VMRS            APSR_nzcv, FPSCR
4A15B4:  BLE.W           loc_4A1726
4A15B8:  LDR             R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x4A15BE)
4A15BA:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
4A15BC:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
4A15BE:  LDR             R1, [R0]; y
4A15C0:  MOV             R0, #0x3F666666; x
4A15C8:  BLX             powf
4A15CC:  VMOV            S0, R0
4A15D0:  VMUL.F32        S0, S20, S0
4A15D4:  VSTR            S0, [R5]
4A15D8:  B               loc_4A1726
4A15DA:  LDR.W           R0, [R4,#0x44C]
4A15DE:  CMP             R0, #0x36 ; '6'
4A15E0:  BEQ             loc_4A15F8
4A15E2:  ADDW            R5, R4, #0x484
4A15E6:  LDR             R0, [R5,#8]
4A15E8:  TST.W           R0, #0x100000
4A15EC:  BEQ             loc_4A1678
4A15EE:  MOV.W           R1, #0x100000
4A15F2:  TST             R0, R1
4A15F4:  BEQ.W           loc_4A180C
4A15F8:  VMOV.F32        S0, #-1.0
4A15FC:  VMOV.F32        S2, #1.0
4A1600:  VMAX.F32        D16, D8, D0
4A1604:  VMIN.F32        D0, D16, D1
4A1608:  VMOV            R0, S0; x
4A160C:  BLX             asinf
4A1610:  VMOV            S0, R0
4A1614:  VMOV.F32        S2, #-1.0
4A1618:  ADDW            R1, R4, #0x52C
4A161C:  VMOV.F32        S4, #1.0
4A1620:  VSTR            S0, [R1]
4A1624:  VMAX.F32        D16, D9, D1
4A1628:  VMIN.F32        D1, D16, D2
4A162C:  VMOV            R0, S2; x
4A1630:  BLX             asinf
4A1634:  VMOV.F32        S0, #0.25
4A1638:  VMOV.F32        S2, #0.75
4A163C:  VMOV            S4, R0
4A1640:  ADDW            R0, R4, #0x524
4A1644:  VLDR            S6, [R0]
4A1648:  VMUL.F32        S0, S4, S0
4A164C:  VMUL.F32        S2, S6, S2
4A1650:  VADD.F32        S0, S0, S2
4A1654:  VSTR            S0, [R0]
4A1658:  B               loc_4A172A
4A165A:  ALIGN 4
4A165C:  DCFS 3.1416
4A1660:  DCFS 180.0
4A1664:  DCFS -6.2832
4A1668:  DCFS -3.1416
4A166C:  DCFS 6.2832
4A1670:  DCFS 0.1
4A1674:  DCFS -0.1
4A1678:  LDR.W           R0, [R4,#0x450]
4A167C:  CMP             R0, #4
4A167E:  BLT             loc_4A169C
4A1680:  LDR             R0, =(g_surfaceInfos_ptr - 0x4A168A)
4A1682:  LDRB.W          R1, [R4,#0xBE]; unsigned int
4A1686:  ADD             R0, PC; g_surfaceInfos_ptr
4A1688:  LDR             R0, [R0]; g_surfaceInfos ; this
4A168A:  BLX             j__ZN14SurfaceInfos_c8IsStairsEj; SurfaceInfos_c::IsStairs(uint)
4A168E:  CMP             R0, #0
4A1690:  ITT EQ
4A1692:  LDREQ           R0, [R5,#0xC]
4A1694:  TSTEQ.W         R0, #0x4000
4A1698:  BEQ.W           loc_4A1812
4A169C:  ADDW            R5, R4, #0x52C
4A16A0:  ADDW            R6, R4, #0x524
4A16A4:  MOVS            R1, #0
4A16A6:  VLDR            S22, =0.0
4A16AA:  VLDR            S20, [R5]
4A16AE:  MOVS            R0, #0
4A16B0:  VLDR            S24, [R6]
4A16B4:  VMOV.F32        S0, S22
4A16B8:  VCMP.F32        S20, #0.0
4A16BC:  VMRS            APSR_nzcv, FPSCR
4A16C0:  VCMP.F32        S24, #0.0
4A16C4:  IT NE
4A16C6:  MOVNE           R1, #1
4A16C8:  VMRS            APSR_nzcv, FPSCR
4A16CC:  IT NE
4A16CE:  MOVNE           R0, #1
4A16D0:  ORRS            R0, R1
4A16D2:  BEQ             loc_4A16EC
4A16D4:  LDR             R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x4A16DA)
4A16D6:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
4A16D8:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
4A16DA:  LDR             R1, [R0]; y
4A16DC:  MOV             R0, #0x3F666666; x
4A16E4:  BLX             powf
4A16E8:  VMOV            S0, R0
4A16EC:  VABS.F32        S2, S24
4A16F0:  VLDR            S4, =0.01
4A16F4:  VMUL.F32        S6, S0, S24
4A16F8:  VCMPE.F32       S2, S4
4A16FC:  VLDR            S4, =0.02
4A1700:  VMRS            APSR_nzcv, FPSCR
4A1704:  VABS.F32        S2, S20
4A1708:  VCMPE.F32       S2, S4
4A170C:  IT GT
4A170E:  VMOVGT.F32      S22, S6
4A1712:  VMRS            APSR_nzcv, FPSCR
4A1716:  VSTR            S22, [R6]
4A171A:  BLE             loc_4A1726
4A171C:  VMUL.F32        S0, S0, S20
4A1720:  VSTR            S0, [R5]
4A1724:  B               loc_4A172A
4A1726:  MOVS            R0, #0
4A1728:  STR             R0, [R5]
4A172A:  VMOV.F32        S0, #1.0
4A172E:  VLDR            S4, =0.0
4A1732:  VMUL.F32        S2, S18, S18
4A1736:  ADD.W           R0, R4, #0x4E8
4A173A:  VMUL.F32        S6, S16, S16
4A173E:  LDR             R2, [R4,#0x14]
4A1740:  VLDR            S8, [R0]
4A1744:  MOVS            R0, #0
4A1746:  STR.W           R0, [R4,#0x554]
4A174A:  ADD.W           R1, R4, #0x558
4A174E:  STR.W           R0, [R4,#0x558]
4A1752:  ADDW            R0, R4, #0x4E4
4A1756:  VLDR            S10, [R2,#0x14]
4A175A:  VSUB.F32        S2, S0, S2
4A175E:  VSUB.F32        S6, S0, S6
4A1762:  VMAX.F32        D1, D1, D2
4A1766:  VMAX.F32        D3, D3, D2
4A176A:  VSQRT.F32       S2, S2
4A176E:  VSQRT.F32       S6, S6
4A1772:  VMUL.F32        S2, S2, S8
4A1776:  VLDR            S8, [R2,#0x10]
4A177A:  VMUL.F32        S8, S2, S8
4A177E:  VMUL.F32        S2, S2, S10
4A1782:  VADD.F32        S8, S8, S4
4A1786:  VADD.F32        S2, S2, S4
4A178A:  VLDR            S4, [R0]
4A178E:  ADDW            R0, R4, #0x554
4A1792:  VMUL.F32        S4, S6, S4
4A1796:  VSTR            S8, [R0]
4A179A:  VSTR            S2, [R1]
4A179E:  VLDR            S6, [R2]
4A17A2:  VLDR            S10, [R2,#4]
4A17A6:  VMUL.F32        S6, S4, S6
4A17AA:  LDR             R2, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x4A17B4)
4A17AC:  VMUL.F32        S4, S4, S10
4A17B0:  ADD             R2, PC; _ZN6CTimer12ms_fTimeStepE_ptr
4A17B2:  LDR             R2, [R2]; CTimer::ms_fTimeStep ...
4A17B4:  VADD.F32        S6, S6, S8
4A17B8:  VADD.F32        S4, S4, S2
4A17BC:  VLDR            S2, =0.01
4A17C0:  VSTR            S6, [R0]
4A17C4:  VSTR            S4, [R1]
4A17C8:  VLDR            S8, [R2]
4A17CC:  VCMPE.F32       S8, S2
4A17D0:  VMRS            APSR_nzcv, FPSCR
4A17D4:  BGE             loc_4A17EA
4A17D6:  LDR             R2, =(_ZN6CTimer17bSlowMotionActiveE_ptr - 0x4A17DC)
4A17D8:  ADD             R2, PC; _ZN6CTimer17bSlowMotionActiveE_ptr
4A17DA:  LDR             R2, [R2]; CTimer::bSlowMotionActive ...
4A17DC:  LDRB            R2, [R2]; CTimer::bSlowMotionActive
4A17DE:  CBNZ            R2, loc_4A17EA
4A17E0:  VMUL.F32        S0, S6, S2
4A17E4:  VMOV.F32        S8, S4
4A17E8:  B               loc_4A17F6
4A17EA:  VDIV.F32        S8, S0, S8
4A17EE:  VMUL.F32        S0, S8, S6
4A17F2:  VMOV.F32        S2, S4
4A17F6:  VMUL.F32        S2, S2, S8
4A17FA:  VSTR            S0, [R0]
4A17FE:  VSTR            S2, [R1]
4A1802:  VPOP            {D8-D12}
4A1806:  POP.W           {R11}
4A180A:  POP             {R4-R7,PC}
4A180C:  VLDR            S0, =0.0
4A1810:  B               loc_4A1614
4A1812:  LDR.W           R0, [R4,#0x44C]
4A1816:  CMP             R0, #0x36 ; '6'
4A1818:  BEQ.W           loc_4A15F8
4A181C:  LDR             R0, [R5,#8]
4A181E:  B               loc_4A15EE
4A1820:  VCMPE.F32       S16, #0.0
4A1824:  VMRS            APSR_nzcv, FPSCR
4A1828:  ITE LE
4A182A:  MOVLE           R0, #3
4A182C:  MOVGT           R0, #2
4A182E:  B               loc_4A151E
