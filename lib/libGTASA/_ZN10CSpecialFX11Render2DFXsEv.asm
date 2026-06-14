; =========================================================
; Game Engine Function: _ZN10CSpecialFX11Render2DFXsEv
; Address            : 0x5C151C - 0x5C1AF0
; =========================================================

5C151C:  PUSH            {R4-R7,LR}
5C151E:  ADD             R7, SP, #0xC
5C1520:  PUSH.W          {R8-R11}
5C1524:  SUB             SP, SP, #4
5C1526:  VPUSH           {D8-D9}
5C152A:  SUB             SP, SP, #0x30
5C152C:  LDR.W           R0, =(_ZN10CSpecialFX9bVideoCamE_ptr - 0x5C1534)
5C1530:  ADD             R0, PC; _ZN10CSpecialFX9bVideoCamE_ptr
5C1532:  LDR             R0, [R0]; CSpecialFX::bVideoCam ...
5C1534:  LDRB            R0, [R0]; CSpecialFX::bVideoCam
5C1536:  CMP             R0, #0
5C1538:  BEQ.W           loc_5C1794
5C153C:  LDR.W           R0, =(RsGlobal_ptr - 0x5C1548)
5C1540:  VLDR            S2, =448.0
5C1544:  ADD             R0, PC; RsGlobal_ptr
5C1546:  LDR             R6, [R0]; RsGlobal
5C1548:  LDR             R0, [R6,#(dword_9FC904 - 0x9FC8FC)]
5C154A:  VMOV            S0, R0
5C154E:  VCVT.F32.S32    S0, S0
5C1552:  VDIV.F32        S0, S0, S2
5C1556:  VMOV.F32        S2, #1.5
5C155A:  VMUL.F32        S0, S0, S2
5C155E:  VMOV            R0, S0; this
5C1562:  BLX.W           j__ZN5CFont8SetScaleEf; CFont::SetScale(float)
5C1566:  MOVS            R0, #0; this
5C1568:  MOVS            R1, #0; unsigned __int8
5C156A:  MOV.W           R8, #0
5C156E:  BLX.W           j__ZN5CFont13SetBackgroundEhh; CFont::SetBackground(uchar,uchar)
5C1572:  MOVS            R0, #(stderr+1); this
5C1574:  BLX.W           j__ZN5CFont15SetProportionalEh; CFont::SetProportional(uchar)
5C1578:  MOVS            R0, #(stderr+1); this
5C157A:  BLX.W           j__ZN5CFont14SetOrientationEh; CFont::SetOrientation(uchar)
5C157E:  MOVS            R0, #0xC8
5C1580:  MOVS            R1, #0; unsigned __int8
5C1582:  STR             R0, [SP,#0x60+var_60]; unsigned __int8
5C1584:  ADD             R0, SP, #0x60+var_34; this
5C1586:  MOVS            R2, #0xFF; unsigned __int8
5C1588:  MOVS            R3, #0; unsigned __int8
5C158A:  BLX.W           j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
5C158E:  BLX.W           j__ZN5CFont8SetColorE5CRGBA; CFont::SetColor(CRGBA)
5C1592:  MOVS            R0, #(stderr+1); this
5C1594:  BLX.W           j__ZN5CFont12SetFontStyleEh; CFont::SetFontStyle(uchar)
5C1598:  LDR.W           R0, =(_ZN6CTimer14m_FrameCounterE_ptr - 0x5C15A4)
5C159C:  LDR.W           R1, =(gString_ptr - 0x5C15A6)
5C15A0:  ADD             R0, PC; _ZN6CTimer14m_FrameCounterE_ptr
5C15A2:  ADD             R1, PC; gString_ptr
5C15A4:  LDR             R0, [R0]; CTimer::m_FrameCounter ...
5C15A6:  LDR             R4, [R1]; gString
5C15A8:  ADR.W           R1, dword_5C1B0C
5C15AC:  LDR             R0, [R0]; CTimer::m_FrameCounter
5C15AE:  AND.W           R2, R0, #0x3F ; '?'
5C15B2:  MOV             R0, R4
5C15B4:  BL              sub_5E6BC0
5C15B8:  LDR.W           R0, =(gGxtString_ptr - 0x5C15C0)
5C15BC:  ADD             R0, PC; gGxtString_ptr
5C15BE:  LDR             R5, [R0]; gGxtString
5C15C0:  MOV             R0, R4; char *
5C15C2:  MOV             R1, R5; unsigned __int16 *
5C15C4:  BLX.W           j__Z14AsciiToGxtCharPKcPt; AsciiToGxtChar(char const*,ushort *)
5C15C8:  LDRD.W          R0, R1, [R6,#(dword_9FC900 - 0x9FC8FC)]
5C15CC:  MOV             R2, #0x66666667
5C15D4:  LSLS            R1, R1, #3
5C15D6:  SMMUL.W         R1, R1, R2
5C15DA:  LSLS            R0, R0, #3
5C15DC:  SMMUL.W         R0, R0, R2
5C15E0:  ASRS            R2, R0, #2
5C15E2:  ADD.W           R0, R2, R0,LSR#31
5C15E6:  ASRS            R2, R1, #2
5C15E8:  VMOV            S0, R0
5C15EC:  ADD.W           R0, R2, R1,LSR#31
5C15F0:  MOV             R2, R5; CFont *
5C15F2:  VMOV            S2, R0
5C15F6:  VCVT.F32.S32    S0, S0
5C15FA:  VCVT.F32.S32    S2, S2
5C15FE:  VMOV            R0, S0; this
5C1602:  VMOV            R1, S2; float
5C1606:  BLX.W           j__ZN5CFont11PrintStringEffPt; CFont::PrintString(float,float,ushort *)
5C160A:  LDR             R4, [R6,#(dword_9FC904 - 0x9FC8FC)]
5C160C:  CMP             R4, #1
5C160E:  BLT             loc_5C16F4
5C1610:  B               loc_5C1618
5C1612:  ALIGN 4
5C1614:  DCFS 448.0
5C1618:  LDR.W           R0, =(RsGlobal_ptr - 0x5C162C)
5C161C:  ADD.W           R11, SP, #0x60+var_48
5C1620:  MOV.W           R9, #0x64 ; 'd'
5C1624:  MOV.W           R10, #0x96
5C1628:  ADD             R0, PC; RsGlobal_ptr
5C162A:  MOVS            R6, #0
5C162C:  LDR             R5, [R0]; RsGlobal
5C162E:  MOVS            R0, #0xA
5C1630:  MOVS            R1, #2
5C1632:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5C1636:  MOVS            R0, #0xB
5C1638:  MOVS            R1, #2
5C163A:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5C163E:  VLDR            S0, [R5,#4]
5C1642:  MOV             R0, R11; this
5C1644:  MOVS            R1, #0; unsigned __int8
5C1646:  MOVS            R2, #0x64 ; 'd'; unsigned __int8
5C1648:  MOVS            R3, #0; unsigned __int8
5C164A:  VCVT.F32.S32    S16, S0
5C164E:  STR.W           R9, [SP,#0x60+var_60]; unsigned __int8
5C1652:  BLX.W           j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
5C1656:  VMOV            S0, R6
5C165A:  ADDS            R0, R6, #1
5C165C:  VMOV            R2, S16; float
5C1660:  VCVT.F32.S32    S0, S0
5C1664:  STR.W           R11, [SP,#0x60+var_50]; float
5C1668:  VMOV            S2, R0
5C166C:  MOVS            R0, #0; this
5C166E:  VMOV            R1, S0; float
5C1672:  VCVT.F32.S32    S0, S2
5C1676:  VSTR            S0, [SP,#0x60+var_5C]
5C167A:  VSTR            S16, [SP,#0x60+var_58]
5C167E:  VSTR            S0, [SP,#0x60+var_54]
5C1682:  STR.W           R8, [SP,#0x60+var_60]; float
5C1686:  MOV             R3, R1; float
5C1688:  BLX.W           j__ZN9CSprite2d13Draw2DPolygonEffffffffRK5CRGBA; CSprite2d::Draw2DPolygon(float,float,float,float,float,float,float,float,CRGBA const&)
5C168C:  MOVS            R0, #0xA
5C168E:  MOVS            R1, #5
5C1690:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5C1694:  MOVS            R0, #0xB
5C1696:  MOVS            R1, #6
5C1698:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5C169C:  VLDR            S0, [R5,#4]
5C16A0:  MOV             R0, R11; this
5C16A2:  MOVS            R1, #0; unsigned __int8
5C16A4:  MOVS            R2, #0; unsigned __int8
5C16A6:  MOVS            R3, #0; unsigned __int8
5C16A8:  VCVT.F32.S32    S16, S0
5C16AC:  STR.W           R10, [SP,#0x60+var_60]; unsigned __int8
5C16B0:  BLX.W           j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
5C16B4:  ADDS            R0, R6, #2
5C16B6:  VMOV            R2, S16; float
5C16BA:  VMOV            S0, R0
5C16BE:  ADDS            R0, R6, #3
5C16C0:  VCVT.F32.S32    S0, S0
5C16C4:  VMOV            R1, S0; float
5C16C8:  VMOV            S0, R0
5C16CC:  MOVS            R0, #0; this
5C16CE:  VCVT.F32.S32    S0, S0
5C16D2:  STR.W           R11, [SP,#0x60+var_50]; float
5C16D6:  VSTR            S0, [SP,#0x60+var_5C]
5C16DA:  VSTR            S16, [SP,#0x60+var_58]
5C16DE:  VSTR            S0, [SP,#0x60+var_54]
5C16E2:  STR.W           R8, [SP,#0x60+var_60]; float
5C16E6:  MOV             R3, R1; float
5C16E8:  BLX.W           j__ZN9CSprite2d13Draw2DPolygonEffffffffRK5CRGBA; CSprite2d::Draw2DPolygon(float,float,float,float,float,float,float,float,CRGBA const&)
5C16EC:  LDR             R4, [R5,#(dword_9FC904 - 0x9FC8FC)]
5C16EE:  ADDS            R6, #4
5C16F0:  CMP             R6, R4
5C16F2:  BLT             loc_5C162E
5C16F4:  LDR.W           R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x5C16FE)
5C16F8:  MOVS            R1, #5
5C16FA:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
5C16FC:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
5C16FE:  LDR             R5, [R0]; CTimer::m_snTimeInMilliseconds
5C1700:  MOVS            R0, #0xA
5C1702:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5C1706:  MOVS            R0, #0xB
5C1708:  MOVS            R1, #6
5C170A:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5C170E:  LDR.W           R0, =(RsGlobal_ptr - 0x5C171C)
5C1712:  MOVS            R1, #0; unsigned __int8
5C1714:  MOVS            R2, #0x64 ; 'd'; unsigned __int8
5C1716:  MOVS            R3, #0; unsigned __int8
5C1718:  ADD             R0, PC; RsGlobal_ptr
5C171A:  LDR             R0, [R0]; RsGlobal
5C171C:  VLDR            S0, [R0,#4]
5C1720:  MOVS            R0, #0x3C ; '<'
5C1722:  VCVT.F32.S32    S16, S0
5C1726:  STR             R0, [SP,#0x60+var_60]; unsigned __int8
5C1728:  ADD             R0, SP, #0x60+var_48; this
5C172A:  BLX.W           j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
5C172E:  VMOV            S0, R4
5C1732:  VLDR            S2, =70.0
5C1736:  BFC.W           R5, #0xB, #0x15
5C173A:  VLDR            S4, =0.00048828
5C173E:  VCVT.F32.S32    S0, S0
5C1742:  VMOV            S6, R5
5C1746:  VMOV            R2, S16; float
5C174A:  VCVT.F32.U32    S6, S6
5C174E:  VADD.F32        S0, S0, S2
5C1752:  VMUL.F32        S0, S0, S4
5C1756:  VLDR            S4, =-70.0
5C175A:  VMUL.F32        S0, S0, S6
5C175E:  VCVT.S32.F32    S0, S0
5C1762:  VCVT.F32.S32    S0, S0
5C1766:  VADD.F32        S0, S0, S4
5C176A:  VCVT.S32.F32    S0, S0
5C176E:  VCVT.F32.S32    S0, S0
5C1772:  STR             R0, [SP,#0x60+var_50]; float
5C1774:  MOVS            R0, #0; this
5C1776:  VSTR            S16, [SP,#0x60+var_58]
5C177A:  STR.W           R8, [SP,#0x60+var_60]; float
5C177E:  VMOV            R1, S0; float
5C1782:  VADD.F32        S0, S0, S2
5C1786:  VSTR            S0, [SP,#0x60+var_54]
5C178A:  VSTR            S0, [SP,#0x60+var_5C]
5C178E:  MOV             R3, R1; float
5C1790:  BLX.W           j__ZN9CSprite2d13Draw2DPolygonEffffffffRK5CRGBA; CSprite2d::Draw2DPolygon(float,float,float,float,float,float,float,float,CRGBA const&)
5C1794:  LDR             R0, =(_ZN10CSpecialFX8bLiftCamE_ptr - 0x5C179A)
5C1796:  ADD             R0, PC; _ZN10CSpecialFX8bLiftCamE_ptr
5C1798:  LDR             R0, [R0]; CSpecialFX::bLiftCam ...
5C179A:  LDRB            R0, [R0]; CSpecialFX::bLiftCam
5C179C:  CMP             R0, #0
5C179E:  BEQ.W           loc_5C19F6
5C17A2:  LDR             R0, =(RsGlobal_ptr - 0x5C17AC)
5C17A4:  VLDR            S2, =448.0
5C17A8:  ADD             R0, PC; RsGlobal_ptr
5C17AA:  LDR             R4, [R0]; RsGlobal
5C17AC:  LDR             R0, [R4,#(dword_9FC904 - 0x9FC8FC)]
5C17AE:  VMOV            S0, R0
5C17B2:  VCVT.F32.S32    S0, S0
5C17B6:  VDIV.F32        S0, S0, S2
5C17BA:  VMOV.F32        S2, #1.5
5C17BE:  VMUL.F32        S0, S0, S2
5C17C2:  VMOV            R0, S0; this
5C17C6:  BLX.W           j__ZN5CFont8SetScaleEf; CFont::SetScale(float)
5C17CA:  MOVS            R0, #0; this
5C17CC:  MOVS            R1, #0; unsigned __int8
5C17CE:  MOV.W           R10, #0
5C17D2:  BLX.W           j__ZN5CFont13SetBackgroundEhh; CFont::SetBackground(uchar,uchar)
5C17D6:  MOVS            R0, #(stderr+1); this
5C17D8:  BLX.W           j__ZN5CFont14SetOrientationEh; CFont::SetOrientation(uchar)
5C17DC:  MOVS            R0, #(stderr+1); this
5C17DE:  BLX.W           j__ZN5CFont15SetProportionalEh; CFont::SetProportional(uchar)
5C17E2:  MOVS            R0, #0xC8
5C17E4:  MOVS            R1, #0x64 ; 'd'; unsigned __int8
5C17E6:  STR             R0, [SP,#0x60+var_60]; unsigned __int8
5C17E8:  ADD             R0, SP, #0x60+var_38; this
5C17EA:  MOVS            R2, #0x64 ; 'd'; unsigned __int8
5C17EC:  MOVS            R3, #0x64 ; 'd'; unsigned __int8
5C17EE:  MOV.W           R8, #0x64 ; 'd'
5C17F2:  BLX.W           j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
5C17F6:  BLX.W           j__ZN5CFont8SetColorE5CRGBA; CFont::SetColor(CRGBA)
5C17FA:  MOVS            R0, #(stderr+1); this
5C17FC:  BLX.W           j__ZN5CFont12SetFontStyleEh; CFont::SetFontStyle(uchar)
5C1800:  LDR             R4, [R4,#(dword_9FC904 - 0x9FC8FC)]
5C1802:  CMP             R4, #1
5C1804:  BLT             loc_5C18DC
5C1806:  LDR             R0, =(RsGlobal_ptr - 0x5C1816)
5C1808:  ADD.W           R11, SP, #0x60+var_48
5C180C:  MOV.W           R9, #0x96
5C1810:  MOVS            R5, #0
5C1812:  ADD             R0, PC; RsGlobal_ptr
5C1814:  LDR             R6, [R0]; RsGlobal
5C1816:  MOVS            R0, #0xA
5C1818:  MOVS            R1, #2
5C181A:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5C181E:  MOVS            R0, #0xB
5C1820:  MOVS            R1, #2
5C1822:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5C1826:  VLDR            S0, [R6,#4]
5C182A:  MOV             R0, R11; this
5C182C:  MOVS            R1, #0x64 ; 'd'; unsigned __int8
5C182E:  MOVS            R2, #0x64 ; 'd'; unsigned __int8
5C1830:  MOVS            R3, #0x64 ; 'd'; unsigned __int8
5C1832:  VCVT.F32.S32    S16, S0
5C1836:  STR.W           R8, [SP,#0x60+var_60]; unsigned __int8
5C183A:  BLX.W           j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
5C183E:  VMOV            S0, R5
5C1842:  ADDS            R0, R5, #1
5C1844:  VMOV            R2, S16; float
5C1848:  VCVT.F32.S32    S0, S0
5C184C:  VMOV            R1, S0; float
5C1850:  VMOV            S0, R0
5C1854:  MOVS            R0, #0; this
5C1856:  VCVT.F32.S32    S0, S0
5C185A:  STR.W           R11, [SP,#0x60+var_50]; float
5C185E:  VSTR            S0, [SP,#0x60+var_5C]
5C1862:  VSTR            S16, [SP,#0x60+var_58]
5C1866:  VSTR            S0, [SP,#0x60+var_54]
5C186A:  STR.W           R10, [SP,#0x60+var_60]; float
5C186E:  MOV             R3, R1; float
5C1870:  BLX.W           j__ZN9CSprite2d13Draw2DPolygonEffffffffRK5CRGBA; CSprite2d::Draw2DPolygon(float,float,float,float,float,float,float,float,CRGBA const&)
5C1874:  MOVS            R0, #0xA
5C1876:  MOVS            R1, #5
5C1878:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5C187C:  MOVS            R0, #0xB
5C187E:  MOVS            R1, #6
5C1880:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5C1884:  VLDR            S0, [R6,#4]
5C1888:  MOV             R0, R11; this
5C188A:  MOVS            R1, #0; unsigned __int8
5C188C:  MOVS            R2, #0; unsigned __int8
5C188E:  MOVS            R3, #0; unsigned __int8
5C1890:  VCVT.F32.S32    S16, S0
5C1894:  STR.W           R9, [SP,#0x60+var_60]; unsigned __int8
5C1898:  BLX.W           j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
5C189C:  ADDS            R0, R5, #2
5C189E:  VMOV            R2, S16; float
5C18A2:  VMOV            S0, R0
5C18A6:  ADDS            R0, R5, #3
5C18A8:  VCVT.F32.S32    S0, S0
5C18AC:  VMOV            R1, S0; float
5C18B0:  VMOV            S0, R0
5C18B4:  MOVS            R0, #0; this
5C18B6:  VCVT.F32.S32    S0, S0
5C18BA:  STR.W           R11, [SP,#0x60+var_50]; float
5C18BE:  VSTR            S0, [SP,#0x60+var_5C]
5C18C2:  VSTR            S16, [SP,#0x60+var_58]
5C18C6:  VSTR            S0, [SP,#0x60+var_54]
5C18CA:  STR.W           R10, [SP,#0x60+var_60]; float
5C18CE:  MOV             R3, R1; float
5C18D0:  BLX.W           j__ZN9CSprite2d13Draw2DPolygonEffffffffRK5CRGBA; CSprite2d::Draw2DPolygon(float,float,float,float,float,float,float,float,CRGBA const&)
5C18D4:  LDR             R4, [R6,#(dword_9FC904 - 0x9FC8FC)]
5C18D6:  ADDS            R5, #4
5C18D8:  CMP             R5, R4
5C18DA:  BLT             loc_5C1816
5C18DC:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x5C18E4)
5C18DE:  MOVS            R1, #5
5C18E0:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
5C18E2:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
5C18E4:  LDR             R5, [R0]; CTimer::m_snTimeInMilliseconds
5C18E6:  MOVS            R0, #0xA
5C18E8:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5C18EC:  MOVS            R0, #0xB
5C18EE:  MOVS            R1, #6
5C18F0:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5C18F4:  LDR             R0, =(RsGlobal_ptr - 0x5C1902)
5C18F6:  ADD.W           R8, SP, #0x60+var_48
5C18FA:  MOVS            R1, #0x64 ; 'd'; unsigned __int8
5C18FC:  MOVS            R2, #0x64 ; 'd'; unsigned __int8
5C18FE:  ADD             R0, PC; RsGlobal_ptr
5C1900:  MOVS            R3, #0x64 ; 'd'; unsigned __int8
5C1902:  LDR             R0, [R0]; RsGlobal
5C1904:  VLDR            S0, [R0,#4]
5C1908:  MOVS            R0, #0x3C ; '<'
5C190A:  VCVT.F32.S32    S16, S0
5C190E:  STR             R0, [SP,#0x60+var_60]; unsigned __int8
5C1910:  MOV             R0, R8; this
5C1912:  BLX.W           j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
5C1916:  VMOV            S0, R4
5C191A:  VLDR            S2, =70.0
5C191E:  BFC.W           R5, #0xB, #0x15
5C1922:  VLDR            S4, =0.00048828
5C1926:  VCVT.F32.S32    S0, S0
5C192A:  MOVS            R0, #0; this
5C192C:  VMOV            S6, R5
5C1930:  VMOV            R2, S16; float
5C1934:  VCVT.F32.U32    S6, S6
5C1938:  VADD.F32        S0, S0, S2
5C193C:  VMUL.F32        S0, S0, S4
5C1940:  VLDR            S4, =-70.0
5C1944:  VMUL.F32        S0, S0, S6
5C1948:  VCVT.S32.F32    S0, S0
5C194C:  VCVT.F32.S32    S0, S0
5C1950:  VADD.F32        S0, S0, S4
5C1954:  VCVT.S32.F32    S0, S0
5C1958:  VCVT.F32.S32    S0, S0
5C195C:  STR.W           R8, [SP,#0x60+var_50]; float
5C1960:  VSTR            S16, [SP,#0x60+var_58]
5C1964:  STR.W           R10, [SP,#0x60+var_60]; float
5C1968:  VMOV            R1, S0; float
5C196C:  VADD.F32        S0, S0, S2
5C1970:  VSTR            S0, [SP,#0x60+var_54]
5C1974:  VSTR            S0, [SP,#0x60+var_5C]
5C1978:  MOV             R3, R1; float
5C197A:  BLX.W           j__ZN9CSprite2d13Draw2DPolygonEffffffffRK5CRGBA; CSprite2d::Draw2DPolygon(float,float,float,float,float,float,float,float,CRGBA const&)
5C197E:  LDR             R0, =(RsGlobal_ptr - 0x5C198E)
5C1980:  ADD.W           R9, SP, #0x60+var_4C
5C1984:  MOVS            R4, #0xC8
5C1986:  MOV.W           R10, #0x40 ; '@'
5C198A:  ADD             R0, PC; RsGlobal_ptr
5C198C:  LDR             R5, [R0]; RsGlobal
5C198E:  BLX.W           rand
5C1992:  LDR             R1, [R5,#(dword_9FC900 - 0x9FC8FC)]
5C1994:  BLX.W           __aeabi_idivmod
5C1998:  MOV             R6, R1
5C199A:  BLX.W           rand
5C199E:  LDR             R1, [R5,#(dword_9FC904 - 0x9FC8FC)]
5C19A0:  BLX.W           __aeabi_idivmod
5C19A4:  ADD.W           R0, R6, #0x14
5C19A8:  VMOV            S0, R6
5C19AC:  VMOV            S4, R1
5C19B0:  MOVS            R2, #0xFF; unsigned __int8
5C19B2:  VMOV            S2, R0
5C19B6:  ADDS            R0, R1, #2
5C19B8:  VCVT.F32.S32    S0, S0
5C19BC:  MOVS            R1, #0xFF; unsigned __int8
5C19BE:  VMOV            S6, R0
5C19C2:  MOV             R0, R9; this
5C19C4:  VCVT.F32.S32    S2, S2
5C19C8:  MOVS            R3, #0xFF; unsigned __int8
5C19CA:  VCVT.F32.S32    S4, S4
5C19CE:  VCVT.F32.S32    S6, S6
5C19D2:  STR.W           R10, [SP,#0x60+var_60]; unsigned __int8
5C19D6:  VSTR            S0, [SP,#0x60+var_48]
5C19DA:  VSTR            S2, [SP,#0x60+var_40]
5C19DE:  VSTR            S4, [SP,#0x60+var_3C]
5C19E2:  VSTR            S6, [SP,#0x60+var_44]
5C19E6:  BLX.W           j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
5C19EA:  MOV             R0, R8
5C19EC:  MOV             R1, R9
5C19EE:  BLX.W           j__ZN9CSprite2d8DrawRectERK5CRectRK5CRGBA; CSprite2d::DrawRect(CRect const&,CRGBA const&)
5C19F2:  SUBS            R4, #1
5C19F4:  BNE             loc_5C198E
5C19F6:  LDR             R0, =(_ZN10CSpecialFX15bSnapShotActiveE_ptr - 0x5C19FC)
5C19F8:  ADD             R0, PC; _ZN10CSpecialFX15bSnapShotActiveE_ptr
5C19FA:  LDR             R0, [R0]; CSpecialFX::bSnapShotActive ...
5C19FC:  LDRB            R0, [R0]; CSpecialFX::bSnapShotActive
5C19FE:  CMP             R0, #0
5C1A00:  BEQ             loc_5C1AE2
5C1A02:  LDR             R0, =(TheCamera_ptr - 0x5C1A0A)
5C1A04:  LDR             R1, =(_ZN10CSpecialFX14SnapShotFramesE_ptr - 0x5C1A0C)
5C1A06:  ADD             R0, PC; TheCamera_ptr
5C1A08:  ADD             R1, PC; _ZN10CSpecialFX14SnapShotFramesE_ptr
5C1A0A:  LDR             R0, [R0]; TheCamera
5C1A0C:  LDR             R1, [R1]; CSpecialFX::SnapShotFrames ...
5C1A0E:  LDRB.W          R2, [R0,#(byte_951FFF - 0x951FA8)]
5C1A12:  ADD.W           R2, R2, R2,LSL#5
5C1A16:  ADD.W           R2, R0, R2,LSL#4
5C1A1A:  MOVS            R0, #0
5C1A1C:  STR.W           R0, [R2,#0x208]
5C1A20:  STR.W           R0, [R2,#0x1F8]
5C1A24:  LDR             R2, [R1]; CSpecialFX::SnapShotFrames
5C1A26:  ADDS            R4, R2, #1
5C1A28:  STR             R4, [R1]; CSpecialFX::SnapShotFrames
5C1A2A:  CMP             R4, #0x15
5C1A2C:  BCC             loc_5C1A44
5C1A2E:  LDR             R1, =(_ZN6CTimer13ms_fTimeScaleE_ptr - 0x5C1A3A)
5C1A30:  MOV.W           R3, #0x3F800000
5C1A34:  LDR             R2, =(_ZN10CSpecialFX15bSnapShotActiveE_ptr - 0x5C1A3C)
5C1A36:  ADD             R1, PC; _ZN6CTimer13ms_fTimeScaleE_ptr
5C1A38:  ADD             R2, PC; _ZN10CSpecialFX15bSnapShotActiveE_ptr
5C1A3A:  LDR             R1, [R1]; CTimer::ms_fTimeScale ...
5C1A3C:  LDR             R2, [R2]; CSpecialFX::bSnapShotActive ...
5C1A3E:  STR             R3, [R1]; CTimer::ms_fTimeScale
5C1A40:  STRB            R0, [R2]; CSpecialFX::bSnapShotActive
5C1A42:  B               loc_5C1AE2
5C1A44:  LDR             R1, =(_ZN6CTimer13ms_fTimeScaleE_ptr - 0x5C1A4C)
5C1A46:  CMP             R4, #9
5C1A48:  ADD             R1, PC; _ZN6CTimer13ms_fTimeScaleE_ptr
5C1A4A:  LDR             R1, [R1]; CTimer::ms_fTimeScale ...
5C1A4C:  STR             R0, [R1]; CTimer::ms_fTimeScale
5C1A4E:  BHI             loc_5C1AE2
5C1A50:  MOVS            R0, #0xA
5C1A52:  MOVS            R1, #2
5C1A54:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5C1A58:  MOVS            R0, #0xB
5C1A5A:  MOVS            R1, #2
5C1A5C:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5C1A60:  MOVW            R1, #0xCCCD
5C1A64:  RSB.W           R0, R4, R4,LSL#8
5C1A68:  MOVT            R1, #0xCCCC
5C1A6C:  VLDR            S2, =0.65
5C1A70:  UMULL.W         R0, R1, R0, R1
5C1A74:  MOVS            R0, #0xFF
5C1A76:  SUB.W           R0, R0, R1,LSR#3
5C1A7A:  VMOV            S0, R0
5C1A7E:  LDR             R0, =(RsGlobal_ptr - 0x5C1A88)
5C1A80:  VCVT.F32.U32    S0, S0
5C1A84:  ADD             R0, PC; RsGlobal_ptr
5C1A86:  LDR             R0, [R0]; RsGlobal
5C1A88:  VLDR            S4, [R0,#8]
5C1A8C:  VMUL.F32        S0, S0, S2
5C1A90:  VLDR            S2, [R0,#4]
5C1A94:  VCVT.F32.S32    S16, S2
5C1A98:  VCVT.F32.S32    S18, S4
5C1A9C:  VCVT.U32.F32    S0, S0
5C1AA0:  VMOV            R0, S0
5C1AA4:  UXTB            R1, R0; unsigned __int8
5C1AA6:  ADD             R0, SP, #0x60+var_48; this
5C1AA8:  MOV             R2, R1; unsigned __int8
5C1AAA:  MOV             R3, R1; unsigned __int8
5C1AAC:  STR             R1, [SP,#0x60+var_60]; unsigned __int8
5C1AAE:  BLX.W           j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
5C1AB2:  VMOV            R2, S16; float
5C1AB6:  STR             R0, [SP,#0x60+var_50]; float
5C1AB8:  MOVS            R0, #0
5C1ABA:  VSTR            S18, [SP,#0x60+var_5C]
5C1ABE:  VSTR            S16, [SP,#0x60+var_58]
5C1AC2:  MOVS            R1, #0; float
5C1AC4:  VSTR            S18, [SP,#0x60+var_54]
5C1AC8:  MOVS            R3, #0; float
5C1ACA:  STR             R0, [SP,#0x60+var_60]; float
5C1ACC:  MOVS            R0, #0; this
5C1ACE:  BLX.W           j__ZN9CSprite2d13Draw2DPolygonEffffffffRK5CRGBA; CSprite2d::Draw2DPolygon(float,float,float,float,float,float,float,float,CRGBA const&)
5C1AD2:  MOVS            R0, #0xA
5C1AD4:  MOVS            R1, #5
5C1AD6:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5C1ADA:  MOVS            R0, #0xB
5C1ADC:  MOVS            R1, #6
5C1ADE:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5C1AE2:  ADD             SP, SP, #0x30 ; '0'
5C1AE4:  VPOP            {D8-D9}
5C1AE8:  ADD             SP, SP, #4
5C1AEA:  POP.W           {R8-R11}
5C1AEE:  POP             {R4-R7,PC}
