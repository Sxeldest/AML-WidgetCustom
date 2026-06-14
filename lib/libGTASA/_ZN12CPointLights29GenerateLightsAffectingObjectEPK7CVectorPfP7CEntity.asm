; =========================================================
; Game Engine Function: _ZN12CPointLights29GenerateLightsAffectingObjectEPK7CVectorPfP7CEntity
; Address            : 0x5B1508 - 0x5B1792
; =========================================================

5B1508:  PUSH            {R4-R7,LR}
5B150A:  ADD             R7, SP, #0xC
5B150C:  PUSH.W          {R8-R11}
5B1510:  SUB             SP, SP, #4
5B1512:  VPUSH           {D8-D12}
5B1516:  SUB             SP, SP, #0x28; float
5B1518:  MOV             R6, R0
5B151A:  LDR             R0, =(_ZN12CPointLights9NumLightsE_ptr - 0x5B1524)
5B151C:  MOV             LR, R1
5B151E:  STR             R2, [SP,#0x70+var_4C]
5B1520:  ADD             R0, PC; _ZN12CPointLights9NumLightsE_ptr
5B1522:  LDR             R0, [R0]; CPointLights::NumLights ...
5B1524:  LDR             R0, [R0]; CPointLights::NumLights
5B1526:  CMP             R0, #1
5B1528:  BLT.W           loc_5B177C
5B152C:  LDR             R1, =(_ZN12CPointLights7aLightsE_ptr - 0x5B153C)
5B152E:  VMOV.F32        S16, #1.0
5B1532:  LDR             R2, =(Scene_ptr - 0x5B1542)
5B1534:  VMOV.F32        S18, #-0.5
5B1538:  ADD             R1, PC; _ZN12CPointLights7aLightsE_ptr
5B153A:  VLDR            S20, =0.0
5B153E:  ADD             R2, PC; Scene_ptr
5B1540:  VLDR            S24, =0.33333
5B1544:  LDR             R4, [R1]; CPointLights::aLights ...
5B1546:  MOVS            R0, #0
5B1548:  LDR             R1, =(_ZN12CPointLights9NumLightsE_ptr - 0x5B1556)
5B154A:  MOV.W           R9, #0
5B154E:  LDR.W           R12, [R2]; Scene
5B1552:  ADD             R1, PC; _ZN12CPointLights9NumLightsE_ptr
5B1554:  VMOV.F32        S22, S16
5B1558:  LDR             R5, [R1]; CPointLights::NumLights ...
5B155A:  LDR             R1, =(_ZN12CPointLights7aLightsE_ptr - 0x5B1560)
5B155C:  ADD             R1, PC; _ZN12CPointLights7aLightsE_ptr
5B155E:  LDR.W           R10, [R1]; CPointLights::aLights ...
5B1562:  LDR             R1, =(_ZN12CPointLights7aLightsE_ptr - 0x5B1568)
5B1564:  ADD             R1, PC; _ZN12CPointLights7aLightsE_ptr
5B1566:  LDR.W           R11, [R1]; CPointLights::aLights ...
5B156A:  LDR             R1, =(_ZN12CPointLights7aLightsE_ptr - 0x5B1570)
5B156C:  ADD             R1, PC; _ZN12CPointLights7aLightsE_ptr
5B156E:  LDR.W           R8, [R1]; CPointLights::aLights ...
5B1572:  LDR             R1, =(_ZN12CPointLights7aLightsE_ptr - 0x5B1578)
5B1574:  ADD             R1, PC; _ZN12CPointLights7aLightsE_ptr
5B1576:  LDR             R1, [R1]; CPointLights::aLights ...
5B1578:  STR             R1, [SP,#0x70+var_54]
5B157A:  LDR             R1, =(_ZN12CPointLights7aLightsE_ptr - 0x5B1580)
5B157C:  ADD             R1, PC; _ZN12CPointLights7aLightsE_ptr
5B157E:  LDR             R1, [R1]; CPointLights::aLights ...
5B1580:  STR             R1, [SP,#0x70+var_5C]
5B1582:  LDR             R1, =(_ZN12CPointLights7aLightsE_ptr - 0x5B1588)
5B1584:  ADD             R1, PC; _ZN12CPointLights7aLightsE_ptr
5B1586:  LDR             R1, [R1]; CPointLights::aLights ...
5B1588:  STR             R1, [SP,#0x70+var_58]
5B158A:  LDR             R1, =(_ZN12CPointLights7aLightsE_ptr - 0x5B1590)
5B158C:  ADD             R1, PC; _ZN12CPointLights7aLightsE_ptr
5B158E:  LDR             R1, [R1]; CPointLights::aLights ...
5B1590:  STR             R1, [SP,#0x70+var_50]
5B1592:  B               loc_5B1756
5B1594:  ADD.W           R3, R10, R0,LSL#4
5B1598:  VLDR            S0, [R6]
5B159C:  VLDR            S2, [R3]
5B15A0:  VLDR            S6, [R3,#0x18]
5B15A4:  VSUB.F32        S0, S2, S0
5B15A8:  VNEG.F32        S8, S6
5B15AC:  VCMPE.F32       S0, S8
5B15B0:  VMRS            APSR_nzcv, FPSCR
5B15B4:  BLE.W           loc_5B176C
5B15B8:  VCMPE.F32       S0, S6
5B15BC:  VMRS            APSR_nzcv, FPSCR
5B15C0:  BGE.W           loc_5B176C
5B15C4:  ADD.W           R3, R11, R0,LSL#4
5B15C8:  VLDR            S2, [R6,#4]
5B15CC:  VLDR            S4, [R3,#4]
5B15D0:  VSUB.F32        S2, S4, S2
5B15D4:  VCMPE.F32       S2, S8
5B15D8:  VMRS            APSR_nzcv, FPSCR
5B15DC:  BLE.W           loc_5B176C
5B15E0:  VCMPE.F32       S2, S6
5B15E4:  VMRS            APSR_nzcv, FPSCR
5B15E8:  BGE.W           loc_5B176C
5B15EC:  ADD.W           R3, R8, R0,LSL#4
5B15F0:  VLDR            S4, [R6,#8]
5B15F4:  VLDR            S10, [R3,#8]
5B15F8:  VSUB.F32        S4, S10, S4
5B15FC:  VCMPE.F32       S4, S8
5B1600:  VMRS            APSR_nzcv, FPSCR
5B1604:  BLE.W           loc_5B176C
5B1608:  VCMPE.F32       S4, S6
5B160C:  VMRS            APSR_nzcv, FPSCR
5B1610:  BGE.W           loc_5B176C
5B1614:  VMUL.F32        S8, S2, S2
5B1618:  VMUL.F32        S10, S0, S0
5B161C:  VMUL.F32        S12, S4, S4
5B1620:  VADD.F32        S8, S10, S8
5B1624:  VADD.F32        S8, S8, S12
5B1628:  VSQRT.F32       S8, S8
5B162C:  VCMPE.F32       S8, S6
5B1630:  VMRS            APSR_nzcv, FPSCR
5B1634:  BGE.W           loc_5B176C
5B1638:  VDIV.F32        S6, S8, S6
5B163C:  CMP             R2, #2
5B163E:  BNE             loc_5B1646
5B1640:  VMUL.F32        S22, S22, S6
5B1644:  B               loc_5B176C
5B1646:  VSUB.F32        S6, S16, S6
5B164A:  CMP.W           LR, #0
5B164E:  BEQ             loc_5B1696
5B1650:  LDR             R2, [SP,#0x70+var_50]
5B1652:  VLDR            S12, [LR]
5B1656:  ADD.W           R2, R2, R0,LSL#4
5B165A:  VLDR            S10, [R2,#0x1C]
5B165E:  VMUL.F32        S10, S6, S10
5B1662:  VMUL.F32        S10, S10, S24
5B1666:  VADD.F32        S10, S12, S10
5B166A:  VSTR            S10, [LR]
5B166E:  VLDR            S12, [R2,#0x20]
5B1672:  VMUL.F32        S12, S6, S12
5B1676:  VMUL.F32        S12, S12, S24
5B167A:  VADD.F32        S10, S10, S12
5B167E:  VSTR            S10, [LR]
5B1682:  VLDR            S12, [R2,#0x24]
5B1686:  VMUL.F32        S12, S6, S12
5B168A:  VMUL.F32        S12, S12, S24
5B168E:  VADD.F32        S10, S10, S12
5B1692:  VSTR            S10, [LR]
5B1696:  VCMP.F32        S8, #0.0
5B169A:  VMRS            APSR_nzcv, FPSCR
5B169E:  BEQ             loc_5B176C
5B16A0:  VDIV.F32        S8, S16, S8
5B16A4:  LDRB            R1, [R1]
5B16A6:  CMP             R1, #1
5B16A8:  VMUL.F32        S6, S6, S6
5B16AC:  VMUL.F32        S4, S4, S8
5B16B0:  VMUL.F32        S2, S2, S8
5B16B4:  VMUL.F32        S0, S0, S8
5B16B8:  BNE             loc_5B16FE
5B16BA:  LDR             R1, [SP,#0x70+var_54]
5B16BC:  LDR             R2, [SP,#0x70+var_4C]
5B16BE:  ADD.W           R1, R1, R0,LSL#4
5B16C2:  LDR             R1, [R1,#0x28]
5B16C4:  CMP             R1, R2
5B16C6:  BEQ             loc_5B16FE
5B16C8:  LDR             R1, [SP,#0x70+var_5C]
5B16CA:  ADD.W           R1, R1, R0,LSL#4
5B16CE:  VLDR            S8, [R1,#0xC]
5B16D2:  VLDR            S10, [R1,#0x10]
5B16D6:  VMUL.F32        S8, S0, S8
5B16DA:  VLDR            S12, [R1,#0x14]
5B16DE:  VMUL.F32        S10, S2, S10
5B16E2:  VMUL.F32        S12, S4, S12
5B16E6:  VADD.F32        S8, S8, S10
5B16EA:  VADD.F32        S8, S8, S12
5B16EE:  VSUB.F32        S8, S18, S8
5B16F2:  VADD.F32        S8, S8, S8
5B16F6:  VMAX.F32        D4, D4, D10
5B16FA:  VMUL.F32        S6, S6, S8
5B16FE:  VCMPE.F32       S6, #0.0
5B1702:  VMRS            APSR_nzcv, FPSCR
5B1706:  BLE             loc_5B176C
5B1708:  VMOV            R1, S0; int
5B170C:  STR.W           R12, [SP,#0x70+var_60]
5B1710:  VMOV            R2, S2; int
5B1714:  LDR.W           R12, [SP,#0x70+var_58]
5B1718:  VMOV            R3, S4; int
5B171C:  STR.W           LR, [SP,#0x70+var_64]
5B1720:  ADD.W           R0, R12, R0,LSL#4
5B1724:  VLDR            S0, [R0,#0x1C]
5B1728:  VLDR            S2, [R0,#0x20]
5B172C:  VLDR            S4, [R0,#0x24]
5B1730:  VMUL.F32        S0, S6, S0
5B1734:  VMUL.F32        S2, S6, S2
5B1738:  LDR             R0, [SP,#0x70+var_60]
5B173A:  VMUL.F32        S4, S6, S4
5B173E:  LDR             R0, [R0]; int
5B1740:  VSTR            S0, [SP,#0x70+var_70]
5B1744:  VSTR            S2, [SP,#0x70+var_6C]
5B1748:  VSTR            S4, [SP,#0x70+var_68]
5B174C:  BLX.W           j__Z26AddAnExtraDirectionalLightP7RpWorldffffff; AddAnExtraDirectionalLight(RpWorld *,float,float,float,float,float,float)
5B1750:  LDRD.W          LR, R12, [SP,#0x70+var_64]
5B1754:  B               loc_5B176C
5B1756:  ADD.W           R0, R0, R0,LSL#1
5B175A:  ADD.W           R1, R4, R0,LSL#4
5B175E:  LDRB.W          R2, [R1,#0x2C]!
5B1762:  SUBS            R3, R2, #3
5B1764:  UXTB            R3, R3
5B1766:  CMP             R3, #2
5B1768:  BCS.W           loc_5B1594
5B176C:  ADD.W           R9, R9, #1
5B1770:  LDR             R1, [R5]; CPointLights::NumLights
5B1772:  SXTH.W          R0, R9
5B1776:  CMP             R1, R0
5B1778:  BGT             loc_5B1756
5B177A:  B               loc_5B1780
5B177C:  VMOV.F32        S22, #1.0
5B1780:  VMOV            R0, S22
5B1784:  ADD             SP, SP, #0x28 ; '('
5B1786:  VPOP            {D8-D12}
5B178A:  ADD             SP, SP, #4
5B178C:  POP.W           {R8-R11}
5B1790:  POP             {R4-R7,PC}
