; =========================================================
; Game Engine Function: _ZN17CWidgetRegionMove6UpdateEv
; Address            : 0x2C150C - 0x2C1702
; =========================================================

2C150C:  PUSH            {R4,R5,R7,LR}
2C150E:  ADD             R7, SP, #8
2C1510:  VPUSH           {D8-D10}
2C1514:  SUB             SP, SP, #8
2C1516:  MOV             R4, R0
2C1518:  BLX             j__ZN13CWidgetRegion6UpdateEv; CWidgetRegion::Update(void)
2C151C:  MOVS            R0, #0; this
2C151E:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
2C1522:  LDR             R1, =(RsGlobal_ptr - 0x2C152E)
2C1524:  ADR             R2, dword_2C1708
2C1526:  LDRB.W          R0, [R0,#0x145]
2C152A:  ADD             R1, PC; RsGlobal_ptr
2C152C:  VLDR            S16, =640.0
2C1530:  CMP             R0, #0
2C1532:  IT NE
2C1534:  ADDNE           R2, #4
2C1536:  LDR             R1, [R1]; RsGlobal
2C1538:  VLDR            S0, [R2]
2C153C:  VSTR            S0, [R4,#0x94]
2C1540:  VLDR            S2, [R1,#4]
2C1544:  VLDR            S4, [R1,#8]
2C1548:  VCVT.F32.S32    S2, S2
2C154C:  VLDR            S6, [R4,#0x14]
2C1550:  LDR             R1, =(_ZN7CWidget16m_vecTouchAnchorE_ptr - 0x2C155C)
2C1552:  LDR             R0, [R4,#0x78]; this
2C1554:  VCVT.F32.S32    S4, S4
2C1558:  ADD             R1, PC; _ZN7CWidget16m_vecTouchAnchorE_ptr
2C155A:  LDR             R1, [R1]; CWidget::m_vecTouchAnchor ...
2C155C:  VDIV.F32        S2, S2, S16
2C1560:  ADD.W           R1, R1, R0,LSL#3
2C1564:  VMUL.F32        S2, S6, S2
2C1568:  VLDR            S6, [R1,#4]
2C156C:  VMUL.F32        S0, S0, S2
2C1570:  VLDR            S2, [R1]
2C1574:  LDRB.W          R1, [R4,#0x4D]; int
2C1578:  CMP             R1, #0
2C157A:  VMAX.F32        D1, D1, D0
2C157E:  VSUB.F32        S0, S4, S0
2C1582:  VSTR            S2, [R4,#0xA4]
2C1586:  VMIN.F32        D0, D3, D0
2C158A:  VSTR            S0, [R4,#0xA8]
2C158E:  BEQ             loc_2C15B2
2C1590:  BLX             j__ZN15CTouchInterface11IsTouchDownEi; CTouchInterface::IsTouchDown(int)
2C1594:  CMP             R0, #1
2C1596:  BNE             loc_2C15B2
2C1598:  MOV             R1, R4
2C159A:  MOVS            R2, #0
2C159C:  LDR.W           R0, [R1],#0xA4
2C15A0:  LDR             R3, [R0,#0xC]
2C15A2:  MOV             R0, R4
2C15A4:  BLX             R3
2C15A6:  CMP             R0, #1
2C15A8:  BNE             loc_2C15B2
2C15AA:  MOVS            R0, #0xFF
2C15AC:  STRB.W          R0, [R4,#0x4C]
2C15B0:  B               loc_2C160A
2C15B2:  MOV             R1, R4
2C15B4:  MOVS            R2, #0
2C15B6:  LDR.W           R0, [R1],#0xA4
2C15BA:  MOVS            R5, #0
2C15BC:  LDR             R3, [R0,#0xC]
2C15BE:  MOV             R0, R4
2C15C0:  BLX             R3
2C15C2:  CMP             R0, #1
2C15C4:  BNE             loc_2C1606
2C15C6:  LDR             R0, =(_ZN7CWidget14m_fElapsedTimeE_ptr - 0x2C15D0)
2C15C8:  VLDR            S0, [R4,#0x1C]
2C15CC:  ADD             R0, PC; _ZN7CWidget14m_fElapsedTimeE_ptr
2C15CE:  VLDR            S2, =0.0
2C15D2:  VCVT.F64.F32    D16, S0
2C15D6:  LDR             R0, [R0]; CWidget::m_fElapsedTime ...
2C15D8:  VLDR            D17, [R0]
2C15DC:  LDRB.W          R0, [R4,#0x4C]
2C15E0:  VMUL.F64        D16, D17, D16
2C15E4:  VMOV            S0, R0
2C15E8:  VCVT.F64.U32    D17, S0
2C15EC:  VSUB.F64        D16, D17, D16
2C15F0:  VCVT.F32.F64    S0, D16
2C15F4:  VMAX.F32        D0, D0, D1
2C15F8:  VCVT.U32.F32    S0, S0
2C15FC:  VMOV            R0, S0
2C1600:  STRB.W          R0, [R4,#0x4C]
2C1604:  B               loc_2C160A
2C1606:  STRB.W          R5, [R4,#0x4C]
2C160A:  LDR             R1, [R4,#0x78]; int
2C160C:  MOV             R0, SP; this
2C160E:  BLX             j__ZN15CTouchInterface16GetTouchPositionEi; CTouchInterface::GetTouchPosition(int)
2C1612:  LDR             R0, =(RsGlobal_ptr - 0x2C1620)
2C1614:  VLDR            S0, [R4,#0xA4]
2C1618:  VLDR            S4, [SP,#0x28+var_28]
2C161C:  ADD             R0, PC; RsGlobal_ptr
2C161E:  VLDR            S2, [R4,#0xA8]
2C1622:  VLDR            S6, [SP,#0x28+var_24]
2C1626:  VSUB.F32        S18, S4, S0
2C162A:  LDR             R0, [R0]; RsGlobal
2C162C:  VSUB.F32        S20, S6, S2
2C1630:  VLDR            S0, [R0,#4]
2C1634:  VCVT.F32.S32    S0, S0
2C1638:  VLDR            S6, [R4,#0x94]
2C163C:  VMUL.F32        S4, S18, S18
2C1640:  VMUL.F32        S2, S20, S20
2C1644:  VADD.F32        S2, S4, S2
2C1648:  VDIV.F32        S4, S0, S16
2C164C:  VSQRT.F32       S0, S2
2C1650:  VLDR            S2, [R4,#0x14]
2C1654:  VMUL.F32        S2, S2, S4
2C1658:  VMUL.F32        S2, S6, S2
2C165C:  VCMPE.F32       S0, S2
2C1660:  VMRS            APSR_nzcv, FPSCR
2C1664:  BLE             loc_2C167A
2C1666:  VDIV.F32        S0, S0, S2
2C166A:  VMOV.F32        S2, #1.0
2C166E:  VDIV.F32        S0, S2, S0
2C1672:  VMUL.F32        S20, S20, S0
2C1676:  VMUL.F32        S18, S18, S0
2C167A:  LDR             R0, [R4,#0x78]; this
2C167C:  BLX             j__ZN15CTouchInterface11IsTouchDownEi; CTouchInterface::IsTouchDown(int)
2C1680:  CMP             R0, #1
2C1682:  BNE             loc_2C169C
2C1684:  VLDR            S0, [R4,#0xA4]
2C1688:  VLDR            S2, [R4,#0xA8]
2C168C:  VADD.F32        S0, S18, S0
2C1690:  VADD.F32        S2, S20, S2
2C1694:  VSTR            S0, [R4,#0x9C]
2C1698:  VSTR            S2, [R4,#0xA0]
2C169C:  VCMP.F32        S20, #0.0
2C16A0:  MOVS            R1, #0
2C16A2:  VMRS            APSR_nzcv, FPSCR
2C16A6:  VCMP.F32        S18, #0.0
2C16AA:  MOV.W           R2, #0
2C16AE:  MOV.W           R0, #0
2C16B2:  IT EQ
2C16B4:  MOVEQ           R1, #1
2C16B6:  VMRS            APSR_nzcv, FPSCR
2C16BA:  IT EQ
2C16BC:  MOVEQ           R2, #1
2C16BE:  TST             R2, R1
2C16C0:  BEQ             loc_2C16C8
2C16C2:  STR.W           R0, [R4,#0x90]
2C16C6:  B               loc_2C16FA
2C16C8:  VMOV            R0, S20; y
2C16CC:  VMOV            R1, S18; x
2C16D0:  BLX             atan2f
2C16D4:  VLDR            S0, =1.5708
2C16D8:  VMOV            S2, R0
2C16DC:  VADD.F32        S0, S2, S0
2C16E0:  VCMPE.F32       S0, #0.0
2C16E4:  VSTR            S0, [R4,#0x90]
2C16E8:  VMRS            APSR_nzcv, FPSCR
2C16EC:  ITTT LT
2C16EE:  VLDRLT          S2, =6.2832
2C16F2:  VADDLT.F32      S0, S0, S2
2C16F6:  VSTRLT          S0, [R4,#0x90]
2C16FA:  ADD             SP, SP, #8
2C16FC:  VPOP            {D8-D10}
2C1700:  POP             {R4,R5,R7,PC}
