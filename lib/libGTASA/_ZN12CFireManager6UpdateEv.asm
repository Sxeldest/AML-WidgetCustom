; =========================================================
; Game Engine Function: _ZN12CFireManager6UpdateEv
; Address            : 0x3F15D8 - 0x3F1A5A
; =========================================================

3F15D8:  PUSH            {R4-R7,LR}
3F15DA:  ADD             R7, SP, #0xC
3F15DC:  PUSH.W          {R8-R11}
3F15E0:  SUB             SP, SP, #4
3F15E2:  VPUSH           {D8-D15}
3F15E6:  SUB             SP, SP, #0xA0
3F15E8:  MOV             R10, R0
3F15EA:  LDR.W           R0, =(__stack_chk_guard_ptr - 0x3F15F4)
3F15EE:  MOVS            R4, #0
3F15F0:  ADD             R0, PC; __stack_chk_guard_ptr
3F15F2:  LDR             R0, [R0]; __stack_chk_guard
3F15F4:  LDR             R0, [R0]
3F15F6:  STR             R0, [SP,#0x100+var_64]
3F15F8:  LDRB.W          R0, [R10,R4]
3F15FC:  LSLS            R0, R0, #0x1F
3F15FE:  ITT NE
3F1600:  ADDNE.W         R0, R10, R4; this
3F1604:  BLXNE           j__ZN5CFire11ProcessFireEv; CFire::ProcessFire(void)
3F1608:  ADDS            R4, #0x28 ; '('
3F160A:  CMP.W           R4, #0x960
3F160E:  BNE             loc_3F15F8
3F1610:  BLX             j__ZN10CGameLogic17LaRiotsActiveHereEv; CGameLogic::LaRiotsActiveHere(void)
3F1614:  CMP             R0, #0
3F1616:  BEQ.W           loc_3F1836
3F161A:  LDR.W           R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x3F162E)
3F161E:  MOVW            R2, #0x4DD3
3F1622:  LDR.W           R1, =(_ZN6CTimer30m_snPreviousTimeInMillisecondsE_ptr - 0x3F1630)
3F1626:  MOVT            R2, #0x1062
3F162A:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
3F162C:  ADD             R1, PC; _ZN6CTimer30m_snPreviousTimeInMillisecondsE_ptr
3F162E:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
3F1630:  LDR             R1, [R1]; CTimer::m_snPreviousTimeInMilliseconds ...
3F1632:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
3F1634:  LDR             R1, [R1]; CTimer::m_snPreviousTimeInMilliseconds
3F1636:  UMULL.W         R0, R3, R0, R2
3F163A:  UMULL.W         R0, R1, R1, R2
3F163E:  LSRS            R0, R3, #5
3F1640:  CMP.W           R0, R1,LSR#5
3F1644:  BEQ.W           loc_3F1836
3F1648:  BLX             rand
3F164C:  VMOV            S0, R0
3F1650:  VLDR            S18, =4.6566e-10
3F1654:  VLDR            S2, =6.2832
3F1658:  VCVT.F32.S32    S0, S0
3F165C:  VLDR            S16, =0.0
3F1660:  VMUL.F32        S0, S0, S18
3F1664:  VMUL.F32        S0, S0, S2
3F1668:  VADD.F32        S20, S0, S16
3F166C:  BLX             rand
3F1670:  VMOV            S0, R0
3F1674:  VMOV            R9, S20
3F1678:  VCVT.F32.S32    S0, S0
3F167C:  VMOV.F32        S2, #25.0
3F1680:  VMUL.F32        S0, S0, S18
3F1684:  VMUL.F32        S0, S0, S2
3F1688:  VLDR            S2, =35.0
3F168C:  MOV             R0, R9; x
3F168E:  VADD.F32        S18, S0, S2
3F1692:  BLX             sinf
3F1696:  LDR.W           R1, =(TheCamera_ptr - 0x3F16A2)
3F169A:  VMOV            S0, R0
3F169E:  ADD             R1, PC; TheCamera_ptr
3F16A0:  VMUL.F32        S0, S0, S18
3F16A4:  LDR.W           R8, [R1]; TheCamera
3F16A8:  MOVS            R1, #0x41200000
3F16AE:  ADD.W           R5, R8, #4
3F16B2:  STR             R1, [SP,#0x100+var_98]
3F16B4:  LDR.W           R0, [R8,#(dword_951FBC - 0x951FA8)]
3F16B8:  MOV             R4, R5
3F16BA:  CMP             R0, #0
3F16BC:  IT NE
3F16BE:  ADDNE.W         R4, R0, #0x30 ; '0'
3F16C2:  MOV             R0, R9; x
3F16C4:  VLDR            S2, [R4]
3F16C8:  VADD.F32        S20, S2, S0
3F16CC:  BLX             cosf
3F16D0:  VMOV            S0, R0
3F16D4:  VSTR            S20, [SP,#0x100+var_A0]
3F16D8:  VLDR            S2, [R4,#4]
3F16DC:  VMOV            R0, S20; this
3F16E0:  VMUL.F32        S0, S0, S18
3F16E4:  VLDR            S4, [R4,#8]
3F16E8:  ADD             R3, SP, #0x100+var_A8
3F16EA:  STR             R3, [SP,#0x100+var_100]; bool *
3F16EC:  SUB.W           R3, R7, #-var_A1; float
3F16F0:  VADD.F32        S22, S2, S0
3F16F4:  VMOV.F32        S0, #10.0
3F16F8:  VMOV            R1, S22; float
3F16FC:  VSTR            S22, [SP,#0x100+var_9C]
3F1700:  VADD.F32        S0, S4, S0
3F1704:  VMOV            R2, S0; float
3F1708:  BLX             j__ZN6CWorld21FindGroundZFor3DCoordEfffPbPP7CEntity; CWorld::FindGroundZFor3DCoord(float,float,float,bool *,CEntity **)
3F170C:  LDR.W           R1, [R8,#(dword_951FBC - 0x951FA8)]
3F1710:  VMOV            S18, R0
3F1714:  STR             R0, [SP,#0x100+var_98]
3F1716:  ADD             R0, SP, #0x100+var_B8; this
3F1718:  CMP             R1, #0
3F171A:  IT NE
3F171C:  ADDNE.W         R5, R1, #0x30 ; '0'
3F1720:  VLDR            S0, [R5]
3F1724:  VLDR            S2, [R5,#4]
3F1728:  VLDR            S4, [R5,#8]
3F172C:  VSUB.F32        S0, S20, S0
3F1730:  VSUB.F32        S2, S22, S2
3F1734:  VSUB.F32        S4, S18, S4
3F1738:  VSTR            S0, [SP,#0x100+var_B8]
3F173C:  VSTR            S2, [SP,#0x100+var_B8+4]
3F1740:  VSTR            S4, [SP,#0x100+var_B0]
3F1744:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
3F1748:  LDR.W           R0, [R8,#(dword_951FBC - 0x951FA8)]
3F174C:  CBZ             R0, loc_3F175C
3F174E:  VLDR            S0, [R0,#0x10]
3F1752:  VLDR            S2, [R0,#0x14]
3F1756:  VLDR            S16, [R0,#0x18]
3F175A:  B               loc_3F177E
3F175C:  LDR             R0, =(TheCamera_ptr - 0x3F1762)
3F175E:  ADD             R0, PC; TheCamera_ptr
3F1760:  LDR             R0, [R0]; TheCamera
3F1762:  LDR             R5, [R0,#(dword_951FB8 - 0x951FA8)]
3F1764:  MOV             R0, R5; x
3F1766:  BLX             sinf
3F176A:  MOV             R4, R0
3F176C:  MOV             R0, R5; x
3F176E:  BLX             cosf
3F1772:  VMOV            S2, R0
3F1776:  EOR.W           R0, R4, #0x80000000
3F177A:  VMOV            S0, R0
3F177E:  LDR             R0, [SP,#0x100+var_A8]
3F1780:  CMP             R0, #0
3F1782:  BEQ             loc_3F1836
3F1784:  LDRB.W          R1, [R7,#var_A1]
3F1788:  CMP             R1, #0
3F178A:  ITT NE
3F178C:  LDRNE           R0, [R0,#0x1C]
3F178E:  ANDSNE.W        R0, R0, #0x10000
3F1792:  BEQ             loc_3F1836
3F1794:  VMOV.F32        S4, #0.5
3F1798:  VCMPE.F32       S18, S4
3F179C:  VMRS            APSR_nzcv, FPSCR
3F17A0:  BLE             loc_3F1836
3F17A2:  VLDR            S4, [SP,#0x100+var_B8]
3F17A6:  VLDR            S6, [SP,#0x100+var_B8+4]
3F17AA:  VMUL.F32        S0, S0, S4
3F17AE:  VLDR            S8, [SP,#0x100+var_B0]
3F17B2:  VMUL.F32        S2, S2, S6
3F17B6:  VLDR            D16, =0.2
3F17BA:  VMUL.F32        S4, S16, S8
3F17BE:  VADD.F32        S0, S0, S2
3F17C2:  VADD.F32        S0, S0, S4
3F17C6:  VCVT.F64.F32    D17, S0
3F17CA:  VCMPE.F64       D17, D16
3F17CE:  VMRS            APSR_nzcv, FPSCR
3F17D2:  BGT             loc_3F181C
3F17D4:  BLX             rand
3F17D8:  TST.W           R0, #1
3F17DC:  BNE             loc_3F181C
3F17DE:  LDRD.W          R5, R4, [SP,#0x100+var_A0]
3F17E2:  LDR.W           R8, [SP,#0x100+var_98]
3F17E6:  BLX             rand
3F17EA:  MOVS            R0, #0
3F17EC:  MOVS            R1, #5
3F17EE:  MOVW            R2, #0x7530
3F17F2:  STRD.W          R0, R0, [SP,#0x100+var_FC]
3F17F6:  STRD.W          R2, R1, [SP,#0x100+var_F4]
3F17FA:  MOV             R1, R5
3F17FC:  STR             R0, [SP,#0x100+var_EC]
3F17FE:  MOV             R0, R10
3F1800:  MOV             R2, R4
3F1802:  MOV             R3, R8
3F1804:  BLX             j__ZN12CFireManager9StartFireE7CVectorfhP7CEntityjah; CFireManager::StartFire(CVector,float,uchar,CEntity *,uint,signed char,uchar)
3F1808:  B               loc_3F1836
3F180A:  ALIGN 4
3F180C:  DCFS 4.6566e-10
3F1810:  DCFS 6.2832
3F1814:  DCFS 0.0
3F1818:  DCFS 35.0
3F181C:  LDR             R0, =(g_fxMan_ptr - 0x3F1828)
3F181E:  MOVS            R1, #1
3F1820:  STR             R1, [SP,#0x100+var_100]; float
3F1822:  ADR             R1, aRiotSmoke; "riot_smoke"
3F1824:  ADD             R0, PC; g_fxMan_ptr
3F1826:  ADD             R2, SP, #0x100+var_A0; int
3F1828:  MOVS            R3, #0; int
3F182A:  LDR             R0, [R0]; g_fxMan ; int
3F182C:  BLX             j__ZN11FxManager_c14CreateFxSystemEPcP5RwV3dP11RwMatrixTagh; FxManager_c::CreateFxSystem(char *,RwV3d *,RwMatrixTag *,uchar)
3F1830:  CBZ             R0, loc_3F1836
3F1832:  BLX             j__ZN10FxSystem_c11PlayAndKillEv; FxSystem_c::PlayAndKill(void)
3F1836:  ADD             R5, SP, #0x100+var_A0
3F1838:  VMOV.I32        Q8, #0
3F183C:  ADD.W           R0, R5, #0x2C ; ','
3F1840:  MOVS            R4, #0
3F1842:  VST1.32         {D16-D17}, [R0]
3F1846:  ADD.W           R0, R5, #0x20 ; ' '
3F184A:  VST1.64         {D16-D17}, [R0]
3F184E:  MOV             R0, R5
3F1850:  VST1.64         {D16-D17}, [R0]!
3F1854:  VST1.64         {D16-D17}, [R0]
3F1858:  MOVS            R0, #0
3F185A:  LDRB.W          R1, [R10,R0]
3F185E:  ADDS            R0, #0x28 ; '('
3F1860:  CMP.W           R0, #0x960
3F1864:  AND.W           R1, R1, #1
3F1868:  ADD             R4, R1
3F186A:  BNE             loc_3F185A
3F186C:  CMP             R4, #1
3F186E:  BLT.W           loc_3F1A38
3F1872:  VMOV.F32        S16, #-1.0
3F1876:  LDR             R0, =(gpShadowExplosionTex_ptr - 0x3F1888)
3F1878:  VMOV.F32        S20, #6.0
3F187C:  ADD.W           R6, R10, #0x1C
3F1880:  VMOV.F32        S22, #4.0
3F1884:  ADD             R0, PC; gpShadowExplosionTex_ptr
3F1886:  VMOV.F32        S30, #-6.0
3F188A:  VLDR            S29, =0.0
3F188E:  VMOV.F32        S19, #5.0
3F1892:  VLDR            S17, =4.6566e-10
3F1896:  VMOV.F32        S26, #7.0
3F189A:  VLDR            S21, =0.4
3F189E:  VLDR            S23, =50.0
3F18A2:  VLDR            S25, =-1.2
3F18A6:  VLDR            S31, =0.6
3F18AA:  VLDR            S24, =1.2
3F18AE:  LDR             R0, [R0]; gpShadowExplosionTex
3F18B0:  STR             R0, [SP,#0x100+var_C8]
3F18B2:  STRD.W          R6, R10, [SP,#0x100+var_C4]
3F18B6:  VMOV.F32        S0, S16
3F18BA:  MOV.W           R0, #0xFFFFFFFF
3F18BE:  MOVS            R1, #0
3F18C0:  MOV             R2, R6
3F18C2:  LDRB            R3, [R5,R1]
3F18C4:  CBNZ            R3, loc_3F18E2
3F18C6:  LDRB.W          R3, [R2,#-0x1C]
3F18CA:  LSLS            R3, R3, #0x1F
3F18CC:  BEQ             loc_3F18E2
3F18CE:  VLDR            S2, [R2]
3F18D2:  VCMPE.F32       S2, S0
3F18D6:  VMRS            APSR_nzcv, FPSCR
3F18DA:  ITT GT
3F18DC:  MOVGT           R0, R1
3F18DE:  VMOVGT.F32      S0, S2
3F18E2:  ADDS            R1, #1
3F18E4:  ADDS            R2, #0x28 ; '('
3F18E6:  CMP             R1, #0x3C ; '<'
3F18E8:  BNE             loc_3F18C2
3F18EA:  VMOV.F32        S18, S29
3F18EE:  ADD.W           R0, R0, R0,LSL#2
3F18F2:  MOV.W           R11, #0
3F18F6:  MOV.W           R9, #0
3F18FA:  ADD.W           R0, R10, R0,LSL#3
3F18FE:  MOV             R10, R6
3F1900:  ADD.W           R8, R0, #4
3F1904:  MOVS            R6, #1
3F1906:  STR             R0, [SP,#0x100+var_BC]
3F1908:  LDRB.W          R0, [R5,R11]
3F190C:  CBNZ            R0, loc_3F195C
3F190E:  LDRB.W          R0, [R10,#-0x1C]
3F1912:  LSLS            R0, R0, #0x1F
3F1914:  BEQ             loc_3F195C
3F1916:  VLDR            D16, [R8]
3F191A:  VLDR            D17, [R10,#-0x18]
3F191E:  VSUB.F32        D16, D17, D16
3F1922:  VMUL.F32        D0, D16, D16
3F1926:  VADD.F32        S0, S0, S1
3F192A:  VSQRT.F32       S0, S0
3F192E:  VCMPE.F32       S0, S20
3F1932:  VMRS            APSR_nzcv, FPSCR
3F1936:  BGE             loc_3F195C
3F1938:  VLDR            S28, [R10]
3F193C:  VMOV            R0, S28; x
3F1940:  BLX             ceilf
3F1944:  VMOV            S0, R0
3F1948:  SUBS            R4, #1
3F194A:  VADD.F32        S18, S18, S28
3F194E:  VCVT.S32.F32    S0, S0
3F1952:  STRB.W          R6, [R5,R11]
3F1956:  VMOV            R0, S0
3F195A:  ADD             R9, R0
3F195C:  ADD.W           R11, R11, #1
3F1960:  ADD.W           R10, R10, #0x28 ; '('
3F1964:  CMP.W           R11, #0x3C ; '<'
3F1968:  BNE             loc_3F1908
3F196A:  CMP.W           R9, #0
3F196E:  BEQ             loc_3F1A2E
3F1970:  VCMPE.F32       S18, S22
3F1974:  VMRS            APSR_nzcv, FPSCR
3F1978:  BLE             loc_3F1A2E
3F197A:  BLX             rand
3F197E:  VMOV            S0, R0
3F1982:  VLDR            S8, =32.0
3F1986:  VADD.F32        S2, S18, S30
3F198A:  MOVS            R1, #0
3F198C:  VCVT.F32.S32    S0, S0
3F1990:  LDR             R3, [SP,#0x100+var_BC]
3F1992:  VMOV.F32        S6, #3.0
3F1996:  MOVT            R1, #0x4220
3F199A:  LDR             R0, [R3,#0xC]
3F199C:  STR             R0, [SP,#0x100+var_B0]
3F199E:  VLDR            S4, [SP,#0x100+var_B0]
3F19A2:  VLDR            D16, [R3,#4]
3F19A6:  VMUL.F32        S0, S0, S17
3F19AA:  LDR             R0, [SP,#0x100+var_C8]
3F19AC:  VADD.F32        S2, S2, S6
3F19B0:  VLDR            S6, =64.0
3F19B4:  VADD.F32        S4, S4, S19
3F19B8:  VSTR            D16, [SP,#0x100+var_B8]
3F19BC:  LDR             R2, [R0]; int
3F19BE:  MOVS            R0, #0
3F19C0:  VMUL.F32        S0, S0, S21
3F19C4:  VMIN.F32        D1, D1, D13
3F19C8:  VSTR            S4, [SP,#0x100+var_B0]
3F19CC:  STRD.W          R0, R0, [SP,#0x100+var_D4]; __int16
3F19D0:  STR             R1, [SP,#0x100+var_D8]; float
3F19D2:  MOV.W           R1, #0x3F800000
3F19D6:  STR             R1, [SP,#0x100+var_DC]; float
3F19D8:  MOVS            R1, #0
3F19DA:  VMUL.F32        S4, S2, S24
3F19DE:  MOVT            R1, #0x4120
3F19E2:  VADD.F32        S0, S0, S31
3F19E6:  STR             R1, [SP,#0x100+var_E0]; float
3F19E8:  VMUL.F32        S2, S2, S25
3F19EC:  STR             R0, [SP,#0x100+var_F0]; int
3F19EE:  STRD.W          R0, R0, [SP,#0x100+var_FC]; float
3F19F2:  MOVS            R1, #2; int
3F19F4:  VMUL.F32        S6, S0, S6
3F19F8:  VMUL.F32        S8, S0, S8
3F19FC:  VSTR            S2, [SP,#0x100+var_F4]
3F1A00:  VMUL.F32        S0, S0, S23
3F1A04:  VCVT.U32.F32    S2, S6
3F1A08:  VSTR            S4, [SP,#0x100+var_100]
3F1A0C:  VCVT.U32.F32    S4, S8
3F1A10:  VCVT.U32.F32    S0, S0
3F1A14:  VMOV            R0, S4
3F1A18:  STR             R0, [SP,#0x100+var_E4]; int
3F1A1A:  VMOV            R0, S0
3F1A1E:  STR             R0, [SP,#0x100+var_E8]; int
3F1A20:  VMOV            R0, S2
3F1A24:  STR             R0, [SP,#0x100+var_EC]; int
3F1A26:  MOV             R0, R3; int
3F1A28:  ADD             R3, SP, #0x100+var_B8; int
3F1A2A:  BLX             j__ZN8CShadows17StoreStaticShadowEjhP9RwTextureP7CVectorffffshhhfffbf; CShadows::StoreStaticShadow(uint,uchar,RwTexture *,CVector *,float,float,float,float,short,uchar,uchar,uchar,float,float,float,bool,float)
3F1A2E:  LDRD.W          R6, R10, [SP,#0x100+var_C4]
3F1A32:  CMP             R4, #0
3F1A34:  BGT.W           loc_3F18B6
3F1A38:  LDR             R0, =(__stack_chk_guard_ptr - 0x3F1A40)
3F1A3A:  LDR             R1, [SP,#0x100+var_64]
3F1A3C:  ADD             R0, PC; __stack_chk_guard_ptr
3F1A3E:  LDR             R0, [R0]; __stack_chk_guard
3F1A40:  LDR             R0, [R0]
3F1A42:  SUBS            R0, R0, R1
3F1A44:  ITTTT EQ
3F1A46:  ADDEQ           SP, SP, #0xA0
3F1A48:  VPOPEQ          {D8-D15}
3F1A4C:  ADDEQ           SP, SP, #4
3F1A4E:  POPEQ.W         {R8-R11}
3F1A52:  IT EQ
3F1A54:  POPEQ           {R4-R7,PC}
3F1A56:  BLX             __stack_chk_fail
