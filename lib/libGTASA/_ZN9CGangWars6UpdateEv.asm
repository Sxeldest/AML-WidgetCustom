; =========================================================
; Game Engine Function: _ZN9CGangWars6UpdateEv
; Address            : 0x30B6C8 - 0x30C380
; =========================================================

30B6C8:  PUSH            {R4-R7,LR}
30B6CA:  ADD             R7, SP, #0xC
30B6CC:  PUSH.W          {R8-R11}
30B6D0:  SUB             SP, SP, #4
30B6D2:  VPUSH           {D8-D9}
30B6D6:  SUB             SP, SP, #0x48
30B6D8:  BLX             j__ZN11CTheScripts18IsPlayerOnAMissionEv; CTheScripts::IsPlayerOnAMission(void)
30B6DC:  CBZ             R0, loc_30B6FE
30B6DE:  LDR.W           R0, =(_ZN9CGangWars19bIsPlayerOnAMissionE_ptr - 0x30B6E6)
30B6E2:  ADD             R0, PC; _ZN9CGangWars19bIsPlayerOnAMissionE_ptr
30B6E4:  LDR             R0, [R0]; CGangWars::bIsPlayerOnAMission ...
30B6E6:  LDRB            R0, [R0]; CGangWars::bIsPlayerOnAMission
30B6E8:  CBNZ            R0, loc_30B6FE
30B6EA:  LDR.W           R0, =(_ZN9CGangWars16NumSpecificZonesE_ptr - 0x30B6F2)
30B6EE:  ADD             R0, PC; _ZN9CGangWars16NumSpecificZonesE_ptr
30B6F0:  LDR             R0, [R0]; CGangWars::NumSpecificZones ...
30B6F2:  LDR             R0, [R0]; CGangWars::NumSpecificZones
30B6F4:  CMP             R0, #0
30B6F6:  ITT EQ
30B6F8:  MOVEQ           R0, #(stderr+1); this
30B6FA:  BLXEQ           j__ZN9CGangWars10EndGangWarEb; CGangWars::EndGangWar(bool)
30B6FE:  LDR.W           R0, =(_ZN12CCutsceneMgr21ms_cutsceneProcessingE_ptr - 0x30B70A)
30B702:  LDR.W           R1, =(_ZN9CGangWars19bIsPlayerOnAMissionE_ptr - 0x30B70C)
30B706:  ADD             R0, PC; _ZN12CCutsceneMgr21ms_cutsceneProcessingE_ptr ; this
30B708:  ADD             R1, PC; _ZN9CGangWars19bIsPlayerOnAMissionE_ptr
30B70A:  LDR             R4, [R0]; CCutsceneMgr::ms_cutsceneProcessing ...
30B70C:  LDR             R5, [R1]; CGangWars::bIsPlayerOnAMission ...
30B70E:  BLX             j__ZN11CTheScripts18IsPlayerOnAMissionEv; CTheScripts::IsPlayerOnAMission(void)
30B712:  LDRB            R1, [R4]; CCutsceneMgr::ms_cutsceneProcessing
30B714:  CMP             R0, #0
30B716:  IT NE
30B718:  MOVNE           R0, #1
30B71A:  CMP             R1, #0
30B71C:  STRB            R0, [R5]; CGangWars::bIsPlayerOnAMission
30B71E:  BEQ             loc_30B72E
30B720:  ADD             SP, SP, #0x48 ; 'H'
30B722:  VPOP            {D8-D9}
30B726:  ADD             SP, SP, #4
30B728:  POP.W           {R8-R11}
30B72C:  POP             {R4-R7,PC}
30B72E:  LDR.W           R0, =(_ZN6CTimer14m_FrameCounterE_ptr - 0x30B736)
30B732:  ADD             R0, PC; _ZN6CTimer14m_FrameCounterE_ptr
30B734:  LDR             R0, [R0]; CTimer::m_FrameCounter ...
30B736:  LDRB            R0, [R0]; this
30B738:  CMP             R0, #0x38 ; '8'
30B73A:  IT EQ
30B73C:  BLXEQ           j__ZN9CGangWars37UpdateTerritoryUnderControlPercentageEv; CGangWars::UpdateTerritoryUnderControlPercentage(void)
30B740:  LDR.W           R0, =(_ZN9CGangWars15bGangWarsActiveE_ptr - 0x30B748)
30B744:  ADD             R0, PC; _ZN9CGangWars15bGangWarsActiveE_ptr
30B746:  LDR             R0, [R0]; CGangWars::bGangWarsActive ...
30B748:  LDRB            R0, [R0]; this
30B74A:  CMP             R0, #0
30B74C:  BEQ             loc_30B720
30B74E:  BLX             j__ZN10CGameLogic17IsCoopGameGoingOnEv; CGameLogic::IsCoopGameGoingOn(void)
30B752:  CMP             R0, #0
30B754:  BNE             loc_30B720
30B756:  LDR.W           R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x30B762)
30B75A:  LDR.W           R1, =(_ZN9CGangWars11ProvocationE_ptr - 0x30B768)
30B75E:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
30B760:  VLDR            S0, =-0.0005
30B764:  ADD             R1, PC; _ZN9CGangWars11ProvocationE_ptr
30B766:  VLDR            S4, =0.0
30B76A:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
30B76C:  LDR             R1, [R1]; CGangWars::Provocation ...
30B76E:  VLDR            S2, [R0]
30B772:  LDR.W           R0, =(_ZN9CGangWars5StateE_ptr - 0x30B782)
30B776:  VMUL.F32        S0, S2, S0
30B77A:  VLDR            S2, [R1]
30B77E:  ADD             R0, PC; _ZN9CGangWars5StateE_ptr
30B780:  LDR             R0, [R0]; CGangWars::State ...
30B782:  LDR             R0, [R0]; this
30B784:  VADD.F32        S0, S2, S0
30B788:  CMP             R0, #6; switch 7 cases
30B78A:  VMAX.F32        D0, D0, D2
30B78E:  VSTR            S0, [R1]
30B792:  BHI.W           def_30B796; jumptable 0030B796 default case
30B796:  TBH.W           [PC,R0,LSL#1]; switch jump
30B79A:  DCW 7; jump table for switch statement
30B79C:  DCW 0x12
30B79E:  DCW 0x3D
30B7A0:  DCW 0xB6
30B7A2:  DCW 0xE1
30B7A4:  DCW 0x15A
30B7A6:  DCW 0x19F
30B7A8:  VLDR            S2, =2.1; jumptable 0030B796 case 0
30B7AC:  VCMPE.F32       S0, S2
30B7B0:  VMRS            APSR_nzcv, FPSCR
30B7B4:  BLE.W           loc_30BD64
30B7B8:  BLX             j__ZN9CGangWars21StartOffensiveGangWarEv; CGangWars::StartOffensiveGangWar(void)
30B7BC:  B               loc_30BAEC
30B7BE:  LDR.W           R0, =(_ZN9CGangWars11TimeStartedE_ptr - 0x30B7CE); jumptable 0030B796 case 1
30B7C2:  MOVW            R2, #0x2710; int
30B7C6:  LDR.W           R1, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x30B7D0)
30B7CA:  ADD             R0, PC; _ZN9CGangWars11TimeStartedE_ptr
30B7CC:  ADD             R1, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
30B7CE:  LDR             R0, [R0]; CGangWars::TimeStarted ...
30B7D0:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds ...
30B7D2:  LDR             R0, [R0]; CGangWars::TimeStarted
30B7D4:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds
30B7D6:  ADD             R0, R2
30B7D8:  CMP             R1, R0
30B7DA:  BLS.W           loc_30BAEC
30B7DE:  LDR.W           R0, =(_ZN9CGangWars11WarFerocityE_ptr - 0x30B7E8)
30B7E2:  MOVS            R1, #0
30B7E4:  ADD             R0, PC; _ZN9CGangWars11WarFerocityE_ptr
30B7E6:  LDR             R0, [R0]; CGangWars::WarFerocity ...
30B7E8:  LDR             R0, [R0]; CGangWars::WarFerocity
30B7EA:  CMP             R0, #0
30B7EC:  IT LE
30B7EE:  MOVLE           R0, R1; this
30B7F0:  MOVS            R1, #0; int
30B7F2:  BLX             j__ZN9CGangWars16CreateAttackWaveEii; CGangWars::CreateAttackWave(int,int)
30B7F6:  CMP             R0, #1
30B7F8:  BNE.W           loc_30BAEC
30B7FC:  LDR.W           R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x30B80A)
30B800:  MOVS            R3, #2
30B802:  LDR.W           R1, =(_ZN9CGangWars5StateE_ptr - 0x30B810)
30B806:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
30B808:  LDR.W           R2, =(_ZN9CGangWars11TimeStartedE_ptr - 0x30B814)
30B80C:  ADD             R1, PC; _ZN9CGangWars5StateE_ptr
30B80E:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
30B810:  ADD             R2, PC; _ZN9CGangWars11TimeStartedE_ptr
30B812:  B               loc_30BA9E
30B814:  BLX             j__ZN9CGangWars18AttackWaveOvercomeEv; jumptable 0030B796 case 2
30B818:  CMP             R0, #1
30B81A:  BNE.W           loc_30BAEC
30B81E:  MOVS            R0, #0; this
30B820:  MOVS            R1, #0; bool
30B822:  BLX             j__ZN9CGangWars23ReleasePedsInAttackWaveEbb; CGangWars::ReleasePedsInAttackWave(bool,bool)
30B826:  LDR.W           R0, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x30B82E)
30B82A:  ADD             R0, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
30B82C:  LDR             R0, [R0]; CPools::ms_pVehiclePool ...
30B82E:  LDR             R4, [R0]; CPools::ms_pVehiclePool
30B830:  LDR             R0, [R4,#8]
30B832:  CBZ             R0, loc_30B88E
30B834:  MOVW            R1, #0xA2C
30B838:  MOVW            R8, #0xFA04
30B83C:  MUL.W           R5, R0, R1
30B840:  MOVW            R9, #0xFA00
30B844:  SUBS            R6, R0, #1
30B846:  MOVT            R8, #0xFFFF
30B84A:  MOVT            R9, #0xFFFF
30B84E:  LDR             R0, [R4,#4]
30B850:  LDRSB           R0, [R0,R6]
30B852:  CMP             R0, #0
30B854:  BLT             loc_30B884
30B856:  LDR             R0, [R4]
30B858:  ADDS            R1, R0, R5
30B85A:  SUBW            R0, R1, #0xA2C; this
30B85E:  CMP             R0, #0
30B860:  ITT NE
30B862:  LDRNE.W         R2, [R1,R8]
30B866:  TSTNE.W         R2, #0x800
30B86A:  BEQ             loc_30B884
30B86C:  LDR.W           R3, [R1,R9]
30B870:  SUB.W           R1, R1, #0x600
30B874:  BIC.W           R2, R2, #0x800
30B878:  STRD.W          R3, R2, [R1]
30B87C:  MOVS            R1, #1; int
30B87E:  MOVS            R2, #0; bool
30B880:  BLX             j__ZN8CVehicle19SetVehicleCreatedByEib; CVehicle::SetVehicleCreatedBy(int,bool)
30B884:  SUBS            R6, #1
30B886:  SUBW            R5, R5, #0xA2C
30B88A:  ADDS            R0, R6, #1
30B88C:  BNE             loc_30B84E
30B88E:  MOV             R0, #0x3E99999A; this
30B896:  BLX             j__ZN9CGangWars29MakePlayerGainInfluenceInZoneEf; CGangWars::MakePlayerGainInfluenceInZone(float)
30B89A:  CMP             R0, #1
30B89C:  BEQ.W           loc_30BAE8
30B8A0:  LDR.W           R0, =(TheText_ptr - 0x30B8AC)
30B8A4:  ADR.W           R4, aGwClr1; "GW_CLR1"
30B8A8:  ADD             R0, PC; TheText_ptr
30B8AA:  MOV             R1, R4; CKeyGen *
30B8AC:  LDR             R5, [R0]; TheText
30B8AE:  MOV             R0, R5; this
30B8B0:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
30B8B4:  MOV             R1, R0; char *
30B8B6:  MOVS            R0, #1
30B8B8:  STR             R0, [SP,#0x78+var_78]; unsigned __int16
30B8BA:  MOV             R0, R4; this
30B8BC:  MOVW            R2, #(elf_hash_bucket+0x1098); unsigned __int16 *
30B8C0:  MOVS            R3, #1; unsigned int
30B8C2:  BLX             j__ZN9CMessages10AddMessageEPKcPtjtb; CMessages::AddMessage(char const*,ushort *,uint,ushort,bool)
30B8C6:  MOV             R0, R5; this
30B8C8:  MOV             R1, R4; CKeyGen *
30B8CA:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
30B8CE:  MOV             R1, R0; char *
30B8D0:  MOV.W           R2, #0xFFFFFFFF
30B8D4:  MOVS            R0, #0
30B8D6:  STRD.W          R2, R2, [SP,#0x78+var_78]; int
30B8DA:  STRD.W          R2, R2, [SP,#0x78+var_70]; int
30B8DE:  MOV.W           R2, #0xFFFFFFFF; unsigned __int16 *
30B8E2:  STR             R0, [SP,#0x78+var_68]; int
30B8E4:  MOV             R0, R4; this
30B8E6:  MOV.W           R3, #0xFFFFFFFF; int
30B8EA:  BLX             j__ZN9CMessages23AddToPreviousBriefArrayEPKcPtiiiiiiS2_; CMessages::AddToPreviousBriefArray(char const*,ushort *,int,int,int,int,int,int,ushort *)
30B8EE:  LDR.W           R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x30B8FC)
30B8F2:  MOVS            R3, #3
30B8F4:  LDR.W           R1, =(_ZN9CGangWars5StateE_ptr - 0x30B902)
30B8F8:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
30B8FA:  LDR.W           R2, =(_ZN9CGangWars11TimeStartedE_ptr - 0x30B906)
30B8FE:  ADD             R1, PC; _ZN9CGangWars5StateE_ptr
30B900:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
30B902:  ADD             R2, PC; _ZN9CGangWars11TimeStartedE_ptr
30B904:  B               loc_30BA9E
30B906:  LDR.W           R0, =(_ZN9CGangWars11TimeStartedE_ptr - 0x30B916); jumptable 0030B796 case 3
30B90A:  MOVW            R2, #0x2710; int
30B90E:  LDR.W           R1, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x30B918)
30B912:  ADD             R0, PC; _ZN9CGangWars11TimeStartedE_ptr
30B914:  ADD             R1, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
30B916:  LDR             R0, [R0]; CGangWars::TimeStarted ...
30B918:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds ...
30B91A:  LDR             R0, [R0]; CGangWars::TimeStarted
30B91C:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds
30B91E:  ADD             R0, R2
30B920:  CMP             R1, R0
30B922:  BLS.W           loc_30BAEC
30B926:  LDR.W           R0, =(_ZN9CGangWars11WarFerocityE_ptr - 0x30B930)
30B92A:  MOVS            R1, #1; int
30B92C:  ADD             R0, PC; _ZN9CGangWars11WarFerocityE_ptr
30B92E:  LDR             R0, [R0]; CGangWars::WarFerocity ...
30B930:  LDR             R0, [R0]; CGangWars::WarFerocity
30B932:  ADDS            R0, #1
30B934:  CMP             R0, #0
30B936:  IT LE
30B938:  MOVLE           R0, #0; this
30B93A:  BLX             j__ZN9CGangWars16CreateAttackWaveEii; CGangWars::CreateAttackWave(int,int)
30B93E:  CMP             R0, #1
30B940:  BNE.W           loc_30BAEC
30B944:  LDR.W           R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x30B952)
30B948:  MOVS            R3, #4
30B94A:  LDR.W           R1, =(_ZN9CGangWars5StateE_ptr - 0x30B958)
30B94E:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
30B950:  LDR.W           R2, =(_ZN9CGangWars11TimeStartedE_ptr - 0x30B95C)
30B954:  ADD             R1, PC; _ZN9CGangWars5StateE_ptr
30B956:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
30B958:  ADD             R2, PC; _ZN9CGangWars11TimeStartedE_ptr
30B95A:  B               loc_30BA9E
30B95C:  BLX             j__ZN9CGangWars18AttackWaveOvercomeEv; jumptable 0030B796 case 4
30B960:  CMP             R0, #1
30B962:  BNE.W           loc_30BAEC
30B966:  MOVS            R0, #0; this
30B968:  MOVS            R1, #0; bool
30B96A:  BLX             j__ZN9CGangWars23ReleasePedsInAttackWaveEbb; CGangWars::ReleasePedsInAttackWave(bool,bool)
30B96E:  LDR.W           R0, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x30B976)
30B972:  ADD             R0, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
30B974:  LDR             R0, [R0]; CPools::ms_pVehiclePool ...
30B976:  LDR             R4, [R0]; CPools::ms_pVehiclePool
30B978:  LDR             R0, [R4,#8]
30B97A:  CBZ             R0, loc_30B9D6
30B97C:  MOVW            R1, #0xA2C
30B980:  MOVW            R8, #0xFA04
30B984:  MUL.W           R5, R0, R1
30B988:  MOVW            R9, #0xFA00
30B98C:  SUBS            R6, R0, #1
30B98E:  MOVT            R8, #0xFFFF
30B992:  MOVT            R9, #0xFFFF
30B996:  LDR             R0, [R4,#4]
30B998:  LDRSB           R0, [R0,R6]
30B99A:  CMP             R0, #0
30B99C:  BLT             loc_30B9CC
30B99E:  LDR             R0, [R4]
30B9A0:  ADDS            R1, R0, R5
30B9A2:  SUBW            R0, R1, #0xA2C; this
30B9A6:  CMP             R0, #0
30B9A8:  ITT NE
30B9AA:  LDRNE.W         R2, [R1,R8]
30B9AE:  TSTNE.W         R2, #0x800
30B9B2:  BEQ             loc_30B9CC
30B9B4:  LDR.W           R3, [R1,R9]
30B9B8:  SUB.W           R1, R1, #0x600
30B9BC:  BIC.W           R2, R2, #0x800
30B9C0:  STRD.W          R3, R2, [R1]
30B9C4:  MOVS            R1, #1; int
30B9C6:  MOVS            R2, #0; bool
30B9C8:  BLX             j__ZN8CVehicle19SetVehicleCreatedByEib; CVehicle::SetVehicleCreatedBy(int,bool)
30B9CC:  SUBS            R6, #1
30B9CE:  SUBW            R5, R5, #0xA2C
30B9D2:  ADDS            R0, R6, #1
30B9D4:  BNE             loc_30B996
30B9D6:  MOV             R0, #0x3E99999A; this
30B9DE:  BLX             j__ZN9CGangWars29MakePlayerGainInfluenceInZoneEf; CGangWars::MakePlayerGainInfluenceInZone(float)
30B9E2:  CMP             R0, #1
30B9E4:  BEQ.W           loc_30BAE8
30B9E8:  LDR.W           R0, =(TheText_ptr - 0x30B9F4)
30B9EC:  ADR.W           R4, aGwClr2; "GW_CLR2"
30B9F0:  ADD             R0, PC; TheText_ptr
30B9F2:  MOV             R1, R4; CKeyGen *
30B9F4:  LDR             R5, [R0]; TheText
30B9F6:  MOV             R0, R5; this
30B9F8:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
30B9FC:  MOV             R1, R0; char *
30B9FE:  MOVS            R0, #1
30BA00:  STR             R0, [SP,#0x78+var_78]; unsigned __int16
30BA02:  MOV             R0, R4; this
30BA04:  MOVW            R2, #(elf_hash_bucket+0x1098); unsigned __int16 *
30BA08:  MOVS            R3, #1; unsigned int
30BA0A:  BLX             j__ZN9CMessages10AddMessageEPKcPtjtb; CMessages::AddMessage(char const*,ushort *,uint,ushort,bool)
30BA0E:  MOV             R0, R5; this
30BA10:  MOV             R1, R4; CKeyGen *
30BA12:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
30BA16:  MOV             R1, R0; char *
30BA18:  MOV.W           R2, #0xFFFFFFFF
30BA1C:  MOVS            R0, #0
30BA1E:  STRD.W          R2, R2, [SP,#0x78+var_78]; int
30BA22:  STRD.W          R2, R2, [SP,#0x78+var_70]; int
30BA26:  MOV.W           R2, #0xFFFFFFFF; unsigned __int16 *
30BA2A:  STR             R0, [SP,#0x78+var_68]; int
30BA2C:  MOV             R0, R4; this
30BA2E:  MOV.W           R3, #0xFFFFFFFF; int
30BA32:  BLX             j__ZN9CMessages23AddToPreviousBriefArrayEPKcPtiiiiiiS2_; CMessages::AddToPreviousBriefArray(char const*,ushort *,int,int,int,int,int,int,ushort *)
30BA36:  LDR.W           R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x30BA44)
30BA3A:  MOVS            R3, #5
30BA3C:  LDR.W           R1, =(_ZN9CGangWars5StateE_ptr - 0x30BA4A)
30BA40:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
30BA42:  LDR.W           R2, =(_ZN9CGangWars11TimeStartedE_ptr - 0x30BA4E)
30BA46:  ADD             R1, PC; _ZN9CGangWars5StateE_ptr
30BA48:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
30BA4A:  ADD             R2, PC; _ZN9CGangWars11TimeStartedE_ptr
30BA4C:  B               loc_30BA9E
30BA4E:  LDR.W           R0, =(_ZN9CGangWars11TimeStartedE_ptr - 0x30BA5E); jumptable 0030B796 case 5
30BA52:  MOVW            R2, #0x2710; int
30BA56:  LDR.W           R1, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x30BA60)
30BA5A:  ADD             R0, PC; _ZN9CGangWars11TimeStartedE_ptr
30BA5C:  ADD             R1, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
30BA5E:  LDR             R0, [R0]; CGangWars::TimeStarted ...
30BA60:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds ...
30BA62:  LDR             R0, [R0]; CGangWars::TimeStarted
30BA64:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds
30BA66:  ADD             R0, R2
30BA68:  CMP             R1, R0
30BA6A:  BLS             loc_30BAEC
30BA6C:  LDR.W           R0, =(_ZN9CGangWars11WarFerocityE_ptr - 0x30BA76)
30BA70:  MOVS            R1, #2; int
30BA72:  ADD             R0, PC; _ZN9CGangWars11WarFerocityE_ptr
30BA74:  LDR             R0, [R0]; CGangWars::WarFerocity ...
30BA76:  LDR             R0, [R0]; CGangWars::WarFerocity
30BA78:  ADDS            R0, #2
30BA7A:  CMP             R0, #0
30BA7C:  IT LE
30BA7E:  MOVLE           R0, #0; this
30BA80:  BLX             j__ZN9CGangWars16CreateAttackWaveEii; CGangWars::CreateAttackWave(int,int)
30BA84:  CMP             R0, #1
30BA86:  BNE             loc_30BAEC
30BA88:  LDR.W           R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x30BA96)
30BA8C:  MOVS            R3, #6
30BA8E:  LDR.W           R1, =(_ZN9CGangWars5StateE_ptr - 0x30BA9C)
30BA92:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
30BA94:  LDR.W           R2, =(_ZN9CGangWars11TimeStartedE_ptr - 0x30BAA0)
30BA98:  ADD             R1, PC; _ZN9CGangWars5StateE_ptr
30BA9A:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
30BA9C:  ADD             R2, PC; _ZN9CGangWars11TimeStartedE_ptr
30BA9E:  LDR             R1, [R1]; CGangWars::State ...
30BAA0:  LDR             R2, [R2]; CGangWars::TimeStarted ...
30BAA2:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
30BAA4:  STR             R3, [R1]; CGangWars::State
30BAA6:  STR             R0, [R2]; CGangWars::TimeStarted
30BAA8:  B               def_30B796; jumptable 0030B796 default case
30BAAA:  ALIGN 4
30BAAC:  DCFS -0.0005
30BAB0:  DCFS 0.0
30BAB4:  DCFS 2.1
30BAB8:  DCFS -50.0
30BABC:  DCFS 50.0
30BAC0:  DCFS 950.0
30BAC4:  DCFS 30000.0
30BAC8:  DCFS 4.6566e-10
30BACC:  DCFS 0.9
30BAD0:  DCFS 0.6
30BAD4:  DCFS 1080000.0
30BAD8:  BLX             j__ZN9CGangWars18AttackWaveOvercomeEv; jumptable 0030B796 case 6
30BADC:  CMP             R0, #1
30BADE:  BNE             loc_30BAEC
30BAE0:  MOV.W           R0, #0x3F800000; this
30BAE4:  BLX             j__ZN9CGangWars29MakePlayerGainInfluenceInZoneEf; CGangWars::MakePlayerGainInfluenceInZone(float)
30BAE8:  BLX             j__ZN9CGangWars27DoStuffWhenPlayerVictoriousEv; CGangWars::DoStuffWhenPlayerVictorious(void)
30BAEC:  LDR.W           R0, =(_ZN9CGangWars5StateE_ptr - 0x30BAF4)
30BAF0:  ADD             R0, PC; _ZN9CGangWars5StateE_ptr
30BAF2:  LDR             R0, [R0]; CGangWars::State ...
30BAF4:  LDR             R0, [R0]; CGangWars::State
30BAF6:  CMP             R0, #0
30BAF8:  BEQ.W           loc_30BD64
30BAFC:  ADD             R0, SP, #0x78+var_40; jumptable 0030B796 default case
30BAFE:  MOV.W           R1, #0xFFFFFFFF
30BB02:  BLX             j__Z15FindPlayerCoorsi; FindPlayerCoors(int)
30BB06:  LDR.W           R0, =(_ZN9CGangWars16pZoneToFightOverE_ptr - 0x30BB12)
30BB0A:  VLDR            S18, =-50.0
30BB0E:  ADD             R0, PC; _ZN9CGangWars16pZoneToFightOverE_ptr
30BB10:  LDR             R0, [R0]; CGangWars::pZoneToFightOver ...
30BB12:  LDR             R0, [R0]; CGangWars::pZoneToFightOver
30BB14:  LDRSH.W         R0, [R0,#0x10]
30BB18:  VMOV            S0, R0
30BB1C:  VCVT.F32.S32    S0, S0
30BB20:  VLDR            S2, [SP,#0x78+var_40]
30BB24:  VADD.F32        S0, S0, S18
30BB28:  VCMPE.F32       S2, S0
30BB2C:  VMRS            APSR_nzcv, FPSCR
30BB30:  BLT             loc_30BB6A
30BB32:  ADD             R0, SP, #0x78+var_4C; int
30BB34:  MOV.W           R1, #0xFFFFFFFF
30BB38:  BLX             j__Z15FindPlayerCoorsi; FindPlayerCoors(int)
30BB3C:  LDR.W           R0, =(_ZN9CGangWars16pZoneToFightOverE_ptr - 0x30BB48)
30BB40:  VLDR            S16, =50.0
30BB44:  ADD             R0, PC; _ZN9CGangWars16pZoneToFightOverE_ptr
30BB46:  LDR             R0, [R0]; CGangWars::pZoneToFightOver ...
30BB48:  LDR             R0, [R0]; CGangWars::pZoneToFightOver
30BB4A:  LDRSH.W         R0, [R0,#0x16]
30BB4E:  VMOV            S0, R0
30BB52:  VCVT.F32.S32    S0, S0
30BB56:  VLDR            S2, [SP,#0x78+var_4C]
30BB5A:  VADD.F32        S0, S0, S16
30BB5E:  VCMPE.F32       S2, S0
30BB62:  VMRS            APSR_nzcv, FPSCR
30BB66:  BLE.W           loc_30BC82
30BB6A:  MOVS            R4, #0
30BB6C:  LDR.W           R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x30BB76)
30BB70:  CMP             R4, #0
30BB72:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
30BB74:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
30BB76:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
30BB78:  BNE             loc_30BC76
30BB7A:  LDR.W           R1, =(_ZN5CGame8currAreaE_ptr - 0x30BB82)
30BB7E:  ADD             R1, PC; _ZN5CGame8currAreaE_ptr
30BB80:  LDR             R1, [R1]; CGame::currArea ...
30BB82:  LDR             R1, [R1]; CGame::currArea
30BB84:  CMP             R1, #0
30BB86:  BNE             loc_30BC76
30BB88:  LDR.W           R1, =(_ZN9CGangWars14LastTimeInAreaE_ptr - 0x30BB94)
30BB8C:  MOVW            R2, #0x7531; bool
30BB90:  ADD             R1, PC; _ZN9CGangWars14LastTimeInAreaE_ptr
30BB92:  LDR             R1, [R1]; CGangWars::LastTimeInArea ...
30BB94:  LDR             R1, [R1]; CGangWars::LastTimeInArea
30BB96:  SUBS            R0, R0, R1
30BB98:  CMP             R0, R2
30BB9A:  BCC.W           loc_30BCEE
30BB9E:  LDR.W           R0, =(_ZN9CGangWars11ProvocationE_ptr - 0x30BBB2)
30BBA2:  MOV.W           R9, #0
30BBA6:  LDR.W           R1, =(_ZN9CGangWars5StateE_ptr - 0x30BBB4)
30BBAA:  MOV.W           R8, #1
30BBAE:  ADD             R0, PC; _ZN9CGangWars11ProvocationE_ptr
30BBB0:  ADD             R1, PC; _ZN9CGangWars5StateE_ptr
30BBB2:  LDR             R0, [R0]; CGangWars::Provocation ...
30BBB4:  LDR             R1, [R1]; CGangWars::State ...
30BBB6:  STR.W           R9, [R0]; CGangWars::Provocation
30BBBA:  MOVS            R0, #(stderr+1); this
30BBBC:  STR.W           R9, [R1]; CGangWars::State
30BBC0:  MOVS            R1, #0; bool
30BBC2:  BLX             j__ZN9CGangWars23ReleasePedsInAttackWaveEbb; CGangWars::ReleasePedsInAttackWave(bool,bool)
30BBC6:  LDR.W           R0, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x30BBCE)
30BBCA:  ADD             R0, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
30BBCC:  LDR             R0, [R0]; CPools::ms_pVehiclePool ...
30BBCE:  LDR             R4, [R0]; CPools::ms_pVehiclePool
30BBD0:  LDR             R0, [R4,#8]
30BBD2:  CBZ             R0, loc_30BC2E
30BBD4:  MOVW            R1, #0xA2C
30BBD8:  MOVW            R10, #0xFA04
30BBDC:  MUL.W           R5, R0, R1
30BBE0:  MOVW            R11, #0xFA00
30BBE4:  SUBS            R6, R0, #1
30BBE6:  MOVT            R10, #0xFFFF
30BBEA:  MOVT            R11, #0xFFFF
30BBEE:  LDR             R0, [R4,#4]
30BBF0:  LDRSB           R0, [R0,R6]
30BBF2:  CMP             R0, #0
30BBF4:  BLT             loc_30BC24
30BBF6:  LDR             R0, [R4]
30BBF8:  ADDS            R1, R0, R5
30BBFA:  SUBW            R0, R1, #0xA2C; this
30BBFE:  CMP             R0, #0
30BC00:  ITT NE
30BC02:  LDRNE.W         R2, [R1,R10]
30BC06:  TSTNE.W         R2, #0x800
30BC0A:  BEQ             loc_30BC24
30BC0C:  LDR.W           R3, [R1,R11]
30BC10:  SUB.W           R1, R1, #0x600
30BC14:  BIC.W           R2, R2, #0x800
30BC18:  STRD.W          R3, R2, [R1]
30BC1C:  MOVS            R1, #1; int
30BC1E:  MOVS            R2, #0; bool
30BC20:  BLX             j__ZN8CVehicle19SetVehicleCreatedByEib; CVehicle::SetVehicleCreatedBy(int,bool)
30BC24:  SUBS            R6, #1
30BC26:  SUBW            R5, R5, #0xA2C
30BC2A:  ADDS            R0, R6, #1
30BC2C:  BNE             loc_30BBEE
30BC2E:  MOVS            R0, #0; this
30BC30:  BLX             j__ZN9CTheZones24FillZonesWithGangColoursEb; CTheZones::FillZonesWithGangColours(bool)
30BC34:  LDR.W           R0, =(TheText_ptr - 0x30BC40)
30BC38:  ADR.W           R4, aGwFlee; "GW_FLEE"
30BC3C:  ADD             R0, PC; TheText_ptr
30BC3E:  MOV             R1, R4; CKeyGen *
30BC40:  LDR             R5, [R0]; TheText
30BC42:  MOV             R0, R5; this
30BC44:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
30BC48:  MOV             R1, R0; char *
30BC4A:  MOV             R0, R4; this
30BC4C:  MOVW            R2, #(elf_hash_bucket+0x1098); unsigned __int16 *
30BC50:  MOVS            R3, #1; unsigned int
30BC52:  STR.W           R8, [SP,#0x78+var_78]; unsigned __int16
30BC56:  BLX             j__ZN9CMessages10AddMessageEPKcPtjtb; CMessages::AddMessage(char const*,ushort *,uint,ushort,bool)
30BC5A:  MOV             R0, R5; this
30BC5C:  MOV             R1, R4; CKeyGen *
30BC5E:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
30BC62:  MOV             R1, R0
30BC64:  MOV.W           R0, #0xFFFFFFFF
30BC68:  STRD.W          R0, R0, [SP,#0x78+var_78]
30BC6C:  STRD.W          R0, R0, [SP,#0x78+var_70]
30BC70:  STR.W           R9, [SP,#0x78+var_68]
30BC74:  B               loc_30BD4A
30BC76:  LDR.W           R1, =(_ZN9CGangWars14LastTimeInAreaE_ptr - 0x30BC7E)
30BC7A:  ADD             R1, PC; _ZN9CGangWars14LastTimeInAreaE_ptr
30BC7C:  LDR             R1, [R1]; CGangWars::LastTimeInArea ...
30BC7E:  STR             R0, [R1]; CGangWars::LastTimeInArea
30BC80:  B               loc_30BD58
30BC82:  ADD             R0, SP, #0x78+var_58; int
30BC84:  MOV.W           R1, #0xFFFFFFFF
30BC88:  BLX             j__Z15FindPlayerCoorsi; FindPlayerCoors(int)
30BC8C:  LDR.W           R0, =(_ZN9CGangWars16pZoneToFightOverE_ptr - 0x30BC96)
30BC90:  MOVS            R4, #0
30BC92:  ADD             R0, PC; _ZN9CGangWars16pZoneToFightOverE_ptr
30BC94:  LDR             R0, [R0]; CGangWars::pZoneToFightOver ...
30BC96:  LDR             R0, [R0]; CGangWars::pZoneToFightOver
30BC98:  LDRSH.W         R0, [R0,#0x12]
30BC9C:  VMOV            S0, R0
30BCA0:  VCVT.F32.S32    S0, S0
30BCA4:  VLDR            S2, [SP,#0x78+var_54]
30BCA8:  VADD.F32        S0, S0, S18
30BCAC:  VCMPE.F32       S2, S0
30BCB0:  VMRS            APSR_nzcv, FPSCR
30BCB4:  BLT.W           loc_30BB6C
30BCB8:  ADD             R0, SP, #0x78+var_64; int
30BCBA:  MOV.W           R1, #0xFFFFFFFF
30BCBE:  BLX             j__Z15FindPlayerCoorsi; FindPlayerCoors(int)
30BCC2:  LDR.W           R0, =(_ZN9CGangWars16pZoneToFightOverE_ptr - 0x30BCCA)
30BCC6:  ADD             R0, PC; _ZN9CGangWars16pZoneToFightOverE_ptr
30BCC8:  LDR             R0, [R0]; CGangWars::pZoneToFightOver ...
30BCCA:  LDR             R0, [R0]; CGangWars::pZoneToFightOver
30BCCC:  LDRSH.W         R0, [R0,#0x18]
30BCD0:  VMOV            S0, R0
30BCD4:  VCVT.F32.S32    S0, S0
30BCD8:  VLDR            S2, [SP,#0x78+var_60]
30BCDC:  VADD.F32        S0, S0, S16
30BCE0:  VCMPE.F32       S2, S0
30BCE4:  VMRS            APSR_nzcv, FPSCR
30BCE8:  IT LE
30BCEA:  MOVLE           R4, #1
30BCEC:  B               loc_30BB6C
30BCEE:  MOVW            R2, #0x2711
30BCF2:  CMP             R0, R2
30BCF4:  BCC             loc_30BD58
30BCF6:  LDR.W           R0, =(_ZN6CTimer30m_snPreviousTimeInMillisecondsE_ptr - 0x30BCFE)
30BCFA:  ADD             R0, PC; _ZN6CTimer30m_snPreviousTimeInMillisecondsE_ptr
30BCFC:  LDR             R0, [R0]; CTimer::m_snPreviousTimeInMilliseconds ...
30BCFE:  LDR             R0, [R0]; CTimer::m_snPreviousTimeInMilliseconds
30BD00:  SUBS            R0, R0, R1
30BD02:  MOVW            R1, #0x2710
30BD06:  CMP             R0, R1
30BD08:  BHI             loc_30BD58
30BD0A:  LDR.W           R0, =(TheText_ptr - 0x30BD16)
30BD0E:  ADR.W           R4, aGwWarn; "GW_WARN"
30BD12:  ADD             R0, PC; TheText_ptr
30BD14:  MOV             R1, R4; CKeyGen *
30BD16:  LDR             R5, [R0]; TheText
30BD18:  MOV             R0, R5; this
30BD1A:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
30BD1E:  MOV             R1, R0; char *
30BD20:  MOVS            R0, #1
30BD22:  STR             R0, [SP,#0x78+var_78]; unsigned __int16
30BD24:  MOV             R0, R4; this
30BD26:  MOVW            R2, #(elf_hash_bucket+0x1098); unsigned __int16 *
30BD2A:  MOVS            R3, #1; unsigned int
30BD2C:  BLX             j__ZN9CMessages10AddMessageEPKcPtjtb; CMessages::AddMessage(char const*,ushort *,uint,ushort,bool)
30BD30:  MOV             R0, R5; this
30BD32:  MOV             R1, R4; CKeyGen *
30BD34:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
30BD38:  MOV             R1, R0; char *
30BD3A:  MOV.W           R2, #0xFFFFFFFF
30BD3E:  MOVS            R0, #0
30BD40:  STRD.W          R2, R2, [SP,#0x78+var_78]; int
30BD44:  STRD.W          R2, R2, [SP,#0x78+var_70]; int
30BD48:  STR             R0, [SP,#0x78+var_68]; int
30BD4A:  MOV             R0, R4; this
30BD4C:  MOV.W           R2, #0xFFFFFFFF; unsigned __int16 *
30BD50:  MOV.W           R3, #0xFFFFFFFF; int
30BD54:  BLX             j__ZN9CMessages23AddToPreviousBriefArrayEPKcPtiiiiiiS2_; CMessages::AddToPreviousBriefArray(char const*,ushort *,int,int,int,int,int,int,ushort *)
30BD58:  LDR.W           R0, =(_ZN9CGangWars5StateE_ptr - 0x30BD60)
30BD5C:  ADD             R0, PC; _ZN9CGangWars5StateE_ptr
30BD5E:  LDR             R0, [R0]; CGangWars::State ...
30BD60:  LDR             R0, [R0]; this
30BD62:  CBNZ            R0, loc_30BD86
30BD64:  BLX             j__ZN11CTheScripts18IsPlayerOnAMissionEv; CTheScripts::IsPlayerOnAMission(void)
30BD68:  CBNZ            R0, loc_30BD86
30BD6A:  ADD             R0, SP, #0x78+var_40; int
30BD6C:  MOV.W           R1, #0xFFFFFFFF
30BD70:  BLX             j__Z15FindPlayerCoorsi; FindPlayerCoors(int)
30BD74:  VLDR            S0, =950.0
30BD78:  VLDR            S2, [SP,#0x78+var_38]
30BD7C:  VCMPE.F32       S2, S0
30BD80:  VMRS            APSR_nzcv, FPSCR
30BD84:  BLE             loc_30BD9E
30BD86:  LDR.W           R0, =(_ZN9CGangWars18TimeTillNextAttackE_ptr - 0x30BD92)
30BD8A:  VLDR            S0, =30000.0
30BD8E:  ADD             R0, PC; _ZN9CGangWars18TimeTillNextAttackE_ptr
30BD90:  LDR             R0, [R0]; CGangWars::TimeTillNextAttack ...
30BD92:  VLDR            S2, [R0]
30BD96:  VMAX.F32        D0, D1, D0
30BD9A:  VSTR            S0, [R0]
30BD9E:  LDR.W           R0, =(_ZN9CGangWars6State2E_ptr - 0x30BDA6)
30BDA2:  ADD             R0, PC; _ZN9CGangWars6State2E_ptr
30BDA4:  LDR             R0, [R0]; CGangWars::State2 ...
30BDA6:  LDR             R0, [R0]; this
30BDA8:  CMP             R0, #2
30BDAA:  BEQ             loc_30BE20
30BDAC:  CMP             R0, #1
30BDAE:  BEQ.W           loc_30BF20
30BDB2:  CMP             R0, #0
30BDB4:  BNE.W           loc_30C286
30BDB8:  LDR.W           R0, =(_ZN9CGangWars16bTrainingMissionE_ptr - 0x30BDC0)
30BDBC:  ADD             R0, PC; _ZN9CGangWars16bTrainingMissionE_ptr ; this
30BDBE:  LDR             R4, [R0]; CGangWars::bTrainingMission ...
30BDC0:  BLX             j__ZN11CTheScripts18IsPlayerOnAMissionEv; CTheScripts::IsPlayerOnAMission(void)
30BDC4:  LDRB            R1, [R4]; CGangWars::bTrainingMission
30BDC6:  ORRS            R0, R1
30BDC8:  LSLS            R0, R0, #0x18
30BDCA:  BNE.W           loc_30C286
30BDCE:  MOV.W           R0, #0xFFFFFFFF; int
30BDD2:  MOVS            R1, #0; bool
30BDD4:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
30BDD8:  CBZ             R0, loc_30BE02
30BDDA:  MOV.W           R0, #0xFFFFFFFF; int
30BDDE:  MOVS            R1, #0; bool
30BDE0:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
30BDE4:  LDR.W           R0, [R0,#0x5A4]
30BDE8:  CMP             R0, #3
30BDEA:  BEQ.W           loc_30C286
30BDEE:  MOV.W           R0, #0xFFFFFFFF; int
30BDF2:  MOVS            R1, #0; bool
30BDF4:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
30BDF8:  LDR.W           R0, [R0,#0x5A4]
30BDFC:  CMP             R0, #4
30BDFE:  BEQ.W           loc_30C286
30BE02:  LDR.W           R0, =(_ZN9CGangWars5StateE_ptr - 0x30BE0A)
30BE06:  ADD             R0, PC; _ZN9CGangWars5StateE_ptr
30BE08:  LDR             R0, [R0]; CGangWars::State ...
30BE0A:  LDR             R0, [R0]; CGangWars::State
30BE0C:  CMP             R0, #0
30BE0E:  BEQ.W           loc_30C14E
30BE12:  LDR.W           R0, =(_ZN9CGangWars18TimeTillNextAttackE_ptr - 0x30BE1A)
30BE16:  ADD             R0, PC; _ZN9CGangWars18TimeTillNextAttackE_ptr
30BE18:  LDR             R0, [R0]; CGangWars::TimeTillNextAttack ...
30BE1A:  VLDR            S0, [R0]
30BE1E:  B               loc_30C1A0
30BE20:  BLX             j__ZN9CGangWars18AttackWaveOvercomeEv; CGangWars::AttackWaveOvercome(void)
30BE24:  CMP             R0, #1
30BE26:  BNE.W           loc_30BF84
30BE2A:  LDR.W           R0, =(_ZN9CGangWars6State2E_ptr - 0x30BE34)
30BE2E:  MOVS            R6, #0
30BE30:  ADD             R0, PC; _ZN9CGangWars6State2E_ptr
30BE32:  LDR             R0, [R0]; CGangWars::State2 ...
30BE34:  STR             R6, [R0]; CGangWars::State2
30BE36:  BLX             rand
30BE3A:  VMOV            S0, R0
30BE3E:  VLDR            S2, =4.6566e-10
30BE42:  LDR.W           R0, =(_ZN9CGangWars18TimeTillNextAttackE_ptr - 0x30BE56)
30BE46:  ADR.W           R4, aGwWon; "GW_WON"
30BE4A:  VCVT.F32.S32    S0, S0
30BE4E:  LDR.W           R1, =(TheText_ptr - 0x30BE58)
30BE52:  ADD             R0, PC; _ZN9CGangWars18TimeTillNextAttackE_ptr
30BE54:  ADD             R1, PC; TheText_ptr
30BE56:  LDR             R0, [R0]; CGangWars::TimeTillNextAttack ...
30BE58:  LDR             R5, [R1]; TheText
30BE5A:  MOV             R1, R4; CKeyGen *
30BE5C:  VMUL.F32        S0, S0, S2
30BE60:  VLDR            S2, =0.9
30BE64:  VMUL.F32        S0, S0, S2
30BE68:  VLDR            S2, =0.6
30BE6C:  VADD.F32        S0, S0, S2
30BE70:  VLDR            S2, =1080000.0
30BE74:  VMUL.F32        S0, S0, S2
30BE78:  VCVT.U32.F32    S0, S0
30BE7C:  VCVT.F32.U32    S0, S0
30BE80:  VSTR            S0, [R0]
30BE84:  MOV             R0, R5; this
30BE86:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
30BE8A:  MOV             R1, R0; char *
30BE8C:  MOVS            R0, #1
30BE8E:  STR             R0, [SP,#0x78+var_78]; unsigned __int16
30BE90:  MOV             R0, R4; this
30BE92:  MOVW            R2, #(elf_hash_bucket+0x1098); unsigned __int16 *
30BE96:  MOVS            R3, #1; unsigned int
30BE98:  BLX             j__ZN9CMessages10AddMessageEPKcPtjtb; CMessages::AddMessage(char const*,ushort *,uint,ushort,bool)
30BE9C:  MOV             R0, R5; this
30BE9E:  MOV             R1, R4; CKeyGen *
30BEA0:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
30BEA4:  MOV             R1, R0; char *
30BEA6:  MOV.W           R0, #0xFFFFFFFF
30BEAA:  STRD.W          R0, R0, [SP,#0x78+var_78]; int
30BEAE:  MOV.W           R2, #0xFFFFFFFF; unsigned __int16 *
30BEB2:  STRD.W          R0, R0, [SP,#0x78+var_70]; int
30BEB6:  MOV             R0, R4; this
30BEB8:  MOV.W           R3, #0xFFFFFFFF; int
30BEBC:  STR             R6, [SP,#0x78+var_68]; int
30BEBE:  BLX             j__ZN9CMessages23AddToPreviousBriefArrayEPKcPtiiiiiiS2_; CMessages::AddToPreviousBriefArray(char const*,ushort *,int,int,int,int,int,int,ushort *)
30BEC2:  LDR.W           R0, =(_ZN9CGangWars20pZoneInfoToFightOverE_ptr - 0x30BECA)
30BEC6:  ADD             R0, PC; _ZN9CGangWars20pZoneInfoToFightOverE_ptr
30BEC8:  LDR             R0, [R0]; CGangWars::pZoneInfoToFightOver ...
30BECA:  LDR             R0, [R0]; CGangWars::pZoneInfoToFightOver
30BECC:  LDRB            R1, [R0,#1]
30BECE:  CBZ             R1, loc_30BEDC
30BED0:  LDRB            R2, [R0]
30BED2:  LDRB            R3, [R0,#2]
30BED4:  ADD             R2, R3
30BED6:  CMP             R2, R1
30BED8:  BLS.W           loc_30C144
30BEDC:  MOVS            R2, #0
30BEDE:  CMP             R1, #0x36 ; '6'
30BEE0:  BHI             loc_30BEEC
30BEE2:  ADDS            R1, #0xA
30BEE4:  CMP             R1, #0x37 ; '7'
30BEE6:  IT CS
30BEE8:  MOVCS           R1, #0x37 ; '7'
30BEEA:  STRB            R1, [R0,#1]
30BEEC:  CBNZ            R2, loc_30BF10
30BEEE:  LDR.W           R0, =(_ZN9CGangWars20pZoneInfoToFightOverE_ptr - 0x30BEF6)
30BEF2:  ADD             R0, PC; _ZN9CGangWars20pZoneInfoToFightOverE_ptr
30BEF4:  LDR             R0, [R0]; CGangWars::pZoneInfoToFightOver ...
30BEF6:  LDR             R1, [R0]; CGangWars::pZoneInfoToFightOver
30BEF8:  LDRB            R0, [R1,#1]
30BEFA:  CBZ             R0, loc_30BF10
30BEFC:  LDRB            R2, [R1]; float
30BEFE:  LDRB            R1, [R1,#2]
30BF00:  ADD             R1, R2
30BF02:  CMP             R1, R0
30BF04:  BHI             loc_30BF10
30BF06:  MOVS            R0, #(dword_E8+2); this
30BF08:  MOV.W           R1, #0x3F800000; unsigned __int16
30BF0C:  BLX             j__ZN6CStats13IncrementStatEtf; CStats::IncrementStat(ushort,float)
30BF10:  MOVS            R0, #0; this
30BF12:  BLX             j__ZN9CTheZones24FillZonesWithGangColoursEb; CTheZones::FillZonesWithGangColours(bool)
30BF16:  MOVS            R0, #(stderr+1); this
30BF18:  MOVS            R1, #0; bool
30BF1A:  BLX             j__ZN9CGangWars23ReleasePedsInAttackWaveEbb; CGangWars::ReleasePedsInAttackWave(bool,bool)
30BF1E:  B               loc_30C286
30BF20:  ADD             R0, SP, #0x78+var_40; int
30BF22:  MOV.W           R1, #0xFFFFFFFF
30BF26:  BLX             j__Z15FindPlayerCoorsi; FindPlayerCoors(int)
30BF2A:  LDR.W           R0, =(_ZN9CGangWars13PointOfAttackE_ptr - 0x30BF36)
30BF2E:  VLDR            D16, [SP,#0x78+var_40]
30BF32:  ADD             R0, PC; _ZN9CGangWars13PointOfAttackE_ptr
30BF34:  VLDR            S2, =70.0
30BF38:  LDR             R0, [R0]; this
30BF3A:  VLDR            D17, [R0]
30BF3E:  VSUB.F32        D16, D16, D17
30BF42:  VMUL.F32        D0, D16, D16
30BF46:  VADD.F32        S0, S0, S1
30BF4A:  VSQRT.F32       S0, S0
30BF4E:  VCMPE.F32       S0, S2
30BF52:  VMRS            APSR_nzcv, FPSCR
30BF56:  BGE.W           loc_30C08A
30BF5A:  BLX             j__ZN9CGangWars20CreateDefendingGroupEi; CGangWars::CreateDefendingGroup(int)
30BF5E:  CMP             R0, #1
30BF60:  BNE.W           loc_30C286
30BF64:  LDR.W           R0, =(_ZN9CGangWars10FightTimerE_ptr - 0x30BF72)
30BF68:  MOVS            R2, #2
30BF6A:  LDR.W           R1, =(_ZN9CGangWars6State2E_ptr - 0x30BF74)
30BF6E:  ADD             R0, PC; _ZN9CGangWars10FightTimerE_ptr
30BF70:  ADD             R1, PC; _ZN9CGangWars6State2E_ptr
30BF72:  LDR             R0, [R0]; CGangWars::FightTimer ...
30BF74:  LDR             R1, [R1]; CGangWars::State2 ...
30BF76:  LDR             R3, [R0]; CGangWars::FightTimer
30BF78:  STR             R2, [R1]; CGangWars::State2
30BF7A:  MOVW            R1, #0x7530
30BF7E:  ADD             R1, R3
30BF80:  STR             R1, [R0]; CGangWars::FightTimer
30BF82:  B               loc_30C286
30BF84:  LDR.W           R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x30BF90)
30BF88:  VLDR            S0, =50.0
30BF8C:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
30BF8E:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
30BF90:  VLDR            S2, [R0]
30BF94:  LDR.W           R0, =(_ZN9CGangWars10FightTimerE_ptr - 0x30BFA0)
30BF98:  VDIV.F32        S0, S2, S0
30BF9C:  ADD             R0, PC; _ZN9CGangWars10FightTimerE_ptr
30BF9E:  LDR             R0, [R0]; CGangWars::FightTimer ...
30BFA0:  LDR             R1, [R0]; CGangWars::FightTimer
30BFA2:  VLDR            S2, =1000.0
30BFA6:  VMUL.F32        S0, S0, S2
30BFAA:  VCVT.U32.F32    S0, S0
30BFAE:  VMOV            R2, S0
30BFB2:  SUBS            R1, R1, R2
30BFB4:  STR             R1, [R0]; CGangWars::FightTimer
30BFB6:  CMP.W           R1, #0xFFFFFFFF
30BFBA:  BGT.W           loc_30C286
30BFBE:  LDR.W           R0, =(_ZN9CGangWars6State2E_ptr - 0x30BFC8)
30BFC2:  MOVS            R6, #0
30BFC4:  ADD             R0, PC; _ZN9CGangWars6State2E_ptr
30BFC6:  LDR             R0, [R0]; CGangWars::State2 ...
30BFC8:  STR             R6, [R0]; CGangWars::State2
30BFCA:  BLX             rand
30BFCE:  VMOV            S0, R0
30BFD2:  VLDR            S2, =4.6566e-10
30BFD6:  LDR.W           R0, =(_ZN9CGangWars18TimeTillNextAttackE_ptr - 0x30BFEA)
30BFDA:  ADR.W           R4, aGwSlow; "GW_SLOW"
30BFDE:  VCVT.F32.S32    S0, S0
30BFE2:  LDR.W           R1, =(TheText_ptr - 0x30BFEC)
30BFE6:  ADD             R0, PC; _ZN9CGangWars18TimeTillNextAttackE_ptr
30BFE8:  ADD             R1, PC; TheText_ptr
30BFEA:  LDR             R0, [R0]; CGangWars::TimeTillNextAttack ...
30BFEC:  LDR             R5, [R1]; TheText
30BFEE:  MOV             R1, R4; CKeyGen *
30BFF0:  VMUL.F32        S0, S0, S2
30BFF4:  VLDR            S2, =0.9
30BFF8:  VMUL.F32        S0, S0, S2
30BFFC:  VLDR            S2, =0.6
30C000:  VADD.F32        S0, S0, S2
30C004:  VLDR            S2, =1080000.0
30C008:  VMUL.F32        S0, S0, S2
30C00C:  VCVT.U32.F32    S0, S0
30C010:  VCVT.F32.U32    S0, S0
30C014:  VSTR            S0, [R0]
30C018:  MOV             R0, R5; this
30C01A:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
30C01E:  MOV             R1, R0; char *
30C020:  MOVS            R0, #1
30C022:  STR             R0, [SP,#0x78+var_78]; unsigned __int16
30C024:  MOV             R0, R4; this
30C026:  MOVW            R2, #(elf_hash_bucket+0x1098); unsigned __int16 *
30C02A:  MOVS            R3, #1; unsigned int
30C02C:  BLX             j__ZN9CMessages10AddMessageEPKcPtjtb; CMessages::AddMessage(char const*,ushort *,uint,ushort,bool)
30C030:  MOV             R0, R5; this
30C032:  MOV             R1, R4; CKeyGen *
30C034:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
30C038:  MOV             R1, R0; char *
30C03A:  MOV.W           R0, #0xFFFFFFFF
30C03E:  STRD.W          R0, R0, [SP,#0x78+var_78]; int
30C042:  MOV.W           R2, #0xFFFFFFFF; unsigned __int16 *
30C046:  STRD.W          R0, R0, [SP,#0x78+var_70]; int
30C04A:  MOV             R0, R4; this
30C04C:  MOV.W           R3, #0xFFFFFFFF; int
30C050:  STR             R6, [SP,#0x78+var_68]; int
30C052:  BLX             j__ZN9CMessages23AddToPreviousBriefArrayEPKcPtiiiiiiS2_; CMessages::AddToPreviousBriefArray(char const*,ushort *,int,int,int,int,int,int,ushort *)
30C056:  LDR.W           R0, =(_ZN9CGangWars5Gang1E_ptr - 0x30C060)
30C05A:  MOVS            R1, #0; bool
30C05C:  ADD             R0, PC; _ZN9CGangWars5Gang1E_ptr
30C05E:  LDR             R0, [R0]; CGangWars::Gang1 ...
30C060:  LDR.W           R8, [R0]; CGangWars::Gang1
30C064:  MOVS            R0, #(stderr+1); this
30C066:  BLX             j__ZN9CGangWars23ReleasePedsInAttackWaveEbb; CGangWars::ReleasePedsInAttackWave(bool,bool)
30C06A:  LDR.W           R1, =(_ZN9CGangWars20pZoneInfoToFightOverE_ptr - 0x30C072)
30C06E:  ADD             R1, PC; _ZN9CGangWars20pZoneInfoToFightOverE_ptr
30C070:  LDR             R1, [R1]; CGangWars::pZoneInfoToFightOver ...
30C072:  LDR             R1, [R1]; CGangWars::pZoneInfoToFightOver
30C074:  LDRB            R2, [R1,#1]
30C076:  CMP             R2, #0
30C078:  BEQ.W           loc_30C1B0
30C07C:  LDRB            R3, [R1]
30C07E:  LDRB            R5, [R1,#2]
30C080:  ADDS            R4, R5, R3
30C082:  CMP             R4, R2
30C084:  IT LS
30C086:  MOVLS           R6, #1
30C088:  B               loc_30C1BA
30C08A:  LDR.W           R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x30C096)
30C08E:  VLDR            S0, =50.0
30C092:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
30C094:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
30C096:  VLDR            S2, [R0]
30C09A:  LDR.W           R0, =(_ZN9CGangWars10FightTimerE_ptr - 0x30C0A6)
30C09E:  VDIV.F32        S0, S2, S0
30C0A2:  ADD             R0, PC; _ZN9CGangWars10FightTimerE_ptr
30C0A4:  LDR             R0, [R0]; CGangWars::FightTimer ...
30C0A6:  LDR             R1, [R0]; CGangWars::FightTimer
30C0A8:  VLDR            S2, =1000.0
30C0AC:  VMUL.F32        S0, S0, S2
30C0B0:  VCVT.U32.F32    S0, S0
30C0B4:  VMOV            R2, S0
30C0B8:  SUBS            R1, R1, R2
30C0BA:  STR             R1, [R0]; CGangWars::FightTimer
30C0BC:  CMP.W           R1, #0xFFFFFFFF
30C0C0:  BGT.W           loc_30C286
30C0C4:  LDR.W           R0, =(TheText_ptr - 0x30C0D0)
30C0C8:  ADR.W           R4, aGwNosh; "GW_NOSH"
30C0CC:  ADD             R0, PC; TheText_ptr
30C0CE:  MOV             R1, R4; CKeyGen *
30C0D0:  LDR             R5, [R0]; TheText
30C0D2:  MOV             R0, R5; this
30C0D4:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
30C0D8:  MOV             R1, R0; char *
30C0DA:  MOVS            R0, #1
30C0DC:  STR             R0, [SP,#0x78+var_78]; unsigned __int16
30C0DE:  MOV             R0, R4; this
30C0E0:  MOVW            R2, #(elf_hash_bucket+0x1098); unsigned __int16 *
30C0E4:  MOVS            R3, #1; unsigned int
30C0E6:  BLX             j__ZN9CMessages10AddMessageEPKcPtjtb; CMessages::AddMessage(char const*,ushort *,uint,ushort,bool)
30C0EA:  MOV             R0, R5; this
30C0EC:  MOV             R1, R4; CKeyGen *
30C0EE:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
30C0F2:  MOV             R1, R0; char *
30C0F4:  MOV.W           R0, #0xFFFFFFFF
30C0F8:  STRD.W          R0, R0, [SP,#0x78+var_78]; int
30C0FC:  MOVS            R5, #0
30C0FE:  STRD.W          R0, R0, [SP,#0x78+var_70]; int
30C102:  MOV             R0, R4; this
30C104:  MOV.W           R2, #0xFFFFFFFF; unsigned __int16 *
30C108:  MOV.W           R3, #0xFFFFFFFF; int
30C10C:  STR             R5, [SP,#0x78+var_68]; int
30C10E:  BLX             j__ZN9CMessages23AddToPreviousBriefArrayEPKcPtiiiiiiS2_; CMessages::AddToPreviousBriefArray(char const*,ushort *,int,int,int,int,int,int,ushort *)
30C112:  LDR.W           R0, =(_ZN9CGangWars20pZoneInfoToFightOverE_ptr - 0x30C11E)
30C116:  LDR.W           R2, =(_ZN9CGangWars6State2E_ptr - 0x30C124)
30C11A:  ADD             R0, PC; _ZN9CGangWars20pZoneInfoToFightOverE_ptr
30C11C:  LDR.W           R1, =(_ZN9CGangWars5Gang1E_ptr - 0x30C128)
30C120:  ADD             R2, PC; _ZN9CGangWars6State2E_ptr
30C122:  LDR             R0, [R0]; CGangWars::pZoneInfoToFightOver ...
30C124:  ADD             R1, PC; _ZN9CGangWars5Gang1E_ptr
30C126:  LDR             R2, [R2]; CGangWars::State2 ...
30C128:  LDR             R1, [R1]; CGangWars::Gang1 ...
30C12A:  LDR             R0, [R0]; CGangWars::pZoneInfoToFightOver
30C12C:  STR             R5, [R2]; CGangWars::State2
30C12E:  LDR             R1, [R1]; CGangWars::Gang1
30C130:  LDRB            R2, [R0,#1]
30C132:  CMP             R2, #0
30C134:  BEQ             loc_30C1FA
30C136:  LDRB            R3, [R0]
30C138:  LDRB            R6, [R0,#2]
30C13A:  ADDS            R4, R6, R3
30C13C:  CMP             R4, R2
30C13E:  IT LS
30C140:  MOVLS           R5, #1
30C142:  B               loc_30C204
30C144:  MOVS            R2, #1
30C146:  CMP             R1, #0x36 ; '6'
30C148:  BHI.W           loc_30BEEC
30C14C:  B               loc_30BEE2
30C14E:  LDR.W           R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x30C15A)
30C152:  VLDR            S0, =50.0
30C156:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
30C158:  LDR.W           R1, =(_ZN9CGangWars18TimeTillNextAttackE_ptr - 0x30C162)
30C15C:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
30C15E:  ADD             R1, PC; _ZN9CGangWars18TimeTillNextAttackE_ptr
30C160:  VLDR            S2, [R0]
30C164:  LDR.W           R0, =(_ZN8CWeather13WeatherRegionE_ptr - 0x30C170)
30C168:  VDIV.F32        S0, S2, S0
30C16C:  ADD             R0, PC; _ZN8CWeather13WeatherRegionE_ptr
30C16E:  LDR             R0, [R0]; CWeather::WeatherRegion ...
30C170:  VLDR            S2, =1000.0
30C174:  VMUL.F32        S0, S0, S2
30C178:  VLDR            S2, =0.06
30C17C:  VCVT.U32.F32    S0, S0
30C180:  VCVT.F32.U32    S0, S0
30C184:  LDRH            R0, [R0]; CWeather::WeatherRegion
30C186:  CMP             R0, #1
30C188:  LDR             R0, [R1]; this
30C18A:  VMUL.F32        S2, S0, S2
30C18E:  IT EQ
30C190:  VMOVEQ.F32      S2, S0
30C194:  VLDR            S0, [R0]
30C198:  VSUB.F32        S0, S0, S2
30C19C:  VSTR            S0, [R0]
30C1A0:  VCMPE.F32       S0, #0.0
30C1A4:  VMRS            APSR_nzcv, FPSCR
30C1A8:  BGE             loc_30C286
30C1AA:  BLX             j__ZN9CGangWars21StartDefensiveGangWarEv; CGangWars::StartDefensiveGangWar(void)
30C1AE:  B               loc_30C286
30C1B0:  CBZ             R1, loc_30C1F2
30C1B2:  LDRB            R3, [R1]
30C1B4:  MOVS            R2, #0
30C1B6:  LDRB            R5, [R1,#2]
30C1B8:  MOVS            R6, #0
30C1BA:  ADD             R3, R5
30C1BC:  CMN             R3, R2
30C1BE:  BEQ             loc_30C1F2
30C1C0:  LDRB.W          R2, [R1,R8]
30C1C4:  ADD.W           R0, R0, R0,LSL#1
30C1C8:  CMP             R6, #0
30C1CA:  ADD             R0, R2
30C1CC:  STRB.W          R0, [R1,R8]
30C1D0:  BEQ             loc_30C1F2
30C1D2:  LDR             R0, =(_ZN9CGangWars20pZoneInfoToFightOverE_ptr - 0x30C1D8)
30C1D4:  ADD             R0, PC; _ZN9CGangWars20pZoneInfoToFightOverE_ptr
30C1D6:  LDR             R0, [R0]; CGangWars::pZoneInfoToFightOver ...
30C1D8:  LDR             R1, [R0]; CGangWars::pZoneInfoToFightOver
30C1DA:  LDRB            R0, [R1,#1]
30C1DC:  CBZ             R0, loc_30C1E8
30C1DE:  LDRB            R2, [R1]; float
30C1E0:  LDRB            R1, [R1,#2]
30C1E2:  ADD             R1, R2
30C1E4:  CMP             R1, R0
30C1E6:  BLS             loc_30C1F2
30C1E8:  MOVS            R0, #(dword_E8+3); this
30C1EA:  MOV.W           R1, #0x3F800000; unsigned __int16
30C1EE:  BLX             j__ZN6CStats13IncrementStatEtf; CStats::IncrementStat(ushort,float)
30C1F2:  MOVS            R0, #0; this
30C1F4:  BLX             j__ZN9CTheZones24FillZonesWithGangColoursEb; CTheZones::FillZonesWithGangColours(bool)
30C1F8:  B               loc_30C27A
30C1FA:  CBZ             R0, loc_30C236
30C1FC:  LDRB            R3, [R0]
30C1FE:  MOVS            R2, #0
30C200:  LDRB            R6, [R0,#2]
30C202:  MOVS            R5, #0
30C204:  ADD             R3, R6
30C206:  CMN             R3, R2
30C208:  BEQ             loc_30C236
30C20A:  LDRB            R2, [R0,R1]
30C20C:  CMP             R5, #0
30C20E:  ADD.W           R2, R2, #0x1E
30C212:  STRB            R2, [R0,R1]
30C214:  BEQ             loc_30C236
30C216:  LDR             R0, =(_ZN9CGangWars20pZoneInfoToFightOverE_ptr - 0x30C21C)
30C218:  ADD             R0, PC; _ZN9CGangWars20pZoneInfoToFightOverE_ptr
30C21A:  LDR             R0, [R0]; CGangWars::pZoneInfoToFightOver ...
30C21C:  LDR             R1, [R0]; CGangWars::pZoneInfoToFightOver
30C21E:  LDRB            R0, [R1,#1]
30C220:  CBZ             R0, loc_30C22C
30C222:  LDRB            R2, [R1]; float
30C224:  LDRB            R1, [R1,#2]
30C226:  ADD             R1, R2
30C228:  CMP             R1, R0
30C22A:  BLS             loc_30C236
30C22C:  MOVS            R0, #(dword_E8+3); this
30C22E:  MOV.W           R1, #0x3F800000; unsigned __int16
30C232:  BLX             j__ZN6CStats13IncrementStatEtf; CStats::IncrementStat(ushort,float)
30C236:  MOVS            R0, #0; this
30C238:  BLX             j__ZN9CTheZones24FillZonesWithGangColoursEb; CTheZones::FillZonesWithGangColours(bool)
30C23C:  BLX             rand
30C240:  VMOV            S0, R0
30C244:  VLDR            S2, =4.6566e-10
30C248:  LDR             R0, =(_ZN9CGangWars18TimeTillNextAttackE_ptr - 0x30C252)
30C24A:  VCVT.F32.S32    S0, S0
30C24E:  ADD             R0, PC; _ZN9CGangWars18TimeTillNextAttackE_ptr
30C250:  LDR             R0, [R0]; CGangWars::TimeTillNextAttack ...
30C252:  VMUL.F32        S0, S0, S2
30C256:  VLDR            S2, =0.9
30C25A:  VMUL.F32        S0, S0, S2
30C25E:  VLDR            S2, =0.6
30C262:  VADD.F32        S0, S0, S2
30C266:  VLDR            S2, =1080000.0
30C26A:  VMUL.F32        S0, S0, S2
30C26E:  VCVT.U32.F32    S0, S0
30C272:  VCVT.F32.U32    S0, S0
30C276:  VSTR            S0, [R0]
30C27A:  MOVS            R1, #0
30C27C:  MOVS            R0, #dword_44; this
30C27E:  MOVT            R1, #0x41F0; unsigned __int16
30C282:  BLX             j__ZN6CStats13DecrementStatEtf; CStats::DecrementStat(ushort,float)
30C286:  LDR             R0, =(_ZN9CGangWars9RadarBlipE_ptr - 0x30C28C)
30C288:  ADD             R0, PC; _ZN9CGangWars9RadarBlipE_ptr
30C28A:  LDR             R0, [R0]; CGangWars::RadarBlip ...
30C28C:  LDR             R0, [R0]; this
30C28E:  CBZ             R0, loc_30C30A
30C290:  LDR             R1, =(_ZN9CGangWars6State2E_ptr - 0x30C296)
30C292:  ADD             R1, PC; _ZN9CGangWars6State2E_ptr
30C294:  LDR             R1, [R1]; CGangWars::State2 ...
30C296:  LDR             R1, [R1]; CGangWars::State2
30C298:  ORR.W           R1, R1, #2; int
30C29C:  CMP             R1, #2
30C29E:  BNE             loc_30C2B0
30C2A0:  BLX             j__ZN6CRadar9ClearBlipEi; CRadar::ClearBlip(int)
30C2A4:  LDR             R0, =(_ZN9CGangWars9RadarBlipE_ptr - 0x30C2AC)
30C2A6:  MOVS            R1, #0
30C2A8:  ADD             R0, PC; _ZN9CGangWars9RadarBlipE_ptr
30C2AA:  LDR             R0, [R0]; CGangWars::RadarBlip ...
30C2AC:  STR             R1, [R0]; CGangWars::RadarBlip
30C2AE:  B               loc_30C30A
30C2B0:  LDR             R1, =(_ZN9CGangWars10FightTimerE_ptr - 0x30C2B6)
30C2B2:  ADD             R1, PC; _ZN9CGangWars10FightTimerE_ptr
30C2B4:  LDR             R1, [R1]; CGangWars::FightTimer ...
30C2B6:  LDR             R2, [R1]; CGangWars::FightTimer
30C2B8:  MOV             R1, #0x1D4C0
30C2C0:  CMP             R2, R1
30C2C2:  BLE             loc_30C2C8
30C2C4:  MOVS            R1, #0xA
30C2C6:  B               loc_30C2F0
30C2C8:  MOVW            R1, #0xEA60
30C2CC:  CMP             R2, R1
30C2CE:  BLE             loc_30C2E4
30C2D0:  MOVS            R1, #9
30C2D2:  B               loc_30C2F0
30C2D4:  DCFS 70.0
30C2D8:  DCFS 50.0
30C2DC:  DCFS 1000.0
30C2E0:  DCFS 4.6566e-10
30C2E4:  MOVW            R3, #0x7530
30C2E8:  MOVS            R1, #7
30C2EA:  CMP             R2, R3
30C2EC:  IT GT
30C2EE:  MOVGT           R1, #8
30C2F0:  LDR             R2, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x30C2FC)
30C2F2:  MOVS            R3, #1
30C2F4:  LSL.W           R1, R3, R1
30C2F8:  ADD             R2, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
30C2FA:  LDR             R2, [R2]; CTimer::m_snTimeInMilliseconds ...
30C2FC:  LDR             R2, [R2]; CTimer::m_snTimeInMilliseconds
30C2FE:  TST             R2, R1
30C300:  ITE EQ
30C302:  MOVEQ           R1, #2
30C304:  MOVNE           R1, #0
30C306:  BLX             j__ZN6CRadar17ChangeBlipDisplayEi12eBlipDisplay; CRadar::ChangeBlipDisplay(int,eBlipDisplay)
30C30A:  LDR             R0, =(_ZN9CGangWars6State2E_ptr - 0x30C310)
30C30C:  ADD             R0, PC; _ZN9CGangWars6State2E_ptr
30C30E:  LDR             R0, [R0]; CGangWars::State2 ...
30C310:  LDR             R0, [R0]; CGangWars::State2
30C312:  CMP             R0, #0
30C314:  BEQ.W           loc_30B720
30C318:  ADD             R0, SP, #0x78+var_40; int
30C31A:  MOV.W           R1, #0xFFFFFFFF
30C31E:  BLX             j__Z15FindPlayerCoorsi; FindPlayerCoors(int)
30C322:  LDR             R0, =(_ZN9CGangWars13PointOfAttackE_ptr - 0x30C32C)
30C324:  VLDR            D16, [SP,#0x78+var_40]
30C328:  ADD             R0, PC; _ZN9CGangWars13PointOfAttackE_ptr
30C32A:  VLDR            S2, =150.0
30C32E:  LDR             R0, [R0]; CGangWars::PointOfAttack ...
30C330:  VLDR            D17, [R0]
30C334:  VSUB.F32        D16, D16, D17
30C338:  VMUL.F32        D0, D16, D16
30C33C:  VADD.F32        S0, S0, S1
30C340:  VSQRT.F32       S0, S0
30C344:  VCMPE.F32       S0, S2
30C348:  VMRS            APSR_nzcv, FPSCR
30C34C:  BGE             loc_30C372
30C34E:  LDR             R0, =(_ZN9CGangWars16bPlayerIsClosebyE_ptr - 0x30C354)
30C350:  ADD             R0, PC; _ZN9CGangWars16bPlayerIsClosebyE_ptr
30C352:  LDR             R0, [R0]; CGangWars::bPlayerIsCloseby ...
30C354:  LDRB            R0, [R0]; CGangWars::bPlayerIsCloseby
30C356:  CMP             R0, #0
30C358:  BNE.W           loc_30B720
30C35C:  ADD             R4, SP, #0x78+var_40
30C35E:  MOV.W           R1, #0xFFFFFFFF
30C362:  MOV             R0, R4; int
30C364:  BLX             j__Z15FindPlayerCoorsi; FindPlayerCoors(int)
30C368:  MOV             R0, R4; this
30C36A:  BLX             j__ZN10CStreaming22StreamZoneModels_GangsERK7CVector; CStreaming::StreamZoneModels_Gangs(CVector const&)
30C36E:  MOVS            R0, #1
30C370:  B               loc_30C374
30C372:  MOVS            R0, #0
30C374:  LDR             R1, =(_ZN9CGangWars16bPlayerIsClosebyE_ptr - 0x30C37A)
30C376:  ADD             R1, PC; _ZN9CGangWars16bPlayerIsClosebyE_ptr
30C378:  LDR             R1, [R1]; CGangWars::bPlayerIsCloseby ...
30C37A:  STRB            R0, [R1]; CGangWars::bPlayerIsCloseby
30C37C:  B.W             loc_30B720
