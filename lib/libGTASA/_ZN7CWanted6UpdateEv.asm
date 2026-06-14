; =========================================================
; Game Engine Function: _ZN7CWanted6UpdateEv
; Address            : 0x4215BC - 0x4218E8
; =========================================================

4215BC:  PUSH            {R4-R7,LR}
4215BE:  ADD             R7, SP, #0xC
4215C0:  PUSH.W          {R8-R11}
4215C4:  SUB             SP, SP, #0xC
4215C6:  MOV             R4, R0
4215C8:  LDR             R1, [R4,#0x2C]
4215CA:  LDRB.W          R0, [R4,#0x28]
4215CE:  CMP             R1, #5
4215D0:  BLT             loc_4215E0
4215D2:  CBZ             R0, loc_421612
4215D4:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x4215DC)
4215D6:  LDR             R1, [R4,#0x24]
4215D8:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
4215DA:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
4215DC:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
4215DE:  B               loc_421628
4215E0:  CBZ             R0, loc_421638
4215E2:  LDR             R0, [R4,#0x20]
4215E4:  VMOV            S0, R0
4215E8:  MOVS            R0, #(word_32+1); this
4215EA:  VCVT.F32.U32    S0, S0
4215EE:  VMOV            R1, S0; unsigned __int16
4215F2:  BLX             j__ZN6CStats16SetNewRecordStatEtf; CStats::SetNewRecordStat(ushort,float)
4215F6:  LDR             R0, [R4,#0x20]
4215F8:  VMOV            S0, R0
4215FC:  MOVS            R0, #0x34 ; '4'
4215FE:  VCVT.F32.U32    S0, S0
421602:  VMOV            R1, S0
421606:  NOP
421608:  NOP
42160A:  MOVS            R0, #0
42160C:  STRB.W          R0, [R4,#0x28]
421610:  B               loc_421638
421612:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x42161A)
421614:  MOVS            R2, #0
421616:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
421618:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
42161A:  LDR             R1, [R0]; CTimer::m_snTimeInMilliseconds
42161C:  MOVS            R0, #1
42161E:  STRB.W          R0, [R4,#0x28]
421622:  MOV             R0, R1
421624:  STRD.W          R2, R1, [R4,#0x20]
421628:  SUBS            R1, R0, R1
42162A:  CMP.W           R1, #0x3E8
42162E:  ITTT HI
421630:  LDRHI           R1, [R4,#0x20]
421632:  ADDHI           R1, #1
421634:  STRDHI.W        R1, R0, [R4,#0x20]
421638:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x421644)
42163A:  MOVW            R2, #0x4E20
42163E:  LDR             R1, [R4,#0x10]
421640:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
421642:  ADD             R1, R2
421644:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
421646:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
421648:  CMP             R0, R1
42164A:  ITTT HI
42164C:  MOVHI           R1, #0
42164E:  STRHI           R1, [R4,#0x30]
421650:  STRHI           R1, [R4,#4]
421652:  LDR             R1, [R4,#8]
421654:  SUBS            R0, R0, R1
421656:  CMP.W           R0, #0x3E8
42165A:  BLS.W           loc_4218BA
42165E:  LDR             R0, =(_ZN8CWeather13WeatherRegionE_ptr - 0x421666)
421660:  LDR             R1, [R4,#0x2C]
421662:  ADD             R0, PC; _ZN8CWeather13WeatherRegionE_ptr
421664:  CMP             R1, #2
421666:  LDR             R0, [R0]; CWeather::WeatherRegion ...
421668:  LDRH            R0, [R0]; CWeather::WeatherRegion
42166A:  ORR.W           R5, R0, #4
42166E:  BLT             loc_421680
421670:  UXTH            R0, R5
421672:  CMP             R0, #4
421674:  BNE             loc_4216C0
421676:  LDR             R0, =(_ZN5CGame8currAreaE_ptr - 0x42167C)
421678:  ADD             R0, PC; _ZN5CGame8currAreaE_ptr
42167A:  LDR             R0, [R0]; CGame::currArea ...
42167C:  LDR             R0, [R0]; CGame::currArea
42167E:  CBNZ            R0, loc_4216C0
421680:  MOV.W           R0, #0xFFFFFFFF; int
421684:  MOVS            R1, #0; bool
421686:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
42168A:  CBZ             R0, loc_4216CC
42168C:  MOV.W           R0, #0xFFFFFFFF; int
421690:  MOVS            R1, #0; bool
421692:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
421696:  BLX             j__ZNK8CVehicle23IsLawEnforcementVehicleEv; CVehicle::IsLawEnforcementVehicle(void)
42169A:  CBNZ            R0, loc_4216C0
42169C:  MOV.W           R0, #0xFFFFFFFF; int
4216A0:  MOVS            R1, #0; bool
4216A2:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
4216A6:  LDR.W           R0, [R0,#0x5A4]
4216AA:  CMP             R0, #4
4216AC:  BEQ             loc_4216C0
4216AE:  MOV.W           R0, #0xFFFFFFFF; int
4216B2:  MOVS            R1, #0; bool
4216B4:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
4216B8:  LDR.W           R0, [R0,#0x5A4]
4216BC:  CMP             R0, #3
4216BE:  BNE             loc_4216CC
4216C0:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x4216C6)
4216C2:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
4216C4:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
4216C6:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
4216C8:  STR             R0, [R4,#8]
4216CA:  B               loc_421714
4216CC:  MOV             R0, SP; int
4216CE:  MOV.W           R1, #0xFFFFFFFF
4216D2:  BLX             j__Z15FindPlayerCoorsi; FindPlayerCoors(int)
4216D6:  LDMFD.W         SP, {R0-R2}
4216DA:  MOVS            R3, #0x41900000
4216E0:  BLX             j__ZN7CWanted21WorkOutPolicePresenceE7CVectorf; CWanted::WorkOutPolicePresence(CVector,float)
4216E4:  CBNZ            R0, loc_421714
4216E6:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x4216EE)
4216E8:  LDR             R1, [R4]
4216EA:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
4216EC:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
4216EE:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
4216F0:  STR             R0, [R4,#8]
4216F2:  UXTH            R0, R5
4216F4:  CMP             R0, #4
4216F6:  MOV.W           R0, #1
4216FA:  IT EQ
4216FC:  MOVEQ           R0, #2
4216FE:  SUBS            R0, R1, R0
421700:  CMP             R0, #0
421702:  IT LE
421704:  MOVLE           R0, #0
421706:  STR             R0, [R4]
421708:  MOV             R0, R4; this
42170A:  BLX             j__ZN7CWanted17UpdateWantedLevelEv; CWanted::UpdateWantedLevel(void)
42170E:  MOVS            R0, #(stderr+1); this
421710:  BLX             j__ZN10CGameLogic43SetPlayerWantedLevelForForbiddenTerritoriesEb; CGameLogic::SetPlayerWantedLevelForForbiddenTerritories(bool)
421714:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x421724)
421716:  MOV.W           R10, #0
42171A:  MOVW            R11, #0x2710
42171E:  MOVS            R5, #0
421720:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
421722:  LDR             R6, [R0]; CTimer::m_snTimeInMilliseconds ...
421724:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x42172A)
421726:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
421728:  LDR.W           R9, [R0]; CTimer::m_snTimeInMilliseconds ...
42172C:  ADD.W           R8, R4, R5
421730:  LDR.W           R1, [R8,#0x34]
421734:  CBZ             R1, loc_421770
421736:  LDR.W           R0, [R8,#0x3C]
42173A:  LDR             R2, [R6]; CTimer::m_snTimeInMilliseconds
42173C:  ADD.W           R3, R0, #0x1F4
421740:  CMP             R2, R3
421742:  BLS             loc_421766
421744:  LDRB.W          R3, [R8,#0x4C]
421748:  CBNZ            R3, loc_421766
42174A:  LDRB.W          R3, [R8,#0x4D]
42174E:  ADD.W           R2, R8, #0x40 ; '@'
421752:  MOV             R0, R4
421754:  BLX             j__ZN7CWanted14ReportCrimeNowE10eCrimeTypeRK7CVectorb; CWanted::ReportCrimeNow(eCrimeType,CVector const&,bool)
421758:  MOVS            R0, #1
42175A:  STRB.W          R0, [R8,#0x4C]
42175E:  LDR.W           R0, [R8,#0x3C]
421762:  LDR.W           R2, [R9]; CTimer::m_snTimeInMilliseconds
421766:  ADD             R0, R11
421768:  CMP             R2, R0
42176A:  IT HI
42176C:  STRHI.W         R10, [R8,#0x34]
421770:  ADDS            R5, #0x1C
421772:  CMP.W           R5, #0x1C0
421776:  BNE             loc_42172C
421778:  ADD.W           R12, R4, #0x1F4
42177C:  MOVS            R2, #2
42177E:  MOVS            R6, #0
421780:  MOVS            R3, #0
421782:  LDM.W           R12, {R0,R5,R12}
421786:  CMP             R0, #0
421788:  MOV             R1, R0
42178A:  ITE EQ
42178C:  MOVEQ           R2, #1
42178E:  MOVNE           R1, #1
421790:  CMP             R5, #0
421792:  IT NE
421794:  MOVNE           R1, R2
421796:  CMP             R0, #0
421798:  IT EQ
42179A:  MOVEQ           R6, #1
42179C:  CMP             R5, #0
42179E:  MOV             R2, R5
4217A0:  IT NE
4217A2:  MOVNE           R2, #1
4217A4:  CMP.W           R12, #0
4217A8:  BEQ             loc_4217C4
4217AA:  CMP             R0, #0
4217AC:  MOV.W           R2, #0
4217B0:  IT EQ
4217B2:  MOVEQ           R2, #1
4217B4:  CMP             R5, #0
4217B6:  IT EQ
4217B8:  MOVEQ           R3, #1
4217BA:  ADDS            R1, #1
4217BC:  ORR.W           R5, R3, R2
4217C0:  MOV             R2, R5
4217C2:  B               loc_4217C8
4217C4:  ANDS            R2, R6
4217C6:  MOVS            R5, #1
4217C8:  LDR.W           R6, [R4,#0x200]
4217CC:  CBZ             R6, loc_4217DC
4217CE:  CMP             R5, #0
4217D0:  MOV             R3, R5
4217D2:  IT NE
4217D4:  MOVNE           R3, #1
4217D6:  ADDS            R1, #1
4217D8:  ORRS            R2, R3
4217DA:  B               loc_4217DE
4217DC:  MOVS            R5, #1
4217DE:  LDR.W           R3, [R4,#0x204]
4217E2:  CBZ             R3, loc_4217F2
4217E4:  CMP             R5, #0
4217E6:  MOV             R3, R5
4217E8:  IT NE
4217EA:  MOVNE           R3, #1
4217EC:  ADDS            R1, #1
4217EE:  ORRS            R2, R3
4217F0:  B               loc_4217F4
4217F2:  MOVS            R5, #1
4217F4:  LDR.W           R3, [R4,#0x208]
4217F8:  CBZ             R3, loc_421808
4217FA:  CMP             R5, #0
4217FC:  MOV             R3, R5
4217FE:  IT NE
421800:  MOVNE           R3, #1
421802:  ADDS            R1, #1
421804:  ORRS            R2, R3
421806:  B               loc_42180A
421808:  MOVS            R5, #1
42180A:  LDR.W           R3, [R4,#0x20C]
42180E:  CBZ             R3, loc_42181E
421810:  CMP             R5, #0
421812:  MOV             R3, R5
421814:  IT NE
421816:  MOVNE           R3, #1
421818:  ADDS            R1, #1
42181A:  ORRS            R2, R3
42181C:  B               loc_421820
42181E:  MOVS            R5, #1
421820:  LDR.W           R3, [R4,#0x210]
421824:  CBZ             R3, loc_421834
421826:  CMP             R5, #0
421828:  MOV             R3, R5
42182A:  IT NE
42182C:  MOVNE           R3, #1
42182E:  ADDS            R1, #1
421830:  ORRS            R2, R3
421832:  B               loc_421836
421834:  MOVS            R5, #1
421836:  LDR.W           R3, [R4,#0x214]
42183A:  CBZ             R3, loc_42184A
42183C:  CMP             R5, #0
42183E:  MOV             R3, R5
421840:  IT NE
421842:  MOVNE           R3, #1
421844:  ADDS            R1, #1
421846:  ORRS            R2, R3
421848:  B               loc_42184C
42184A:  MOVS            R5, #1
42184C:  LDR.W           R3, [R4,#0x218]
421850:  CBZ             R3, loc_42185E
421852:  CMP             R5, #0
421854:  ADD.W           R1, R1, #1
421858:  IT NE
42185A:  MOVNE           R5, #1
42185C:  ORRS            R2, R5
42185E:  LDRB            R3, [R4,#0x18]
421860:  UXTB            R6, R1
421862:  CMP             R6, R3
421864:  IT NE
421866:  STRBNE          R1, [R4,#0x18]
421868:  CMP             R2, #1
42186A:  BNE             loc_4218BA
42186C:  MOVS            R2, #1
42186E:  MOVS            R1, #0
421870:  CBNZ            R0, loc_421886
421872:  B               loc_421898
421874:  LSLS            R0, R2, #0x18
421876:  BNE             loc_4218BA
421878:  MOVS            R2, #0
42187A:  B               loc_421886
42187C:  ADD.W           R3, R5, #0x1F4
421880:  MOVS            R2, #0
421882:  STR             R6, [R0]
421884:  STR             R2, [R3]
421886:  ADDS            R1, #1
421888:  CMP             R1, #9
42188A:  BHI             loc_4218BA
42188C:  ADD.W           R0, R4, R1,LSL#2
421890:  LDR.W           R0, [R0,#0x1F4]
421894:  CMP             R0, #0
421896:  BNE             loc_421886
421898:  ADD.W           R0, R4, R1,LSL#2
42189C:  MOV             R3, R1
42189E:  ADD.W           R0, R0, #0x1F4
4218A2:  UXTB            R6, R3
4218A4:  ADD.W           R5, R4, R6,LSL#2
4218A8:  LDR.W           R6, [R5,#0x1F4]
4218AC:  CMP             R6, #0
4218AE:  BNE             loc_42187C
4218B0:  ADDS            R3, #1
4218B2:  UXTB            R6, R3
4218B4:  CMP             R6, #9
4218B6:  BLS             loc_4218A2
4218B8:  B               loc_421874
4218BA:  LDRB            R0, [R4,#0x1E]
4218BC:  LDRB.W          R1, [R4,#0x298]
4218C0:  ANDS.W          R0, R0, #7
4218C4:  IT NE
4218C6:  MOVNE           R0, #1
4218C8:  CMP             R1, R0
4218CA:  BEQ             loc_4218E0
4218CC:  MOV             R0, R4; this
4218CE:  BLX             j__ZN7CWanted17UpdateWantedLevelEv; CWanted::UpdateWantedLevel(void)
4218D2:  LDRB            R0, [R4,#0x1E]
4218D4:  ANDS.W          R0, R0, #7
4218D8:  IT NE
4218DA:  MOVNE           R0, #1
4218DC:  STRB.W          R0, [R4,#0x298]
4218E0:  ADD             SP, SP, #0xC
4218E2:  POP.W           {R8-R11}
4218E6:  POP             {R4-R7,PC}
