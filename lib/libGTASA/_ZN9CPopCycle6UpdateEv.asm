; =========================================================
; Game Engine Function: _ZN9CPopCycle6UpdateEv
; Address            : 0x4CA7C4 - 0x4CA9DC
; =========================================================

4CA7C4:  LDR             R0, =(_ZN6CClock10CurrentDayE_ptr - 0x4CA7CA)
4CA7C6:  ADD             R0, PC; _ZN6CClock10CurrentDayE_ptr
4CA7C8:  LDR             R0, [R0]; CClock::CurrentDay ...
4CA7CA:  LDRB            R0, [R0]; CClock::CurrentDay
4CA7CC:  CMP             R0, #7; switch 8 cases
4CA7CE:  BHI             def_4CA7D0; jumptable 004CA7D0 default case
4CA7D0:  TBB.W           [PC,R0]; switch jump
4CA7D4:  DCB 8; jump table for switch statement
4CA7D5:  DCB 0x14
4CA7D6:  DCB 4
4CA7D7:  DCB 4
4CA7D8:  DCB 4
4CA7D9:  DCB 4
4CA7DA:  DCB 0x20
4CA7DB:  DCB 8
4CA7DC:  LDR             R0, =(_ZN9CPopCycle20m_nCurrentTimeOfWeekE_ptr - 0x4CA7E4); jumptable 004CA7D0 cases 2-5
4CA7DE:  MOVS            R1, #0
4CA7E0:  ADD             R0, PC; _ZN9CPopCycle20m_nCurrentTimeOfWeekE_ptr
4CA7E2:  B               loc_4CA7EA
4CA7E4:  LDR             R0, =(_ZN9CPopCycle20m_nCurrentTimeOfWeekE_ptr - 0x4CA7EC); jumptable 004CA7D0 cases 0,7
4CA7E6:  MOVS            R1, #1
4CA7E8:  ADD             R0, PC; _ZN9CPopCycle20m_nCurrentTimeOfWeekE_ptr
4CA7EA:  LDR             R0, [R0]; CPopCycle::m_nCurrentTimeOfWeek ...
4CA7EC:  STR             R1, [R0]; CPopCycle::m_nCurrentTimeOfWeek
4CA7EE:  B               loc_4CA82C
4CA7F0:  LDR             R0, =(_ZN6CClock10CurrentDayE_ptr - 0x4CA7F8); jumptable 004CA7D0 default case
4CA7F2:  MOVS            R1, #0
4CA7F4:  ADD             R0, PC; _ZN6CClock10CurrentDayE_ptr
4CA7F6:  LDR             R0, [R0]; CClock::CurrentDay ...
4CA7F8:  STRB            R1, [R0]; CClock::CurrentDay
4CA7FA:  B               loc_4CA82C
4CA7FC:  LDR             R0, =(_ZN6CClock18ms_nGameClockHoursE_ptr - 0x4CA806); jumptable 004CA7D0 case 1
4CA7FE:  MOVS            R2, #0
4CA800:  LDR             R1, =(_ZN9CPopCycle20m_nCurrentTimeOfWeekE_ptr - 0x4CA808)
4CA802:  ADD             R0, PC; _ZN6CClock18ms_nGameClockHoursE_ptr
4CA804:  ADD             R1, PC; _ZN9CPopCycle20m_nCurrentTimeOfWeekE_ptr
4CA806:  LDR             R0, [R0]; CClock::ms_nGameClockHours ...
4CA808:  LDR             R1, [R1]; CPopCycle::m_nCurrentTimeOfWeek ...
4CA80A:  LDRB            R0, [R0]; CClock::ms_nGameClockHours
4CA80C:  CMP             R0, #0x14
4CA80E:  IT CC
4CA810:  MOVCC           R2, #1
4CA812:  B               loc_4CA82A
4CA814:  LDR             R0, =(_ZN6CClock18ms_nGameClockHoursE_ptr - 0x4CA81E); jumptable 004CA7D0 case 6
4CA816:  MOVS            R2, #0
4CA818:  LDR             R1, =(_ZN9CPopCycle20m_nCurrentTimeOfWeekE_ptr - 0x4CA820)
4CA81A:  ADD             R0, PC; _ZN6CClock18ms_nGameClockHoursE_ptr
4CA81C:  ADD             R1, PC; _ZN9CPopCycle20m_nCurrentTimeOfWeekE_ptr
4CA81E:  LDR             R0, [R0]; CClock::ms_nGameClockHours ...
4CA820:  LDR             R1, [R1]; CPopCycle::m_nCurrentTimeOfWeek ...
4CA822:  LDRB            R0, [R0]; CClock::ms_nGameClockHours
4CA824:  CMP             R0, #0x13
4CA826:  IT HI
4CA828:  MOVHI           R2, #1
4CA82A:  STR             R2, [R1]; CPopCycle::m_nCurrentTimeOfWeek
4CA82C:  PUSH            {R4-R7,LR}
4CA82E:  ADD             R7, SP, #0x14+var_8
4CA830:  PUSH.W          {R8}
4CA834:  SUB             SP, SP, #0x10
4CA836:  LDR             R0, =(_ZN6CClock18ms_nGameClockHoursE_ptr - 0x4CA83E)
4CA838:  LDR             R1, =(_ZN9CPopCycle19m_nCurrentTimeIndexE_ptr - 0x4CA842)
4CA83A:  ADD             R0, PC; _ZN6CClock18ms_nGameClockHoursE_ptr
4CA83C:  LDR             R2, =(_ZN6CWorld13PlayerInFocusE_ptr - 0x4CA846)
4CA83E:  ADD             R1, PC; _ZN9CPopCycle19m_nCurrentTimeIndexE_ptr
4CA840:  LDR             R0, [R0]; CClock::ms_nGameClockHours ...
4CA842:  ADD             R2, PC; _ZN6CWorld13PlayerInFocusE_ptr
4CA844:  LDR             R1, [R1]; CPopCycle::m_nCurrentTimeIndex ...
4CA846:  LDR             R2, [R2]; CWorld::PlayerInFocus ...
4CA848:  LDRB            R0, [R0]; CClock::ms_nGameClockHours
4CA84A:  LSRS            R0, R0, #1
4CA84C:  STR             R0, [R1]; CPopCycle::m_nCurrentTimeIndex
4CA84E:  LDR             R0, [R2]; int
4CA850:  BLX             j__Z23FindPlayerCentreOfWorldi; FindPlayerCentreOfWorld(int)
4CA854:  LDR             R1, =(_ZN9CPopCycle15m_pCurrZoneInfoE_ptr - 0x4CA85C)
4CA856:  LDR             R2, [R0,#8]; CZone **
4CA858:  ADD             R1, PC; _ZN9CPopCycle15m_pCurrZoneInfoE_ptr
4CA85A:  VLDR            D16, [R0]
4CA85E:  STR             R2, [SP,#0x28+var_20]
4CA860:  LDR             R1, [R1]; CPopCycle::m_pCurrZoneInfo ...
4CA862:  VLDR            S2, [SP,#0x28+var_20]
4CA866:  VLDR            S0, =950.0
4CA86A:  LDR             R0, [R1]; CPopCycle::m_pCurrZoneInfo
4CA86C:  VCMPE.F32       S2, S0
4CA870:  VSTR            D16, [SP,#0x28+var_28]
4CA874:  VMRS            APSR_nzcv, FPSCR
4CA878:  BLT             loc_4CA87C
4CA87A:  CBNZ            R0, loc_4CA8A0
4CA87C:  LDR             R0, =(_ZN9CPopCycle11m_pCurrZoneE_ptr - 0x4CA882)
4CA87E:  ADD             R0, PC; _ZN9CPopCycle11m_pCurrZoneE_ptr
4CA880:  LDR             R1, [R0]; CVector *
4CA882:  MOV             R0, SP; this
4CA884:  BLX             j__ZN9CTheZones11GetZoneInfoEPK7CVectorPP5CZone; CTheZones::GetZoneInfo(CVector const*,CZone **)
4CA888:  LDR             R1, =(_ZN9CPopCycle15m_pCurrZoneInfoE_ptr - 0x4CA890)
4CA88A:  LDR             R2, =(_ZN9CPopCycle18m_nCurrentZoneTypeE_ptr - 0x4CA892)
4CA88C:  ADD             R1, PC; _ZN9CPopCycle15m_pCurrZoneInfoE_ptr
4CA88E:  ADD             R2, PC; _ZN9CPopCycle18m_nCurrentZoneTypeE_ptr
4CA890:  LDR             R1, [R1]; CPopCycle::m_pCurrZoneInfo ...
4CA892:  LDR             R2, [R2]; CPopCycle::m_nCurrentZoneType ...
4CA894:  STR             R0, [R1]; CPopCycle::m_pCurrZoneInfo
4CA896:  LDRH.W          R0, [R0,#0xF]
4CA89A:  AND.W           R0, R0, #0x1F; this
4CA89E:  STR             R0, [R2]; CPopCycle::m_nCurrentZoneType
4CA8A0:  BLX             j__ZN9CPopCycle17UpdatePercentagesEv; CPopCycle::UpdatePercentages(void)
4CA8A4:  BLX             j__ZN9CPopCycle21UpdateDealerStrengthsEv; CPopCycle::UpdateDealerStrengths(void)
4CA8A8:  LDR             R0, =(_ZN9CPopCycle15m_pCurrZoneInfoE_ptr - 0x4CA8B2)
4CA8AA:  VLDR            S2, =0.07
4CA8AE:  ADD             R0, PC; _ZN9CPopCycle15m_pCurrZoneInfoE_ptr
4CA8B0:  VLDR            S4, =0.01
4CA8B4:  LDR             R0, [R0]; CPopCycle::m_pCurrZoneInfo ...
4CA8B6:  LDR             R0, [R0]; CPopCycle::m_pCurrZoneInfo
4CA8B8:  LDRB            R1, [R0,#0xA]
4CA8BA:  VMOV            S0, R1
4CA8BE:  LDR             R1, =(_ZN9CPopCycle23m_fCurrentZoneDodgynessE_ptr - 0x4CA8C8)
4CA8C0:  VCVT.F32.U32    S0, S0
4CA8C4:  ADD             R1, PC; _ZN9CPopCycle23m_fCurrentZoneDodgynessE_ptr
4CA8C6:  LDR             R1, [R1]; CPopCycle::m_fCurrentZoneDodgyness ...
4CA8C8:  VMUL.F32        S0, S0, S2
4CA8CC:  VLDR            S2, =0.0
4CA8D0:  VADD.F32        S0, S0, S2
4CA8D4:  VSTR            S0, [R1]
4CA8D8:  LDRB            R2, [R0]
4CA8DA:  VMOV            S2, R2
4CA8DE:  VCVT.F32.U32    S2, S2
4CA8E2:  VMUL.F32        S2, S2, S4
4CA8E6:  VADD.F32        S0, S0, S2
4CA8EA:  VSTR            S0, [R1]
4CA8EE:  LDRB            R2, [R0,#1]
4CA8F0:  VMOV            S2, R2
4CA8F4:  VCVT.F32.U32    S2, S2
4CA8F8:  VMUL.F32        S2, S2, S4
4CA8FC:  VADD.F32        S0, S0, S2
4CA900:  VSTR            S0, [R1]
4CA904:  LDRB            R2, [R0,#2]
4CA906:  VMOV            S2, R2
4CA90A:  VCVT.F32.U32    S2, S2
4CA90E:  VMUL.F32        S2, S2, S4
4CA912:  VADD.F32        S0, S0, S2
4CA916:  VSTR            S0, [R1]
4CA91A:  LDRB            R2, [R0,#3]
4CA91C:  LDRB.W          LR, [R0,#4]
4CA920:  LDRB.W          R8, [R0,#5]
4CA924:  VMOV            S2, R2
4CA928:  LDRB.W          R12, [R0,#6]
4CA92C:  VMOV            S6, LR
4CA930:  VCVT.F32.U32    S2, S2
4CA934:  VCVT.F32.U32    S6, S6
4CA938:  VMOV            S8, R8
4CA93C:  VCVT.F32.U32    S8, S8
4CA940:  VMUL.F32        S2, S2, S4
4CA944:  VMUL.F32        S6, S6, S4
4CA948:  VMUL.F32        S8, S8, S4
4CA94C:  VADD.F32        S0, S0, S2
4CA950:  VMOV            S2, R12
4CA954:  VCVT.F32.U32    S2, S2
4CA958:  LDRB            R2, [R0,#7]
4CA95A:  VADD.F32        S0, S0, S6
4CA95E:  VMOV            S6, R2
4CA962:  VCVT.F32.U32    S6, S6
4CA966:  LDRB            R4, [R0,#8]
4CA968:  VMUL.F32        S2, S2, S4
4CA96C:  VADD.F32        S0, S0, S8
4CA970:  VMOV            S8, R4
4CA974:  VCVT.F32.U32    S8, S8
4CA978:  LDRB            R5, [R0,#9]
4CA97A:  VMUL.F32        S6, S6, S4
4CA97E:  VADD.F32        S0, S0, S2
4CA982:  VMOV            S2, R5
4CA986:  VCVT.F32.U32    S2, S2
4CA98A:  VMUL.F32        S8, S8, S4
4CA98E:  VADD.F32        S0, S0, S6
4CA992:  VMUL.F32        S2, S2, S4
4CA996:  VMOV.F32        S4, #1.0
4CA99A:  VADD.F32        S0, S0, S8
4CA99E:  VADD.F32        S0, S0, S2
4CA9A2:  VMIN.F32        D0, D0, D2
4CA9A6:  VSTR            S0, [R1]
4CA9AA:  LDRB            R1, [R0]
4CA9AC:  LDRB            R6, [R0,#1]
4CA9AE:  LDRB            R3, [R0,#2]
4CA9B0:  ADD             R1, R6
4CA9B2:  LDRB            R0, [R0,#3]
4CA9B4:  ADD             R1, R3
4CA9B6:  ADD             R0, R1
4CA9B8:  LDR             R1, =(_ZN9CPopCycle24m_bCurrentZoneIsGangAreaE_ptr - 0x4CA9C2)
4CA9BA:  ADD             R0, LR
4CA9BC:  ADD             R0, R8
4CA9BE:  ADD             R1, PC; _ZN9CPopCycle24m_bCurrentZoneIsGangAreaE_ptr
4CA9C0:  ADD             R0, R12
4CA9C2:  ADD             R0, R2
4CA9C4:  LDR             R1, [R1]; CPopCycle::m_bCurrentZoneIsGangArea ...
4CA9C6:  ADD             R0, R4
4CA9C8:  MOVS            R2, #0
4CA9CA:  ADD             R0, R5
4CA9CC:  CMP             R0, #0x14
4CA9CE:  IT GT
4CA9D0:  MOVGT           R2, #1
4CA9D2:  STRB            R2, [R1]; CPopCycle::m_bCurrentZoneIsGangArea
4CA9D4:  ADD             SP, SP, #0x10
4CA9D6:  POP.W           {R8}
4CA9DA:  POP             {R4-R7,PC}
